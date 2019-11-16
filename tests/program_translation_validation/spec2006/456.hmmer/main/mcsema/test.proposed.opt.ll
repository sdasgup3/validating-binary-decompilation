; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x30165__rip__type = type <{ [8 x i8] }>
%G_0x301b5__rip__type = type <{ [4 x i8] }>
%G_0x301d7__rip__type = type <{ [8 x i8] }>
%G_0x302c7__rip__type = type <{ [4 x i8] }>
%G_0x30a84__rip__type = type <{ [4 x i8] }>
%G_0x30bb8__rip__type = type <{ [8 x i8] }>
%G_0x30bc0__rip__type = type <{ [8 x i8] }>
%G_0x663040_type = type <{ [8 x i8] }>
%G_0x676d90_type = type <{ [1 x i8] }>
%G__0x456fc4_type = type <{ [4 x i8] }>
%G__0x45713b_type = type <{ [4 x i8] }>
%G__0x457161_type = type <{ [4 x i8] }>
%G__0x457173_type = type <{ [4 x i8] }>
%G__0x457176_type = type <{ [8 x i8] }>
%G__0x457b4b_type = type <{ [4 x i8] }>
%G__0x457b4e_type = type <{ [4 x i8] }>
%G__0x457b51_type = type <{ [4 x i8] }>
%G__0x457b54_type = type <{ [4 x i8] }>
%G__0x457b57_type = type <{ [4 x i8] }>
%G__0x457b60_type = type <{ [4 x i8] }>
%G__0x457b69_type = type <{ [4 x i8] }>
%G__0x457b72_type = type <{ [4 x i8] }>
%G__0x457b7b_type = type <{ [4 x i8] }>
%G__0x457b82_type = type <{ [4 x i8] }>
%G__0x457b89_type = type <{ [4 x i8] }>
%G__0x457b93_type = type <{ [4 x i8] }>
%G__0x457b9b_type = type <{ [4 x i8] }>
%G__0x457ba1_type = type <{ [4 x i8] }>
%G__0x457bac_type = type <{ [8 x i8] }>
%G__0x457bd3_type = type <{ [8 x i8] }>
%G__0x457c1d_type = type <{ [8 x i8] }>
%G__0x457c6d_type = type <{ [8 x i8] }>
%G__0x457c76_type = type <{ [8 x i8] }>
%G__0x457c7e_type = type <{ [8 x i8] }>
%G__0x457cab_type = type <{ [8 x i8] }>
%G__0x457cb3_type = type <{ [8 x i8] }>
%G__0x457cd1_type = type <{ [8 x i8] }>
%G__0x457cf2_type = type <{ [8 x i8] }>
%G__0x457d2b_type = type <{ [8 x i8] }>
%G__0x457d72_type = type <{ [8 x i8] }>
%G__0x457dae_type = type <{ [8 x i8] }>
%G__0x457dd3_type = type <{ [8 x i8] }>
%G__0x457df3_type = type <{ [8 x i8] }>
%G__0x457e17_type = type <{ [8 x i8] }>
%G__0x457e34_type = type <{ [8 x i8] }>
%G__0x457e3c_type = type <{ [8 x i8] }>
%G__0x457e44_type = type <{ [8 x i8] }>
%G__0x457e4c_type = type <{ [8 x i8] }>
%G__0x457e54_type = type <{ [8 x i8] }>
%G__0x457e5c_type = type <{ [8 x i8] }>
%G__0x457e79_type = type <{ [8 x i8] }>
%G__0x457e81_type = type <{ [8 x i8] }>
%G__0x457e89_type = type <{ [8 x i8] }>
%G__0x457e91_type = type <{ [8 x i8] }>
%G__0x457eae_type = type <{ [8 x i8] }>
%G__0x457eba_type = type <{ [8 x i8] }>
%G__0x457ed7_type = type <{ [8 x i8] }>
%G__0x457ee2_type = type <{ [8 x i8] }>
%G__0x457ef8_type = type <{ [8 x i8] }>
%G__0x457f0a_type = type <{ [8 x i8] }>
%G__0x457f11_type = type <{ [8 x i8] }>
%G__0x457f22_type = type <{ [8 x i8] }>
%G__0x457f33_type = type <{ [8 x i8] }>
%G__0x457f72_type = type <{ [8 x i8] }>
%G__0x457fa9_type = type <{ [8 x i8] }>
%G__0x457fce_type = type <{ [8 x i8] }>
%G__0x458008_type = type <{ [8 x i8] }>
%G__0x458025_type = type <{ [8 x i8] }>
%G__0x458051_type = type <{ [8 x i8] }>
%G__0x458548_type = type <{ [8 x i8] }>
%G__0x458d45_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x661560_type = type <{ [8 x i8] }>
%G__0x661670_type = type <{ [8 x i8] }>
%G__0x6617f0_type = type <{ [8 x i8] }>
%G__0x661830_type = type <{ [8 x i8] }>
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
%union.anon = type { i64 }
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

@__bss_start = local_unnamed_addr global %__bss_start_type zeroinitializer
@G_0x30165__rip_ = global %G_0x30165__rip__type zeroinitializer
@G_0x301b5__rip_ = global %G_0x301b5__rip__type zeroinitializer
@G_0x301d7__rip_ = global %G_0x301d7__rip__type zeroinitializer
@G_0x302c7__rip_ = global %G_0x302c7__rip__type zeroinitializer
@G_0x30a84__rip_ = global %G_0x30a84__rip__type zeroinitializer
@G_0x30bb8__rip_ = global %G_0x30bb8__rip__type zeroinitializer
@G_0x30bc0__rip_ = global %G_0x30bc0__rip__type zeroinitializer
@G_0x663040 = local_unnamed_addr global %G_0x663040_type zeroinitializer
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G__0x456fc4 = global %G__0x456fc4_type zeroinitializer
@G__0x45713b = global %G__0x45713b_type zeroinitializer
@G__0x457161 = global %G__0x457161_type zeroinitializer
@G__0x457173 = global %G__0x457173_type zeroinitializer
@G__0x457176 = global %G__0x457176_type zeroinitializer
@G__0x457b4b = global %G__0x457b4b_type zeroinitializer
@G__0x457b4e = global %G__0x457b4e_type zeroinitializer
@G__0x457b51 = global %G__0x457b51_type zeroinitializer
@G__0x457b54 = global %G__0x457b54_type zeroinitializer
@G__0x457b57 = global %G__0x457b57_type zeroinitializer
@G__0x457b60 = global %G__0x457b60_type zeroinitializer
@G__0x457b69 = global %G__0x457b69_type zeroinitializer
@G__0x457b72 = global %G__0x457b72_type zeroinitializer
@G__0x457b7b = global %G__0x457b7b_type zeroinitializer
@G__0x457b82 = global %G__0x457b82_type zeroinitializer
@G__0x457b89 = global %G__0x457b89_type zeroinitializer
@G__0x457b93 = global %G__0x457b93_type zeroinitializer
@G__0x457b9b = global %G__0x457b9b_type zeroinitializer
@G__0x457ba1 = global %G__0x457ba1_type zeroinitializer
@G__0x457bac = global %G__0x457bac_type zeroinitializer
@G__0x457bd3 = global %G__0x457bd3_type zeroinitializer
@G__0x457c1d = global %G__0x457c1d_type zeroinitializer
@G__0x457c6d = global %G__0x457c6d_type zeroinitializer
@G__0x457c76 = global %G__0x457c76_type zeroinitializer
@G__0x457c7e = global %G__0x457c7e_type zeroinitializer
@G__0x457cab = global %G__0x457cab_type zeroinitializer
@G__0x457cb3 = global %G__0x457cb3_type zeroinitializer
@G__0x457cd1 = global %G__0x457cd1_type zeroinitializer
@G__0x457cf2 = global %G__0x457cf2_type zeroinitializer
@G__0x457d2b = global %G__0x457d2b_type zeroinitializer
@G__0x457d72 = global %G__0x457d72_type zeroinitializer
@G__0x457dae = global %G__0x457dae_type zeroinitializer
@G__0x457dd3 = global %G__0x457dd3_type zeroinitializer
@G__0x457df3 = global %G__0x457df3_type zeroinitializer
@G__0x457e17 = global %G__0x457e17_type zeroinitializer
@G__0x457e34 = global %G__0x457e34_type zeroinitializer
@G__0x457e3c = global %G__0x457e3c_type zeroinitializer
@G__0x457e44 = global %G__0x457e44_type zeroinitializer
@G__0x457e4c = global %G__0x457e4c_type zeroinitializer
@G__0x457e54 = global %G__0x457e54_type zeroinitializer
@G__0x457e5c = global %G__0x457e5c_type zeroinitializer
@G__0x457e79 = global %G__0x457e79_type zeroinitializer
@G__0x457e81 = global %G__0x457e81_type zeroinitializer
@G__0x457e89 = global %G__0x457e89_type zeroinitializer
@G__0x457e91 = global %G__0x457e91_type zeroinitializer
@G__0x457eae = global %G__0x457eae_type zeroinitializer
@G__0x457eba = global %G__0x457eba_type zeroinitializer
@G__0x457ed7 = global %G__0x457ed7_type zeroinitializer
@G__0x457ee2 = global %G__0x457ee2_type zeroinitializer
@G__0x457ef8 = global %G__0x457ef8_type zeroinitializer
@G__0x457f0a = global %G__0x457f0a_type zeroinitializer
@G__0x457f11 = global %G__0x457f11_type zeroinitializer
@G__0x457f22 = global %G__0x457f22_type zeroinitializer
@G__0x457f33 = global %G__0x457f33_type zeroinitializer
@G__0x457f72 = global %G__0x457f72_type zeroinitializer
@G__0x457fa9 = global %G__0x457fa9_type zeroinitializer
@G__0x457fce = global %G__0x457fce_type zeroinitializer
@G__0x458008 = global %G__0x458008_type zeroinitializer
@G__0x458025 = global %G__0x458025_type zeroinitializer
@G__0x458051 = global %G__0x458051_type zeroinitializer
@G__0x458548 = global %G__0x458548_type zeroinitializer
@G__0x458d45 = global %G__0x458d45_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x661560 = global %G__0x661560_type zeroinitializer
@G__0x661670 = global %G__0x661670_type zeroinitializer
@G__0x6617f0 = global %G__0x6617f0_type zeroinitializer
@G__0x661830 = global %G__0x661830_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @atof(i64)

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare extern_weak x86_64_sysvcc i64 @exit(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @puts(i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_41bb50.hmmcalibrate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_416760.Getopt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_443fb0.String2SeqfileFormat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_428ba0.HMMERBanner(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4254e0.Strparse(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ee00.SeqfileOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41c900.HMMFileOpen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_422500.HMMFileRead(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_428f20.SetAutocuts(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_418610.AllocHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44c5b0.AllocTophits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_424f90.main_loop_pvm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_424ff0.main_loop_threaded(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425060.main_loop_serial_393(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d110.FullSortTophits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44cc80.GetRankedHit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44ff40.PrintFancyAli(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_418710.FreeHistogram(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43fd60.SeqfileClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44c6b0.FreeTophits(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4273e0.SqdClean(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %R15.i54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i54, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i74, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i112, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i137, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i145, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %7, -696
  store i64 %36, i64* %6, align 8
  %37 = icmp ult i64 %33, 648
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41)
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1
  %47 = xor i64 %33, %36
  %48 = lshr i64 %47, 4
  %49 = trunc i64 %48 to i8
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %50, i8* %51, align 1
  %52 = icmp eq i64 %36, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1
  %55 = lshr i64 %36, 63
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %33, 63
  %59 = xor i64 %55, %58
  %60 = add nuw nsw i64 %59, %58
  %61 = icmp eq i64 %60, 2
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %62, i8* %63, align 1
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -44
  %66 = add i64 %35, 14
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %68 to i32*
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -48
  %71 = load i32, i32* %EDI.i, align 4
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 3
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %74, align 4
  %RSI.i423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -56
  %77 = load i64, i64* %RSI.i423, align 8
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %80, align 8
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -48
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, -3
  %88 = icmp ult i32 %86, 3
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %39, align 1
  %90 = and i32 %87, 255
  %91 = tail call i32 @llvm.ctpop.i32(i32 %90)
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  store i8 %94, i8* %46, align 1
  %95 = xor i32 %87, %86
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %51, align 1
  %99 = icmp eq i32 %87, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %54, align 1
  %101 = lshr i32 %87, 31
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %57, align 1
  %103 = lshr i32 %86, 31
  %104 = xor i32 %101, %103
  %105 = add nuw nsw i32 %104, %103
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %63, align 1
  %.v = select i1 %99, i64 30, i64 10
  %108 = add i64 %83, %.v
  store i64 %108, i64* %3, align 8
  br i1 %99, label %block_.L_423cd0, label %block_423cbc

block_423cbc:                                     ; preds = %entry
  %RDI.i497 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %109 = add i64 %108, 3
  store i64 %109, i64* %3, align 8
  %110 = load i32, i32* %85, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RDI.i497, align 8
  %112 = add i64 %81, -56
  %113 = add i64 %108, 7
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RSI.i423, align 8
  %116 = add i64 %108, -33132
  %117 = add i64 %108, 12
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %118, -8
  %120 = inttoptr i64 %119 to i64*
  store i64 %117, i64* %120, align 8
  store i64 %119, i64* %6, align 8
  store i64 %116, i64* %3, align 8
  %call2_423cc3 = tail call %struct.Memory* @sub_41bb50.hmmcalibrate(%struct.State* nonnull %0, i64 %116, %struct.Memory* %2)
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i868 = bitcast %union.anon* %121 to i32*
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -44
  %124 = load i32, i32* %EAX.i868, align 4
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 3
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %123 to i32*
  store i32 %124, i32* %127, align 4
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 4774
  store i64 %129, i64* %3, align 8
  br label %block_.L_424f71

block_.L_423cd0:                                  ; preds = %entry
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %131 = bitcast [32 x %union.VectorReg]* %130 to i8*
  %132 = add i64 %108, ptrtoint (%G_0x30bc0__rip__type* @G_0x30bc0__rip_ to i64)
  %133 = add i64 %108, 8
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %130, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %135, i64* %136, align 1
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %138 = bitcast i64* %137 to double*
  store double 0.000000e+00, double* %138, align 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %140 = bitcast %union.VectorReg* %139 to i8*
  %141 = add i64 %108, add (i64 ptrtoint (%G_0x30a84__rip__type* @G_0x30a84__rip_ to i64), i64 8)
  %142 = add i64 %108, 16
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = bitcast %union.VectorReg* %139 to i32*
  store i32 %144, i32* %145, align 1
  %146 = getelementptr inbounds i8, i8* %140, i64 4
  %147 = bitcast i8* %146 to float*
  store float 0.000000e+00, float* %147, align 1
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %149 = bitcast i64* %148 to float*
  store float 0.000000e+00, float* %149, align 1
  %150 = getelementptr inbounds i8, i8* %140, i64 12
  %151 = bitcast i8* %150 to float*
  store float 0.000000e+00, float* %151, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %153 = add i64 %108, add (i64 ptrtoint (%G_0x30bb8__rip__type* @G_0x30bb8__rip_ to i64), i64 16)
  %154 = add i64 %108, 24
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %152, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %156, i64* %157, align 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %159 = bitcast i64* %158 to double*
  store double 0.000000e+00, double* %159, align 1
  %160 = add i64 %81, -92
  %161 = add i64 %108, 31
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 0, i32* %162, align 4
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -316
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 10
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 0, i32* %167, align 4
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -312
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 10
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %169 to i32*
  store i32 1, i32* %172, align 4
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -320
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 10
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to i32*
  store i32 0, i32* %177, align 4
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -324
  %180 = load i64, i64* %3, align 8
  %181 = add i64 %180, 10
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %179 to i32*
  store i32 0, i32* %182, align 4
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -220
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 10
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %184 to i32*
  store i32 0, i32* %187, align 4
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -328
  %190 = load i64, i64* %3, align 8
  %191 = add i64 %190, 10
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %189 to i32*
  store i32 0, i32* %192, align 4
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -340
  %195 = load i64, i64* %3, align 8
  %196 = add i64 %195, 10
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %194 to i32*
  store i32 0, i32* %197, align 4
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -336
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 10
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %199 to i32*
  store i32 0, i32* %202, align 4
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -332
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 10
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %204 to i32*
  store i32 0, i32* %207, align 4
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -244
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 10
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %209 to i32*
  store i32 2147483647, i32* %212, align 4
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -280
  %215 = load i64, i64* %3, align 8
  %216 = add i64 %215, 8
  store i64 %216, i64* %3, align 8
  %217 = load i64, i64* %157, align 1
  %218 = inttoptr i64 %214 to i64*
  store i64 %217, i64* %218, align 8
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -288
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 8
  store i64 %222, i64* %3, align 8
  %223 = bitcast %union.VectorReg* %139 to <2 x float>*
  %224 = load <2 x float>, <2 x float>* %223, align 1
  %225 = extractelement <2 x float> %224, i32 0
  %226 = inttoptr i64 %220 to float*
  store float %225, float* %226, align 4
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -272
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 8
  store i64 %230, i64* %3, align 8
  %231 = load <2 x float>, <2 x float>* %223, align 1
  %232 = extractelement <2 x float> %231, i32 0
  %233 = inttoptr i64 %228 to float*
  store float %232, float* %233, align 4
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -264
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, 8
  store i64 %237, i64* %3, align 8
  %238 = load i64, i64* %136, align 1
  %239 = inttoptr i64 %235 to i64*
  store i64 %238, i64* %239, align 8
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -256
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 10
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i32*
  store i32 0, i32* %244, align 4
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -252
  %247 = load i64, i64* %3, align 8
  %248 = add i64 %247, 10
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i32*
  store i32 0, i32* %249, align 4
  %RDX.i1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1162 = getelementptr inbounds %union.anon, %union.anon* %250, i64 0, i32 0
  %R8.i1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1193 = getelementptr inbounds %union.anon, %union.anon* %251, i64 0, i32 0
  %RDI.i1356 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %R10.i1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %252 = bitcast i64* %6 to i64**
  %EAX.i1603 = bitcast %union.anon* %251 to i32*
  %AL.i1531 = bitcast %union.anon* %251 to i8*
  %253 = bitcast [32 x %union.VectorReg]* %130 to <2 x i32>*
  %254 = bitcast i64* %137 to <2 x i32>*
  %255 = bitcast [32 x %union.VectorReg]* %130 to float*
  %256 = getelementptr inbounds i8, i8* %131, i64 4
  %257 = bitcast i8* %256 to i32*
  %258 = bitcast i64* %137 to i32*
  %259 = getelementptr inbounds i8, i8* %131, i64 12
  %260 = bitcast i8* %259 to i32*
  %261 = bitcast [32 x %union.VectorReg]* %130 to <2 x float>*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_423d87

block_.L_423d87:                                  ; preds = %block_.L_4241b7, %block_.L_423cd0
  %262 = phi i64 [ %.pre, %block_.L_423cd0 ], [ %981, %block_.L_4241b7 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_.L_423cd0 ], [ %MEMORY.18, %block_.L_4241b7 ]
  store i64 ptrtoint (%G__0x661560_type* @G__0x661560 to i64), i64* %RDX.i1146, align 8
  store i64 17, i64* %RCX.i1162, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %R8.i1169, align 8
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -308
  store i64 %264, i64* %R9.i1180, align 8
  %265 = add i64 %263, -296
  store i64 %265, i64* %RAX.i1193, align 8
  %266 = add i64 %263, -304
  store i64 %266, i64* %RSI.i423, align 8
  %267 = add i64 %263, -48
  %268 = add i64 %262, 49
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RDI.i1356, align 8
  %272 = add i64 %263, -56
  %273 = add i64 %262, 53
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %R10.i1485, align 8
  %276 = add i64 %263, -352
  %277 = add i64 %262, 60
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i64*
  store i64 %266, i64* %278, align 8
  %279 = load i64, i64* %R10.i1485, align 8
  %280 = load i64, i64* %3, align 8
  store i64 %279, i64* %RSI.i423, align 8
  %281 = load i64*, i64** %252, align 8
  %282 = load i64, i64* %RAX.i1193, align 8
  %283 = add i64 %280, 7
  store i64 %283, i64* %3, align 8
  store i64 %282, i64* %281, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -352
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 7
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RAX.i1193, align 8
  %290 = load i64, i64* %6, align 8
  %291 = add i64 %290, 8
  %292 = add i64 %286, 12
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %293, align 8
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, -54902
  %296 = add i64 %294, 5
  %297 = load i64, i64* %6, align 8
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %6, align 8
  store i64 %295, i64* %3, align 8
  %call2_423dd6 = tail call %struct.Memory* @sub_416760.Getopt(%struct.State* nonnull %0, i64 %295, %struct.Memory* %MEMORY.0)
  %300 = load i32, i32* %EAX.i1603, align 4
  %301 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %302 = and i32 %300, 255
  %303 = tail call i32 @llvm.ctpop.i32(i32 %302)
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = xor i8 %305, 1
  store i8 %306, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %307 = icmp eq i32 %300, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %54, align 1
  %309 = lshr i32 %300, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v207 = select i1 %307, i64 993, i64 9
  %311 = add i64 %301, %.v207
  store i64 %311, i64* %3, align 8
  %312 = load i64, i64* %RBP.i, align 8
  br i1 %307, label %block_.L_4241bc, label %block_423de4

block_423de4:                                     ; preds = %block_.L_423d87
  %313 = add i64 %312, -296
  %314 = add i64 %311, 7
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b4b_type* @G__0x457b4b to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b4b_type* @G__0x457b4b to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %317 = add i64 %311, -141444
  %318 = add i64 %311, 19
  %319 = load i64, i64* %6, align 8
  %320 = add i64 %319, -8
  %321 = inttoptr i64 %320 to i64*
  store i64 %318, i64* %321, align 8
  store i64 %320, i64* %6, align 8
  store i64 %317, i64* %3, align 8
  %322 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %MEMORY.0)
  %323 = load i32, i32* %EAX.i1603, align 4
  %324 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %325 = and i32 %323, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %330 = icmp eq i32 %323, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %54, align 1
  %332 = lshr i32 %323, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v208 = select i1 %330, i64 9, i64 32
  %334 = add i64 %324, %.v208
  store i64 %334, i64* %3, align 8
  %335 = load i64, i64* %RBP.i, align 8
  br i1 %330, label %block_423e00, label %block_.L_423e17

block_423e00:                                     ; preds = %block_423de4
  %336 = add i64 %335, -304
  %337 = add i64 %334, 7
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RDI.i1356, align 8
  %340 = add i64 %334, -141152
  %341 = add i64 %334, 12
  %342 = load i64, i64* %6, align 8
  %343 = add i64 %342, -8
  %344 = inttoptr i64 %343 to i64*
  store i64 %341, i64* %344, align 8
  store i64 %343, i64* %6, align 8
  store i64 %340, i64* %3, align 8
  %345 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %322)
  %346 = load i64, i64* %RBP.i, align 8
  %347 = add i64 %346, -244
  %348 = load i32, i32* %EAX.i1603, align 4
  %349 = load i64, i64* %3, align 8
  %350 = add i64 %349, 6
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %347 to i32*
  store i32 %348, i32* %351, align 4
  %352 = load i64, i64* %3, align 8
  %353 = add i64 %352, 933
  br label %block_.L_4241b7

block_.L_423e17:                                  ; preds = %block_423de4
  %354 = add i64 %335, -296
  %355 = add i64 %334, 7
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b4e_type* @G__0x457b4e to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b4e_type* @G__0x457b4e to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %358 = add i64 %334, -141495
  %359 = add i64 %334, 19
  %360 = load i64, i64* %6, align 8
  %361 = add i64 %360, -8
  %362 = inttoptr i64 %361 to i64*
  store i64 %359, i64* %362, align 8
  store i64 %361, i64* %6, align 8
  store i64 %358, i64* %3, align 8
  %363 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %322)
  %364 = load i32, i32* %EAX.i1603, align 4
  %365 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %366 = and i32 %364, 255
  %367 = tail call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %371 = icmp eq i32 %364, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %54, align 1
  %373 = lshr i32 %364, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v209 = select i1 %371, i64 9, i64 34
  %375 = add i64 %365, %.v209
  store i64 %375, i64* %3, align 8
  %376 = load i64, i64* %RBP.i, align 8
  br i1 %371, label %block_423e33, label %block_.L_423e4c

block_423e33:                                     ; preds = %block_.L_423e17
  %377 = add i64 %376, -304
  %378 = add i64 %375, 7
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %RDI.i1356, align 8
  %381 = add i64 %375, -141827
  %382 = add i64 %375, 12
  %383 = load i64, i64* %6, align 8
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %382, i64* %385, align 8
  store i64 %384, i64* %6, align 8
  store i64 %381, i64* %3, align 8
  %386 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %363)
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -280
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 8
  store i64 %390, i64* %3, align 8
  %391 = load i64, i64* %136, align 1
  %392 = inttoptr i64 %388 to i64*
  store i64 %391, i64* %392, align 8
  %393 = load i64, i64* %3, align 8
  %394 = add i64 %393, 875
  br label %block_.L_4241b2

block_.L_423e4c:                                  ; preds = %block_.L_423e17
  %395 = add i64 %376, -296
  %396 = add i64 %375, 7
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b51_type* @G__0x457b51 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b51_type* @G__0x457b51 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %399 = add i64 %375, -141548
  %400 = add i64 %375, 19
  %401 = load i64, i64* %6, align 8
  %402 = add i64 %401, -8
  %403 = inttoptr i64 %402 to i64*
  store i64 %400, i64* %403, align 8
  store i64 %402, i64* %6, align 8
  store i64 %399, i64* %3, align 8
  %404 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %363)
  %405 = load i32, i32* %EAX.i1603, align 4
  %406 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %407 = and i32 %405, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %412 = icmp eq i32 %405, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %54, align 1
  %414 = lshr i32 %405, 31
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v210 = select i1 %412, i64 9, i64 38
  %416 = add i64 %406, %.v210
  store i64 %416, i64* %3, align 8
  %417 = load i64, i64* %RBP.i, align 8
  br i1 %412, label %block_423e68, label %block_.L_423e85

block_423e68:                                     ; preds = %block_.L_423e4c
  %418 = add i64 %417, -304
  %419 = add i64 %416, 7
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %RDI.i1356, align 8
  %422 = add i64 %416, -141880
  %423 = add i64 %416, 12
  %424 = load i64, i64* %6, align 8
  %425 = add i64 %424, -8
  %426 = inttoptr i64 %425 to i64*
  store i64 %423, i64* %426, align 8
  store i64 %425, i64* %6, align 8
  store i64 %422, i64* %3, align 8
  %427 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %404)
  %428 = load i64, i64* %3, align 8
  %429 = load <2 x i32>, <2 x i32>* %253, align 1
  %430 = load <2 x i32>, <2 x i32>* %254, align 1
  %.cast = bitcast <2 x i32> %429 to double
  %431 = fptrunc double %.cast to float
  store float %431, float* %255, align 1
  %432 = extractelement <2 x i32> %429, i32 1
  store i32 %432, i32* %257, align 1
  %433 = extractelement <2 x i32> %430, i32 0
  store i32 %433, i32* %258, align 1
  %434 = extractelement <2 x i32> %430, i32 1
  store i32 %434, i32* %260, align 1
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -288
  %437 = add i64 %428, 12
  store i64 %437, i64* %3, align 8
  %438 = load <2 x float>, <2 x float>* %261, align 1
  %439 = extractelement <2 x float> %438, i32 0
  %440 = inttoptr i64 %436 to float*
  store float %439, float* %440, align 4
  %441 = load i64, i64* %3, align 8
  %442 = add i64 %441, 813
  br label %block_.L_4241ad

block_.L_423e85:                                  ; preds = %block_.L_423e4c
  %443 = add i64 %417, -296
  %444 = add i64 %416, 7
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i64*
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b54_type* @G__0x457b54 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b54_type* @G__0x457b54 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %447 = add i64 %416, -141605
  %448 = add i64 %416, 19
  %449 = load i64, i64* %6, align 8
  %450 = add i64 %449, -8
  %451 = inttoptr i64 %450 to i64*
  store i64 %448, i64* %451, align 8
  store i64 %450, i64* %6, align 8
  store i64 %447, i64* %3, align 8
  %452 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %404)
  %453 = load i32, i32* %EAX.i1603, align 4
  %454 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %455 = and i32 %453, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %460 = icmp eq i32 %453, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %54, align 1
  %462 = lshr i32 %453, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v211 = select i1 %460, i64 9, i64 32
  %464 = add i64 %454, %.v211
  store i64 %464, i64* %3, align 8
  %465 = load i64, i64* %RBP.i, align 8
  br i1 %460, label %block_423ea1, label %block_.L_423eb8

block_423ea1:                                     ; preds = %block_.L_423e85
  %466 = add i64 %465, -304
  %467 = add i64 %464, 7
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RDI.i1356, align 8
  %470 = add i64 %464, -141313
  %471 = add i64 %464, 12
  %472 = load i64, i64* %6, align 8
  %473 = add i64 %472, -8
  %474 = inttoptr i64 %473 to i64*
  store i64 %471, i64* %474, align 8
  store i64 %473, i64* %6, align 8
  store i64 %470, i64* %3, align 8
  %475 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %452)
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -252
  %478 = load i32, i32* %EAX.i1603, align 4
  %479 = load i64, i64* %3, align 8
  %480 = add i64 %479, 6
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %477 to i32*
  store i32 %478, i32* %481, align 4
  %482 = load i64, i64* %3, align 8
  %483 = add i64 %482, 757
  br label %block_.L_4241a8

block_.L_423eb8:                                  ; preds = %block_.L_423e85
  %484 = add i64 %465, -296
  %485 = add i64 %464, 7
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b57_type* @G__0x457b57 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b57_type* @G__0x457b57 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %488 = add i64 %464, -141656
  %489 = add i64 %464, 19
  %490 = load i64, i64* %6, align 8
  %491 = add i64 %490, -8
  %492 = inttoptr i64 %491 to i64*
  store i64 %489, i64* %492, align 8
  store i64 %491, i64* %6, align 8
  store i64 %488, i64* %3, align 8
  %493 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %452)
  %494 = load i32, i32* %EAX.i1603, align 4
  %495 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %496 = and i32 %494, 255
  %497 = tail call i32 @llvm.ctpop.i32(i32 %496)
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  %500 = xor i8 %499, 1
  store i8 %500, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %501 = icmp eq i32 %494, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %54, align 1
  %503 = lshr i32 %494, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v212 = select i1 %501, i64 9, i64 24
  %505 = add i64 %495, %.v212
  store i64 %505, i64* %3, align 8
  %506 = load i64, i64* %RBP.i, align 8
  br i1 %501, label %block_423ed4, label %block_.L_423ee3

block_423ed4:                                     ; preds = %block_.L_423eb8
  %507 = add i64 %506, -328
  %508 = add i64 %505, 10
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  store i32 1, i32* %509, align 4
  %510 = load i64, i64* %3, align 8
  %511 = add i64 %510, 709
  br label %block_.L_4241a3

block_.L_423ee3:                                  ; preds = %block_.L_423eb8
  %512 = add i64 %506, -296
  %513 = add i64 %505, 7
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i64*
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x45713b_type* @G__0x45713b to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x45713b_type* @G__0x45713b to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %516 = add i64 %505, -141699
  %517 = add i64 %505, 19
  %518 = load i64, i64* %6, align 8
  %519 = add i64 %518, -8
  %520 = inttoptr i64 %519 to i64*
  store i64 %517, i64* %520, align 8
  store i64 %519, i64* %6, align 8
  store i64 %516, i64* %3, align 8
  %521 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %493)
  %522 = load i32, i32* %EAX.i1603, align 4
  %523 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %524 = and i32 %522, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %529 = icmp eq i32 %522, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %54, align 1
  %531 = lshr i32 %522, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v213 = select i1 %529, i64 9, i64 32
  %533 = add i64 %523, %.v213
  store i64 %533, i64* %3, align 8
  %534 = load i64, i64* %RBP.i, align 8
  br i1 %529, label %block_423eff, label %block_.L_423f16

block_423eff:                                     ; preds = %block_.L_423ee3
  %535 = add i64 %534, -304
  %536 = add i64 %533, 7
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i64*
  %538 = load i64, i64* %537, align 8
  store i64 %538, i64* %RDI.i1356, align 8
  %539 = add i64 %533, -141407
  %540 = add i64 %533, 12
  %541 = load i64, i64* %6, align 8
  %542 = add i64 %541, -8
  %543 = inttoptr i64 %542 to i64*
  store i64 %540, i64* %543, align 8
  store i64 %542, i64* %6, align 8
  store i64 %539, i64* %3, align 8
  %544 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %521)
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -332
  %547 = load i32, i32* %EAX.i1603, align 4
  %548 = load i64, i64* %3, align 8
  %549 = add i64 %548, 6
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %546 to i32*
  store i32 %547, i32* %550, align 4
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 653
  br label %block_.L_42419e

block_.L_423f16:                                  ; preds = %block_.L_423ee3
  %553 = add i64 %534, -296
  %554 = add i64 %533, 7
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b60_type* @G__0x457b60 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b60_type* @G__0x457b60 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %557 = add i64 %533, -141750
  %558 = add i64 %533, 19
  %559 = load i64, i64* %6, align 8
  %560 = add i64 %559, -8
  %561 = inttoptr i64 %560 to i64*
  store i64 %558, i64* %561, align 8
  store i64 %560, i64* %6, align 8
  store i64 %557, i64* %3, align 8
  %562 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %521)
  %563 = load i32, i32* %EAX.i1603, align 4
  %564 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %565 = and i32 %563, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %570 = icmp eq i32 %563, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %54, align 1
  %572 = lshr i32 %563, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v214 = select i1 %570, i64 9, i64 24
  %574 = add i64 %564, %.v214
  store i64 %574, i64* %3, align 8
  %575 = load i64, i64* %RBP.i, align 8
  br i1 %570, label %block_423f32, label %block_.L_423f41

block_423f32:                                     ; preds = %block_.L_423f16
  %576 = add i64 %575, -256
  %577 = add i64 %574, 10
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  store i32 1, i32* %578, align 4
  %579 = load i64, i64* %3, align 8
  %580 = add i64 %579, 605
  br label %block_.L_424199

block_.L_423f41:                                  ; preds = %block_.L_423f16
  %581 = add i64 %575, -296
  %582 = add i64 %574, 7
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i64*
  %584 = load i64, i64* %583, align 8
  store i64 %584, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b69_type* @G__0x457b69 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b69_type* @G__0x457b69 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %585 = add i64 %574, -141793
  %586 = add i64 %574, 19
  %587 = load i64, i64* %6, align 8
  %588 = add i64 %587, -8
  %589 = inttoptr i64 %588 to i64*
  store i64 %586, i64* %589, align 8
  store i64 %588, i64* %6, align 8
  store i64 %585, i64* %3, align 8
  %590 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %562)
  %591 = load i32, i32* %EAX.i1603, align 4
  %592 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %593 = and i32 %591, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %598 = icmp eq i32 %591, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %54, align 1
  %600 = lshr i32 %591, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v215 = select i1 %598, i64 9, i64 24
  %602 = add i64 %592, %.v215
  store i64 %602, i64* %3, align 8
  %603 = load i64, i64* %RBP.i, align 8
  br i1 %598, label %block_423f5d, label %block_.L_423f6c

block_423f5d:                                     ; preds = %block_.L_423f41
  %604 = add i64 %603, -256
  %605 = add i64 %602, 10
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  store i32 2, i32* %606, align 4
  %607 = load i64, i64* %3, align 8
  %608 = add i64 %607, 557
  br label %block_.L_424194

block_.L_423f6c:                                  ; preds = %block_.L_423f41
  %609 = add i64 %603, -296
  %610 = add i64 %602, 7
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i64*
  %612 = load i64, i64* %611, align 8
  store i64 %612, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b72_type* @G__0x457b72 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b72_type* @G__0x457b72 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %613 = add i64 %602, -141836
  %614 = add i64 %602, 19
  %615 = load i64, i64* %6, align 8
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %614, i64* %617, align 8
  store i64 %616, i64* %6, align 8
  store i64 %613, i64* %3, align 8
  %618 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %590)
  %619 = load i32, i32* %EAX.i1603, align 4
  %620 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %621 = and i32 %619, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %626 = icmp eq i32 %619, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %54, align 1
  %628 = lshr i32 %619, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v216 = select i1 %626, i64 9, i64 24
  %630 = add i64 %620, %.v216
  store i64 %630, i64* %3, align 8
  %631 = load i64, i64* %RBP.i, align 8
  br i1 %626, label %block_423f88, label %block_.L_423f97

block_423f88:                                     ; preds = %block_.L_423f6c
  %632 = add i64 %631, -256
  %633 = add i64 %630, 10
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  store i32 3, i32* %634, align 4
  %635 = load i64, i64* %3, align 8
  %636 = add i64 %635, 509
  br label %block_.L_42418f

block_.L_423f97:                                  ; preds = %block_.L_423f6c
  %637 = add i64 %631, -296
  %638 = add i64 %630, 7
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b7b_type* @G__0x457b7b to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b7b_type* @G__0x457b7b to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %641 = add i64 %630, -141879
  %642 = add i64 %630, 19
  %643 = load i64, i64* %6, align 8
  %644 = add i64 %643, -8
  %645 = inttoptr i64 %644 to i64*
  store i64 %642, i64* %645, align 8
  store i64 %644, i64* %6, align 8
  store i64 %641, i64* %3, align 8
  %646 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %618)
  %647 = load i32, i32* %EAX.i1603, align 4
  %648 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %649 = and i32 %647, 255
  %650 = tail call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  store i8 %653, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %654 = icmp eq i32 %647, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %54, align 1
  %656 = lshr i32 %647, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v217 = select i1 %654, i64 9, i64 34
  %658 = add i64 %648, %.v217
  store i64 %658, i64* %3, align 8
  %659 = load i64, i64* %RBP.i, align 8
  br i1 %654, label %block_423fb3, label %block_.L_423fcc

block_423fb3:                                     ; preds = %block_.L_423f97
  %660 = add i64 %659, -304
  %661 = add i64 %658, 7
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RDI.i1356, align 8
  %664 = add i64 %658, -142211
  %665 = add i64 %658, 12
  %666 = load i64, i64* %6, align 8
  %667 = add i64 %666, -8
  %668 = inttoptr i64 %667 to i64*
  store i64 %665, i64* %668, align 8
  store i64 %667, i64* %6, align 8
  store i64 %664, i64* %3, align 8
  %669 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %646)
  %670 = load i64, i64* %RBP.i, align 8
  %671 = add i64 %670, -264
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, 8
  store i64 %673, i64* %3, align 8
  %674 = load i64, i64* %136, align 1
  %675 = inttoptr i64 %671 to i64*
  store i64 %674, i64* %675, align 8
  %676 = load i64, i64* %3, align 8
  %677 = add i64 %676, 451
  br label %block_.L_42418a

block_.L_423fcc:                                  ; preds = %block_.L_423f97
  %678 = add i64 %659, -296
  %679 = add i64 %658, 7
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i64*
  %681 = load i64, i64* %680, align 8
  store i64 %681, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b82_type* @G__0x457b82 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b82_type* @G__0x457b82 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %682 = add i64 %658, -141932
  %683 = add i64 %658, 19
  %684 = load i64, i64* %6, align 8
  %685 = add i64 %684, -8
  %686 = inttoptr i64 %685 to i64*
  store i64 %683, i64* %686, align 8
  store i64 %685, i64* %6, align 8
  store i64 %682, i64* %3, align 8
  %687 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %646)
  %688 = load i32, i32* %EAX.i1603, align 4
  %689 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %690 = and i32 %688, 255
  %691 = tail call i32 @llvm.ctpop.i32(i32 %690)
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  store i8 %694, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %695 = icmp eq i32 %688, 0
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %54, align 1
  %697 = lshr i32 %688, 31
  %698 = trunc i32 %697 to i8
  store i8 %698, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v218 = select i1 %695, i64 9, i64 38
  %699 = add i64 %689, %.v218
  store i64 %699, i64* %3, align 8
  %700 = load i64, i64* %RBP.i, align 8
  br i1 %695, label %block_423fe8, label %block_.L_424005

block_423fe8:                                     ; preds = %block_.L_423fcc
  %701 = add i64 %700, -304
  %702 = add i64 %699, 7
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RDI.i1356, align 8
  %705 = add i64 %699, -142264
  %706 = add i64 %699, 12
  %707 = load i64, i64* %6, align 8
  %708 = add i64 %707, -8
  %709 = inttoptr i64 %708 to i64*
  store i64 %706, i64* %709, align 8
  store i64 %708, i64* %6, align 8
  store i64 %705, i64* %3, align 8
  %710 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %687)
  %711 = load i64, i64* %3, align 8
  %712 = load <2 x i32>, <2 x i32>* %253, align 1
  %713 = load <2 x i32>, <2 x i32>* %254, align 1
  %.cast83 = bitcast <2 x i32> %712 to double
  %714 = fptrunc double %.cast83 to float
  store float %714, float* %255, align 1
  %715 = extractelement <2 x i32> %712, i32 1
  store i32 %715, i32* %257, align 1
  %716 = extractelement <2 x i32> %713, i32 0
  store i32 %716, i32* %258, align 1
  %717 = extractelement <2 x i32> %713, i32 1
  store i32 %717, i32* %260, align 1
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -272
  %720 = add i64 %711, 12
  store i64 %720, i64* %3, align 8
  %721 = load <2 x float>, <2 x float>* %261, align 1
  %722 = extractelement <2 x float> %721, i32 0
  %723 = inttoptr i64 %719 to float*
  store float %722, float* %723, align 4
  %724 = load i64, i64* %3, align 8
  %725 = add i64 %724, 389
  br label %block_.L_424185

block_.L_424005:                                  ; preds = %block_.L_423fcc
  %726 = add i64 %700, -296
  %727 = add i64 %699, 7
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b89_type* @G__0x457b89 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b89_type* @G__0x457b89 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %730 = add i64 %699, -141989
  %731 = add i64 %699, 19
  %732 = load i64, i64* %6, align 8
  %733 = add i64 %732, -8
  %734 = inttoptr i64 %733 to i64*
  store i64 %731, i64* %734, align 8
  store i64 %733, i64* %6, align 8
  store i64 %730, i64* %3, align 8
  %735 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %687)
  %736 = load i32, i32* %EAX.i1603, align 4
  %737 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %738 = and i32 %736, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %743 = icmp eq i32 %736, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %54, align 1
  %745 = lshr i32 %736, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v219 = select i1 %743, i64 9, i64 24
  %747 = add i64 %737, %.v219
  store i64 %747, i64* %3, align 8
  %748 = load i64, i64* %RBP.i, align 8
  br i1 %743, label %block_424021, label %block_.L_424030

block_424021:                                     ; preds = %block_.L_424005
  %749 = add i64 %748, -316
  %750 = add i64 %747, 10
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  store i32 1, i32* %751, align 4
  %752 = load i64, i64* %3, align 8
  %753 = add i64 %752, 341
  br label %block_.L_424180

block_.L_424030:                                  ; preds = %block_.L_424005
  %754 = add i64 %748, -296
  %755 = add i64 %747, 7
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b93_type* @G__0x457b93 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b93_type* @G__0x457b93 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %758 = add i64 %747, -142032
  %759 = add i64 %747, 19
  %760 = load i64, i64* %6, align 8
  %761 = add i64 %760, -8
  %762 = inttoptr i64 %761 to i64*
  store i64 %759, i64* %762, align 8
  store i64 %761, i64* %6, align 8
  store i64 %758, i64* %3, align 8
  %763 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %735)
  %764 = load i32, i32* %EAX.i1603, align 4
  %765 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %766 = and i32 %764, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766)
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %771 = icmp eq i32 %764, 0
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %54, align 1
  %773 = lshr i32 %764, 31
  %774 = trunc i32 %773 to i8
  store i8 %774, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v220 = select i1 %771, i64 9, i64 24
  %775 = add i64 %765, %.v220
  store i64 %775, i64* %3, align 8
  %776 = load i64, i64* %RBP.i, align 8
  br i1 %771, label %block_42404c, label %block_.L_42405b

block_42404c:                                     ; preds = %block_.L_424030
  %777 = add i64 %776, -312
  %778 = add i64 %775, 10
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i32*
  store i32 0, i32* %779, align 4
  %780 = load i64, i64* %3, align 8
  %781 = add i64 %780, 293
  br label %block_.L_42417b

block_.L_42405b:                                  ; preds = %block_.L_424030
  %782 = add i64 %776, -296
  %783 = add i64 %775, 7
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457161_type* @G__0x457161 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457161_type* @G__0x457161 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %786 = add i64 %775, -142075
  %787 = add i64 %775, 19
  %788 = load i64, i64* %6, align 8
  %789 = add i64 %788, -8
  %790 = inttoptr i64 %789 to i64*
  store i64 %787, i64* %790, align 8
  store i64 %789, i64* %6, align 8
  store i64 %786, i64* %3, align 8
  %791 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %763)
  %792 = load i32, i32* %EAX.i1603, align 4
  %793 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %794 = and i32 %792, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794)
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %799 = icmp eq i32 %792, 0
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %54, align 1
  %801 = lshr i32 %792, 31
  %802 = trunc i32 %801 to i8
  store i8 %802, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v221 = select i1 %799, i64 9, i64 24
  %803 = add i64 %793, %.v221
  store i64 %803, i64* %3, align 8
  %804 = load i64, i64* %RBP.i, align 8
  br i1 %799, label %block_424077, label %block_.L_424086

block_424077:                                     ; preds = %block_.L_42405b
  %805 = add i64 %804, -324
  %806 = add i64 %803, 10
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  store i32 1, i32* %807, align 4
  %808 = load i64, i64* %3, align 8
  %809 = add i64 %808, 245
  br label %block_.L_424176

block_.L_424086:                                  ; preds = %block_.L_42405b
  %810 = add i64 %804, -296
  %811 = add i64 %803, 7
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457b9b_type* @G__0x457b9b to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457b9b_type* @G__0x457b9b to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %814 = add i64 %803, -142118
  %815 = add i64 %803, 19
  %816 = load i64, i64* %6, align 8
  %817 = add i64 %816, -8
  %818 = inttoptr i64 %817 to i64*
  store i64 %815, i64* %818, align 8
  store i64 %817, i64* %6, align 8
  store i64 %814, i64* %3, align 8
  %819 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %791)
  %820 = load i32, i32* %EAX.i1603, align 4
  %821 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %822 = and i32 %820, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %827 = icmp eq i32 %820, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %54, align 1
  %829 = lshr i32 %820, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v222 = select i1 %827, i64 9, i64 24
  %831 = add i64 %821, %.v222
  store i64 %831, i64* %3, align 8
  %832 = load i64, i64* %RBP.i, align 8
  br i1 %827, label %block_4240a2, label %block_.L_4240b1

block_4240a2:                                     ; preds = %block_.L_424086
  %833 = add i64 %832, -320
  %834 = add i64 %831, 10
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  store i32 1, i32* %835, align 4
  %836 = load i64, i64* %3, align 8
  %837 = add i64 %836, 197
  br label %block_.L_424171

block_.L_4240b1:                                  ; preds = %block_.L_424086
  %838 = add i64 %832, -296
  %839 = add i64 %831, 7
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457ba1_type* @G__0x457ba1 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457ba1_type* @G__0x457ba1 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %842 = add i64 %831, -142161
  %843 = add i64 %831, 19
  %844 = load i64, i64* %6, align 8
  %845 = add i64 %844, -8
  %846 = inttoptr i64 %845 to i64*
  store i64 %843, i64* %846, align 8
  store i64 %845, i64* %6, align 8
  store i64 %842, i64* %3, align 8
  %847 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %819)
  %848 = load i32, i32* %EAX.i1603, align 4
  %849 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %850 = and i32 %848, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %855 = icmp eq i32 %848, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %54, align 1
  %857 = lshr i32 %848, 31
  %858 = trunc i32 %857 to i8
  store i8 %858, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v223 = select i1 %855, i64 9, i64 63
  %859 = add i64 %849, %.v223
  store i64 %859, i64* %3, align 8
  %860 = load i64, i64* %RBP.i, align 8
  br i1 %855, label %block_4240cd, label %block_.L_424103

block_4240cd:                                     ; preds = %block_.L_4240b1
  %861 = add i64 %860, -304
  %862 = add i64 %859, 7
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %RDI.i1356, align 8
  %865 = add i64 %859, 130787
  %866 = add i64 %859, 12
  %867 = load i64, i64* %6, align 8
  %868 = add i64 %867, -8
  %869 = inttoptr i64 %868 to i64*
  store i64 %866, i64* %869, align 8
  store i64 %868, i64* %6, align 8
  store i64 %865, i64* %3, align 8
  %call2_4240d4 = tail call %struct.Memory* @sub_443fb0.String2SeqfileFormat(%struct.State* nonnull %0, i64 %865, %struct.Memory* %847)
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -92
  %872 = load i32, i32* %EAX.i1603, align 4
  %873 = load i64, i64* %3, align 8
  %874 = add i64 %873, 3
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %871 to i32*
  store i32 %872, i32* %875, align 4
  %876 = load i64, i64* %RBP.i, align 8
  %877 = add i64 %876, -92
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, 4
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %877 to i32*
  %881 = load i32, i32* %880, align 4
  store i8 0, i8* %39, align 1
  %882 = and i32 %881, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %887 = icmp eq i32 %881, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %54, align 1
  %889 = lshr i32 %881, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v225 = select i1 %887, i64 10, i64 34
  %891 = add i64 %878, %.v225
  store i64 %891, i64* %3, align 8
  br i1 %887, label %block_4240e6, label %block_.L_4240fe

block_4240e6:                                     ; preds = %block_4240cd
  store i64 ptrtoint (%G__0x457bac_type* @G__0x457bac to i64), i64* %RDI.i1356, align 8
  %892 = add i64 %876, -304
  %893 = add i64 %891, 17
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i64*
  %895 = load i64, i64* %894, align 8
  store i64 %895, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %896 = add i64 %891, 108842
  %897 = add i64 %891, 24
  %898 = load i64, i64* %6, align 8
  %899 = add i64 %898, -8
  %900 = inttoptr i64 %899 to i64*
  store i64 %897, i64* %900, align 8
  store i64 %899, i64* %6, align 8
  store i64 %896, i64* %3, align 8
  %call2_4240f9 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %896, %struct.Memory* %call2_4240d4)
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_4240fe

block_.L_4240fe:                                  ; preds = %block_4240cd, %block_4240e6
  %901 = phi i64 [ %891, %block_4240cd ], [ %.pre143, %block_4240e6 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4240d4, %block_4240cd ], [ %call2_4240f9, %block_4240e6 ]
  %902 = add i64 %901, 110
  br label %block_.L_42416c

block_.L_424103:                                  ; preds = %block_.L_4240b1
  %903 = add i64 %860, -296
  %904 = add i64 %859, 7
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x457173_type* @G__0x457173 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x457173_type* @G__0x457173 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %907 = add i64 %859, -142243
  %908 = add i64 %859, 19
  %909 = load i64, i64* %6, align 8
  %910 = add i64 %909, -8
  %911 = inttoptr i64 %910 to i64*
  store i64 %908, i64* %911, align 8
  store i64 %910, i64* %6, align 8
  store i64 %907, i64* %3, align 8
  %912 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %847)
  %913 = load i32, i32* %EAX.i1603, align 4
  %914 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %915 = and i32 %913, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %920 = icmp eq i32 %913, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %54, align 1
  %922 = lshr i32 %913, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v224 = select i1 %920, i64 9, i64 81
  %924 = add i64 %914, %.v224
  store i64 %924, i64* %3, align 8
  br i1 %920, label %block_42411f, label %block_.L_424167

block_42411f:                                     ; preds = %block_.L_424103
  store i64 ptrtoint (%G__0x6617f0_type* @G__0x6617f0 to i64), i64* %RSI.i423, align 8
  %925 = load i64, i64* bitcast (%G_0x663040_type* @G_0x663040 to i64*), align 8
  store i64 %925, i64* %RDI.i1356, align 8
  %926 = add i64 %924, 19073
  %927 = add i64 %924, 23
  %928 = load i64, i64* %6, align 8
  %929 = add i64 %928, -8
  %930 = inttoptr i64 %929 to i64*
  store i64 %927, i64* %930, align 8
  store i64 %929, i64* %6, align 8
  store i64 %926, i64* %3, align 8
  %call2_424131 = tail call %struct.Memory* @sub_428ba0.HMMERBanner(%struct.State* nonnull %0, i64 %926, %struct.Memory* %912)
  %931 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %RDI.i1356, align 8
  %932 = add i64 %931, -142646
  %933 = add i64 %931, 15
  %934 = load i64, i64* %6, align 8
  %935 = add i64 %934, -8
  %936 = inttoptr i64 %935 to i64*
  store i64 %933, i64* %936, align 8
  store i64 %935, i64* %6, align 8
  store i64 %932, i64* %3, align 8
  %937 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @puts to i64), %struct.Memory* %call2_424131)
  %938 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x661830_type* @G__0x661830 to i64), i64* %RDI.i1356, align 8
  %939 = load i64, i64* %RBP.i, align 8
  %940 = add i64 %939, -356
  %941 = load i32, i32* %EAX.i1603, align 4
  %942 = add i64 %938, 16
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %940 to i32*
  store i32 %941, i32* %943, align 4
  %944 = load i64, i64* %3, align 8
  %945 = add i64 %944, -142677
  %946 = add i64 %944, 5
  %947 = load i64, i64* %6, align 8
  %948 = add i64 %947, -8
  %949 = inttoptr i64 %948 to i64*
  store i64 %946, i64* %949, align 8
  store i64 %948, i64* %6, align 8
  store i64 %945, i64* %3, align 8
  %950 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @puts to i64), %struct.Memory* %937)
  %951 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i1356, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %51, align 1
  %952 = load i64, i64* %RBP.i, align 8
  %953 = add i64 %952, -360
  %954 = load i32, i32* %EAX.i1603, align 4
  %955 = add i64 %951, 8
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %953 to i32*
  store i32 %954, i32* %956, align 4
  %957 = load i64, i64* %3, align 8
  %958 = add i64 %957, -141970
  %959 = add i64 %957, 5
  %960 = load i64, i64* %6, align 8
  %961 = add i64 %960, -8
  %962 = inttoptr i64 %961 to i64*
  store i64 %959, i64* %962, align 8
  store i64 %961, i64* %6, align 8
  store i64 %958, i64* %3, align 8
  %963 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %950)
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_424167

block_.L_424167:                                  ; preds = %block_.L_424103, %block_42411f
  %964 = phi i64 [ %924, %block_.L_424103 ], [ %.pre144, %block_42411f ]
  %MEMORY.2 = phi %struct.Memory* [ %912, %block_.L_424103 ], [ %963, %block_42411f ]
  %965 = add i64 %964, 5
  store i64 %965, i64* %3, align 8
  br label %block_.L_42416c

block_.L_42416c:                                  ; preds = %block_.L_424167, %block_.L_4240fe
  %storemerge89 = phi i64 [ %902, %block_.L_4240fe ], [ %965, %block_.L_424167 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_.L_4240fe ], [ %MEMORY.2, %block_.L_424167 ]
  %966 = add i64 %storemerge89, 5
  store i64 %966, i64* %3, align 8
  br label %block_.L_424171

block_.L_424171:                                  ; preds = %block_.L_42416c, %block_4240a2
  %storemerge88 = phi i64 [ %837, %block_4240a2 ], [ %966, %block_.L_42416c ]
  %MEMORY.4 = phi %struct.Memory* [ %819, %block_4240a2 ], [ %MEMORY.3, %block_.L_42416c ]
  %967 = add i64 %storemerge88, 5
  store i64 %967, i64* %3, align 8
  br label %block_.L_424176

block_.L_424176:                                  ; preds = %block_.L_424171, %block_424077
  %storemerge87 = phi i64 [ %809, %block_424077 ], [ %967, %block_.L_424171 ]
  %MEMORY.5 = phi %struct.Memory* [ %791, %block_424077 ], [ %MEMORY.4, %block_.L_424171 ]
  %968 = add i64 %storemerge87, 5
  store i64 %968, i64* %3, align 8
  br label %block_.L_42417b

block_.L_42417b:                                  ; preds = %block_.L_424176, %block_42404c
  %storemerge86 = phi i64 [ %781, %block_42404c ], [ %968, %block_.L_424176 ]
  %MEMORY.6 = phi %struct.Memory* [ %763, %block_42404c ], [ %MEMORY.5, %block_.L_424176 ]
  %969 = add i64 %storemerge86, 5
  store i64 %969, i64* %3, align 8
  br label %block_.L_424180

block_.L_424180:                                  ; preds = %block_.L_42417b, %block_424021
  %storemerge85 = phi i64 [ %753, %block_424021 ], [ %969, %block_.L_42417b ]
  %MEMORY.7 = phi %struct.Memory* [ %735, %block_424021 ], [ %MEMORY.6, %block_.L_42417b ]
  %970 = add i64 %storemerge85, 5
  store i64 %970, i64* %3, align 8
  br label %block_.L_424185

block_.L_424185:                                  ; preds = %block_.L_424180, %block_423fe8
  %storemerge84 = phi i64 [ %725, %block_423fe8 ], [ %970, %block_.L_424180 ]
  %MEMORY.8 = phi %struct.Memory* [ %710, %block_423fe8 ], [ %MEMORY.7, %block_.L_424180 ]
  %971 = add i64 %storemerge84, 5
  store i64 %971, i64* %3, align 8
  br label %block_.L_42418a

block_.L_42418a:                                  ; preds = %block_.L_424185, %block_423fb3
  %storemerge82 = phi i64 [ %677, %block_423fb3 ], [ %971, %block_.L_424185 ]
  %MEMORY.9 = phi %struct.Memory* [ %669, %block_423fb3 ], [ %MEMORY.8, %block_.L_424185 ]
  %972 = add i64 %storemerge82, 5
  store i64 %972, i64* %3, align 8
  br label %block_.L_42418f

block_.L_42418f:                                  ; preds = %block_.L_42418a, %block_423f88
  %storemerge81 = phi i64 [ %636, %block_423f88 ], [ %972, %block_.L_42418a ]
  %MEMORY.10 = phi %struct.Memory* [ %618, %block_423f88 ], [ %MEMORY.9, %block_.L_42418a ]
  %973 = add i64 %storemerge81, 5
  store i64 %973, i64* %3, align 8
  br label %block_.L_424194

block_.L_424194:                                  ; preds = %block_.L_42418f, %block_423f5d
  %storemerge80 = phi i64 [ %608, %block_423f5d ], [ %973, %block_.L_42418f ]
  %MEMORY.11 = phi %struct.Memory* [ %590, %block_423f5d ], [ %MEMORY.10, %block_.L_42418f ]
  %974 = add i64 %storemerge80, 5
  store i64 %974, i64* %3, align 8
  br label %block_.L_424199

block_.L_424199:                                  ; preds = %block_.L_424194, %block_423f32
  %storemerge79 = phi i64 [ %580, %block_423f32 ], [ %974, %block_.L_424194 ]
  %MEMORY.12 = phi %struct.Memory* [ %562, %block_423f32 ], [ %MEMORY.11, %block_.L_424194 ]
  %975 = add i64 %storemerge79, 5
  store i64 %975, i64* %3, align 8
  br label %block_.L_42419e

block_.L_42419e:                                  ; preds = %block_.L_424199, %block_423eff
  %storemerge78 = phi i64 [ %552, %block_423eff ], [ %975, %block_.L_424199 ]
  %MEMORY.13 = phi %struct.Memory* [ %544, %block_423eff ], [ %MEMORY.12, %block_.L_424199 ]
  %976 = add i64 %storemerge78, 5
  store i64 %976, i64* %3, align 8
  br label %block_.L_4241a3

block_.L_4241a3:                                  ; preds = %block_.L_42419e, %block_423ed4
  %storemerge77 = phi i64 [ %511, %block_423ed4 ], [ %976, %block_.L_42419e ]
  %MEMORY.14 = phi %struct.Memory* [ %493, %block_423ed4 ], [ %MEMORY.13, %block_.L_42419e ]
  %977 = add i64 %storemerge77, 5
  store i64 %977, i64* %3, align 8
  br label %block_.L_4241a8

block_.L_4241a8:                                  ; preds = %block_.L_4241a3, %block_423ea1
  %storemerge76 = phi i64 [ %483, %block_423ea1 ], [ %977, %block_.L_4241a3 ]
  %MEMORY.15 = phi %struct.Memory* [ %475, %block_423ea1 ], [ %MEMORY.14, %block_.L_4241a3 ]
  %978 = add i64 %storemerge76, 5
  store i64 %978, i64* %3, align 8
  br label %block_.L_4241ad

block_.L_4241ad:                                  ; preds = %block_.L_4241a8, %block_423e68
  %storemerge75 = phi i64 [ %442, %block_423e68 ], [ %978, %block_.L_4241a8 ]
  %MEMORY.16 = phi %struct.Memory* [ %427, %block_423e68 ], [ %MEMORY.15, %block_.L_4241a8 ]
  %979 = add i64 %storemerge75, 5
  store i64 %979, i64* %3, align 8
  br label %block_.L_4241b2

block_.L_4241b2:                                  ; preds = %block_.L_4241ad, %block_423e33
  %storemerge74 = phi i64 [ %394, %block_423e33 ], [ %979, %block_.L_4241ad ]
  %MEMORY.17 = phi %struct.Memory* [ %386, %block_423e33 ], [ %MEMORY.16, %block_.L_4241ad ]
  %980 = add i64 %storemerge74, 5
  store i64 %980, i64* %3, align 8
  br label %block_.L_4241b7

block_.L_4241b7:                                  ; preds = %block_.L_4241b2, %block_423e00
  %storemerge = phi i64 [ %353, %block_423e00 ], [ %980, %block_.L_4241b2 ]
  %MEMORY.18 = phi %struct.Memory* [ %345, %block_423e00 ], [ %MEMORY.17, %block_.L_4241b2 ]
  %981 = add i64 %storemerge, -1072
  store i64 %981, i64* %3, align 8
  br label %block_.L_423d87

block_.L_4241bc:                                  ; preds = %block_.L_423d87
  %982 = bitcast [32 x %union.VectorReg]* %130 to double*
  %983 = bitcast %union.VectorReg* %152 to i8*
  %984 = add i64 %312, -48
  %985 = add i64 %311, 3
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RAX.i1193, align 8
  %989 = add i64 %312, -308
  %990 = add i64 %311, 9
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = sub i32 %987, %992
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX.i1193, align 8
  %995 = lshr i32 %993, 31
  %996 = add i32 %993, -2
  %997 = icmp ult i32 %993, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %39, align 1
  %999 = and i32 %996, 255
  %1000 = tail call i32 @llvm.ctpop.i32(i32 %999)
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %46, align 1
  %1004 = xor i32 %996, %993
  %1005 = lshr i32 %1004, 4
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  store i8 %1007, i8* %51, align 1
  %1008 = icmp eq i32 %996, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %54, align 1
  %1010 = lshr i32 %996, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %57, align 1
  %1012 = xor i32 %1010, %995
  %1013 = add nuw nsw i32 %1012, %995
  %1014 = icmp eq i32 %1013, 2
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %63, align 1
  %.v226 = select i1 %1008, i64 45, i64 18
  %1016 = add i64 %311, %.v226
  store i64 %1016, i64* %3, align 8
  br i1 %1008, label %block_.L_4241e9, label %block_4241ce

block_4241ce:                                     ; preds = %block_.L_4241bc
  store i64 ptrtoint (%G__0x457176_type* @G__0x457176 to i64), i64* %RDI.i1356, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1017 = add i64 %1016, 108610
  %1018 = add i64 %1016, 27
  %1019 = load i64, i64* %6, align 8
  %1020 = add i64 %1019, -8
  %1021 = inttoptr i64 %1020 to i64*
  store i64 %1018, i64* %1021, align 8
  store i64 %1020, i64* %6, align 8
  store i64 %1017, i64* %3, align 8
  %call2_4241e4 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1017, %struct.Memory* %MEMORY.0)
  %.pre145 = load i64, i64* %RBP.i, align 8
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_4241e9

block_.L_4241e9:                                  ; preds = %block_4241ce, %block_.L_4241bc
  %1022 = phi i64 [ %1016, %block_.L_4241bc ], [ %.pre146, %block_4241ce ]
  %1023 = phi i64 [ %312, %block_.L_4241bc ], [ %.pre145, %block_4241ce ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4241bc ], [ %call2_4241e4, %block_4241ce ]
  %1024 = add i64 %1023, -56
  %1025 = add i64 %1022, 4
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i64*
  %1027 = load i64, i64* %1026, align 8
  store i64 %1027, i64* %RAX.i1193, align 8
  %1028 = add i64 %1023, -308
  %1029 = add i64 %1022, 10
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RCX.i1162, align 8
  %ECX.i1442 = bitcast %union.anon* %250 to i32*
  %1033 = add i32 %1031, 1
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %RDX.i1146, align 8
  %1035 = icmp eq i32 %1031, -1
  %1036 = icmp eq i32 %1033, 0
  %1037 = or i1 %1035, %1036
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %39, align 1
  %1039 = and i32 %1033, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %46, align 1
  %1044 = xor i32 %1033, %1031
  %1045 = lshr i32 %1044, 4
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  store i8 %1047, i8* %51, align 1
  %1048 = zext i1 %1036 to i8
  store i8 %1048, i8* %54, align 1
  %1049 = lshr i32 %1033, 31
  %1050 = trunc i32 %1049 to i8
  store i8 %1050, i8* %57, align 1
  %1051 = lshr i32 %1031, 31
  %1052 = xor i32 %1049, %1051
  %1053 = add nuw nsw i32 %1052, %1049
  %1054 = icmp eq i32 %1053, 2
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %63, align 1
  %1056 = add i64 %1022, 21
  store i64 %1056, i64* %3, align 8
  store i32 %1033, i32* %1030, align 4
  %1057 = load i32, i32* %ECX.i1442, align 4
  %1058 = load i64, i64* %3, align 8
  %1059 = sext i32 %1057 to i64
  store i64 %1059, i64* %RSI.i423, align 8
  %1060 = load i64, i64* %RAX.i1193, align 8
  %1061 = shl nsw i64 %1059, 3
  %1062 = add i64 %1060, %1061
  %1063 = add i64 %1058, 7
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RAX.i1193, align 8
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -64
  %1068 = add i64 %1058, 11
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i64*
  store i64 %1065, i64* %1069, align 8
  %1070 = load i64, i64* %RBP.i, align 8
  %1071 = add i64 %1070, -56
  %1072 = load i64, i64* %3, align 8
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1071 to i64*
  %1075 = load i64, i64* %1074, align 8
  store i64 %1075, i64* %RAX.i1193, align 8
  %1076 = add i64 %1070, -308
  %1077 = add i64 %1072, 10
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  %1079 = load i32, i32* %1078, align 4
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RCX.i1162, align 8
  %1081 = add i32 %1079, 1
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RDX.i1146, align 8
  %1083 = icmp eq i32 %1079, -1
  %1084 = icmp eq i32 %1081, 0
  %1085 = or i1 %1083, %1084
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %39, align 1
  %1087 = and i32 %1081, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %46, align 1
  %1092 = xor i32 %1081, %1079
  %1093 = lshr i32 %1092, 4
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  store i8 %1095, i8* %51, align 1
  %1096 = zext i1 %1084 to i8
  store i8 %1096, i8* %54, align 1
  %1097 = lshr i32 %1081, 31
  %1098 = trunc i32 %1097 to i8
  store i8 %1098, i8* %57, align 1
  %1099 = lshr i32 %1079, 31
  %1100 = xor i32 %1097, %1099
  %1101 = add nuw nsw i32 %1100, %1097
  %1102 = icmp eq i32 %1101, 2
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %63, align 1
  %1104 = add i64 %1072, 21
  store i64 %1104, i64* %3, align 8
  store i32 %1081, i32* %1078, align 4
  %1105 = load i32, i32* %ECX.i1442, align 4
  %1106 = load i64, i64* %3, align 8
  %1107 = sext i32 %1105 to i64
  store i64 %1107, i64* %RSI.i423, align 8
  %1108 = load i64, i64* %RAX.i1193, align 8
  %1109 = shl nsw i64 %1107, 3
  %1110 = add i64 %1108, %1109
  %1111 = add i64 %1106, 7
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %RAX.i1193, align 8
  %1114 = load i64, i64* %RBP.i, align 8
  %1115 = add i64 %1114, -80
  %1116 = add i64 %1106, 11
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i64*
  store i64 %1113, i64* %1117, align 8
  %1118 = load i64, i64* %RBP.i, align 8
  %1119 = add i64 %1118, -324
  %1120 = load i64, i64* %3, align 8
  %1121 = add i64 %1120, 7
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122, align 4
  store i8 0, i8* %39, align 1
  %1124 = and i32 %1123, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1129 = icmp eq i32 %1123, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %54, align 1
  %1131 = lshr i32 %1123, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v227 = select i1 %1129, i64 43, i64 13
  %1133 = add i64 %1120, %.v227
  store i64 %1133, i64* %3, align 8
  br i1 %1129, label %block_.L_424254, label %block_424236

block_424236:                                     ; preds = %block_.L_4241e9
  %1134 = add i64 %1118, -340
  %1135 = add i64 %1133, 7
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  store i8 0, i8* %39, align 1
  %1138 = and i32 %1137, 255
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  store i8 %1142, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1143 = icmp eq i32 %1137, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %54, align 1
  %1145 = lshr i32 %1137, 31
  %1146 = trunc i32 %1145 to i8
  store i8 %1146, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v228 = select i1 %1143, i64 13, i64 30
  %1147 = add i64 %1133, %.v228
  store i64 %1147, i64* %3, align 8
  br i1 %1143, label %block_424243, label %block_.L_424254

block_424243:                                     ; preds = %block_424236
  store i64 ptrtoint (%G__0x457bd3_type* @G__0x457bd3 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1148 = add i64 %1147, 108493
  %1149 = add i64 %1147, 17
  %1150 = load i64, i64* %6, align 8
  %1151 = add i64 %1150, -8
  %1152 = inttoptr i64 %1151 to i64*
  store i64 %1149, i64* %1152, align 8
  store i64 %1151, i64* %6, align 8
  store i64 %1148, i64* %3, align 8
  %call2_42424f = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1148, %struct.Memory* %MEMORY.19)
  %.pre147 = load i64, i64* %RBP.i, align 8
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_424254

block_.L_424254:                                  ; preds = %block_424236, %block_424243, %block_.L_4241e9
  %1153 = phi i64 [ %1133, %block_.L_4241e9 ], [ %1147, %block_424236 ], [ %.pre148, %block_424243 ]
  %1154 = phi i64 [ %1118, %block_.L_4241e9 ], [ %1118, %block_424236 ], [ %.pre147, %block_424243 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_.L_4241e9 ], [ %MEMORY.19, %block_424236 ], [ %call2_42424f, %block_424243 ]
  %1155 = add i64 %1154, -332
  %1156 = add i64 %1153, 7
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  store i8 0, i8* %39, align 1
  %1159 = and i32 %1158, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1164 = icmp eq i32 %1158, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %54, align 1
  %1166 = lshr i32 %1158, 31
  %1167 = trunc i32 %1166 to i8
  store i8 %1167, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v229 = select i1 %1164, i64 43, i64 13
  %1168 = add i64 %1153, %.v229
  store i64 %1168, i64* %3, align 8
  br i1 %1164, label %block_.L_42427f, label %block_424261

block_424261:                                     ; preds = %block_.L_424254
  %1169 = add i64 %1154, -336
  %1170 = add i64 %1168, 7
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  store i8 0, i8* %39, align 1
  %1173 = and i32 %1172, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1178 = icmp eq i32 %1172, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %54, align 1
  %1180 = lshr i32 %1172, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v230 = select i1 %1178, i64 13, i64 30
  %1182 = add i64 %1168, %.v230
  store i64 %1182, i64* %3, align 8
  br i1 %1178, label %block_42426e, label %block_.L_42427f

block_42426e:                                     ; preds = %block_424261
  store i64 ptrtoint (%G__0x457c1d_type* @G__0x457c1d to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1183 = add i64 %1182, 108450
  %1184 = add i64 %1182, 17
  %1185 = load i64, i64* %6, align 8
  %1186 = add i64 %1185, -8
  %1187 = inttoptr i64 %1186 to i64*
  store i64 %1184, i64* %1187, align 8
  store i64 %1186, i64* %6, align 8
  store i64 %1183, i64* %3, align 8
  %call2_42427a = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1183, %struct.Memory* %MEMORY.20)
  %.pre149 = load i64, i64* %RBP.i, align 8
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_42427f

block_.L_42427f:                                  ; preds = %block_424261, %block_42426e, %block_.L_424254
  %1188 = phi i64 [ %1168, %block_.L_424254 ], [ %1182, %block_424261 ], [ %.pre150, %block_42426e ]
  %1189 = phi i64 [ %1154, %block_.L_424254 ], [ %1154, %block_424261 ], [ %.pre149, %block_42426e ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_424254 ], [ %MEMORY.20, %block_424261 ], [ %call2_42427a, %block_42426e ]
  %1190 = add i64 %1189, -92
  %1191 = add i64 %1188, 4
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i32*
  %1193 = load i32, i32* %1192, align 4
  store i8 0, i8* %39, align 1
  %1194 = and i32 %1193, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194)
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1199 = icmp eq i32 %1193, 0
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %54, align 1
  %1201 = lshr i32 %1193, 31
  %1202 = trunc i32 %1201 to i8
  store i8 %1202, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v231 = select i1 %1199, i64 10, i64 72
  %1203 = add i64 %1188, %.v231
  store i64 %1203, i64* %3, align 8
  br i1 %1199, label %block_424289, label %block_.L_4242c7

block_424289:                                     ; preds = %block_.L_42427f
  store i64 ptrtoint (%G__0x457c6d_type* @G__0x457c6d to i64), i64* %RDI.i1356, align 8
  store i64 0, i64* %RDX.i1146, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %51, align 1
  %1204 = add i64 %1189, -80
  %1205 = add i64 %1203, 16
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %RSI.i423, align 8
  %1208 = add i64 %1203, 4695
  %1209 = add i64 %1203, 21
  %1210 = load i64, i64* %6, align 8
  %1211 = add i64 %1210, -8
  %1212 = inttoptr i64 %1211 to i64*
  store i64 %1209, i64* %1212, align 8
  store i64 %1211, i64* %6, align 8
  store i64 %1208, i64* %3, align 8
  %call2_424299 = tail call %struct.Memory* @sub_4254e0.Strparse(%struct.State* nonnull %0, i64 %1208, %struct.Memory* %MEMORY.21)
  %1213 = load i32, i32* %EAX.i1603, align 4
  %1214 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1215 = and i32 %1213, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1220 = icmp eq i32 %1213, 0
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %54, align 1
  %1222 = lshr i32 %1213, 31
  %1223 = trunc i32 %1222 to i8
  store i8 %1223, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v262 = select i1 %1220, i64 9, i64 34
  %1224 = add i64 %1214, %.v262
  store i64 %1224, i64* %3, align 8
  br i1 %1220, label %block_4242a7, label %block_.L_4242c0

block_4242a7:                                     ; preds = %block_424289
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -80
  %1227 = add i64 %1224, 4
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RDI.i1356, align 8
  store i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295), i64* %RAX.i1193, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i423, align 8
  %1230 = add i64 %1224, -142663
  %1231 = add i64 %1224, 16
  %1232 = load i64, i64* %6, align 8
  %1233 = add i64 %1232, -8
  %1234 = inttoptr i64 %1233 to i64*
  store i64 %1231, i64* %1234, align 8
  store i64 %1233, i64* %6, align 8
  store i64 %1230, i64* %3, align 8
  %1235 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @strcmp to i64), %struct.Memory* %call2_424299)
  %1236 = load i32, i32* %EAX.i1603, align 4
  %1237 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1238 = and i32 %1236, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1243 = icmp eq i32 %1236, 0
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %54, align 1
  %1245 = lshr i32 %1236, 31
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v263 = select i1 %1243, i64 9, i64 16
  %1247 = add i64 %1237, %.v263
  store i64 %1247, i64* %3, align 8
  br i1 %1243, label %block_.L_4242c0, label %block_.L_4242c7

block_.L_4242c0:                                  ; preds = %block_4242a7, %block_424289
  %1248 = phi i64 [ %1224, %block_424289 ], [ %1247, %block_4242a7 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_424299, %block_424289 ], [ %1235, %block_4242a7 ]
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -92
  %1251 = add i64 %1248, 7
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  store i32 7, i32* %1252, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_4242c7

block_.L_4242c7:                                  ; preds = %block_4242a7, %block_.L_42427f, %block_.L_4242c0
  %1253 = phi i64 [ %1203, %block_.L_42427f ], [ %.pre151, %block_.L_4242c0 ], [ %1247, %block_4242a7 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.21, %block_.L_42427f ], [ %MEMORY.22, %block_.L_4242c0 ], [ %1235, %block_4242a7 ]
  store i64 ptrtoint (%G__0x457c76_type* @G__0x457c76 to i64), i64* %RDX.i1146, align 8
  %1254 = load i64, i64* %RBP.i, align 8
  %1255 = add i64 %1254, -80
  %1256 = add i64 %1253, 14
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RDI.i1356, align 8
  %1259 = add i64 %1254, -92
  %1260 = add i64 %1253, 17
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i32*
  %1262 = load i32, i32* %1261, align 4
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RSI.i423, align 8
  %1264 = add i64 %1253, 109369
  %1265 = add i64 %1253, 22
  %1266 = load i64, i64* %6, align 8
  %1267 = add i64 %1266, -8
  %1268 = inttoptr i64 %1267 to i64*
  store i64 %1265, i64* %1268, align 8
  store i64 %1267, i64* %6, align 8
  store i64 %1264, i64* %3, align 8
  %call2_4242d8 = tail call %struct.Memory* @sub_43ee00.SeqfileOpen(%struct.State* nonnull %0, i64 %1264, %struct.Memory* %MEMORY.23)
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -88
  %1271 = load i64, i64* %RAX.i1193, align 8
  %1272 = load i64, i64* %3, align 8
  %1273 = add i64 %1272, 4
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1270 to i64*
  store i64 %1271, i64* %1274, align 8
  %1275 = load i64, i64* %RAX.i1193, align 8
  %1276 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1277 = trunc i64 %1275 to i32
  %1278 = and i32 %1277, 255
  %1279 = tail call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1283 = icmp eq i64 %1275, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %54, align 1
  %1285 = lshr i64 %1275, 63
  %1286 = trunc i64 %1285 to i8
  store i8 %1286, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v232 = select i1 %1283, i64 10, i64 41
  %1287 = add i64 %1276, %.v232
  store i64 %1287, i64* %3, align 8
  br i1 %1283, label %block_4242eb, label %block_.L_42430a

block_4242eb:                                     ; preds = %block_.L_4242c7
  store i64 ptrtoint (%G__0x457c7e_type* @G__0x457c7e to i64), i64* %RDI.i1356, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %RDX.i1146, align 8
  %1288 = load i64, i64* %RBP.i, align 8
  %1289 = add i64 %1288, -80
  %1290 = add i64 %1287, 24
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1293 = add i64 %1287, 108325
  %1294 = add i64 %1287, 31
  %1295 = load i64, i64* %6, align 8
  %1296 = add i64 %1295, -8
  %1297 = inttoptr i64 %1296 to i64*
  store i64 %1294, i64* %1297, align 8
  store i64 %1296, i64* %6, align 8
  store i64 %1293, i64* %3, align 8
  %call2_424305 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1293, %struct.Memory* %call2_4242d8)
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_42430a

block_.L_42430a:                                  ; preds = %block_.L_4242c7, %block_4242eb
  %1298 = phi i64 [ %1287, %block_.L_4242c7 ], [ %.pre152, %block_4242eb ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_4242d8, %block_.L_4242c7 ], [ %call2_424305, %block_4242eb ]
  store i64 ptrtoint (%G__0x457cab_type* @G__0x457cab to i64), i64* %RSI.i423, align 8
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -64
  %1301 = add i64 %1298, 14
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RDI.i1356, align 8
  %1304 = add i64 %1298, -31242
  %1305 = add i64 %1298, 19
  %1306 = load i64, i64* %6, align 8
  %1307 = add i64 %1306, -8
  %1308 = inttoptr i64 %1307 to i64*
  store i64 %1305, i64* %1308, align 8
  store i64 %1307, i64* %6, align 8
  store i64 %1304, i64* %3, align 8
  %call2_424318 = tail call %struct.Memory* @sub_41c900.HMMFileOpen(%struct.State* nonnull %0, i64 %1304, %struct.Memory* %MEMORY.24)
  %1309 = load i64, i64* %RBP.i, align 8
  %1310 = add i64 %1309, -72
  %1311 = load i64, i64* %RAX.i1193, align 8
  %1312 = load i64, i64* %3, align 8
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1310 to i64*
  store i64 %1311, i64* %1314, align 8
  %1315 = load i64, i64* %RAX.i1193, align 8
  %1316 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1317 = trunc i64 %1315 to i32
  %1318 = and i32 %1317, 255
  %1319 = tail call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  store i8 %1322, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1323 = icmp eq i64 %1315, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %54, align 1
  %1325 = lshr i64 %1315, 63
  %1326 = trunc i64 %1325 to i8
  store i8 %1326, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v233 = select i1 %1323, i64 10, i64 41
  %1327 = add i64 %1316, %.v233
  store i64 %1327, i64* %3, align 8
  br i1 %1323, label %block_42432b, label %block_.L_42434a

block_42432b:                                     ; preds = %block_.L_42430a
  store i64 ptrtoint (%G__0x457cb3_type* @G__0x457cb3 to i64), i64* %RDI.i1356, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %RDX.i1146, align 8
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -64
  %1330 = add i64 %1327, 24
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1333 = add i64 %1327, 108261
  %1334 = add i64 %1327, 31
  %1335 = load i64, i64* %6, align 8
  %1336 = add i64 %1335, -8
  %1337 = inttoptr i64 %1336 to i64*
  store i64 %1334, i64* %1337, align 8
  store i64 %1336, i64* %6, align 8
  store i64 %1333, i64* %3, align 8
  %call2_424345 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1333, %struct.Memory* %call2_424318)
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_42434a

block_.L_42434a:                                  ; preds = %block_.L_42430a, %block_42432b
  %1338 = phi i64 [ %1327, %block_.L_42430a ], [ %.pre153, %block_42432b ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_424318, %block_.L_42430a ], [ %call2_424345, %block_42432b ]
  %1339 = load i64, i64* %RBP.i, align 8
  %1340 = add i64 %1339, -104
  store i64 %1340, i64* %RSI.i423, align 8
  %1341 = add i64 %1339, -72
  %1342 = add i64 %1338, 8
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i64*
  %1344 = load i64, i64* %1343, align 8
  store i64 %1344, i64* %RDI.i1356, align 8
  %1345 = add i64 %1338, -7754
  %1346 = add i64 %1338, 13
  %1347 = load i64, i64* %6, align 8
  %1348 = add i64 %1347, -8
  %1349 = inttoptr i64 %1348 to i64*
  store i64 %1346, i64* %1349, align 8
  store i64 %1348, i64* %6, align 8
  store i64 %1345, i64* %3, align 8
  %call2_424352 = tail call %struct.Memory* @sub_422500.HMMFileRead(%struct.State* nonnull %0, i64 %1345, %struct.Memory* %MEMORY.25)
  %1350 = load i32, i32* %EAX.i1603, align 4
  %1351 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1352 = and i32 %1350, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1357 = icmp eq i32 %1350, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %54, align 1
  %1359 = lshr i32 %1350, 31
  %1360 = trunc i32 %1359 to i8
  store i8 %1360, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v234 = select i1 %1357, i64 9, i64 30
  %1361 = add i64 %1351, %.v234
  store i64 %1361, i64* %3, align 8
  br i1 %1357, label %block_424360, label %block_.L_424375

block_424360:                                     ; preds = %block_.L_42434a
  store i64 ptrtoint (%G__0x457cd1_type* @G__0x457cd1 to i64), i64* %RDI.i1356, align 8
  %1362 = load i64, i64* %RBP.i, align 8
  %1363 = add i64 %1362, -64
  %1364 = add i64 %1361, 14
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i64*
  %1366 = load i64, i64* %1365, align 8
  store i64 %1366, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1367 = add i64 %1361, 108208
  %1368 = add i64 %1361, 21
  %1369 = load i64, i64* %6, align 8
  %1370 = add i64 %1369, -8
  %1371 = inttoptr i64 %1370 to i64*
  store i64 %1368, i64* %1371, align 8
  store i64 %1370, i64* %6, align 8
  store i64 %1367, i64* %3, align 8
  %call2_424370 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1367, %struct.Memory* %call2_424352)
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_424375

block_.L_424375:                                  ; preds = %block_.L_42434a, %block_424360
  %1372 = phi i64 [ %1361, %block_.L_42434a ], [ %.pre154, %block_424360 ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_424352, %block_.L_42434a ], [ %call2_424370, %block_424360 ]
  %1373 = load i64, i64* %RBP.i, align 8
  %1374 = add i64 %1373, -104
  %1375 = add i64 %1372, 5
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i64*
  %1377 = load i64, i64* %1376, align 8
  store i8 0, i8* %39, align 1
  %1378 = trunc i64 %1377 to i32
  %1379 = and i32 %1378, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1384 = icmp eq i64 %1377, 0
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %54, align 1
  %1386 = lshr i64 %1377, 63
  %1387 = trunc i64 %1386 to i8
  store i8 %1387, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v235 = select i1 %1384, i64 11, i64 32
  %1388 = add i64 %1372, %.v235
  store i64 %1388, i64* %3, align 8
  br i1 %1384, label %block_424380, label %block_.L_424395

block_424380:                                     ; preds = %block_.L_424375
  store i64 ptrtoint (%G__0x457cf2_type* @G__0x457cf2 to i64), i64* %RDI.i1356, align 8
  %1389 = add i64 %1373, -64
  %1390 = add i64 %1388, 14
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1393 = add i64 %1388, 108176
  %1394 = add i64 %1388, 21
  %1395 = load i64, i64* %6, align 8
  %1396 = add i64 %1395, -8
  %1397 = inttoptr i64 %1396 to i64*
  store i64 %1394, i64* %1397, align 8
  store i64 %1396, i64* %6, align 8
  store i64 %1393, i64* %3, align 8
  %call2_424390 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1393, %struct.Memory* %MEMORY.26)
  %.pre155 = load i64, i64* %RBP.i, align 8
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_424395

block_.L_424395:                                  ; preds = %block_.L_424375, %block_424380
  %1398 = phi i64 [ %1388, %block_.L_424375 ], [ %.pre156, %block_424380 ]
  %1399 = phi i64 [ %1373, %block_.L_424375 ], [ %.pre155, %block_424380 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_424375 ], [ %call2_424390, %block_424380 ]
  %1400 = add i64 %1399, -104
  %1401 = add i64 %1398, 4
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %RDI.i1356, align 8
  %1404 = add i64 %1399, -316
  %1405 = add i64 %1398, 11
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = icmp eq i32 %1407, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %AL.i1531, align 1
  store i8 0, i8* %39, align 1
  %1410 = zext i1 %1408 to i32
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = xor i8 %1412, 1
  store i8 %1413, i8* %46, align 1
  %1414 = xor i8 %1409, 1
  store i8 %1414, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %51, align 1
  %1415 = zext i1 %1408 to i64
  store i64 %1415, i64* %RSI.i423, align 8
  %1416 = add i64 %1398, 60315
  %1417 = add i64 %1398, 26
  %1418 = load i64, i64* %6, align 8
  %1419 = add i64 %1418, -8
  %1420 = inttoptr i64 %1419 to i64*
  store i64 %1417, i64* %1420, align 8
  store i64 %1419, i64* %6, align 8
  store i64 %1416, i64* %3, align 8
  %call2_4243aa = tail call %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* nonnull %0, i64 %1416, %struct.Memory* %MEMORY.27)
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -320
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, 7
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1422 to i32*
  %1426 = load i32, i32* %1425, align 4
  store i8 0, i8* %39, align 1
  %1427 = and i32 %1426, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1432 = icmp eq i32 %1426, 0
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %54, align 1
  %1434 = lshr i32 %1426, 31
  %1435 = trunc i32 %1434 to i8
  store i8 %1435, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v236 = select i1 %1432, i64 44, i64 13
  %1436 = add i64 %1423, %.v236
  store i64 %1436, i64* %3, align 8
  br i1 %1432, label %block_.L_4243db, label %block_4243bc

block_4243bc:                                     ; preds = %block_.L_424395
  %1437 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %1438 = add i32 %1437, -2
  %1439 = icmp ult i32 %1437, 2
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %39, align 1
  %1441 = and i32 %1438, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %46, align 1
  %1446 = xor i32 %1438, %1437
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %51, align 1
  %1450 = icmp eq i32 %1438, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %54, align 1
  %1452 = lshr i32 %1438, 31
  %1453 = trunc i32 %1452 to i8
  store i8 %1453, i8* %57, align 1
  %1454 = lshr i32 %1437, 31
  %1455 = xor i32 %1452, %1454
  %1456 = add nuw nsw i32 %1455, %1454
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %63, align 1
  %.v237 = select i1 %1450, i64 14, i64 31
  %1459 = add i64 %1436, %.v237
  store i64 %1459, i64* %3, align 8
  br i1 %1450, label %block_4243ca, label %block_.L_4243db

block_4243ca:                                     ; preds = %block_4243bc
  store i64 ptrtoint (%G__0x457d2b_type* @G__0x457d2b to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1460 = add i64 %1459, 108102
  %1461 = add i64 %1459, 17
  %1462 = load i64, i64* %6, align 8
  %1463 = add i64 %1462, -8
  %1464 = inttoptr i64 %1463 to i64*
  store i64 %1461, i64* %1464, align 8
  store i64 %1463, i64* %6, align 8
  store i64 %1460, i64* %3, align 8
  %call2_4243d6 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1460, %struct.Memory* %call2_4243aa)
  %.pre157 = load i64, i64* %RBP.i, align 8
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_4243db

block_.L_4243db:                                  ; preds = %block_4243bc, %block_4243ca, %block_.L_424395
  %1465 = phi i64 [ %1436, %block_.L_424395 ], [ %1459, %block_4243bc ], [ %.pre158, %block_4243ca ]
  %1466 = phi i64 [ %1421, %block_.L_424395 ], [ %1421, %block_4243bc ], [ %.pre157, %block_4243ca ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_4243aa, %block_.L_424395 ], [ %call2_4243aa, %block_4243bc ], [ %call2_4243d6, %block_4243ca ]
  %1467 = add i64 %1466, -288
  store i64 %1467, i64* %RDI.i1356, align 8
  %1468 = add i64 %1466, -104
  %1469 = add i64 %1465, 11
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i64*
  %1471 = load i64, i64* %1470, align 8
  store i64 %1471, i64* %RSI.i423, align 8
  %1472 = add i64 %1465, 19269
  %1473 = add i64 %1465, 16
  %1474 = load i64, i64* %6, align 8
  %1475 = add i64 %1474, -8
  %1476 = inttoptr i64 %1475 to i64*
  store i64 %1473, i64* %1476, align 8
  store i64 %1475, i64* %6, align 8
  store i64 %1472, i64* %3, align 8
  %call2_4243e6 = tail call %struct.Memory* @sub_428f20.SetAutocuts(%struct.State* nonnull %0, i64 %1472, %struct.Memory* %MEMORY.28)
  %1477 = load i32, i32* %EAX.i1603, align 4
  %1478 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1479 = and i32 %1477, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1484 = icmp eq i32 %1477, 0
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %54, align 1
  %1486 = lshr i32 %1477, 31
  %1487 = trunc i32 %1486 to i8
  store i8 %1487, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v238 = select i1 %1484, i64 9, i64 33
  %1488 = add i64 %1478, %.v238
  store i64 %1488, i64* %3, align 8
  br i1 %1484, label %block_4243f4, label %block_.L_42440c

block_4243f4:                                     ; preds = %block_.L_4243db
  store i64 ptrtoint (%G__0x457d72_type* @G__0x457d72 to i64), i64* %RDI.i1356, align 8
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -104
  %1491 = add i64 %1488, 14
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %RAX.i1193, align 8
  %1494 = add i64 %1488, 17
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1497 = add i64 %1488, 108060
  %1498 = add i64 %1488, 24
  %1499 = load i64, i64* %6, align 8
  %1500 = add i64 %1499, -8
  %1501 = inttoptr i64 %1500 to i64*
  store i64 %1498, i64* %1501, align 8
  store i64 %1500, i64* %6, align 8
  store i64 %1497, i64* %3, align 8
  %call2_424407 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1497, %struct.Memory* %call2_4243e6)
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_42440c

block_.L_42440c:                                  ; preds = %block_.L_4243db, %block_4243f4
  %1502 = phi i64 [ %1488, %block_.L_4243db ], [ %.pre159, %block_4243f4 ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_4243e6, %block_.L_4243db ], [ %call2_424407, %block_4243f4 ]
  store i64 ptrtoint (%G__0x6617f0_type* @G__0x6617f0 to i64), i64* %RSI.i423, align 8
  %1503 = load i64, i64* bitcast (%G_0x663040_type* @G_0x663040 to i64*), align 8
  store i64 %1503, i64* %RDI.i1356, align 8
  %1504 = add i64 %1502, 18324
  %1505 = add i64 %1502, 23
  %1506 = load i64, i64* %6, align 8
  %1507 = add i64 %1506, -8
  %1508 = inttoptr i64 %1507 to i64*
  store i64 %1505, i64* %1508, align 8
  store i64 %1507, i64* %6, align 8
  store i64 %1504, i64* %3, align 8
  %call2_42441e = tail call %struct.Memory* @sub_428ba0.HMMERBanner(%struct.State* nonnull %0, i64 %1504, %struct.Memory* %MEMORY.29)
  %1509 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457dae_type* @G__0x457dae to i64), i64* %RDI.i1356, align 8
  %1510 = load i64, i64* %RBP.i, align 8
  %1511 = add i64 %1510, -64
  %1512 = add i64 %1509, 14
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i64*
  %1514 = load i64, i64* %1513, align 8
  store i64 %1514, i64* %RSI.i423, align 8
  %1515 = add i64 %1510, -104
  %1516 = add i64 %1509, 18
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i64*
  %1518 = load i64, i64* %1517, align 8
  store i64 %1518, i64* %RAX.i1193, align 8
  %1519 = add i64 %1509, 21
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i64*
  %1521 = load i64, i64* %1520, align 8
  store i64 %1521, i64* %RDX.i1146, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1522 = add i64 %1509, -143251
  %1523 = add i64 %1509, 28
  %1524 = load i64, i64* %6, align 8
  %1525 = add i64 %1524, -8
  %1526 = inttoptr i64 %1525 to i64*
  store i64 %1523, i64* %1526, align 8
  store i64 %1525, i64* %6, align 8
  store i64 %1522, i64* %3, align 8
  %1527 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_42441e)
  %1528 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x457dd3_type* @G__0x457dd3 to i64), i64* %RDI.i1356, align 8
  %1529 = load i64, i64* %RBP.i, align 8
  %1530 = add i64 %1529, -80
  %1531 = add i64 %1528, 14
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i64*
  %1533 = load i64, i64* %1532, align 8
  store i64 %1533, i64* %RSI.i423, align 8
  %1534 = add i64 %1529, -364
  %1535 = load i32, i32* %EAX.i1603, align 4
  %1536 = add i64 %1528, 20
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1534 to i32*
  store i32 %1535, i32* %1537, align 4
  %1538 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1539 = add i64 %1538, -143299
  %1540 = add i64 %1538, 7
  %1541 = load i64, i64* %6, align 8
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1540, i64* %1543, align 8
  store i64 %1542, i64* %6, align 8
  store i64 %1539, i64* %3, align 8
  %1544 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1527)
  %1545 = load i64, i64* %RBP.i, align 8
  %1546 = add i64 %1545, -324
  %1547 = load i64, i64* %3, align 8
  %1548 = add i64 %1547, 7
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1546 to i32*
  %1550 = load i32, i32* %1549, align 4
  store i8 0, i8* %39, align 1
  %1551 = and i32 %1550, 255
  %1552 = tail call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1556 = icmp eq i32 %1550, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %54, align 1
  %1558 = lshr i32 %1550, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %1560 = add i64 %1545, -368
  %1561 = load i32, i32* %EAX.i1603, align 4
  %1562 = add i64 %1547, 13
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1560 to i32*
  store i32 %1561, i32* %1563, align 4
  %1564 = load i64, i64* %3, align 8
  %1565 = load i8, i8* %54, align 1
  %1566 = icmp ne i8 %1565, 0
  %.v273 = select i1 %1566, i64 29, i64 6
  %1567 = add i64 %1564, %.v273
  store i64 %1567, i64* %3, align 8
  %cmpBr_424467 = icmp eq i8 %1565, 1
  br i1 %cmpBr_424467, label %block_.L_424484, label %block_42446d

block_42446d:                                     ; preds = %block_.L_42440c
  store i64 ptrtoint (%G__0x457df3_type* @G__0x457df3 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1568 = add i64 %1567, -143325
  %1569 = add i64 %1567, 17
  %1570 = load i64, i64* %6, align 8
  %1571 = add i64 %1570, -8
  %1572 = inttoptr i64 %1571 to i64*
  store i64 %1569, i64* %1572, align 8
  store i64 %1571, i64* %6, align 8
  store i64 %1568, i64* %3, align 8
  %1573 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1544)
  %1574 = load i64, i64* %RBP.i, align 8
  %1575 = add i64 %1574, -372
  %1576 = load i32, i32* %EAX.i1603, align 4
  %1577 = load i64, i64* %3, align 8
  %1578 = add i64 %1577, 6
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1575 to i32*
  store i32 %1576, i32* %1579, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_424484

block_.L_424484:                                  ; preds = %block_42446d, %block_.L_42440c
  %1580 = phi i64 [ %1567, %block_.L_42440c ], [ %.pre160, %block_42446d ]
  %MEMORY.30 = phi %struct.Memory* [ %1544, %block_.L_42440c ], [ %1573, %block_42446d ]
  store i64 ptrtoint (%G__0x457e17_type* @G__0x457e17 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1581 = add i64 %1580, -143348
  %1582 = add i64 %1580, 17
  %1583 = load i64, i64* %6, align 8
  %1584 = add i64 %1583, -8
  %1585 = inttoptr i64 %1584 to i64*
  store i64 %1582, i64* %1585, align 8
  store i64 %1584, i64* %6, align 8
  store i64 %1581, i64* %3, align 8
  %1586 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.30)
  %1587 = load i64, i64* %3, align 8
  %1588 = add i64 %1587, ptrtoint (%G_0x302c7__rip__type* @G_0x302c7__rip_ to i64)
  %1589 = add i64 %1587, 8
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = bitcast [32 x %union.VectorReg]* %130 to i32*
  store i32 %1591, i32* %1592, align 1
  %1593 = bitcast i8* %256 to float*
  store float 0.000000e+00, float* %1593, align 1
  %1594 = bitcast i64* %137 to float*
  store float 0.000000e+00, float* %1594, align 1
  %1595 = bitcast i8* %259 to float*
  store float 0.000000e+00, float* %1595, align 1
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -288
  %1598 = add i64 %1587, 16
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  store i32 %1600, i32* %145, align 1
  store float 0.000000e+00, float* %147, align 1
  store float 0.000000e+00, float* %149, align 1
  store float 0.000000e+00, float* %151, align 1
  %1601 = add i64 %1587, 19
  store i64 %1601, i64* %3, align 8
  %1602 = load <2 x float>, <2 x float>* %223, align 1
  %1603 = extractelement <2 x float> %1602, i32 0
  %1604 = load <2 x float>, <2 x float>* %261, align 1
  %1605 = extractelement <2 x float> %1604, i32 0
  %1606 = fcmp uno float %1603, %1605
  br i1 %1606, label %1607, label %1617

; <label>:1607:                                   ; preds = %block_.L_424484
  %1608 = fadd float %1603, %1605
  %1609 = bitcast float %1608 to i32
  %1610 = and i32 %1609, 2143289344
  %1611 = icmp eq i32 %1610, 2139095040
  %1612 = and i32 %1609, 4194303
  %1613 = icmp ne i32 %1612, 0
  %1614 = and i1 %1611, %1613
  br i1 %1614, label %1615, label %1623

; <label>:1615:                                   ; preds = %1607
  %1616 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1601, %struct.Memory* %1586)
  %.pre161 = load i64, i64* %RBP.i, align 8
  %.pre162 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit1160

; <label>:1617:                                   ; preds = %block_.L_424484
  %1618 = fcmp ogt float %1603, %1605
  br i1 %1618, label %1623, label %1619

; <label>:1619:                                   ; preds = %1617
  %1620 = fcmp olt float %1603, %1605
  br i1 %1620, label %1623, label %1621

; <label>:1621:                                   ; preds = %1619
  %1622 = fcmp oeq float %1603, %1605
  br i1 %1622, label %1623, label %1627

; <label>:1623:                                   ; preds = %1621, %1619, %1617, %1607
  %1624 = phi i8 [ 0, %1617 ], [ 0, %1619 ], [ 1, %1621 ], [ 1, %1607 ]
  %1625 = phi i8 [ 0, %1617 ], [ 0, %1619 ], [ 0, %1621 ], [ 1, %1607 ]
  %1626 = phi i8 [ 0, %1617 ], [ 1, %1619 ], [ 0, %1621 ], [ 1, %1607 ]
  store i8 %1624, i8* %54, align 1
  store i8 %1625, i8* %46, align 1
  store i8 %1626, i8* %39, align 1
  br label %1627

; <label>:1627:                                   ; preds = %1623, %1621
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1160

routine_ucomiss__xmm0___xmm1.exit1160:            ; preds = %1627, %1615
  %1628 = phi i64 [ %.pre162, %1615 ], [ %1601, %1627 ]
  %1629 = phi i64 [ %.pre161, %1615 ], [ %1596, %1627 ]
  %1630 = phi %struct.Memory* [ %1616, %1615 ], [ %1586, %1627 ]
  %1631 = add i64 %1629, -376
  %1632 = load i32, i32* %EAX.i1603, align 4
  %1633 = add i64 %1628, 6
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1631 to i32*
  store i32 %1632, i32* %1634, align 4
  %1635 = load i64, i64* %3, align 8
  %1636 = add i64 %1635, 40
  %1637 = add i64 %1635, 6
  %1638 = load i8, i8* %54, align 1
  %1639 = icmp eq i8 %1638, 0
  %1640 = select i1 %1639, i64 %1636, i64 %1637
  store i64 %1640, i64* %3, align 8
  br i1 %1639, label %block_.L_4244d6, label %block_4244b4

block_4244b4:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1160
  %1641 = load i8, i8* %46, align 1
  %1642 = icmp ne i8 %1641, 0
  %.v274 = select i1 %1642, i64 34, i64 6
  %1643 = add i64 %1640, %.v274
  store i64 %1643, i64* %3, align 8
  %cmpBr_4244b4 = icmp eq i8 %1641, 1
  br i1 %cmpBr_4244b4, label %block_.L_4244d6, label %block_4244ba

block_4244ba:                                     ; preds = %block_4244b4
  store i64 ptrtoint (%G__0x457e34_type* @G__0x457e34 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1644 = add i64 %1643, -143402
  %1645 = add i64 %1643, 17
  %1646 = load i64, i64* %6, align 8
  %1647 = add i64 %1646, -8
  %1648 = inttoptr i64 %1647 to i64*
  store i64 %1645, i64* %1648, align 8
  store i64 %1647, i64* %6, align 8
  store i64 %1644, i64* %3, align 8
  %1649 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1630)
  %1650 = load i64, i64* %RBP.i, align 8
  %1651 = add i64 %1650, -380
  %1652 = load i32, i32* %EAX.i1603, align 4
  %1653 = load i64, i64* %3, align 8
  %1654 = add i64 %1653, 6
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1651 to i32*
  store i32 %1652, i32* %1655, align 4
  %1656 = load i64, i64* %3, align 8
  %1657 = add i64 %1656, 197
  br label %block_.L_424596

block_.L_4244d6:                                  ; preds = %block_4244b4, %routine_ucomiss__xmm0___xmm1.exit1160
  %1658 = phi i64 [ %1643, %block_4244b4 ], [ %1636, %routine_ucomiss__xmm0___xmm1.exit1160 ]
  store i64 ptrtoint (%G__0x457e3c_type* @G__0x457e3c to i64), i64* %RDI.i1356, align 8
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -288
  %1661 = add i64 %1658, 18
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to float*
  %1663 = load float, float* %1662, align 4
  %1664 = fpext float %1663 to double
  store double %1664, double* %982, align 1
  store i8 1, i8* %AL.i1531, align 1
  %1665 = add i64 %1658, -143430
  %1666 = add i64 %1658, 25
  %1667 = load i64, i64* %6, align 8
  %1668 = add i64 %1667, -8
  %1669 = inttoptr i64 %1668 to i64*
  store i64 %1666, i64* %1669, align 8
  store i64 %1668, i64* %6, align 8
  store i64 %1665, i64* %3, align 8
  %1670 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1630)
  %1671 = load i64, i64* %RBP.i, align 8
  %1672 = add i64 %1671, -256
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 7
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1672 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = add i32 %1676, -1
  %1678 = icmp eq i32 %1676, 0
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %39, align 1
  %1680 = and i32 %1677, 255
  %1681 = tail call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  store i8 %1684, i8* %46, align 1
  %1685 = xor i32 %1677, %1676
  %1686 = lshr i32 %1685, 4
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  store i8 %1688, i8* %51, align 1
  %1689 = icmp eq i32 %1677, 0
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %54, align 1
  %1691 = lshr i32 %1677, 31
  %1692 = trunc i32 %1691 to i8
  store i8 %1692, i8* %57, align 1
  %1693 = lshr i32 %1676, 31
  %1694 = xor i32 %1691, %1693
  %1695 = add nuw nsw i32 %1694, %1693
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %63, align 1
  %1698 = add i64 %1671, -384
  %1699 = load i32, i32* %EAX.i1603, align 4
  %1700 = add i64 %1673, 13
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1698 to i32*
  store i32 %1699, i32* %1701, align 4
  %1702 = load i64, i64* %3, align 8
  %1703 = load i8, i8* %54, align 1
  %1704 = icmp eq i8 %1703, 0
  %.v283 = select i1 %1704, i64 34, i64 6
  %1705 = add i64 %1702, %.v283
  store i64 %1705, i64* %3, align 8
  br i1 %1704, label %block_.L_42451e, label %block_424502

block_424502:                                     ; preds = %block_.L_4244d6
  store i64 ptrtoint (%G__0x457e44_type* @G__0x457e44 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1706 = add i64 %1705, -143474
  %1707 = add i64 %1705, 17
  %1708 = load i64, i64* %6, align 8
  %1709 = add i64 %1708, -8
  %1710 = inttoptr i64 %1709 to i64*
  store i64 %1707, i64* %1710, align 8
  store i64 %1709, i64* %6, align 8
  store i64 %1706, i64* %3, align 8
  %1711 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1670)
  %1712 = load i64, i64* %RBP.i, align 8
  %1713 = add i64 %1712, -388
  %1714 = load i32, i32* %EAX.i1603, align 4
  %1715 = load i64, i64* %3, align 8
  %1716 = add i64 %1715, 6
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1713 to i32*
  store i32 %1714, i32* %1717, align 4
  %1718 = load i64, i64* %3, align 8
  %1719 = add i64 %1718, 120
  br label %block_.L_424591

block_.L_42451e:                                  ; preds = %block_.L_4244d6
  %1720 = load i64, i64* %RBP.i, align 8
  %1721 = add i64 %1720, -256
  %1722 = add i64 %1705, 7
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = add i32 %1724, -2
  %1726 = icmp ult i32 %1724, 2
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %39, align 1
  %1728 = and i32 %1725, 255
  %1729 = tail call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %46, align 1
  %1733 = xor i32 %1725, %1724
  %1734 = lshr i32 %1733, 4
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  store i8 %1736, i8* %51, align 1
  %1737 = icmp eq i32 %1725, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %54, align 1
  %1739 = lshr i32 %1725, 31
  %1740 = trunc i32 %1739 to i8
  store i8 %1740, i8* %57, align 1
  %1741 = lshr i32 %1724, 31
  %1742 = xor i32 %1739, %1741
  %1743 = add nuw nsw i32 %1742, %1741
  %1744 = icmp eq i32 %1743, 2
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %63, align 1
  %.v260 = select i1 %1737, i64 13, i64 41
  %1746 = add i64 %1705, %.v260
  store i64 %1746, i64* %3, align 8
  br i1 %1737, label %block_42452b, label %block_.L_424547

block_42452b:                                     ; preds = %block_.L_42451e
  store i64 ptrtoint (%G__0x457e4c_type* @G__0x457e4c to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1747 = add i64 %1746, -143515
  %1748 = add i64 %1746, 17
  %1749 = load i64, i64* %6, align 8
  %1750 = add i64 %1749, -8
  %1751 = inttoptr i64 %1750 to i64*
  store i64 %1748, i64* %1751, align 8
  store i64 %1750, i64* %6, align 8
  store i64 %1747, i64* %3, align 8
  %1752 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1670)
  %1753 = load i64, i64* %RBP.i, align 8
  %1754 = add i64 %1753, -392
  %1755 = load i32, i32* %EAX.i1603, align 4
  %1756 = load i64, i64* %3, align 8
  %1757 = add i64 %1756, 6
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1754 to i32*
  store i32 %1755, i32* %1758, align 4
  %1759 = load i64, i64* %3, align 8
  %1760 = add i64 %1759, 74
  br label %block_.L_42458c

block_.L_424547:                                  ; preds = %block_.L_42451e
  %1761 = add i64 %1746, 7
  store i64 %1761, i64* %3, align 8
  %1762 = load i32, i32* %1723, align 4
  %1763 = add i32 %1762, -3
  %1764 = icmp ult i32 %1762, 3
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %39, align 1
  %1766 = and i32 %1763, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %46, align 1
  %1771 = xor i32 %1763, %1762
  %1772 = lshr i32 %1771, 4
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  store i8 %1774, i8* %51, align 1
  %1775 = icmp eq i32 %1763, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %54, align 1
  %1777 = lshr i32 %1763, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %57, align 1
  %1779 = lshr i32 %1762, 31
  %1780 = xor i32 %1777, %1779
  %1781 = add nuw nsw i32 %1780, %1779
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %63, align 1
  %.v261 = select i1 %1775, i64 13, i64 41
  %1784 = add i64 %1746, %.v261
  %1785 = add i64 %1784, 10
  store i64 %1785, i64* %3, align 8
  br i1 %1775, label %block_424554, label %block_.L_424570

block_424554:                                     ; preds = %block_.L_424547
  store i64 ptrtoint (%G__0x457e54_type* @G__0x457e54 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1786 = add i64 %1784, -143556
  %1787 = add i64 %1784, 17
  %1788 = load i64, i64* %6, align 8
  %1789 = add i64 %1788, -8
  %1790 = inttoptr i64 %1789 to i64*
  store i64 %1787, i64* %1790, align 8
  store i64 %1789, i64* %6, align 8
  store i64 %1786, i64* %3, align 8
  %1791 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1670)
  %1792 = load i64, i64* %RBP.i, align 8
  %1793 = add i64 %1792, -396
  %1794 = load i32, i32* %EAX.i1603, align 4
  %1795 = load i64, i64* %3, align 8
  %1796 = add i64 %1795, 6
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1793 to i32*
  store i32 %1794, i32* %1797, align 4
  %1798 = load i64, i64* %3, align 8
  %1799 = add i64 %1798, 28
  store i64 %1799, i64* %3, align 8
  br label %block_.L_424587

block_.L_424570:                                  ; preds = %block_.L_424547
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1800 = add i64 %1784, -143584
  %1801 = add i64 %1784, 17
  %1802 = load i64, i64* %6, align 8
  %1803 = add i64 %1802, -8
  %1804 = inttoptr i64 %1803 to i64*
  store i64 %1801, i64* %1804, align 8
  store i64 %1803, i64* %6, align 8
  store i64 %1800, i64* %3, align 8
  %1805 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1670)
  %1806 = load i64, i64* %RBP.i, align 8
  %1807 = add i64 %1806, -400
  %1808 = load i32, i32* %EAX.i1603, align 4
  %1809 = load i64, i64* %3, align 8
  %1810 = add i64 %1809, 6
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1807 to i32*
  store i32 %1808, i32* %1811, align 4
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_424587

block_.L_424587:                                  ; preds = %block_.L_424570, %block_424554
  %1812 = phi i64 [ %.pre163, %block_.L_424570 ], [ %1799, %block_424554 ]
  %MEMORY.32 = phi %struct.Memory* [ %1805, %block_.L_424570 ], [ %1791, %block_424554 ]
  %1813 = add i64 %1812, 5
  store i64 %1813, i64* %3, align 8
  br label %block_.L_42458c

block_.L_42458c:                                  ; preds = %block_.L_424587, %block_42452b
  %storemerge109 = phi i64 [ %1760, %block_42452b ], [ %1813, %block_.L_424587 ]
  %MEMORY.33 = phi %struct.Memory* [ %1752, %block_42452b ], [ %MEMORY.32, %block_.L_424587 ]
  %1814 = add i64 %storemerge109, 5
  store i64 %1814, i64* %3, align 8
  br label %block_.L_424591

block_.L_424591:                                  ; preds = %block_.L_42458c, %block_424502
  %storemerge108 = phi i64 [ %1719, %block_424502 ], [ %1814, %block_.L_42458c ]
  %MEMORY.34 = phi %struct.Memory* [ %1711, %block_424502 ], [ %MEMORY.33, %block_.L_42458c ]
  %1815 = add i64 %storemerge108, 5
  store i64 %1815, i64* %3, align 8
  br label %block_.L_424596

block_.L_424596:                                  ; preds = %block_.L_424591, %block_4244ba
  %storemerge90 = phi i64 [ %1657, %block_4244ba ], [ %1815, %block_.L_424591 ]
  %MEMORY.35 = phi %struct.Memory* [ %1649, %block_4244ba ], [ %MEMORY.34, %block_.L_424591 ]
  store i64 ptrtoint (%G__0x457e5c_type* @G__0x457e5c to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1816 = add i64 %storemerge90, -143622
  %1817 = add i64 %storemerge90, 17
  %1818 = load i64, i64* %6, align 8
  %1819 = add i64 %1818, -8
  %1820 = inttoptr i64 %1819 to i64*
  store i64 %1817, i64* %1820, align 8
  store i64 %1819, i64* %6, align 8
  store i64 %1816, i64* %3, align 8
  %1821 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.35)
  %1822 = load i64, i64* %3, align 8
  %1823 = add i64 %1822, ptrtoint (%G_0x301b5__rip__type* @G_0x301b5__rip_ to i64)
  %1824 = add i64 %1822, 8
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  %1826 = load i32, i32* %1825, align 4
  store i32 %1826, i32* %1592, align 1
  store float 0.000000e+00, float* %1593, align 1
  store float 0.000000e+00, float* %1594, align 1
  store float 0.000000e+00, float* %1595, align 1
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -272
  %1829 = add i64 %1822, 16
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  store i32 %1831, i32* %145, align 1
  store float 0.000000e+00, float* %147, align 1
  store float 0.000000e+00, float* %149, align 1
  store float 0.000000e+00, float* %151, align 1
  %1832 = add i64 %1822, 19
  store i64 %1832, i64* %3, align 8
  %1833 = load <2 x float>, <2 x float>* %223, align 1
  %1834 = extractelement <2 x float> %1833, i32 0
  %1835 = load <2 x float>, <2 x float>* %261, align 1
  %1836 = extractelement <2 x float> %1835, i32 0
  %1837 = fcmp uno float %1834, %1836
  br i1 %1837, label %1838, label %1848

; <label>:1838:                                   ; preds = %block_.L_424596
  %1839 = fadd float %1834, %1836
  %1840 = bitcast float %1839 to i32
  %1841 = and i32 %1840, 2143289344
  %1842 = icmp eq i32 %1841, 2139095040
  %1843 = and i32 %1840, 4194303
  %1844 = icmp ne i32 %1843, 0
  %1845 = and i1 %1842, %1844
  br i1 %1845, label %1846, label %1854

; <label>:1846:                                   ; preds = %1838
  %1847 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1832, %struct.Memory* %1821)
  %.pre164 = load i64, i64* %RBP.i, align 8
  %.pre165 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit1055

; <label>:1848:                                   ; preds = %block_.L_424596
  %1849 = fcmp ogt float %1834, %1836
  br i1 %1849, label %1854, label %1850

; <label>:1850:                                   ; preds = %1848
  %1851 = fcmp olt float %1834, %1836
  br i1 %1851, label %1854, label %1852

; <label>:1852:                                   ; preds = %1850
  %1853 = fcmp oeq float %1834, %1836
  br i1 %1853, label %1854, label %1858

; <label>:1854:                                   ; preds = %1852, %1850, %1848, %1838
  %1855 = phi i8 [ 0, %1848 ], [ 0, %1850 ], [ 1, %1852 ], [ 1, %1838 ]
  %1856 = phi i8 [ 0, %1848 ], [ 0, %1850 ], [ 0, %1852 ], [ 1, %1838 ]
  %1857 = phi i8 [ 0, %1848 ], [ 1, %1850 ], [ 0, %1852 ], [ 1, %1838 ]
  store i8 %1855, i8* %54, align 1
  store i8 %1856, i8* %46, align 1
  store i8 %1857, i8* %39, align 1
  br label %1858

; <label>:1858:                                   ; preds = %1854, %1852
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1055

routine_ucomiss__xmm0___xmm1.exit1055:            ; preds = %1858, %1846
  %1859 = phi i64 [ %.pre165, %1846 ], [ %1832, %1858 ]
  %1860 = phi i64 [ %.pre164, %1846 ], [ %1827, %1858 ]
  %1861 = phi %struct.Memory* [ %1847, %1846 ], [ %1821, %1858 ]
  %1862 = add i64 %1860, -404
  %1863 = load i32, i32* %EAX.i1603, align 4
  %1864 = add i64 %1859, 6
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1862 to i32*
  store i32 %1863, i32* %1865, align 4
  %1866 = load i64, i64* %3, align 8
  %1867 = add i64 %1866, 40
  %1868 = add i64 %1866, 6
  %1869 = load i8, i8* %54, align 1
  %1870 = icmp eq i8 %1869, 0
  %1871 = select i1 %1870, i64 %1867, i64 %1868
  store i64 %1871, i64* %3, align 8
  br i1 %1870, label %block_.L_4245e8, label %block_4245c6

block_4245c6:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1055
  %1872 = load i8, i8* %46, align 1
  %1873 = icmp ne i8 %1872, 0
  %.v275 = select i1 %1873, i64 34, i64 6
  %1874 = add i64 %1871, %.v275
  store i64 %1874, i64* %3, align 8
  %cmpBr_4245c6 = icmp eq i8 %1872, 1
  br i1 %cmpBr_4245c6, label %block_.L_4245e8, label %block_4245cc

block_4245cc:                                     ; preds = %block_4245c6
  store i64 ptrtoint (%G__0x457e34_type* @G__0x457e34 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1875 = add i64 %1874, -143676
  %1876 = add i64 %1874, 17
  %1877 = load i64, i64* %6, align 8
  %1878 = add i64 %1877, -8
  %1879 = inttoptr i64 %1878 to i64*
  store i64 %1876, i64* %1879, align 8
  store i64 %1878, i64* %6, align 8
  store i64 %1875, i64* %3, align 8
  %1880 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1861)
  %1881 = load i64, i64* %RBP.i, align 8
  %1882 = add i64 %1881, -408
  %1883 = load i32, i32* %EAX.i1603, align 4
  %1884 = load i64, i64* %3, align 8
  %1885 = add i64 %1884, 6
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1882 to i32*
  store i32 %1883, i32* %1886, align 4
  %1887 = load i64, i64* %3, align 8
  %1888 = add i64 %1887, 197
  br label %block_.L_4246a8

block_.L_4245e8:                                  ; preds = %block_4245c6, %routine_ucomiss__xmm0___xmm1.exit1055
  %1889 = phi i64 [ %1874, %block_4245c6 ], [ %1867, %routine_ucomiss__xmm0___xmm1.exit1055 ]
  store i64 ptrtoint (%G__0x457e3c_type* @G__0x457e3c to i64), i64* %RDI.i1356, align 8
  %1890 = load i64, i64* %RBP.i, align 8
  %1891 = add i64 %1890, -272
  %1892 = add i64 %1889, 18
  store i64 %1892, i64* %3, align 8
  %1893 = inttoptr i64 %1891 to float*
  %1894 = load float, float* %1893, align 4
  %1895 = fpext float %1894 to double
  store double %1895, double* %982, align 1
  store i8 1, i8* %AL.i1531, align 1
  %1896 = add i64 %1889, -143704
  %1897 = add i64 %1889, 25
  %1898 = load i64, i64* %6, align 8
  %1899 = add i64 %1898, -8
  %1900 = inttoptr i64 %1899 to i64*
  store i64 %1897, i64* %1900, align 8
  store i64 %1899, i64* %6, align 8
  store i64 %1896, i64* %3, align 8
  %1901 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1861)
  %1902 = load i64, i64* %RBP.i, align 8
  %1903 = add i64 %1902, -256
  %1904 = load i64, i64* %3, align 8
  %1905 = add i64 %1904, 7
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = add i32 %1907, -1
  %1909 = icmp eq i32 %1907, 0
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %39, align 1
  %1911 = and i32 %1908, 255
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %46, align 1
  %1916 = xor i32 %1908, %1907
  %1917 = lshr i32 %1916, 4
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  store i8 %1919, i8* %51, align 1
  %1920 = icmp eq i32 %1908, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %54, align 1
  %1922 = lshr i32 %1908, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %57, align 1
  %1924 = lshr i32 %1907, 31
  %1925 = xor i32 %1922, %1924
  %1926 = add nuw nsw i32 %1925, %1924
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %63, align 1
  %1929 = add i64 %1902, -412
  %1930 = load i32, i32* %EAX.i1603, align 4
  %1931 = add i64 %1904, 13
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1929 to i32*
  store i32 %1930, i32* %1932, align 4
  %1933 = load i64, i64* %3, align 8
  %1934 = load i8, i8* %54, align 1
  %1935 = icmp eq i8 %1934, 0
  %.v282 = select i1 %1935, i64 34, i64 6
  %1936 = add i64 %1933, %.v282
  store i64 %1936, i64* %3, align 8
  br i1 %1935, label %block_.L_424630, label %block_424614

block_424614:                                     ; preds = %block_.L_4245e8
  store i64 ptrtoint (%G__0x457e79_type* @G__0x457e79 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1937 = add i64 %1936, -143748
  %1938 = add i64 %1936, 17
  %1939 = load i64, i64* %6, align 8
  %1940 = add i64 %1939, -8
  %1941 = inttoptr i64 %1940 to i64*
  store i64 %1938, i64* %1941, align 8
  store i64 %1940, i64* %6, align 8
  store i64 %1937, i64* %3, align 8
  %1942 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1901)
  %1943 = load i64, i64* %RBP.i, align 8
  %1944 = add i64 %1943, -416
  %1945 = load i32, i32* %EAX.i1603, align 4
  %1946 = load i64, i64* %3, align 8
  %1947 = add i64 %1946, 6
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1944 to i32*
  store i32 %1945, i32* %1948, align 4
  %1949 = load i64, i64* %3, align 8
  %1950 = add i64 %1949, 120
  br label %block_.L_4246a3

block_.L_424630:                                  ; preds = %block_.L_4245e8
  %1951 = load i64, i64* %RBP.i, align 8
  %1952 = add i64 %1951, -256
  %1953 = add i64 %1936, 7
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = add i32 %1955, -2
  %1957 = icmp ult i32 %1955, 2
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %39, align 1
  %1959 = and i32 %1956, 255
  %1960 = tail call i32 @llvm.ctpop.i32(i32 %1959)
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = xor i8 %1962, 1
  store i8 %1963, i8* %46, align 1
  %1964 = xor i32 %1956, %1955
  %1965 = lshr i32 %1964, 4
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  store i8 %1967, i8* %51, align 1
  %1968 = icmp eq i32 %1956, 0
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %54, align 1
  %1970 = lshr i32 %1956, 31
  %1971 = trunc i32 %1970 to i8
  store i8 %1971, i8* %57, align 1
  %1972 = lshr i32 %1955, 31
  %1973 = xor i32 %1970, %1972
  %1974 = add nuw nsw i32 %1973, %1972
  %1975 = icmp eq i32 %1974, 2
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %63, align 1
  %.v258 = select i1 %1968, i64 13, i64 41
  %1977 = add i64 %1936, %.v258
  store i64 %1977, i64* %3, align 8
  br i1 %1968, label %block_42463d, label %block_.L_424659

block_42463d:                                     ; preds = %block_.L_424630
  store i64 ptrtoint (%G__0x457e81_type* @G__0x457e81 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %1978 = add i64 %1977, -143789
  %1979 = add i64 %1977, 17
  %1980 = load i64, i64* %6, align 8
  %1981 = add i64 %1980, -8
  %1982 = inttoptr i64 %1981 to i64*
  store i64 %1979, i64* %1982, align 8
  store i64 %1981, i64* %6, align 8
  store i64 %1978, i64* %3, align 8
  %1983 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1901)
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, -420
  %1986 = load i32, i32* %EAX.i1603, align 4
  %1987 = load i64, i64* %3, align 8
  %1988 = add i64 %1987, 6
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1985 to i32*
  store i32 %1986, i32* %1989, align 4
  %1990 = load i64, i64* %3, align 8
  %1991 = add i64 %1990, 74
  br label %block_.L_42469e

block_.L_424659:                                  ; preds = %block_.L_424630
  %1992 = add i64 %1977, 7
  store i64 %1992, i64* %3, align 8
  %1993 = load i32, i32* %1954, align 4
  %1994 = add i32 %1993, -3
  %1995 = icmp ult i32 %1993, 3
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %39, align 1
  %1997 = and i32 %1994, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %46, align 1
  %2002 = xor i32 %1994, %1993
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %51, align 1
  %2006 = icmp eq i32 %1994, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %54, align 1
  %2008 = lshr i32 %1994, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %57, align 1
  %2010 = lshr i32 %1993, 31
  %2011 = xor i32 %2008, %2010
  %2012 = add nuw nsw i32 %2011, %2010
  %2013 = icmp eq i32 %2012, 2
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %63, align 1
  %.v259 = select i1 %2006, i64 13, i64 41
  %2015 = add i64 %1977, %.v259
  %2016 = add i64 %2015, 10
  store i64 %2016, i64* %3, align 8
  br i1 %2006, label %block_424666, label %block_.L_424682

block_424666:                                     ; preds = %block_.L_424659
  store i64 ptrtoint (%G__0x457e89_type* @G__0x457e89 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2017 = add i64 %2015, -143830
  %2018 = add i64 %2015, 17
  %2019 = load i64, i64* %6, align 8
  %2020 = add i64 %2019, -8
  %2021 = inttoptr i64 %2020 to i64*
  store i64 %2018, i64* %2021, align 8
  store i64 %2020, i64* %6, align 8
  store i64 %2017, i64* %3, align 8
  %2022 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1901)
  %2023 = load i64, i64* %RBP.i, align 8
  %2024 = add i64 %2023, -424
  %2025 = load i32, i32* %EAX.i1603, align 4
  %2026 = load i64, i64* %3, align 8
  %2027 = add i64 %2026, 6
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2024 to i32*
  store i32 %2025, i32* %2028, align 4
  %2029 = load i64, i64* %3, align 8
  %2030 = add i64 %2029, 28
  store i64 %2030, i64* %3, align 8
  br label %block_.L_424699

block_.L_424682:                                  ; preds = %block_.L_424659
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2031 = add i64 %2015, -143858
  %2032 = add i64 %2015, 17
  %2033 = load i64, i64* %6, align 8
  %2034 = add i64 %2033, -8
  %2035 = inttoptr i64 %2034 to i64*
  store i64 %2032, i64* %2035, align 8
  store i64 %2034, i64* %6, align 8
  store i64 %2031, i64* %3, align 8
  %2036 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1901)
  %2037 = load i64, i64* %RBP.i, align 8
  %2038 = add i64 %2037, -428
  %2039 = load i32, i32* %EAX.i1603, align 4
  %2040 = load i64, i64* %3, align 8
  %2041 = add i64 %2040, 6
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2038 to i32*
  store i32 %2039, i32* %2042, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_424699

block_.L_424699:                                  ; preds = %block_.L_424682, %block_424666
  %2043 = phi i64 [ %.pre166, %block_.L_424682 ], [ %2030, %block_424666 ]
  %MEMORY.37 = phi %struct.Memory* [ %2036, %block_.L_424682 ], [ %2022, %block_424666 ]
  %2044 = add i64 %2043, 5
  store i64 %2044, i64* %3, align 8
  br label %block_.L_42469e

block_.L_42469e:                                  ; preds = %block_.L_424699, %block_42463d
  %storemerge107 = phi i64 [ %1991, %block_42463d ], [ %2044, %block_.L_424699 ]
  %MEMORY.38 = phi %struct.Memory* [ %1983, %block_42463d ], [ %MEMORY.37, %block_.L_424699 ]
  %2045 = add i64 %storemerge107, 5
  store i64 %2045, i64* %3, align 8
  br label %block_.L_4246a3

block_.L_4246a3:                                  ; preds = %block_.L_42469e, %block_424614
  %storemerge106 = phi i64 [ %1950, %block_424614 ], [ %2045, %block_.L_42469e ]
  %MEMORY.39 = phi %struct.Memory* [ %1942, %block_424614 ], [ %MEMORY.38, %block_.L_42469e ]
  %2046 = add i64 %storemerge106, 5
  store i64 %2046, i64* %3, align 8
  br label %block_.L_4246a8

block_.L_4246a8:                                  ; preds = %block_.L_4246a3, %block_4245cc
  %storemerge91 = phi i64 [ %1888, %block_4245cc ], [ %2046, %block_.L_4246a3 ]
  %MEMORY.40 = phi %struct.Memory* [ %1880, %block_4245cc ], [ %MEMORY.39, %block_.L_4246a3 ]
  store i64 ptrtoint (%G__0x457e91_type* @G__0x457e91 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2047 = add i64 %storemerge91, -143896
  %2048 = add i64 %storemerge91, 17
  %2049 = load i64, i64* %6, align 8
  %2050 = add i64 %2049, -8
  %2051 = inttoptr i64 %2050 to i64*
  store i64 %2048, i64* %2051, align 8
  store i64 %2050, i64* %6, align 8
  store i64 %2047, i64* %3, align 8
  %2052 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.40)
  %2053 = load i64, i64* %3, align 8
  %2054 = add i64 %2053, ptrtoint (%G_0x301d7__rip__type* @G_0x301d7__rip_ to i64)
  %2055 = add i64 %2053, 8
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i64*
  %2057 = load i64, i64* %2056, align 8
  store i64 %2057, i64* %136, align 1
  store double 0.000000e+00, double* %138, align 1
  %2058 = load i64, i64* %RBP.i, align 8
  %2059 = add i64 %2058, -280
  %2060 = add i64 %2053, 16
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i64*
  %2062 = load i64, i64* %2061, align 8
  %2063 = bitcast %union.VectorReg* %139 to double*
  %2064 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %139, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2062, i64* %2064, align 1
  %2065 = bitcast i64* %148 to double*
  store double 0.000000e+00, double* %2065, align 1
  %2066 = add i64 %2053, 20
  store i64 %2066, i64* %3, align 8
  %.cast110 = bitcast i64 %2062 to double
  %2067 = bitcast i64 %2057 to double
  %2068 = fcmp uno double %.cast110, %2067
  br i1 %2068, label %2069, label %2079

; <label>:2069:                                   ; preds = %block_.L_4246a8
  %2070 = fadd double %.cast110, %2067
  %2071 = bitcast double %2070 to i64
  %2072 = and i64 %2071, 9221120237041090560
  %2073 = icmp eq i64 %2072, 9218868437227405312
  %2074 = and i64 %2071, 2251799813685247
  %2075 = icmp ne i64 %2074, 0
  %2076 = and i1 %2073, %2075
  br i1 %2076, label %2077, label %2085

; <label>:2077:                                   ; preds = %2069
  %2078 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2066, %struct.Memory* %2052)
  %.pre167 = load i64, i64* %RBP.i, align 8
  %.pre168 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit953

; <label>:2079:                                   ; preds = %block_.L_4246a8
  %2080 = fcmp ogt double %.cast110, %2067
  br i1 %2080, label %2085, label %2081

; <label>:2081:                                   ; preds = %2079
  %2082 = fcmp olt double %.cast110, %2067
  br i1 %2082, label %2085, label %2083

; <label>:2083:                                   ; preds = %2081
  %2084 = fcmp oeq double %.cast110, %2067
  br i1 %2084, label %2085, label %2089

; <label>:2085:                                   ; preds = %2083, %2081, %2079, %2069
  %2086 = phi i8 [ 0, %2079 ], [ 0, %2081 ], [ 1, %2083 ], [ 1, %2069 ]
  %2087 = phi i8 [ 0, %2079 ], [ 0, %2081 ], [ 0, %2083 ], [ 1, %2069 ]
  %2088 = phi i8 [ 0, %2079 ], [ 1, %2081 ], [ 0, %2083 ], [ 1, %2069 ]
  store i8 %2086, i8* %54, align 1
  store i8 %2087, i8* %46, align 1
  store i8 %2088, i8* %39, align 1
  br label %2089

; <label>:2089:                                   ; preds = %2085, %2083
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit953

routine_ucomisd__xmm0___xmm1.exit953:             ; preds = %2089, %2077
  %2090 = phi i64 [ %.pre168, %2077 ], [ %2066, %2089 ]
  %2091 = phi i64 [ %.pre167, %2077 ], [ %2058, %2089 ]
  %2092 = phi %struct.Memory* [ %2078, %2077 ], [ %2052, %2089 ]
  %2093 = add i64 %2091, -432
  %2094 = load i32, i32* %EAX.i1603, align 4
  %2095 = add i64 %2090, 6
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2093 to i32*
  store i32 %2094, i32* %2096, align 4
  %2097 = load i64, i64* %3, align 8
  %2098 = add i64 %2097, 40
  %2099 = add i64 %2097, 6
  %2100 = load i8, i8* %54, align 1
  %2101 = icmp eq i8 %2100, 0
  %2102 = select i1 %2101, i64 %2098, i64 %2099
  store i64 %2102, i64* %3, align 8
  br i1 %2101, label %block_.L_4246fb, label %block_4246d9

block_4246d9:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit953
  %2103 = load i8, i8* %46, align 1
  %2104 = icmp ne i8 %2103, 0
  %.v276 = select i1 %2104, i64 34, i64 6
  %2105 = add i64 %2102, %.v276
  store i64 %2105, i64* %3, align 8
  %cmpBr_4246d9 = icmp eq i8 %2103, 1
  br i1 %cmpBr_4246d9, label %block_.L_4246fb, label %block_4246df

block_4246df:                                     ; preds = %block_4246d9
  store i64 ptrtoint (%G__0x457e34_type* @G__0x457e34 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2106 = add i64 %2105, -143951
  %2107 = add i64 %2105, 17
  %2108 = load i64, i64* %6, align 8
  %2109 = add i64 %2108, -8
  %2110 = inttoptr i64 %2109 to i64*
  store i64 %2107, i64* %2110, align 8
  store i64 %2109, i64* %6, align 8
  store i64 %2106, i64* %3, align 8
  %2111 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2092)
  %2112 = load i64, i64* %RBP.i, align 8
  %2113 = add i64 %2112, -436
  %2114 = load i32, i32* %EAX.i1603, align 4
  %2115 = load i64, i64* %3, align 8
  %2116 = add i64 %2115, 6
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2113 to i32*
  store i32 %2114, i32* %2117, align 4
  %2118 = load i64, i64* %3, align 8
  %2119 = add i64 %2118, 36
  store i64 %2119, i64* %3, align 8
  br label %block_.L_42471a

block_.L_4246fb:                                  ; preds = %block_4246d9, %routine_ucomisd__xmm0___xmm1.exit953
  %2120 = phi i64 [ %2105, %block_4246d9 ], [ %2098, %routine_ucomisd__xmm0___xmm1.exit953 ]
  store i64 ptrtoint (%G__0x457eae_type* @G__0x457eae to i64), i64* %RDI.i1356, align 8
  %2121 = load i64, i64* %RBP.i, align 8
  %2122 = add i64 %2121, -280
  %2123 = add i64 %2120, 18
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i64 %2125, i64* %136, align 1
  store double 0.000000e+00, double* %138, align 1
  store i8 1, i8* %AL.i1531, align 1
  %2126 = add i64 %2120, -143979
  %2127 = add i64 %2120, 25
  %2128 = load i64, i64* %6, align 8
  %2129 = add i64 %2128, -8
  %2130 = inttoptr i64 %2129 to i64*
  store i64 %2127, i64* %2130, align 8
  store i64 %2129, i64* %6, align 8
  store i64 %2126, i64* %3, align 8
  %2131 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2092)
  %2132 = load i64, i64* %RBP.i, align 8
  %2133 = add i64 %2132, -440
  %2134 = load i32, i32* %EAX.i1603, align 4
  %2135 = load i64, i64* %3, align 8
  %2136 = add i64 %2135, 6
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2133 to i32*
  store i32 %2134, i32* %2137, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_42471a

block_.L_42471a:                                  ; preds = %block_.L_4246fb, %block_4246df
  %2138 = phi i64 [ %.pre169, %block_.L_4246fb ], [ %2119, %block_4246df ]
  %MEMORY.42 = phi %struct.Memory* [ %2131, %block_.L_4246fb ], [ %2111, %block_4246df ]
  store i64 ptrtoint (%G__0x457eba_type* @G__0x457eba to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2139 = add i64 %2138, -144010
  %2140 = add i64 %2138, 17
  %2141 = load i64, i64* %6, align 8
  %2142 = add i64 %2141, -8
  %2143 = inttoptr i64 %2142 to i64*
  store i64 %2140, i64* %2143, align 8
  store i64 %2142, i64* %6, align 8
  store i64 %2139, i64* %3, align 8
  %2144 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.42)
  %2145 = load i64, i64* %3, align 8
  %2146 = add i64 %2145, ptrtoint (%G_0x30165__rip__type* @G_0x30165__rip_ to i64)
  %2147 = add i64 %2145, 8
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i64*
  %2149 = load i64, i64* %2148, align 8
  store i64 %2149, i64* %136, align 1
  store double 0.000000e+00, double* %138, align 1
  %2150 = load i64, i64* %RBP.i, align 8
  %2151 = add i64 %2150, -264
  %2152 = add i64 %2145, 16
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2151 to i64*
  %2154 = load i64, i64* %2153, align 8
  store i64 %2154, i64* %2064, align 1
  store double 0.000000e+00, double* %2065, align 1
  %2155 = add i64 %2145, 20
  store i64 %2155, i64* %3, align 8
  %.cast92 = bitcast i64 %2154 to double
  %2156 = bitcast i64 %2149 to double
  %2157 = fcmp uno double %.cast92, %2156
  br i1 %2157, label %2158, label %2168

; <label>:2158:                                   ; preds = %block_.L_42471a
  %2159 = fadd double %.cast92, %2156
  %2160 = bitcast double %2159 to i64
  %2161 = and i64 %2160, 9221120237041090560
  %2162 = icmp eq i64 %2161, 9218868437227405312
  %2163 = and i64 %2160, 2251799813685247
  %2164 = icmp ne i64 %2163, 0
  %2165 = and i1 %2162, %2164
  br i1 %2165, label %2166, label %2174

; <label>:2166:                                   ; preds = %2158
  %2167 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2155, %struct.Memory* %2144)
  %.pre170 = load i64, i64* %RBP.i, align 8
  %.pre171 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit906

; <label>:2168:                                   ; preds = %block_.L_42471a
  %2169 = fcmp ogt double %.cast92, %2156
  br i1 %2169, label %2174, label %2170

; <label>:2170:                                   ; preds = %2168
  %2171 = fcmp olt double %.cast92, %2156
  br i1 %2171, label %2174, label %2172

; <label>:2172:                                   ; preds = %2170
  %2173 = fcmp oeq double %.cast92, %2156
  br i1 %2173, label %2174, label %2178

; <label>:2174:                                   ; preds = %2172, %2170, %2168, %2158
  %2175 = phi i8 [ 0, %2168 ], [ 0, %2170 ], [ 1, %2172 ], [ 1, %2158 ]
  %2176 = phi i8 [ 0, %2168 ], [ 0, %2170 ], [ 0, %2172 ], [ 1, %2158 ]
  %2177 = phi i8 [ 0, %2168 ], [ 1, %2170 ], [ 0, %2172 ], [ 1, %2158 ]
  store i8 %2175, i8* %54, align 1
  store i8 %2176, i8* %46, align 1
  store i8 %2177, i8* %39, align 1
  br label %2178

; <label>:2178:                                   ; preds = %2174, %2172
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit906

routine_ucomisd__xmm0___xmm1.exit906:             ; preds = %2178, %2166
  %2179 = phi i64 [ %.pre171, %2166 ], [ %2155, %2178 ]
  %2180 = phi i64 [ %.pre170, %2166 ], [ %2150, %2178 ]
  %2181 = phi %struct.Memory* [ %2167, %2166 ], [ %2144, %2178 ]
  %2182 = add i64 %2180, -444
  %2183 = load i32, i32* %EAX.i1603, align 4
  %2184 = add i64 %2179, 6
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2182 to i32*
  store i32 %2183, i32* %2185, align 4
  %2186 = load i64, i64* %3, align 8
  %2187 = add i64 %2186, 40
  %2188 = add i64 %2186, 6
  %2189 = load i8, i8* %54, align 1
  %2190 = icmp eq i8 %2189, 0
  %2191 = select i1 %2190, i64 %2187, i64 %2188
  store i64 %2191, i64* %3, align 8
  br i1 %2190, label %block_.L_42476d, label %block_42474b

block_42474b:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit906
  %2192 = load i8, i8* %46, align 1
  %2193 = icmp ne i8 %2192, 0
  %.v277 = select i1 %2193, i64 34, i64 6
  %2194 = add i64 %2191, %.v277
  store i64 %2194, i64* %3, align 8
  %cmpBr_42474b = icmp eq i8 %2192, 1
  br i1 %cmpBr_42474b, label %block_.L_42476d, label %block_424751

block_424751:                                     ; preds = %block_42474b
  store i64 ptrtoint (%G__0x457e34_type* @G__0x457e34 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2195 = add i64 %2194, -144065
  %2196 = add i64 %2194, 17
  %2197 = load i64, i64* %6, align 8
  %2198 = add i64 %2197, -8
  %2199 = inttoptr i64 %2198 to i64*
  store i64 %2196, i64* %2199, align 8
  store i64 %2198, i64* %6, align 8
  store i64 %2195, i64* %3, align 8
  %2200 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2181)
  %2201 = load i64, i64* %RBP.i, align 8
  %2202 = add i64 %2201, -448
  %2203 = load i32, i32* %EAX.i1603, align 4
  %2204 = load i64, i64* %3, align 8
  %2205 = add i64 %2204, 6
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2202 to i32*
  store i32 %2203, i32* %2206, align 4
  %2207 = load i64, i64* %3, align 8
  %2208 = add i64 %2207, 36
  store i64 %2208, i64* %3, align 8
  br label %block_.L_42478c

block_.L_42476d:                                  ; preds = %block_42474b, %routine_ucomisd__xmm0___xmm1.exit906
  %2209 = phi i64 [ %2194, %block_42474b ], [ %2187, %routine_ucomisd__xmm0___xmm1.exit906 ]
  store i64 ptrtoint (%G__0x457ed7_type* @G__0x457ed7 to i64), i64* %RDI.i1356, align 8
  %2210 = load i64, i64* %RBP.i, align 8
  %2211 = add i64 %2210, -264
  %2212 = add i64 %2209, 18
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i64*
  %2214 = load i64, i64* %2213, align 8
  store i64 %2214, i64* %136, align 1
  store double 0.000000e+00, double* %138, align 1
  store i8 1, i8* %AL.i1531, align 1
  %2215 = add i64 %2209, -144093
  %2216 = add i64 %2209, 25
  %2217 = load i64, i64* %6, align 8
  %2218 = add i64 %2217, -8
  %2219 = inttoptr i64 %2218 to i64*
  store i64 %2216, i64* %2219, align 8
  store i64 %2218, i64* %6, align 8
  store i64 %2215, i64* %3, align 8
  %2220 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2181)
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -452
  %2223 = load i32, i32* %EAX.i1603, align 4
  %2224 = load i64, i64* %3, align 8
  %2225 = add i64 %2224, 6
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2222 to i32*
  store i32 %2223, i32* %2226, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_42478c

block_.L_42478c:                                  ; preds = %block_.L_42476d, %block_424751
  %2227 = phi i64 [ %.pre172, %block_.L_42476d ], [ %2208, %block_424751 ]
  %MEMORY.44 = phi %struct.Memory* [ %2220, %block_.L_42476d ], [ %2200, %block_424751 ]
  store i64 ptrtoint (%G__0x458548_type* @G__0x458548 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2228 = add i64 %2227, -144124
  %2229 = add i64 %2227, 17
  %2230 = load i64, i64* %6, align 8
  %2231 = add i64 %2230, -8
  %2232 = inttoptr i64 %2231 to i64*
  store i64 %2229, i64* %2232, align 8
  store i64 %2231, i64* %6, align 8
  store i64 %2228, i64* %3, align 8
  %2233 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.44)
  %2234 = load i64, i64* %3, align 8
  store i64 4294967096, i64* %RDI.i1356, align 8
  store i64 200, i64* %RSI.i423, align 8
  store i64 100, i64* %RDX.i1146, align 8
  %2235 = load i64, i64* %RBP.i, align 8
  %2236 = add i64 %2235, -456
  %2237 = load i32, i32* %EAX.i1603, align 4
  %2238 = add i64 %2234, 21
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2236 to i32*
  store i32 %2237, i32* %2239, align 4
  %2240 = load i64, i64* %3, align 8
  %2241 = add i64 %2240, -49570
  %2242 = add i64 %2240, 5
  %2243 = load i64, i64* %6, align 8
  %2244 = add i64 %2243, -8
  %2245 = inttoptr i64 %2244 to i64*
  store i64 %2242, i64* %2245, align 8
  store i64 %2244, i64* %6, align 8
  store i64 %2241, i64* %3, align 8
  %call2_4247b2 = tail call %struct.Memory* @sub_418610.AllocHistogram(%struct.State* nonnull %0, i64 %2241, %struct.Memory* %2233)
  %2246 = load i64, i64* %3, align 8
  store i64 200, i64* %RDI.i1356, align 8
  %2247 = load i64, i64* %RBP.i, align 8
  %2248 = add i64 %2247, -112
  %2249 = load i64, i64* %RAX.i1193, align 8
  %2250 = add i64 %2246, 9
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2248 to i64*
  store i64 %2249, i64* %2251, align 8
  %2252 = load i64, i64* %3, align 8
  %2253 = add i64 %2252, 163312
  %2254 = add i64 %2252, 5
  %2255 = load i64, i64* %6, align 8
  %2256 = add i64 %2255, -8
  %2257 = inttoptr i64 %2256 to i64*
  store i64 %2254, i64* %2257, align 8
  store i64 %2256, i64* %6, align 8
  store i64 %2253, i64* %3, align 8
  %call2_4247c0 = tail call %struct.Memory* @sub_44c5b0.AllocTophits(%struct.State* nonnull %0, i64 %2253, %struct.Memory* %call2_4247b2)
  %2258 = load i64, i64* %3, align 8
  store i64 200, i64* %RDI.i1356, align 8
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -128
  %2261 = load i64, i64* %RAX.i1193, align 8
  %2262 = add i64 %2258, 9
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2260 to i64*
  store i64 %2261, i64* %2263, align 8
  %2264 = load i64, i64* %3, align 8
  %2265 = add i64 %2264, 163298
  %2266 = add i64 %2264, 5
  %2267 = load i64, i64* %6, align 8
  %2268 = add i64 %2267, -8
  %2269 = inttoptr i64 %2268 to i64*
  store i64 %2266, i64* %2269, align 8
  store i64 %2268, i64* %6, align 8
  store i64 %2265, i64* %3, align 8
  %call2_4247ce = tail call %struct.Memory* @sub_44c5b0.AllocTophits(%struct.State* nonnull %0, i64 %2265, %struct.Memory* %call2_4247c0)
  %2270 = load i64, i64* %RBP.i, align 8
  %2271 = add i64 %2270, -136
  %2272 = load i64, i64* %RAX.i1193, align 8
  %2273 = load i64, i64* %3, align 8
  %2274 = add i64 %2273, 7
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2271 to i64*
  store i64 %2272, i64* %2275, align 8
  %2276 = load i64, i64* %RBP.i, align 8
  %2277 = add i64 %2276, -340
  %2278 = load i64, i64* %3, align 8
  %2279 = add i64 %2278, 7
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2277 to i32*
  %2281 = load i32, i32* %2280, align 4
  store i8 0, i8* %39, align 1
  %2282 = and i32 %2281, 255
  %2283 = tail call i32 @llvm.ctpop.i32(i32 %2282)
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = xor i8 %2285, 1
  store i8 %2286, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2287 = icmp eq i32 %2281, 0
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %54, align 1
  %2289 = lshr i32 %2281, 31
  %2290 = trunc i32 %2289 to i8
  store i8 %2290, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v239 = select i1 %2287, i64 112, i64 13
  %2291 = add i64 %2278, %.v239
  store i64 %2291, i64* %3, align 8
  br i1 %2287, label %block_.L_42484a, label %block_4247e7

block_4247e7:                                     ; preds = %block_.L_42478c
  %2292 = add i64 %2276, -324
  %2293 = add i64 %2291, 7
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  store i8 0, i8* %39, align 1
  %2296 = and i32 %2295, 255
  %2297 = tail call i32 @llvm.ctpop.i32(i32 %2296)
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  store i8 %2300, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2301 = icmp eq i32 %2295, 0
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %54, align 1
  %2303 = lshr i32 %2295, 31
  %2304 = trunc i32 %2303 to i8
  store i8 %2304, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v240 = select i1 %2301, i64 99, i64 13
  %2305 = add i64 %2291, %.v240
  store i64 %2305, i64* %3, align 8
  br i1 %2301, label %block_.L_42484a, label %block_4247f4

block_4247f4:                                     ; preds = %block_4247e7
  %2306 = add i64 %2276, -288
  store i64 %2306, i64* %RDX.i1146, align 8
  %2307 = add i64 %2276, -216
  store i64 %2307, i64* %RAX.i1193, align 8
  %2308 = add i64 %2276, -104
  %2309 = add i64 %2305, 18
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i64*
  %2311 = load i64, i64* %2310, align 8
  store i64 %2311, i64* %RDI.i1356, align 8
  %2312 = add i64 %2276, -88
  %2313 = add i64 %2305, 22
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i64*
  %2315 = load i64, i64* %2314, align 8
  store i64 %2315, i64* %RSI.i423, align 8
  %2316 = add i64 %2276, -316
  %2317 = add i64 %2305, 28
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = zext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i1162, align 8
  %2321 = add i64 %2276, -312
  %2322 = add i64 %2305, 35
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %R8.i1169, align 8
  %2326 = add i64 %2276, -320
  %2327 = add i64 %2305, 42
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %R9.i1180, align 8
  %2331 = add i64 %2276, -112
  %2332 = add i64 %2305, 46
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i64*
  %2334 = load i64, i64* %2333, align 8
  store i64 %2334, i64* %R10.i1485, align 8
  %R11.i811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %2335 = add i64 %2276, -128
  %2336 = add i64 %2305, 50
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i64*
  %2338 = load i64, i64* %2337, align 8
  store i64 %2338, i64* %R11.i811, align 8
  %2339 = add i64 %2276, -136
  %2340 = add i64 %2305, 57
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i64*
  %2342 = load i64, i64* %2341, align 8
  store i64 %2342, i64* %RBX.i145, align 8
  %2343 = load i64*, i64** %252, align 8
  %2344 = add i64 %2305, 61
  store i64 %2344, i64* %3, align 8
  store i64 %2334, i64* %2343, align 8
  %2345 = load i64, i64* %6, align 8
  %2346 = add i64 %2345, 8
  %2347 = load i64, i64* %R11.i811, align 8
  %2348 = load i64, i64* %3, align 8
  %2349 = add i64 %2348, 5
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2346 to i64*
  store i64 %2347, i64* %2350, align 8
  %2351 = load i64, i64* %6, align 8
  %2352 = add i64 %2351, 16
  %2353 = load i64, i64* %RBX.i145, align 8
  %2354 = load i64, i64* %3, align 8
  %2355 = add i64 %2354, 5
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2352 to i64*
  store i64 %2353, i64* %2356, align 8
  %2357 = load i64, i64* %6, align 8
  %2358 = add i64 %2357, 24
  %2359 = load i64, i64* %RAX.i1193, align 8
  %2360 = load i64, i64* %3, align 8
  %2361 = add i64 %2360, 5
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2358 to i64*
  store i64 %2359, i64* %2362, align 8
  %2363 = load i64, i64* %3, align 8
  %2364 = add i64 %2363, 1872
  %2365 = add i64 %2363, 5
  %2366 = load i64, i64* %6, align 8
  %2367 = add i64 %2366, -8
  %2368 = inttoptr i64 %2367 to i64*
  store i64 %2365, i64* %2368, align 8
  store i64 %2367, i64* %6, align 8
  store i64 %2364, i64* %3, align 8
  %call2_424840 = tail call %struct.Memory* @sub_424f90.main_loop_pvm(%struct.State* nonnull %0, i64 %2364, %struct.Memory* %call2_4247ce)
  %2369 = load i64, i64* %3, align 8
  %2370 = add i64 %2369, 215
  br label %block_.L_42491c

block_.L_42484a:                                  ; preds = %block_4247e7, %block_.L_42478c
  %2371 = phi i64 [ %2305, %block_4247e7 ], [ %2291, %block_.L_42478c ]
  %2372 = add i64 %2276, -336
  %2373 = add i64 %2371, 7
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i32*
  %2375 = load i32, i32* %2374, align 4
  store i8 0, i8* %39, align 1
  %2376 = and i32 %2375, 255
  %2377 = tail call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  store i8 %2380, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2381 = icmp eq i32 %2375, 0
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %54, align 1
  %2383 = lshr i32 %2375, 31
  %2384 = trunc i32 %2383 to i8
  store i8 %2384, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v256 = select i1 %2381, i64 124, i64 13
  %2385 = add i64 %2371, %.v256
  store i64 %2385, i64* %3, align 8
  br i1 %2381, label %block_.L_4248c6, label %block_424857

block_424857:                                     ; preds = %block_.L_42484a
  %2386 = add i64 %2276, -332
  %2387 = add i64 %2385, 7
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  store i8 0, i8* %39, align 1
  %2390 = and i32 %2389, 255
  %2391 = tail call i32 @llvm.ctpop.i32(i32 %2390)
  %2392 = trunc i32 %2391 to i8
  %2393 = and i8 %2392, 1
  %2394 = xor i8 %2393, 1
  store i8 %2394, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2395 = icmp eq i32 %2389, 0
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %54, align 1
  %2397 = lshr i32 %2389, 31
  %2398 = trunc i32 %2397 to i8
  store i8 %2398, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v257 = select i1 %2395, i64 111, i64 13
  %2399 = add i64 %2385, %.v257
  store i64 %2399, i64* %3, align 8
  br i1 %2395, label %block_.L_4248c6, label %block_424864

block_424864:                                     ; preds = %block_424857
  %2400 = add i64 %2276, -288
  store i64 %2400, i64* %RDX.i1146, align 8
  %2401 = add i64 %2276, -216
  store i64 %2401, i64* %RAX.i1193, align 8
  %2402 = add i64 %2276, -104
  %2403 = add i64 %2399, 18
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i64*
  %2405 = load i64, i64* %2404, align 8
  store i64 %2405, i64* %RDI.i1356, align 8
  %2406 = add i64 %2276, -88
  %2407 = add i64 %2399, 22
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i64*
  %2409 = load i64, i64* %2408, align 8
  store i64 %2409, i64* %RSI.i423, align 8
  %2410 = add i64 %2276, -316
  %2411 = add i64 %2399, 28
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i32*
  %2413 = load i32, i32* %2412, align 4
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RCX.i1162, align 8
  %2415 = add i64 %2276, -312
  %2416 = add i64 %2399, 35
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %R8.i1169, align 8
  %2420 = add i64 %2276, -320
  %2421 = add i64 %2399, 42
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2420 to i32*
  %2423 = load i32, i32* %2422, align 4
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %R9.i1180, align 8
  %2425 = add i64 %2399, 49
  store i64 %2425, i64* %3, align 8
  %2426 = load i32, i32* %2388, align 4
  %2427 = zext i32 %2426 to i64
  store i64 %2427, i64* %R10.i1485, align 8
  %R11.i761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %2428 = add i64 %2276, -112
  %2429 = add i64 %2399, 53
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i64*
  %2431 = load i64, i64* %2430, align 8
  store i64 %2431, i64* %R11.i761, align 8
  %2432 = add i64 %2276, -128
  %2433 = add i64 %2399, 57
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i64*
  %2435 = load i64, i64* %2434, align 8
  store i64 %2435, i64* %RBX.i145, align 8
  %2436 = add i64 %2276, -136
  %2437 = add i64 %2399, 64
  store i64 %2437, i64* %3, align 8
  %2438 = inttoptr i64 %2436 to i64*
  %2439 = load i64, i64* %2438, align 8
  store i64 %2439, i64* %R14.i74, align 8
  %2440 = bitcast i64* %6 to i32**
  %2441 = load i32*, i32** %2440, align 8
  %2442 = add i64 %2399, 68
  store i64 %2442, i64* %3, align 8
  store i32 %2426, i32* %2441, align 4
  %2443 = load i64, i64* %6, align 8
  %2444 = add i64 %2443, 8
  %2445 = load i64, i64* %R11.i761, align 8
  %2446 = load i64, i64* %3, align 8
  %2447 = add i64 %2446, 5
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2444 to i64*
  store i64 %2445, i64* %2448, align 8
  %2449 = load i64, i64* %6, align 8
  %2450 = add i64 %2449, 16
  %2451 = load i64, i64* %RBX.i145, align 8
  %2452 = load i64, i64* %3, align 8
  %2453 = add i64 %2452, 5
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2450 to i64*
  store i64 %2451, i64* %2454, align 8
  %2455 = load i64, i64* %6, align 8
  %2456 = add i64 %2455, 24
  %2457 = load i64, i64* %R14.i74, align 8
  %2458 = load i64, i64* %3, align 8
  %2459 = add i64 %2458, 5
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2456 to i64*
  store i64 %2457, i64* %2460, align 8
  %2461 = load i64, i64* %6, align 8
  %2462 = add i64 %2461, 32
  %2463 = load i64, i64* %RAX.i1193, align 8
  %2464 = load i64, i64* %3, align 8
  %2465 = add i64 %2464, 5
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2462 to i64*
  store i64 %2463, i64* %2466, align 8
  %2467 = load i64, i64* %3, align 8
  %2468 = add i64 %2467, 1844
  %2469 = add i64 %2467, 5
  %2470 = load i64, i64* %6, align 8
  %2471 = add i64 %2470, -8
  %2472 = inttoptr i64 %2471 to i64*
  store i64 %2469, i64* %2472, align 8
  store i64 %2471, i64* %6, align 8
  store i64 %2468, i64* %3, align 8
  %call2_4248bc = tail call %struct.Memory* @sub_424ff0.main_loop_threaded(%struct.State* nonnull %0, i64 %2468, %struct.Memory* %call2_4247ce)
  %2473 = load i64, i64* %3, align 8
  %2474 = add i64 %2473, 86
  store i64 %2474, i64* %3, align 8
  br label %block_.L_424917

block_.L_4248c6:                                  ; preds = %block_424857, %block_.L_42484a
  %2475 = phi i64 [ %2399, %block_424857 ], [ %2385, %block_.L_42484a ]
  %2476 = add i64 %2276, -288
  store i64 %2476, i64* %RDX.i1146, align 8
  %2477 = add i64 %2276, -216
  store i64 %2477, i64* %RAX.i1193, align 8
  %2478 = add i64 %2276, -104
  %2479 = add i64 %2475, 18
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2478 to i64*
  %2481 = load i64, i64* %2480, align 8
  store i64 %2481, i64* %RDI.i1356, align 8
  %2482 = add i64 %2276, -88
  %2483 = add i64 %2475, 22
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i64*
  %2485 = load i64, i64* %2484, align 8
  store i64 %2485, i64* %RSI.i423, align 8
  %2486 = add i64 %2276, -316
  %2487 = add i64 %2475, 28
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RCX.i1162, align 8
  %2491 = add i64 %2276, -312
  %2492 = add i64 %2475, 35
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i32*
  %2494 = load i32, i32* %2493, align 4
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %R8.i1169, align 8
  %2496 = add i64 %2276, -320
  %2497 = add i64 %2475, 42
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %R9.i1180, align 8
  %2501 = add i64 %2276, -112
  %2502 = add i64 %2475, 46
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i64*
  %2504 = load i64, i64* %2503, align 8
  store i64 %2504, i64* %R10.i1485, align 8
  %R11.i712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %2505 = add i64 %2276, -128
  %2506 = add i64 %2475, 50
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i64*
  %2508 = load i64, i64* %2507, align 8
  store i64 %2508, i64* %R11.i712, align 8
  %2509 = add i64 %2276, -136
  %2510 = add i64 %2475, 57
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i64*
  %2512 = load i64, i64* %2511, align 8
  store i64 %2512, i64* %RBX.i145, align 8
  %2513 = load i64*, i64** %252, align 8
  %2514 = add i64 %2475, 61
  store i64 %2514, i64* %3, align 8
  store i64 %2504, i64* %2513, align 8
  %2515 = load i64, i64* %6, align 8
  %2516 = add i64 %2515, 8
  %2517 = load i64, i64* %R11.i712, align 8
  %2518 = load i64, i64* %3, align 8
  %2519 = add i64 %2518, 5
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2516 to i64*
  store i64 %2517, i64* %2520, align 8
  %2521 = load i64, i64* %6, align 8
  %2522 = add i64 %2521, 16
  %2523 = load i64, i64* %RBX.i145, align 8
  %2524 = load i64, i64* %3, align 8
  %2525 = add i64 %2524, 5
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2522 to i64*
  store i64 %2523, i64* %2526, align 8
  %2527 = load i64, i64* %6, align 8
  %2528 = add i64 %2527, 24
  %2529 = load i64, i64* %RAX.i1193, align 8
  %2530 = load i64, i64* %3, align 8
  %2531 = add i64 %2530, 5
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2528 to i64*
  store i64 %2529, i64* %2532, align 8
  %2533 = load i64, i64* %3, align 8
  %2534 = add i64 %2533, 1870
  %2535 = add i64 %2533, 5
  %2536 = load i64, i64* %6, align 8
  %2537 = add i64 %2536, -8
  %2538 = inttoptr i64 %2537 to i64*
  store i64 %2535, i64* %2538, align 8
  store i64 %2537, i64* %6, align 8
  store i64 %2534, i64* %3, align 8
  %call2_424912 = tail call %struct.Memory* @sub_425060.main_loop_serial_393(%struct.State* nonnull %0, i64 %2534, %struct.Memory* %call2_4247ce)
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_424917

block_.L_424917:                                  ; preds = %block_.L_4248c6, %block_424864
  %2539 = phi i64 [ %.pre173, %block_.L_4248c6 ], [ %2474, %block_424864 ]
  %MEMORY.47 = phi %struct.Memory* [ %call2_424912, %block_.L_4248c6 ], [ %call2_4248bc, %block_424864 ]
  %2540 = add i64 %2539, 5
  store i64 %2540, i64* %3, align 8
  br label %block_.L_42491c

block_.L_42491c:                                  ; preds = %block_.L_424917, %block_4247f4
  %storemerge93 = phi i64 [ %2370, %block_4247f4 ], [ %2540, %block_.L_424917 ]
  %MEMORY.48 = phi %struct.Memory* [ %call2_424840, %block_4247f4 ], [ %MEMORY.47, %block_.L_424917 ]
  %2541 = load i64, i64* %RBP.i, align 8
  %2542 = add i64 %2541, -104
  %2543 = add i64 %storemerge93, 4
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i64*
  %2545 = load i64, i64* %2544, align 8
  store i64 %2545, i64* %RAX.i1193, align 8
  %2546 = add i64 %2545, 456
  %2547 = add i64 %storemerge93, 10
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i32*
  %2549 = load i32, i32* %2548, align 4
  %2550 = and i32 %2549, 128
  %2551 = zext i32 %2550 to i64
  store i64 %2551, i64* %RCX.i1162, align 8
  store i8 0, i8* %39, align 1
  %2552 = tail call i32 @llvm.ctpop.i32(i32 %2550)
  %2553 = trunc i32 %2552 to i8
  %2554 = xor i8 %2553, 1
  store i8 %2554, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2555 = icmp eq i32 %2550, 0
  %.lobit201 = lshr exact i32 %2550, 7
  %2556 = trunc i32 %.lobit201 to i8
  %2557 = xor i8 %2556, 1
  store i8 %2557, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v241 = select i1 %2555, i64 78, i64 25
  %2558 = add i64 %storemerge93, %.v241
  store i64 %2558, i64* %3, align 8
  br i1 %2555, label %block_.L_42496a, label %block_424935

block_424935:                                     ; preds = %block_.L_42491c
  store i64 0, i64* %RSI.i423, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %51, align 1
  %2559 = add i64 %2541, -112
  %2560 = add i64 %2558, 6
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i64*
  %2562 = load i64, i64* %2561, align 8
  store i64 %2562, i64* %RDI.i1356, align 8
  %2563 = add i64 %2558, 10
  store i64 %2563, i64* %3, align 8
  %2564 = load i64, i64* %2544, align 8
  store i64 %2564, i64* %RAX.i1193, align 8
  %2565 = add i64 %2564, 448
  %2566 = add i64 %2558, 18
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2565 to i32*
  %2568 = load i32, i32* %2567, align 4
  store i32 %2568, i32* %1592, align 1
  store float 0.000000e+00, float* %1593, align 1
  store float 0.000000e+00, float* %1594, align 1
  store float 0.000000e+00, float* %1595, align 1
  %2569 = add i64 %2558, 22
  store i64 %2569, i64* %3, align 8
  %2570 = load i64, i64* %2544, align 8
  store i64 %2570, i64* %RAX.i1193, align 8
  %2571 = add i64 %2570, 452
  %2572 = add i64 %2558, 30
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  store i32 %2574, i32* %145, align 1
  store float 0.000000e+00, float* %147, align 1
  store float 0.000000e+00, float* %149, align 1
  store float 0.000000e+00, float* %151, align 1
  %2575 = add i64 %2558, 34
  store i64 %2575, i64* %3, align 8
  %2576 = load i64, i64* %2561, align 8
  store i64 %2576, i64* %RAX.i1193, align 8
  %2577 = add i64 %2576, 20
  %2578 = add i64 %2558, 39
  store i64 %2578, i64* %3, align 8
  %2579 = bitcast %union.VectorReg* %152 to <2 x i32>*
  %2580 = load <2 x i32>, <2 x i32>* %2579, align 1
  %2581 = bitcast i64* %158 to <2 x i32>*
  %2582 = load <2 x i32>, <2 x i32>* %2581, align 1
  %2583 = inttoptr i64 %2577 to i32*
  %2584 = load i32, i32* %2583, align 4
  %2585 = sitofp i32 %2584 to float
  %2586 = bitcast %union.VectorReg* %152 to float*
  store float %2585, float* %2586, align 1
  %2587 = extractelement <2 x i32> %2580, i32 1
  %2588 = getelementptr inbounds i8, i8* %983, i64 4
  %2589 = bitcast i8* %2588 to i32*
  store i32 %2587, i32* %2589, align 1
  %2590 = extractelement <2 x i32> %2582, i32 0
  %2591 = bitcast i64* %158 to i32*
  store i32 %2590, i32* %2591, align 1
  %2592 = extractelement <2 x i32> %2582, i32 1
  %2593 = getelementptr inbounds i8, i8* %983, i64 12
  %2594 = bitcast i8* %2593 to i32*
  store i32 %2592, i32* %2594, align 1
  %2595 = add i64 %2558, 43
  store i64 %2595, i64* %3, align 8
  %2596 = load i64, i64* %2561, align 8
  store i64 %2596, i64* %RAX.i1193, align 8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %2598 = bitcast %union.VectorReg* %2597 to i8*
  %2599 = add i64 %2596, 16
  %2600 = add i64 %2558, 48
  store i64 %2600, i64* %3, align 8
  %2601 = bitcast %union.VectorReg* %2597 to <2 x i32>*
  %2602 = load <2 x i32>, <2 x i32>* %2601, align 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %2604 = bitcast i64* %2603 to <2 x i32>*
  %2605 = load <2 x i32>, <2 x i32>* %2604, align 1
  %2606 = inttoptr i64 %2599 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = sitofp i32 %2607 to float
  %2609 = bitcast %union.VectorReg* %2597 to float*
  store float %2608, float* %2609, align 1
  %2610 = extractelement <2 x i32> %2602, i32 1
  %2611 = getelementptr inbounds i8, i8* %2598, i64 4
  %2612 = bitcast i8* %2611 to i32*
  store i32 %2610, i32* %2612, align 1
  %2613 = extractelement <2 x i32> %2605, i32 0
  %2614 = bitcast i64* %2603 to i32*
  store i32 %2613, i32* %2614, align 1
  %2615 = extractelement <2 x i32> %2605, i32 1
  %2616 = getelementptr inbounds i8, i8* %2598, i64 12
  %2617 = bitcast i8* %2616 to i32*
  store i32 %2615, i32* %2617, align 1
  %2618 = add i64 %2558, -44565
  %2619 = add i64 %2558, 53
  %2620 = load i64, i64* %6, align 8
  %2621 = add i64 %2620, -8
  %2622 = inttoptr i64 %2621 to i64*
  store i64 %2619, i64* %2622, align 8
  store i64 %2621, i64* %6, align 8
  store i64 %2618, i64* %3, align 8
  %call2_424965 = tail call %struct.Memory* @sub_419b20.ExtremeValueSetHistogram(%struct.State* nonnull %0, i64 %2618, %struct.Memory* %MEMORY.48)
  %.pre174 = load i64, i64* %RBP.i, align 8
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_42496a

block_.L_42496a:                                  ; preds = %block_424935, %block_.L_42491c
  %2623 = phi i64 [ %2558, %block_.L_42491c ], [ %.pre175, %block_424935 ]
  %2624 = phi i64 [ %2541, %block_.L_42491c ], [ %.pre174, %block_424935 ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.48, %block_.L_42491c ], [ %call2_424965, %block_424935 ]
  %2625 = add i64 %2624, -252
  %2626 = add i64 %2623, 7
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i32*
  %2628 = load i32, i32* %2627, align 4
  store i8 0, i8* %39, align 1
  %2629 = and i32 %2628, 255
  %2630 = tail call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  store i8 %2633, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2634 = icmp eq i32 %2628, 0
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %54, align 1
  %2636 = lshr i32 %2628, 31
  %2637 = trunc i32 %2636 to i8
  store i8 %2637, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v242 = select i1 %2634, i64 13, i64 25
  %2638 = add i64 %2623, %.v242
  store i64 %2638, i64* %3, align 8
  br i1 %2634, label %block_424977, label %block_.L_424983

block_424977:                                     ; preds = %block_.L_42496a
  %2639 = add i64 %2624, -216
  %2640 = add i64 %2638, 6
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = zext i32 %2642 to i64
  store i64 %2643, i64* %RAX.i1193, align 8
  %2644 = add i64 %2638, 12
  store i64 %2644, i64* %3, align 8
  store i32 %2642, i32* %2627, align 4
  %.pre176 = load i64, i64* %RBP.i, align 8
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_424983

block_.L_424983:                                  ; preds = %block_.L_42496a, %block_424977
  %2645 = phi i64 [ %.pre177, %block_424977 ], [ %2638, %block_.L_42496a ]
  %2646 = phi i64 [ %.pre176, %block_424977 ], [ %2624, %block_.L_42496a ]
  %2647 = add i64 %2646, -328
  %2648 = add i64 %2645, 7
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2647 to i32*
  %2650 = load i32, i32* %2649, align 4
  store i8 0, i8* %39, align 1
  %2651 = and i32 %2650, 255
  %2652 = tail call i32 @llvm.ctpop.i32(i32 %2651)
  %2653 = trunc i32 %2652 to i8
  %2654 = and i8 %2653, 1
  %2655 = xor i8 %2654, 1
  store i8 %2655, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2656 = icmp eq i32 %2650, 0
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %54, align 1
  %2658 = lshr i32 %2650, 31
  %2659 = trunc i32 %2658 to i8
  store i8 %2659, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v243 = select i1 %2656, i64 224, i64 13
  %2660 = add i64 %2645, %.v243
  store i64 %2660, i64* %3, align 8
  br i1 %2656, label %block_.L_424a63, label %block_424990

block_424990:                                     ; preds = %block_.L_424983
  %2661 = add i64 %2646, -104
  %2662 = add i64 %2660, 4
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i64*
  %2664 = load i64, i64* %2663, align 8
  store i64 %2664, i64* %RAX.i1193, align 8
  %2665 = add i64 %2660, 7
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i64*
  %2667 = load i64, i64* %2666, align 8
  store i64 %2667, i64* %RSI.i423, align 8
  %2668 = add i64 %2660, 11
  store i64 %2668, i64* %3, align 8
  %2669 = load i64, i64* %2663, align 8
  store i64 %2669, i64* %RAX.i1193, align 8
  %2670 = add i64 %2669, 456
  %2671 = add i64 %2660, 17
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i32*
  %2673 = load i32, i32* %2672, align 4
  %2674 = and i32 %2673, 512
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %RCX.i1162, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %.lobit202 = lshr exact i32 %2674, 9
  %2676 = trunc i32 %.lobit202 to i8
  %2677 = xor i8 %2676, 1
  store i8 %2677, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2678 = add i64 %2646, -464
  %2679 = add i64 %2660, 33
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i64*
  store i64 %2667, i64* %2680, align 8
  %2681 = load i64, i64* %3, align 8
  %2682 = load i8, i8* %54, align 1
  %2683 = icmp ne i8 %2682, 0
  %.v278 = select i1 %2683, i64 26, i64 6
  %2684 = add i64 %2681, %.v278
  store i64 %2684, i64* %3, align 8
  %cmpBr_4249b1 = icmp eq i8 %2682, 1
  br i1 %cmpBr_4249b1, label %block_.L_4249cb, label %block_4249b7

block_4249b7:                                     ; preds = %block_424990
  %2685 = load i64, i64* %RBP.i, align 8
  %2686 = add i64 %2685, -104
  %2687 = add i64 %2684, 4
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i64*
  %2689 = load i64, i64* %2688, align 8
  store i64 %2689, i64* %RAX.i1193, align 8
  %2690 = add i64 %2689, 8
  %2691 = add i64 %2684, 8
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2690 to i64*
  %2693 = load i64, i64* %2692, align 8
  store i64 %2693, i64* %RAX.i1193, align 8
  %2694 = add i64 %2685, -472
  %2695 = add i64 %2684, 15
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i64*
  store i64 %2693, i64* %2696, align 8
  %2697 = load i64, i64* %3, align 8
  %2698 = add i64 %2697, 27
  br label %block_.L_4249e1

block_.L_4249cb:                                  ; preds = %block_424990
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i1193, align 8
  %2699 = load i64, i64* %RBP.i, align 8
  %2700 = add i64 %2699, -472
  %2701 = add i64 %2684, 17
  store i64 %2701, i64* %3, align 8
  %2702 = inttoptr i64 %2700 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %2702, align 8
  %2703 = load i64, i64* %3, align 8
  %2704 = add i64 %2703, 5
  store i64 %2704, i64* %3, align 8
  br label %block_.L_4249e1

block_.L_4249e1:                                  ; preds = %block_.L_4249cb, %block_4249b7
  %storemerge95 = phi i64 [ %2698, %block_4249b7 ], [ %2704, %block_.L_4249cb ]
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -472
  %2707 = add i64 %storemerge95, 7
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i64*
  %2709 = load i64, i64* %2708, align 8
  store i64 %2709, i64* %RAX.i1193, align 8
  %2710 = add i64 %2705, -104
  %2711 = add i64 %storemerge95, 11
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i64*
  %2713 = load i64, i64* %2712, align 8
  store i64 %2713, i64* %RCX.i1162, align 8
  %2714 = add i64 %2713, 456
  %2715 = add i64 %storemerge95, 17
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i32*
  %2717 = load i32, i32* %2716, align 4
  %2718 = and i32 %2717, 2
  %2719 = zext i32 %2718 to i64
  store i64 %2719, i64* %RDX.i1146, align 8
  store i8 0, i8* %39, align 1
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2718)
  %2721 = trunc i32 %2720 to i8
  %2722 = xor i8 %2721, 1
  store i8 %2722, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %.lobit203 = lshr exact i32 %2718, 1
  %2723 = trunc i32 %.lobit203 to i8
  %2724 = xor i8 %2723, 1
  store i8 %2724, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2725 = add i64 %2705, -480
  %2726 = add i64 %storemerge95, 30
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i64*
  store i64 %2709, i64* %2727, align 8
  %2728 = load i64, i64* %3, align 8
  %2729 = load i8, i8* %54, align 1
  %2730 = icmp ne i8 %2729, 0
  %.v279 = select i1 %2730, i64 26, i64 6
  %2731 = add i64 %2728, %.v279
  store i64 %2731, i64* %3, align 8
  %cmpBr_4249ff = icmp eq i8 %2729, 1
  br i1 %cmpBr_4249ff, label %block_.L_424a19, label %block_424a05

block_424a05:                                     ; preds = %block_.L_4249e1
  %2732 = load i64, i64* %RBP.i, align 8
  %2733 = add i64 %2732, -104
  %2734 = add i64 %2731, 4
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i64*
  %2736 = load i64, i64* %2735, align 8
  store i64 %2736, i64* %RAX.i1193, align 8
  %2737 = add i64 %2736, 16
  %2738 = add i64 %2731, 8
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i64*
  %2740 = load i64, i64* %2739, align 8
  store i64 %2740, i64* %RAX.i1193, align 8
  %2741 = add i64 %2732, -488
  %2742 = add i64 %2731, 15
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i64*
  store i64 %2740, i64* %2743, align 8
  %2744 = load i64, i64* %3, align 8
  %2745 = add i64 %2744, 27
  br label %block_.L_424a2f

block_.L_424a19:                                  ; preds = %block_.L_4249e1
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i1193, align 8
  %2746 = load i64, i64* %RBP.i, align 8
  %2747 = add i64 %2746, -488
  %2748 = add i64 %2731, 17
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %2749, align 8
  %2750 = load i64, i64* %3, align 8
  %2751 = add i64 %2750, 5
  store i64 %2751, i64* %3, align 8
  br label %block_.L_424a2f

block_.L_424a2f:                                  ; preds = %block_.L_424a19, %block_424a05
  %storemerge97 = phi i64 [ %2745, %block_424a05 ], [ %2751, %block_.L_424a19 ]
  %2752 = load i64, i64* %RBP.i, align 8
  %2753 = add i64 %2752, -488
  %2754 = add i64 %storemerge97, 7
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i64*
  %2756 = load i64, i64* %2755, align 8
  store i64 %2756, i64* %RAX.i1193, align 8
  store i64 ptrtoint (%G__0x457ee2_type* @G__0x457ee2 to i64), i64* %RDI.i1356, align 8
  %2757 = add i64 %2752, -464
  %2758 = add i64 %storemerge97, 24
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i64*
  %2760 = load i64, i64* %2759, align 8
  store i64 %2760, i64* %RSI.i423, align 8
  %2761 = add i64 %2752, -480
  %2762 = add i64 %storemerge97, 31
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to i64*
  %2764 = load i64, i64* %2763, align 8
  store i64 %2764, i64* %RDX.i1146, align 8
  store i64 %2756, i64* %RCX.i1162, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2765 = add i64 %storemerge97, -144799
  %2766 = add i64 %storemerge97, 41
  %2767 = load i64, i64* %6, align 8
  %2768 = add i64 %2767, -8
  %2769 = inttoptr i64 %2768 to i64*
  store i64 %2766, i64* %2769, align 8
  store i64 %2768, i64* %6, align 8
  store i64 %2765, i64* %3, align 8
  %2770 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.49)
  %2771 = load i64, i64* %RBP.i, align 8
  %2772 = add i64 %2771, -492
  %2773 = load i32, i32* %EAX.i1603, align 4
  %2774 = load i64, i64* %3, align 8
  %2775 = add i64 %2774, 6
  store i64 %2775, i64* %3, align 8
  %2776 = inttoptr i64 %2772 to i32*
  store i32 %2773, i32* %2776, align 4
  %2777 = load i64, i64* %3, align 8
  %2778 = add i64 %2777, 232
  store i64 %2778, i64* %3, align 8
  br label %block_.L_424b46

block_.L_424a63:                                  ; preds = %block_.L_424983
  store i64 ptrtoint (%G__0x457ef8_type* @G__0x457ef8 to i64), i64* %RDI.i1356, align 8
  %2779 = add i64 %2646, -104
  %2780 = add i64 %2660, 14
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i64*
  %2782 = load i64, i64* %2781, align 8
  store i64 %2782, i64* %RAX.i1193, align 8
  %2783 = add i64 %2660, 17
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i64*
  %2785 = load i64, i64* %2784, align 8
  store i64 %2785, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2786 = add i64 %2660, -144851
  %2787 = add i64 %2660, 24
  %2788 = load i64, i64* %6, align 8
  %2789 = add i64 %2788, -8
  %2790 = inttoptr i64 %2789 to i64*
  store i64 %2787, i64* %2790, align 8
  store i64 %2789, i64* %6, align 8
  store i64 %2786, i64* %3, align 8
  %2791 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.49)
  %2792 = load i64, i64* %RBP.i, align 8
  %2793 = add i64 %2792, -104
  %2794 = load i64, i64* %3, align 8
  %2795 = add i64 %2794, 4
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2793 to i64*
  %2797 = load i64, i64* %2796, align 8
  store i64 %2797, i64* %RSI.i423, align 8
  %2798 = add i64 %2797, 456
  %2799 = add i64 %2794, 10
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = and i32 %2801, 512
  %2803 = zext i32 %2802 to i64
  store i64 %2803, i64* %RCX.i1162, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %.lobit205 = lshr exact i32 %2802, 9
  %2804 = trunc i32 %.lobit205 to i8
  %2805 = xor i8 %2804, 1
  store i8 %2805, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2806 = add i64 %2792, -496
  %2807 = load i32, i32* %EAX.i1603, align 4
  %2808 = add i64 %2794, 25
  store i64 %2808, i64* %3, align 8
  %2809 = inttoptr i64 %2806 to i32*
  store i32 %2807, i32* %2809, align 4
  %2810 = load i64, i64* %3, align 8
  %2811 = load i8, i8* %54, align 1
  %2812 = icmp ne i8 %2811, 0
  %.v280 = select i1 %2812, i64 26, i64 6
  %2813 = add i64 %2810, %.v280
  store i64 %2813, i64* %3, align 8
  %cmpBr_424a94 = icmp eq i8 %2811, 1
  br i1 %cmpBr_424a94, label %block_.L_424aae, label %block_424a9a

block_424a9a:                                     ; preds = %block_.L_424a63
  %2814 = load i64, i64* %RBP.i, align 8
  %2815 = add i64 %2814, -104
  %2816 = add i64 %2813, 4
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i64*
  %2818 = load i64, i64* %2817, align 8
  store i64 %2818, i64* %RAX.i1193, align 8
  %2819 = add i64 %2818, 8
  %2820 = add i64 %2813, 8
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i64*
  %2822 = load i64, i64* %2821, align 8
  store i64 %2822, i64* %RAX.i1193, align 8
  %2823 = add i64 %2814, -504
  %2824 = add i64 %2813, 15
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i64*
  store i64 %2822, i64* %2825, align 8
  %2826 = load i64, i64* %3, align 8
  %2827 = add i64 %2826, 27
  br label %block_.L_424ac4

block_.L_424aae:                                  ; preds = %block_.L_424a63
  store i64 ptrtoint (%G__0x457f0a_type* @G__0x457f0a to i64), i64* %RAX.i1193, align 8
  %2828 = load i64, i64* %RBP.i, align 8
  %2829 = add i64 %2828, -504
  %2830 = add i64 %2813, 17
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to i64*
  store i64 ptrtoint (%G__0x457f0a_type* @G__0x457f0a to i64), i64* %2831, align 8
  %2832 = load i64, i64* %3, align 8
  %2833 = add i64 %2832, 5
  store i64 %2833, i64* %3, align 8
  br label %block_.L_424ac4

block_.L_424ac4:                                  ; preds = %block_.L_424aae, %block_424a9a
  %storemerge103 = phi i64 [ %2827, %block_424a9a ], [ %2833, %block_.L_424aae ]
  %2834 = load i64, i64* %RBP.i, align 8
  %2835 = add i64 %2834, -504
  %2836 = add i64 %storemerge103, 7
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2835 to i64*
  %2838 = load i64, i64* %2837, align 8
  store i64 %2838, i64* %RAX.i1193, align 8
  store i64 ptrtoint (%G__0x457f11_type* @G__0x457f11 to i64), i64* %RDI.i1356, align 8
  store i64 %2838, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2839 = add i64 %storemerge103, -144948
  %2840 = add i64 %storemerge103, 27
  %2841 = load i64, i64* %6, align 8
  %2842 = add i64 %2841, -8
  %2843 = inttoptr i64 %2842 to i64*
  store i64 %2840, i64* %2843, align 8
  store i64 %2842, i64* %6, align 8
  store i64 %2839, i64* %3, align 8
  %2844 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2791)
  %2845 = load i64, i64* %RBP.i, align 8
  %2846 = add i64 %2845, -104
  %2847 = load i64, i64* %3, align 8
  %2848 = add i64 %2847, 4
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2846 to i64*
  %2850 = load i64, i64* %2849, align 8
  store i64 %2850, i64* %RSI.i423, align 8
  %2851 = add i64 %2850, 456
  %2852 = add i64 %2847, 10
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i32*
  %2854 = load i32, i32* %2853, align 4
  %2855 = and i32 %2854, 2
  %2856 = zext i32 %2855 to i64
  store i64 %2856, i64* %RCX.i1162, align 8
  store i8 0, i8* %39, align 1
  %2857 = tail call i32 @llvm.ctpop.i32(i32 %2855)
  %2858 = trunc i32 %2857 to i8
  %2859 = xor i8 %2858, 1
  store i8 %2859, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %.lobit206 = lshr exact i32 %2855, 1
  %2860 = trunc i32 %.lobit206 to i8
  %2861 = xor i8 %2860, 1
  store i8 %2861, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %2862 = add i64 %2845, -508
  %2863 = load i32, i32* %EAX.i1603, align 4
  %2864 = add i64 %2847, 22
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2862 to i32*
  store i32 %2863, i32* %2865, align 4
  %2866 = load i64, i64* %3, align 8
  %2867 = load i8, i8* %54, align 1
  %2868 = icmp ne i8 %2867, 0
  %.v281 = select i1 %2868, i64 26, i64 6
  %2869 = add i64 %2866, %.v281
  store i64 %2869, i64* %3, align 8
  %cmpBr_424af5 = icmp eq i8 %2867, 1
  br i1 %cmpBr_424af5, label %block_.L_424b0f, label %block_424afb

block_424afb:                                     ; preds = %block_.L_424ac4
  %2870 = load i64, i64* %RBP.i, align 8
  %2871 = add i64 %2870, -104
  %2872 = add i64 %2869, 4
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i64*
  %2874 = load i64, i64* %2873, align 8
  store i64 %2874, i64* %RAX.i1193, align 8
  %2875 = add i64 %2874, 16
  %2876 = add i64 %2869, 8
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to i64*
  %2878 = load i64, i64* %2877, align 8
  store i64 %2878, i64* %RAX.i1193, align 8
  %2879 = add i64 %2870, -520
  %2880 = add i64 %2869, 15
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i64*
  store i64 %2878, i64* %2881, align 8
  %2882 = load i64, i64* %3, align 8
  %2883 = add i64 %2882, 27
  br label %block_.L_424b25

block_.L_424b0f:                                  ; preds = %block_.L_424ac4
  store i64 ptrtoint (%G__0x457f0a_type* @G__0x457f0a to i64), i64* %RAX.i1193, align 8
  %2884 = load i64, i64* %RBP.i, align 8
  %2885 = add i64 %2884, -520
  %2886 = add i64 %2869, 17
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to i64*
  store i64 ptrtoint (%G__0x457f0a_type* @G__0x457f0a to i64), i64* %2887, align 8
  %2888 = load i64, i64* %3, align 8
  %2889 = add i64 %2888, 5
  store i64 %2889, i64* %3, align 8
  br label %block_.L_424b25

block_.L_424b25:                                  ; preds = %block_.L_424b0f, %block_424afb
  %storemerge105 = phi i64 [ %2883, %block_424afb ], [ %2889, %block_.L_424b0f ]
  %2890 = load i64, i64* %RBP.i, align 8
  %2891 = add i64 %2890, -520
  %2892 = add i64 %storemerge105, 7
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i64*
  %2894 = load i64, i64* %2893, align 8
  store i64 %2894, i64* %RAX.i1193, align 8
  store i64 ptrtoint (%G__0x457f22_type* @G__0x457f22 to i64), i64* %RDI.i1356, align 8
  store i64 %2894, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2895 = add i64 %storemerge105, -145045
  %2896 = add i64 %storemerge105, 27
  %2897 = load i64, i64* %6, align 8
  %2898 = add i64 %2897, -8
  %2899 = inttoptr i64 %2898 to i64*
  store i64 %2896, i64* %2899, align 8
  store i64 %2898, i64* %6, align 8
  store i64 %2895, i64* %3, align 8
  %2900 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2844)
  %2901 = load i64, i64* %RBP.i, align 8
  %2902 = add i64 %2901, -524
  %2903 = load i32, i32* %EAX.i1603, align 4
  %2904 = load i64, i64* %3, align 8
  %2905 = add i64 %2904, 6
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2902 to i32*
  store i32 %2903, i32* %2906, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_424b46

block_.L_424b46:                                  ; preds = %block_.L_424b25, %block_.L_424a2f
  %2907 = phi i64 [ %.pre178, %block_.L_424b25 ], [ %2778, %block_.L_424a2f ]
  %MEMORY.55 = phi %struct.Memory* [ %2900, %block_.L_424b25 ], [ %2770, %block_.L_424a2f ]
  %2908 = load i64, i64* %RBP.i, align 8
  %2909 = add i64 %2908, -104
  %2910 = add i64 %2907, 4
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i64*
  %2912 = load i64, i64* %2911, align 8
  store i64 %2912, i64* %RAX.i1193, align 8
  %2913 = add i64 %2912, 456
  %2914 = add i64 %2907, 10
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i32*
  %2916 = load i32, i32* %2915, align 4
  %2917 = and i32 %2916, 128
  %2918 = zext i32 %2917 to i64
  store i64 %2918, i64* %RCX.i1162, align 8
  store i8 0, i8* %39, align 1
  %2919 = tail call i32 @llvm.ctpop.i32(i32 %2917)
  %2920 = trunc i32 %2919 to i8
  %2921 = xor i8 %2920, 1
  store i8 %2921, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %2922 = icmp eq i32 %2917, 0
  %.lobit204 = lshr exact i32 %2917, 7
  %2923 = trunc i32 %.lobit204 to i8
  %2924 = xor i8 %2923, 1
  store i8 %2924, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v244 = select i1 %2922, i64 53, i64 25
  %2925 = add i64 %2907, %.v244
  %2926 = add i64 %2925, 10
  store i64 %2926, i64* %3, align 8
  br i1 %2922, label %block_.L_424b7b, label %block_424b5f

block_424b5f:                                     ; preds = %block_.L_424b46
  store i64 ptrtoint (%G__0x457f33_type* @G__0x457f33 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2927 = add i64 %2925, -145103
  %2928 = add i64 %2925, 17
  %2929 = load i64, i64* %6, align 8
  %2930 = add i64 %2929, -8
  %2931 = inttoptr i64 %2930 to i64*
  store i64 %2928, i64* %2931, align 8
  store i64 %2930, i64* %6, align 8
  store i64 %2927, i64* %3, align 8
  %2932 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.55)
  %2933 = load i64, i64* %RBP.i, align 8
  %2934 = add i64 %2933, -528
  %2935 = load i32, i32* %EAX.i1603, align 4
  %2936 = load i64, i64* %3, align 8
  %2937 = add i64 %2936, 6
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2934 to i32*
  store i32 %2935, i32* %2938, align 4
  %2939 = load i64, i64* %3, align 8
  %2940 = add i64 %2939, 28
  store i64 %2940, i64* %3, align 8
  br label %block_.L_424b92

block_.L_424b7b:                                  ; preds = %block_.L_424b46
  store i64 ptrtoint (%G__0x457f72_type* @G__0x457f72 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %2941 = add i64 %2925, -145131
  %2942 = add i64 %2925, 17
  %2943 = load i64, i64* %6, align 8
  %2944 = add i64 %2943, -8
  %2945 = inttoptr i64 %2944 to i64*
  store i64 %2942, i64* %2945, align 8
  store i64 %2944, i64* %6, align 8
  store i64 %2941, i64* %3, align 8
  %2946 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.55)
  %2947 = load i64, i64* %RBP.i, align 8
  %2948 = add i64 %2947, -532
  %2949 = load i32, i32* %EAX.i1603, align 4
  %2950 = load i64, i64* %3, align 8
  %2951 = add i64 %2950, 6
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2948 to i32*
  store i32 %2949, i32* %2952, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_424b92

block_.L_424b92:                                  ; preds = %block_.L_424b7b, %block_424b5f
  %2953 = phi i64 [ %.pre179, %block_.L_424b7b ], [ %2940, %block_424b5f ]
  %MEMORY.56 = phi %struct.Memory* [ %2946, %block_.L_424b7b ], [ %2932, %block_424b5f ]
  %2954 = load i64, i64* %RBP.i, align 8
  %2955 = add i64 %2954, -128
  %2956 = add i64 %2953, 4
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i64*
  %2958 = load i64, i64* %2957, align 8
  store i64 %2958, i64* %RDI.i1356, align 8
  %2959 = add i64 %2953, 165246
  %2960 = add i64 %2953, 9
  %2961 = load i64, i64* %6, align 8
  %2962 = add i64 %2961, -8
  %2963 = inttoptr i64 %2962 to i64*
  store i64 %2960, i64* %2963, align 8
  store i64 %2962, i64* %6, align 8
  store i64 %2959, i64* %3, align 8
  %call2_424b96 = tail call %struct.Memory* @sub_44d110.FullSortTophits(%struct.State* nonnull %0, i64 %2959, %struct.Memory* %MEMORY.56)
  %2964 = load i64, i64* %RBP.i, align 8
  %2965 = add i64 %2964, -128
  %2966 = load i64, i64* %3, align 8
  %2967 = add i64 %2966, 4
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2965 to i64*
  %2969 = load i64, i64* %2968, align 8
  store i64 %2969, i64* %RDI.i1356, align 8
  %2970 = add i64 %2966, 164933
  %2971 = add i64 %2966, 9
  %2972 = load i64, i64* %6, align 8
  %2973 = add i64 %2972, -8
  %2974 = inttoptr i64 %2973 to i64*
  store i64 %2971, i64* %2974, align 8
  store i64 %2973, i64* %6, align 8
  store i64 %2970, i64* %3, align 8
  %call2_424b9f = tail call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* nonnull %0, i64 %2970, %struct.Memory* %call2_424b96)
  %2975 = load i64, i64* %3, align 8
  store i64 8, i64* %RCX.i1162, align 8
  %2976 = load i32, i32* %EAX.i1603, align 4
  %2977 = sub i32 8, %2976
  %2978 = icmp ugt i32 %2976, 8
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %39, align 1
  %2980 = and i32 %2977, 255
  %2981 = tail call i32 @llvm.ctpop.i32(i32 %2980)
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  store i8 %2984, i8* %46, align 1
  %2985 = xor i32 %2976, %2977
  %2986 = lshr i32 %2985, 4
  %2987 = trunc i32 %2986 to i8
  %2988 = and i8 %2987, 1
  store i8 %2988, i8* %51, align 1
  %2989 = icmp eq i32 %2977, 0
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %54, align 1
  %2991 = lshr i32 %2977, 31
  %2992 = trunc i32 %2991 to i8
  store i8 %2992, i8* %57, align 1
  %2993 = lshr i32 %2976, 31
  %2994 = add nuw nsw i32 %2991, %2993
  %2995 = icmp eq i32 %2994, 2
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %63, align 1
  %2997 = icmp ne i8 %2992, 0
  %2998 = xor i1 %2997, %2995
  %2999 = or i1 %2989, %2998
  %.v245 = select i1 %2999, i64 29, i64 13
  %3000 = add i64 %2975, %.v245
  store i64 %3000, i64* %3, align 8
  br i1 %2999, label %block_.L_424bc1, label %block_424bb1

block_424bb1:                                     ; preds = %block_.L_424b92
  store i64 8, i64* %RAX.i1193, align 8
  %3001 = load i64, i64* %RBP.i, align 8
  %3002 = add i64 %3001, -536
  %3003 = add i64 %3000, 11
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  store i32 8, i32* %3004, align 4
  %3005 = load i64, i64* %3, align 8
  %3006 = add i64 %3005, 20
  store i64 %3006, i64* %3, align 8
  br label %block_.L_424bd0

block_.L_424bc1:                                  ; preds = %block_.L_424b92
  %3007 = load i64, i64* %RBP.i, align 8
  %3008 = add i64 %3007, -128
  %3009 = add i64 %3000, 4
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i64*
  %3011 = load i64, i64* %3010, align 8
  store i64 %3011, i64* %RDI.i1356, align 8
  %3012 = add i64 %3000, 164895
  %3013 = add i64 %3000, 9
  %3014 = load i64, i64* %6, align 8
  %3015 = add i64 %3014, -8
  %3016 = inttoptr i64 %3015 to i64*
  store i64 %3013, i64* %3016, align 8
  store i64 %3015, i64* %6, align 8
  store i64 %3012, i64* %3, align 8
  %call2_424bc5 = tail call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* nonnull %0, i64 %3012, %struct.Memory* %call2_424b9f)
  %3017 = load i64, i64* %RBP.i, align 8
  %3018 = add i64 %3017, -536
  %3019 = load i32, i32* %EAX.i1603, align 4
  %3020 = load i64, i64* %3, align 8
  %3021 = add i64 %3020, 6
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3018 to i32*
  store i32 %3019, i32* %3022, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_424bd0

block_.L_424bd0:                                  ; preds = %block_.L_424bc1, %block_424bb1
  %3023 = phi i64 [ %.pre180, %block_.L_424bc1 ], [ %3006, %block_424bb1 ]
  %MEMORY.57 = phi %struct.Memory* [ %call2_424bc5, %block_.L_424bc1 ], [ %call2_424b9f, %block_424bb1 ]
  %3024 = load i64, i64* %RBP.i, align 8
  %3025 = add i64 %3024, -536
  %3026 = add i64 %3023, 6
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i32*
  %3028 = load i32, i32* %3027, align 4
  %3029 = zext i32 %3028 to i64
  store i64 %3029, i64* %RAX.i1193, align 8
  store i64 52, i64* %RCX.i1162, align 8
  %3030 = add i64 %3024, -232
  %3031 = add i64 %3023, 17
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  store i32 %3028, i32* %3032, align 4
  %3033 = load i64, i64* %RCX.i1162, align 8
  %3034 = load i64, i64* %RBP.i, align 8
  %3035 = add i64 %3034, -232
  %3036 = load i64, i64* %3, align 8
  %3037 = add i64 %3036, 6
  store i64 %3037, i64* %3, align 8
  %3038 = trunc i64 %3033 to i32
  %3039 = inttoptr i64 %3035 to i32*
  %3040 = load i32, i32* %3039, align 4
  %3041 = sub i32 %3038, %3040
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RCX.i1162, align 8
  %3043 = lshr i32 %3041, 31
  %3044 = add i32 %3041, -11
  %3045 = icmp ult i32 %3041, 11
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %39, align 1
  %3047 = and i32 %3044, 255
  %3048 = tail call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  store i8 %3051, i8* %46, align 1
  %3052 = xor i32 %3044, %3041
  %3053 = lshr i32 %3052, 4
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  store i8 %3055, i8* %51, align 1
  %3056 = icmp eq i32 %3044, 0
  %3057 = zext i1 %3056 to i8
  store i8 %3057, i8* %54, align 1
  %3058 = lshr i32 %3044, 31
  %3059 = trunc i32 %3058 to i8
  store i8 %3059, i8* %57, align 1
  %3060 = xor i32 %3058, %3043
  %3061 = add nuw nsw i32 %3060, %3043
  %3062 = icmp eq i32 %3061, 2
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %63, align 1
  %3064 = icmp ne i8 %3059, 0
  %3065 = xor i1 %3064, %3062
  %3066 = or i1 %3056, %3065
  %.v246 = select i1 %3066, i64 37, i64 15
  %3067 = add i64 %3036, %.v246
  %3068 = add i64 %3067, 5
  store i64 %3068, i64* %3, align 8
  br i1 %3066, label %block_.L_424c06, label %block_424bf0

block_424bf0:                                     ; preds = %block_.L_424bd0
  store i64 52, i64* %RAX.i1193, align 8
  %3069 = add i64 %3067, 11
  store i64 %3069, i64* %3, align 8
  %3070 = load i32, i32* %3039, align 4
  %3071 = sub i32 52, %3070
  %3072 = zext i32 %3071 to i64
  store i64 %3072, i64* %RAX.i1193, align 8
  %3073 = icmp ugt i32 %3070, 52
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %39, align 1
  %3075 = and i32 %3071, 255
  %3076 = tail call i32 @llvm.ctpop.i32(i32 %3075)
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  store i8 %3079, i8* %46, align 1
  %3080 = xor i32 %3070, 16
  %3081 = xor i32 %3080, %3071
  %3082 = lshr i32 %3081, 4
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %51, align 1
  %3085 = icmp eq i32 %3071, 0
  %3086 = zext i1 %3085 to i8
  store i8 %3086, i8* %54, align 1
  %3087 = lshr i32 %3071, 31
  %3088 = trunc i32 %3087 to i8
  store i8 %3088, i8* %57, align 1
  %3089 = lshr i32 %3070, 31
  %3090 = add nuw nsw i32 %3087, %3089
  %3091 = icmp eq i32 %3090, 2
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %63, align 1
  %3093 = add i64 %3034, -540
  %3094 = add i64 %3067, 17
  store i64 %3094, i64* %3, align 8
  %3095 = inttoptr i64 %3093 to i32*
  store i32 %3071, i32* %3095, align 4
  %3096 = load i64, i64* %3, align 8
  %3097 = add i64 %3096, 21
  br label %block_.L_424c16

block_.L_424c06:                                  ; preds = %block_.L_424bd0
  store i64 11, i64* %RAX.i1193, align 8
  %3098 = add i64 %3034, -540
  %3099 = add i64 %3067, 11
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3098 to i32*
  store i32 11, i32* %3100, align 4
  %3101 = load i64, i64* %3, align 8
  %3102 = add i64 %3101, 5
  store i64 %3102, i64* %3, align 8
  br label %block_.L_424c16

block_.L_424c16:                                  ; preds = %block_.L_424c06, %block_424bf0
  %storemerge99 = phi i64 [ %3097, %block_424bf0 ], [ %3102, %block_.L_424c06 ]
  %3103 = load i64, i64* %RBP.i, align 8
  %3104 = add i64 %3103, -540
  %3105 = add i64 %storemerge99, 6
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  %3107 = load i32, i32* %3106, align 4
  %3108 = zext i32 %3107 to i64
  store i64 %3108, i64* %RAX.i1193, align 8
  %3109 = add i64 %3103, -236
  %3110 = add i64 %storemerge99, 12
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3109 to i32*
  store i32 %3107, i32* %3111, align 4
  %3112 = load i64, i64* %RBP.i, align 8
  %3113 = add i64 %3112, -136
  %3114 = load i64, i64* %3, align 8
  %3115 = add i64 %3114, 7
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3113 to i64*
  %3117 = load i64, i64* %3116, align 8
  store i64 %3117, i64* %RDI.i1356, align 8
  %3118 = add i64 %3114, 165102
  %3119 = add i64 %3114, 12
  %3120 = load i64, i64* %6, align 8
  %3121 = add i64 %3120, -8
  %3122 = inttoptr i64 %3121 to i64*
  store i64 %3119, i64* %3122, align 8
  store i64 %3121, i64* %6, align 8
  store i64 %3118, i64* %3, align 8
  %call2_424c29 = tail call %struct.Memory* @sub_44d110.FullSortTophits(%struct.State* nonnull %0, i64 %3118, %struct.Memory* %MEMORY.57)
  %3123 = load i64, i64* %RBP.i, align 8
  %3124 = add i64 %3123, -136
  %3125 = load i64, i64* %3, align 8
  %3126 = add i64 %3125, 7
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3124 to i64*
  %3128 = load i64, i64* %3127, align 8
  store i64 %3128, i64* %RDI.i1356, align 8
  %3129 = add i64 %3125, 164786
  %3130 = add i64 %3125, 12
  %3131 = load i64, i64* %6, align 8
  %3132 = add i64 %3131, -8
  %3133 = inttoptr i64 %3132 to i64*
  store i64 %3130, i64* %3133, align 8
  store i64 %3132, i64* %6, align 8
  store i64 %3129, i64* %3, align 8
  %call2_424c35 = tail call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* nonnull %0, i64 %3129, %struct.Memory* %call2_424c29)
  %3134 = load i64, i64* %3, align 8
  store i64 8, i64* %RCX.i1162, align 8
  %3135 = load i32, i32* %EAX.i1603, align 4
  %3136 = sub i32 8, %3135
  %3137 = icmp ugt i32 %3135, 8
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %39, align 1
  %3139 = and i32 %3136, 255
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %46, align 1
  %3144 = xor i32 %3135, %3136
  %3145 = lshr i32 %3144, 4
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  store i8 %3147, i8* %51, align 1
  %3148 = icmp eq i32 %3136, 0
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %54, align 1
  %3150 = lshr i32 %3136, 31
  %3151 = trunc i32 %3150 to i8
  store i8 %3151, i8* %57, align 1
  %3152 = lshr i32 %3135, 31
  %3153 = add nuw nsw i32 %3150, %3152
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %63, align 1
  %3156 = icmp ne i8 %3151, 0
  %3157 = xor i1 %3156, %3154
  %3158 = or i1 %3148, %3157
  %.v247 = select i1 %3158, i64 29, i64 13
  %3159 = add i64 %3134, %.v247
  store i64 %3159, i64* %3, align 8
  br i1 %3158, label %block_.L_424c57, label %block_424c47

block_424c47:                                     ; preds = %block_.L_424c16
  store i64 8, i64* %RAX.i1193, align 8
  %3160 = load i64, i64* %RBP.i, align 8
  %3161 = add i64 %3160, -544
  %3162 = add i64 %3159, 11
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i32*
  store i32 8, i32* %3163, align 4
  %3164 = load i64, i64* %3, align 8
  %3165 = add i64 %3164, 23
  store i64 %3165, i64* %3, align 8
  br label %block_.L_424c69

block_.L_424c57:                                  ; preds = %block_.L_424c16
  %3166 = load i64, i64* %RBP.i, align 8
  %3167 = add i64 %3166, -136
  %3168 = add i64 %3159, 7
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i64*
  %3170 = load i64, i64* %3169, align 8
  store i64 %3170, i64* %RDI.i1356, align 8
  %3171 = add i64 %3159, 164745
  %3172 = add i64 %3159, 12
  %3173 = load i64, i64* %6, align 8
  %3174 = add i64 %3173, -8
  %3175 = inttoptr i64 %3174 to i64*
  store i64 %3172, i64* %3175, align 8
  store i64 %3174, i64* %6, align 8
  store i64 %3171, i64* %3, align 8
  %call2_424c5e = tail call %struct.Memory* @sub_44cfe0.TophitsMaxName(%struct.State* nonnull %0, i64 %3171, %struct.Memory* %call2_424c35)
  %3176 = load i64, i64* %RBP.i, align 8
  %3177 = add i64 %3176, -544
  %3178 = load i32, i32* %EAX.i1603, align 4
  %3179 = load i64, i64* %3, align 8
  %3180 = add i64 %3179, 6
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3177 to i32*
  store i32 %3178, i32* %3181, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_424c69

block_.L_424c69:                                  ; preds = %block_.L_424c57, %block_424c47
  %3182 = phi i64 [ %.pre181, %block_.L_424c57 ], [ %3165, %block_424c47 ]
  %MEMORY.59 = phi %struct.Memory* [ %call2_424c5e, %block_.L_424c57 ], [ %call2_424c35, %block_424c47 ]
  %3183 = load i64, i64* %RBP.i, align 8
  %3184 = add i64 %3183, -544
  %3185 = add i64 %3182, 6
  store i64 %3185, i64* %3, align 8
  %3186 = inttoptr i64 %3184 to i32*
  %3187 = load i32, i32* %3186, align 4
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RAX.i1193, align 8
  %3189 = add i64 %3183, -232
  %3190 = add i64 %3182, 12
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3189 to i32*
  store i32 %3187, i32* %3191, align 4
  %3192 = load i64, i64* %RBP.i, align 8
  %3193 = add i64 %3192, -244
  %3194 = load i64, i64* %3, align 8
  %3195 = add i64 %3194, 7
  store i64 %3195, i64* %3, align 8
  %3196 = inttoptr i64 %3193 to i32*
  %3197 = load i32, i32* %3196, align 4
  store i8 0, i8* %39, align 1
  %3198 = and i32 %3197, 255
  %3199 = tail call i32 @llvm.ctpop.i32(i32 %3198)
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3203 = icmp eq i32 %3197, 0
  %3204 = zext i1 %3203 to i8
  store i8 %3204, i8* %54, align 1
  %3205 = lshr i32 %3197, 31
  %3206 = trunc i32 %3205 to i8
  store i8 %3206, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v248 = select i1 %3203, i64 666, i64 13
  %3207 = add i64 %3194, %.v248
  store i64 %3207, i64* %3, align 8
  br i1 %3203, label %block_.L_424f0f, label %block_424c82

block_424c82:                                     ; preds = %block_.L_424c69
  store i64 ptrtoint (%G__0x457fa9_type* @G__0x457fa9 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %3208 = add i64 %3207, -145394
  %3209 = add i64 %3207, 17
  %3210 = load i64, i64* %6, align 8
  %3211 = add i64 %3210, -8
  %3212 = inttoptr i64 %3211 to i64*
  store i64 %3209, i64* %3212, align 8
  store i64 %3211, i64* %6, align 8
  store i64 %3208, i64* %3, align 8
  %3213 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.59)
  %3214 = load i64, i64* %RBP.i, align 8
  %3215 = add i64 %3214, -96
  %3216 = load i64, i64* %3, align 8
  %3217 = add i64 %3216, 7
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3215 to i32*
  store i32 0, i32* %3218, align 4
  %3219 = load i64, i64* %RBP.i, align 8
  %3220 = add i64 %3219, -240
  %3221 = load i64, i64* %3, align 8
  %3222 = add i64 %3221, 10
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3220 to i32*
  store i32 0, i32* %3223, align 4
  %3224 = load i64, i64* %RBP.i, align 8
  %3225 = add i64 %3224, -548
  %3226 = load i32, i32* %EAX.i1603, align 4
  %3227 = load i64, i64* %3, align 8
  %3228 = add i64 %3227, 6
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3225 to i32*
  store i32 %3226, i32* %3229, align 4
  %R11.i268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_424caa

block_.L_424caa:                                  ; preds = %block_.L_424ea9, %block_424c82
  %3230 = phi i64 [ %.pre182, %block_424c82 ], [ %3734, %block_.L_424ea9 ]
  %MEMORY.60 = phi %struct.Memory* [ %3213, %block_424c82 ], [ %MEMORY.63, %block_.L_424ea9 ]
  %3231 = load i64, i64* %RBP.i, align 8
  %3232 = add i64 %3231, -96
  %3233 = add i64 %3230, 3
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3232 to i32*
  %3235 = load i32, i32* %3234, align 4
  %3236 = zext i32 %3235 to i64
  store i64 %3236, i64* %RAX.i1193, align 8
  %3237 = add i64 %3231, -136
  %3238 = add i64 %3230, 10
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3237 to i64*
  %3240 = load i64, i64* %3239, align 8
  store i64 %3240, i64* %RCX.i1162, align 8
  %3241 = add i64 %3240, 20
  %3242 = add i64 %3230, 13
  store i64 %3242, i64* %3, align 8
  %3243 = inttoptr i64 %3241 to i32*
  %3244 = load i32, i32* %3243, align 4
  %3245 = sub i32 %3235, %3244
  %3246 = icmp ult i32 %3235, %3244
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %39, align 1
  %3248 = and i32 %3245, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %46, align 1
  %3253 = xor i32 %3244, %3235
  %3254 = xor i32 %3253, %3245
  %3255 = lshr i32 %3254, 4
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  store i8 %3257, i8* %51, align 1
  %3258 = icmp eq i32 %3245, 0
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %54, align 1
  %3260 = lshr i32 %3245, 31
  %3261 = trunc i32 %3260 to i8
  store i8 %3261, i8* %57, align 1
  %3262 = lshr i32 %3235, 31
  %3263 = lshr i32 %3244, 31
  %3264 = xor i32 %3263, %3262
  %3265 = xor i32 %3260, %3262
  %3266 = add nuw nsw i32 %3265, %3264
  %3267 = icmp eq i32 %3266, 2
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %63, align 1
  %3269 = icmp ne i8 %3261, 0
  %3270 = xor i1 %3269, %3267
  %.v249 = select i1 %3270, i64 19, i64 525
  %3271 = add i64 %3230, %.v249
  store i64 %3271, i64* %3, align 8
  %3272 = add i64 %3231, -240
  br i1 %3270, label %block_424cbd, label %block_.L_424eb7.loopexit

block_424cbd:                                     ; preds = %block_.L_424caa
  %3273 = add i64 %3271, 6
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = zext i32 %3275 to i64
  store i64 %3276, i64* %RAX.i1193, align 8
  %3277 = add i64 %3231, -244
  %3278 = add i64 %3271, 12
  store i64 %3278, i64* %3, align 8
  %3279 = inttoptr i64 %3277 to i32*
  %3280 = load i32, i32* %3279, align 4
  %3281 = sub i32 %3275, %3280
  %3282 = icmp ult i32 %3275, %3280
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %39, align 1
  %3284 = and i32 %3281, 255
  %3285 = tail call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  store i8 %3288, i8* %46, align 1
  %3289 = xor i32 %3280, %3275
  %3290 = xor i32 %3289, %3281
  %3291 = lshr i32 %3290, 4
  %3292 = trunc i32 %3291 to i8
  %3293 = and i8 %3292, 1
  store i8 %3293, i8* %51, align 1
  %3294 = icmp eq i32 %3281, 0
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %54, align 1
  %3296 = lshr i32 %3281, 31
  %3297 = trunc i32 %3296 to i8
  store i8 %3297, i8* %57, align 1
  %3298 = lshr i32 %3275, 31
  %3299 = lshr i32 %3280, 31
  %3300 = xor i32 %3299, %3298
  %3301 = xor i32 %3296, %3298
  %3302 = add nuw nsw i32 %3301, %3300
  %3303 = icmp eq i32 %3302, 2
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %63, align 1
  %.v252 = select i1 %3294, i64 18, i64 23
  %3305 = add i64 %3271, %.v252
  store i64 %3305, i64* %3, align 8
  br i1 %3294, label %block_424ccf, label %block_.L_424cd4

block_424ccf:                                     ; preds = %block_424cbd
  %3306 = add i64 %3305, 488
  store i64 %3306, i64* %3, align 8
  br label %block_.L_424eb7

block_.L_424cd4:                                  ; preds = %block_424cbd
  %3307 = add i64 %3231, -152
  store i64 %3307, i64* %RDX.i1146, align 8
  %3308 = add i64 %3231, -140
  store i64 %3308, i64* %RCX.i1162, align 8
  %3309 = add i64 %3231, -168
  store i64 %3309, i64* %R8.i1169, align 8
  %3310 = add i64 %3231, -172
  store i64 %3310, i64* %R9.i1180, align 8
  %3311 = add i64 %3231, -200
  store i64 %3311, i64* %RAX.i1193, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %54, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %63, align 1
  store i8 0, i8* %51, align 1
  store i64 0, i64* %RDI.i1356, align 8
  %3312 = add i64 %3231, -176
  store i64 %3312, i64* %R10.i1485, align 8
  %3313 = add i64 %3231, -180
  store i64 %3313, i64* %R11.i268, align 8
  %3314 = add i64 %3231, -212
  store i64 %3314, i64* %RBX.i145, align 8
  %3315 = add i64 %3231, -184
  store i64 %3315, i64* %R14.i74, align 8
  %3316 = add i64 %3231, -188
  store i64 %3316, i64* %R15.i54, align 8
  %3317 = add i64 %3231, -224
  store i64 %3317, i64* %R12.i137, align 8
  %3318 = add i64 %3231, -228
  store i64 %3318, i64* %R13.i112, align 8
  %3319 = add i64 %3231, -120
  store i64 %3319, i64* %RSI.i423, align 8
  %3320 = add i64 %3231, -560
  %3321 = add i64 %3305, 99
  store i64 %3321, i64* %3, align 8
  %3322 = inttoptr i64 %3320 to i64*
  store i64 %3311, i64* %3322, align 8
  %3323 = load i64, i64* %RBP.i, align 8
  %3324 = add i64 %3323, -136
  %3325 = load i64, i64* %3, align 8
  %3326 = add i64 %3325, 7
  store i64 %3326, i64* %3, align 8
  %3327 = inttoptr i64 %3324 to i64*
  %3328 = load i64, i64* %3327, align 8
  store i64 %3328, i64* %RAX.i1193, align 8
  %3329 = add i64 %3323, -568
  %3330 = load i64, i64* %RSI.i423, align 8
  %3331 = add i64 %3325, 14
  store i64 %3331, i64* %3, align 8
  %3332 = inttoptr i64 %3329 to i64*
  store i64 %3330, i64* %3332, align 8
  %3333 = load i64, i64* %RBP.i, align 8
  %3334 = add i64 %3333, -96
  %3335 = load i64, i64* %3, align 8
  %3336 = add i64 %3335, 3
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3334 to i32*
  %3338 = load i32, i32* %3337, align 4
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %RSI.i423, align 8
  %3340 = add i64 %3333, -576
  %3341 = load i64, i64* %RDI.i1356, align 8
  %3342 = add i64 %3335, 10
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3340 to i64*
  store i64 %3341, i64* %3343, align 8
  %3344 = load i64, i64* %RAX.i1193, align 8
  %3345 = load i64, i64* %3, align 8
  store i64 %3344, i64* %RDI.i1356, align 8
  %3346 = load i64, i64* %RBP.i, align 8
  %3347 = add i64 %3346, -560
  %3348 = add i64 %3345, 10
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i64*
  %3350 = load i64, i64* %3349, align 8
  store i64 %3350, i64* %RAX.i1193, align 8
  %3351 = load i64*, i64** %252, align 8
  %3352 = add i64 %3345, 14
  store i64 %3352, i64* %3, align 8
  store i64 %3350, i64* %3351, align 8
  %3353 = load i64, i64* %6, align 8
  %3354 = add i64 %3353, 8
  %3355 = load i64, i64* %3, align 8
  %3356 = add i64 %3355, 9
  store i64 %3356, i64* %3, align 8
  %3357 = inttoptr i64 %3354 to i64*
  store i64 0, i64* %3357, align 8
  %3358 = load i64, i64* %6, align 8
  %3359 = add i64 %3358, 16
  %3360 = load i64, i64* %3, align 8
  %3361 = add i64 %3360, 9
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3359 to i64*
  store i64 0, i64* %3362, align 8
  %3363 = load i64, i64* %6, align 8
  %3364 = add i64 %3363, 24
  %3365 = load i64, i64* %R10.i1485, align 8
  %3366 = load i64, i64* %3, align 8
  %3367 = add i64 %3366, 5
  store i64 %3367, i64* %3, align 8
  %3368 = inttoptr i64 %3364 to i64*
  store i64 %3365, i64* %3368, align 8
  %3369 = load i64, i64* %6, align 8
  %3370 = add i64 %3369, 32
  %3371 = load i64, i64* %R11.i268, align 8
  %3372 = load i64, i64* %3, align 8
  %3373 = add i64 %3372, 5
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3370 to i64*
  store i64 %3371, i64* %3374, align 8
  %3375 = load i64, i64* %6, align 8
  %3376 = add i64 %3375, 40
  %3377 = load i64, i64* %RBX.i145, align 8
  %3378 = load i64, i64* %3, align 8
  %3379 = add i64 %3378, 5
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3376 to i64*
  store i64 %3377, i64* %3380, align 8
  %3381 = load i64, i64* %6, align 8
  %3382 = add i64 %3381, 48
  %3383 = load i64, i64* %R14.i74, align 8
  %3384 = load i64, i64* %3, align 8
  %3385 = add i64 %3384, 5
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3382 to i64*
  store i64 %3383, i64* %3386, align 8
  %3387 = load i64, i64* %6, align 8
  %3388 = add i64 %3387, 56
  %3389 = load i64, i64* %R15.i54, align 8
  %3390 = load i64, i64* %3, align 8
  %3391 = add i64 %3390, 5
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3388 to i64*
  store i64 %3389, i64* %3392, align 8
  %3393 = load i64, i64* %6, align 8
  %3394 = add i64 %3393, 64
  %3395 = load i64, i64* %3, align 8
  %3396 = add i64 %3395, 9
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3394 to i64*
  store i64 0, i64* %3397, align 8
  %3398 = load i64, i64* %6, align 8
  %3399 = add i64 %3398, 72
  %3400 = load i64, i64* %R12.i137, align 8
  %3401 = load i64, i64* %3, align 8
  %3402 = add i64 %3401, 5
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3399 to i64*
  store i64 %3400, i64* %3403, align 8
  %3404 = load i64, i64* %6, align 8
  %3405 = add i64 %3404, 80
  %3406 = load i64, i64* %R13.i112, align 8
  %3407 = load i64, i64* %3, align 8
  %3408 = add i64 %3407, 5
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3405 to i64*
  store i64 %3406, i64* %3409, align 8
  %3410 = load i64, i64* %RBP.i, align 8
  %3411 = add i64 %3410, -568
  %3412 = load i64, i64* %3, align 8
  %3413 = add i64 %3412, 7
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3411 to i64*
  %3415 = load i64, i64* %3414, align 8
  store i64 %3415, i64* %R10.i1485, align 8
  %3416 = load i64, i64* %6, align 8
  %3417 = add i64 %3416, 88
  %3418 = add i64 %3412, 12
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3417 to i64*
  store i64 %3415, i64* %3419, align 8
  %3420 = load i64, i64* %3, align 8
  %3421 = add i64 %3420, 163545
  %3422 = add i64 %3420, 5
  %3423 = load i64, i64* %6, align 8
  %3424 = add i64 %3423, -8
  %3425 = inttoptr i64 %3424 to i64*
  store i64 %3422, i64* %3425, align 8
  store i64 %3424, i64* %6, align 8
  store i64 %3421, i64* %3, align 8
  %call2_424da7 = tail call %struct.Memory* @sub_44cc80.GetRankedHit(%struct.State* nonnull %0, i64 %3421, %struct.Memory* %MEMORY.60)
  %3426 = load i64, i64* %RBP.i, align 8
  %3427 = add i64 %3426, -152
  %3428 = load i64, i64* %3, align 8
  %3429 = add i64 %3428, 8
  store i64 %3429, i64* %3, align 8
  %3430 = inttoptr i64 %3427 to i64*
  %3431 = load i64, i64* %3430, align 8
  store i64 %3431, i64* %136, align 1
  store double 0.000000e+00, double* %138, align 1
  %3432 = add i64 %3426, -252
  %3433 = add i64 %3428, 16
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i32*
  %3435 = load i32, i32* %3434, align 4
  %3436 = sitofp i32 %3435 to double
  store double %3436, double* %2063, align 1
  %3437 = bitcast i64 %3431 to double
  %3438 = fmul double %3436, %3437
  store double %3438, double* %982, align 1
  store i64 0, i64* %137, align 1
  %3439 = add i64 %3426, -160
  %3440 = add i64 %3428, 28
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to double*
  store double %3438, double* %3441, align 8
  %3442 = load i64, i64* %RBP.i, align 8
  %3443 = add i64 %3442, -168
  %3444 = load i64, i64* %3, align 8
  %3445 = add i64 %3444, 8
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3443 to i64*
  %3447 = load i64, i64* %3446, align 8
  store i64 %3447, i64* %136, align 1
  store double 0.000000e+00, double* %138, align 1
  %3448 = add i64 %3442, -252
  %3449 = add i64 %3444, 16
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i32*
  %3451 = load i32, i32* %3450, align 4
  %3452 = sitofp i32 %3451 to double
  store double %3452, double* %2063, align 1
  %3453 = bitcast i64 %3447 to double
  %3454 = fmul double %3452, %3453
  store double %3454, double* %982, align 1
  store i64 0, i64* %137, align 1
  %3455 = add i64 %3442, -280
  %3456 = add i64 %3444, 28
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3455 to double*
  %3458 = load double, double* %3457, align 8
  %3459 = fcmp uno double %3454, %3458
  br i1 %3459, label %3460, label %3470

; <label>:3460:                                   ; preds = %block_.L_424cd4
  %3461 = fadd double %3454, %3458
  %3462 = bitcast double %3461 to i64
  %3463 = and i64 %3462, 9221120237041090560
  %3464 = icmp eq i64 %3463, 9218868437227405312
  %3465 = and i64 %3462, 2251799813685247
  %3466 = icmp ne i64 %3465, 0
  %3467 = and i1 %3464, %3466
  br i1 %3467, label %3468, label %3476

; <label>:3468:                                   ; preds = %3460
  %3469 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3456, %struct.Memory* %MEMORY.60)
  %.pre186 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x118__rbp____xmm0.exit

; <label>:3470:                                   ; preds = %block_.L_424cd4
  %3471 = fcmp ogt double %3454, %3458
  br i1 %3471, label %3476, label %3472

; <label>:3472:                                   ; preds = %3470
  %3473 = fcmp olt double %3454, %3458
  br i1 %3473, label %3476, label %3474

; <label>:3474:                                   ; preds = %3472
  %3475 = fcmp oeq double %3454, %3458
  br i1 %3475, label %3476, label %3480

; <label>:3476:                                   ; preds = %3474, %3472, %3470, %3460
  %3477 = phi i8 [ 0, %3470 ], [ 0, %3472 ], [ 1, %3474 ], [ 1, %3460 ]
  %3478 = phi i8 [ 0, %3470 ], [ 0, %3472 ], [ 0, %3474 ], [ 1, %3460 ]
  %3479 = phi i8 [ 0, %3470 ], [ 1, %3472 ], [ 0, %3474 ], [ 1, %3460 ]
  store i8 %3477, i8* %54, align 1
  store i8 %3478, i8* %46, align 1
  store i8 %3479, i8* %39, align 1
  br label %3480

; <label>:3480:                                   ; preds = %3476, %3474
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomisd_MINUS0x118__rbp____xmm0.exit

routine_ucomisd_MINUS0x118__rbp____xmm0.exit:     ; preds = %3480, %3468
  %3481 = phi i64 [ %.pre186, %3468 ], [ %3456, %3480 ]
  %3482 = phi %struct.Memory* [ %3469, %3468 ], [ %MEMORY.60, %3480 ]
  %3483 = add i64 %3481, 31
  %3484 = add i64 %3481, 6
  %3485 = load i8, i8* %39, align 1
  %3486 = load i8, i8* %54, align 1
  %3487 = or i8 %3486, %3485
  %3488 = icmp eq i8 %3487, 0
  %3489 = select i1 %3488, i64 %3483, i64 %3484
  store i64 %3489, i64* %3, align 8
  br i1 %3488, label %block_.L_424e03, label %block_424dea

block_424dea:                                     ; preds = %routine_ucomisd_MINUS0x118__rbp____xmm0.exit
  %3490 = load i64, i64* %RBP.i, align 8
  %3491 = add i64 %3490, -172
  %3492 = add i64 %3489, 8
  store i64 %3492, i64* %3, align 8
  %3493 = inttoptr i64 %3491 to i32*
  %3494 = load i32, i32* %3493, align 4
  store i32 %3494, i32* %1592, align 1
  store float 0.000000e+00, float* %1593, align 1
  store float 0.000000e+00, float* %1594, align 1
  store float 0.000000e+00, float* %1595, align 1
  %3495 = add i64 %3490, -288
  %3496 = add i64 %3489, 16
  store i64 %3496, i64* %3, align 8
  %3497 = inttoptr i64 %3495 to i32*
  %3498 = load i32, i32* %3497, align 4
  store i32 %3498, i32* %145, align 1
  store float 0.000000e+00, float* %147, align 1
  store float 0.000000e+00, float* %149, align 1
  store float 0.000000e+00, float* %151, align 1
  %3499 = add i64 %3489, 19
  store i64 %3499, i64* %3, align 8
  %3500 = load <2 x float>, <2 x float>* %223, align 1
  %3501 = extractelement <2 x float> %3500, i32 0
  %3502 = load <2 x float>, <2 x float>* %261, align 1
  %3503 = extractelement <2 x float> %3502, i32 0
  %3504 = fcmp uno float %3501, %3503
  br i1 %3504, label %3505, label %3515

; <label>:3505:                                   ; preds = %block_424dea
  %3506 = fadd float %3501, %3503
  %3507 = bitcast float %3506 to i32
  %3508 = and i32 %3507, 2143289344
  %3509 = icmp eq i32 %3508, 2139095040
  %3510 = and i32 %3507, 4194303
  %3511 = icmp ne i32 %3510, 0
  %3512 = and i1 %3509, %3511
  br i1 %3512, label %3513, label %3521

; <label>:3513:                                   ; preds = %3505
  %3514 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3499, %struct.Memory* %3482)
  %.pre187 = load i64, i64* %3, align 8
  %.pre188 = load i8, i8* %39, align 1
  %.pre189 = load i8, i8* %54, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:3515:                                   ; preds = %block_424dea
  %3516 = fcmp ogt float %3501, %3503
  br i1 %3516, label %3521, label %3517

; <label>:3517:                                   ; preds = %3515
  %3518 = fcmp olt float %3501, %3503
  br i1 %3518, label %3521, label %3519

; <label>:3519:                                   ; preds = %3517
  %3520 = fcmp oeq float %3501, %3503
  br i1 %3520, label %3521, label %3525

; <label>:3521:                                   ; preds = %3519, %3517, %3515, %3505
  %3522 = phi i8 [ 0, %3515 ], [ 0, %3517 ], [ 1, %3519 ], [ 1, %3505 ]
  %3523 = phi i8 [ 0, %3515 ], [ 0, %3517 ], [ 0, %3519 ], [ 1, %3505 ]
  %3524 = phi i8 [ 0, %3515 ], [ 1, %3517 ], [ 0, %3519 ], [ 1, %3505 ]
  store i8 %3522, i8* %54, align 1
  store i8 %3523, i8* %46, align 1
  store i8 %3524, i8* %39, align 1
  br label %3525

; <label>:3525:                                   ; preds = %3521, %3519
  %3526 = phi i8 [ %3522, %3521 ], [ %3486, %3519 ]
  %3527 = phi i8 [ %3524, %3521 ], [ %3485, %3519 ]
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %3525, %3513
  %3528 = phi i8 [ %.pre189, %3513 ], [ %3526, %3525 ]
  %3529 = phi i8 [ %.pre188, %3513 ], [ %3527, %3525 ]
  %3530 = phi i64 [ %.pre187, %3513 ], [ %3499, %3525 ]
  %3531 = phi %struct.Memory* [ %3514, %3513 ], [ %3482, %3525 ]
  %3532 = or i8 %3528, %3529
  %3533 = icmp ne i8 %3532, 0
  %.v253 = select i1 %3533, i64 11, i64 6
  %3534 = add i64 %3530, %.v253
  store i64 %3534, i64* %3, align 8
  br i1 %3533, label %block_.L_424e08, label %block_.L_424e03

block_.L_424e03:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit, %routine_ucomisd_MINUS0x118__rbp____xmm0.exit
  %3535 = phi i64 [ %3483, %routine_ucomisd_MINUS0x118__rbp____xmm0.exit ], [ %3534, %routine_ucomiss__xmm0___xmm1.exit ]
  %MEMORY.61 = phi %struct.Memory* [ %3482, %routine_ucomisd_MINUS0x118__rbp____xmm0.exit ], [ %3531, %routine_ucomiss__xmm0___xmm1.exit ]
  %3536 = add i64 %3535, 166
  br label %block_.L_424ea9

block_.L_424e08:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %3537 = load i64, i64* %RBP.i, align 8
  %3538 = add i64 %3537, -160
  %3539 = add i64 %3534, 8
  store i64 %3539, i64* %3, align 8
  %3540 = inttoptr i64 %3538 to i64*
  %3541 = load i64, i64* %3540, align 8
  store i64 %3541, i64* %136, align 1
  store double 0.000000e+00, double* %138, align 1
  %3542 = add i64 %3537, -264
  %3543 = add i64 %3534, 16
  store i64 %3543, i64* %3, align 8
  %3544 = inttoptr i64 %3542 to i64*
  %3545 = load i64, i64* %3544, align 8
  store i64 %3545, i64* %2064, align 1
  store double 0.000000e+00, double* %2065, align 1
  %3546 = add i64 %3534, 20
  store i64 %3546, i64* %3, align 8
  %.cast101 = bitcast i64 %3545 to double
  %3547 = bitcast i64 %3541 to double
  %3548 = fcmp uno double %.cast101, %3547
  br i1 %3548, label %3549, label %3559

; <label>:3549:                                   ; preds = %block_.L_424e08
  %3550 = fadd double %.cast101, %3547
  %3551 = bitcast double %3550 to i64
  %3552 = and i64 %3551, 9221120237041090560
  %3553 = icmp eq i64 %3552, 9218868437227405312
  %3554 = and i64 %3551, 2251799813685247
  %3555 = icmp ne i64 %3554, 0
  %3556 = and i1 %3553, %3555
  br i1 %3556, label %3557, label %3565

; <label>:3557:                                   ; preds = %3549
  %3558 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3546, %struct.Memory* %3531)
  %.pre190 = load i64, i64* %3, align 8
  %.pre191 = load i8, i8* %39, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3559:                                   ; preds = %block_.L_424e08
  %3560 = fcmp ogt double %.cast101, %3547
  br i1 %3560, label %3565, label %3561

; <label>:3561:                                   ; preds = %3559
  %3562 = fcmp olt double %.cast101, %3547
  br i1 %3562, label %3565, label %3563

; <label>:3563:                                   ; preds = %3561
  %3564 = fcmp oeq double %.cast101, %3547
  br i1 %3564, label %3565, label %3569

; <label>:3565:                                   ; preds = %3563, %3561, %3559, %3549
  %3566 = phi i8 [ 0, %3559 ], [ 0, %3561 ], [ 1, %3563 ], [ 1, %3549 ]
  %3567 = phi i8 [ 0, %3559 ], [ 0, %3561 ], [ 0, %3563 ], [ 1, %3549 ]
  %3568 = phi i8 [ 0, %3559 ], [ 1, %3561 ], [ 0, %3563 ], [ 1, %3549 ]
  store i8 %3566, i8* %54, align 1
  store i8 %3567, i8* %46, align 1
  store i8 %3568, i8* %39, align 1
  br label %3569

; <label>:3569:                                   ; preds = %3565, %3563
  %3570 = phi i8 [ %3568, %3565 ], [ %3529, %3563 ]
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3569, %3557
  %3571 = phi i8 [ %.pre191, %3557 ], [ %3570, %3569 ]
  %3572 = phi i64 [ %.pre190, %3557 ], [ %3546, %3569 ]
  %3573 = phi %struct.Memory* [ %3558, %3557 ], [ %3531, %3569 ]
  %3574 = icmp ne i8 %3571, 0
  %.v254 = select i1 %3574, i64 131, i64 6
  %3575 = add i64 %3572, %.v254
  store i64 %3575, i64* %3, align 8
  %cmpBr_424e1c = icmp eq i8 %3571, 1
  br i1 %cmpBr_424e1c, label %block_.L_424e9f, label %block_424e22

block_424e22:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %3576 = load i64, i64* %RBP.i, align 8
  %3577 = add i64 %3576, -140
  %3578 = add i64 %3575, 8
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3577 to i32*
  %3580 = load i32, i32* %3579, align 4
  store i32 %3580, i32* %1592, align 1
  store float 0.000000e+00, float* %1593, align 1
  store float 0.000000e+00, float* %1594, align 1
  store float 0.000000e+00, float* %1595, align 1
  %3581 = add i64 %3576, -272
  %3582 = add i64 %3575, 15
  store i64 %3582, i64* %3, align 8
  %3583 = load <2 x float>, <2 x float>* %261, align 1
  %3584 = extractelement <2 x float> %3583, i32 0
  %3585 = inttoptr i64 %3581 to float*
  %3586 = load float, float* %3585, align 4
  %3587 = fcmp uno float %3584, %3586
  br i1 %3587, label %3588, label %3598

; <label>:3588:                                   ; preds = %block_424e22
  %3589 = fadd float %3584, %3586
  %3590 = bitcast float %3589 to i32
  %3591 = and i32 %3590, 2143289344
  %3592 = icmp eq i32 %3591, 2139095040
  %3593 = and i32 %3590, 4194303
  %3594 = icmp ne i32 %3593, 0
  %3595 = and i1 %3592, %3594
  br i1 %3595, label %3596, label %3604

; <label>:3596:                                   ; preds = %3588
  %3597 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3582, %struct.Memory* %3573)
  %.pre192 = load i64, i64* %3, align 8
  %.pre193 = load i8, i8* %39, align 1
  br label %routine_ucomiss_MINUS0x110__rbp____xmm0.exit

; <label>:3598:                                   ; preds = %block_424e22
  %3599 = fcmp ogt float %3584, %3586
  br i1 %3599, label %3604, label %3600

; <label>:3600:                                   ; preds = %3598
  %3601 = fcmp olt float %3584, %3586
  br i1 %3601, label %3604, label %3602

; <label>:3602:                                   ; preds = %3600
  %3603 = fcmp oeq float %3584, %3586
  br i1 %3603, label %3604, label %3608

; <label>:3604:                                   ; preds = %3602, %3600, %3598, %3588
  %3605 = phi i8 [ 0, %3598 ], [ 0, %3600 ], [ 1, %3602 ], [ 1, %3588 ]
  %3606 = phi i8 [ 0, %3598 ], [ 0, %3600 ], [ 0, %3602 ], [ 1, %3588 ]
  %3607 = phi i8 [ 0, %3598 ], [ 1, %3600 ], [ 0, %3602 ], [ 1, %3588 ]
  store i8 %3605, i8* %54, align 1
  store i8 %3606, i8* %46, align 1
  store i8 %3607, i8* %39, align 1
  br label %3608

; <label>:3608:                                   ; preds = %3604, %3602
  %3609 = phi i8 [ %3607, %3604 ], [ %3571, %3602 ]
  store i8 0, i8* %63, align 1
  store i8 0, i8* %57, align 1
  store i8 0, i8* %51, align 1
  br label %routine_ucomiss_MINUS0x110__rbp____xmm0.exit

routine_ucomiss_MINUS0x110__rbp____xmm0.exit:     ; preds = %3608, %3596
  %3610 = phi i8 [ %.pre193, %3596 ], [ %3609, %3608 ]
  %3611 = phi i64 [ %.pre192, %3596 ], [ %3582, %3608 ]
  %3612 = phi %struct.Memory* [ %3597, %3596 ], [ %3573, %3608 ]
  %3613 = icmp ne i8 %3610, 0
  %.v255 = select i1 %3613, i64 110, i64 6
  %3614 = add i64 %3611, %.v255
  store i64 %3614, i64* %3, align 8
  %cmpBr_424e31 = icmp eq i8 %3610, 1
  br i1 %cmpBr_424e31, label %block_.L_424e9f, label %block_424e37

block_424e37:                                     ; preds = %routine_ucomiss_MINUS0x110__rbp____xmm0.exit
  store i64 ptrtoint (%G__0x457fce_type* @G__0x457fce to i64), i64* %RDI.i1356, align 8
  %3615 = load i64, i64* %RBP.i, align 8
  %3616 = add i64 %3615, -200
  %3617 = add i64 %3614, 17
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3616 to i64*
  %3619 = load i64, i64* %3618, align 8
  store i64 %3619, i64* %RSI.i423, align 8
  %3620 = add i64 %3615, -224
  %3621 = add i64 %3614, 23
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i32*
  %3623 = load i32, i32* %3622, align 4
  %3624 = zext i32 %3623 to i64
  store i64 %3624, i64* %RDX.i1146, align 8
  %3625 = add i64 %3615, -228
  %3626 = add i64 %3614, 29
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i32*
  %3628 = load i32, i32* %3627, align 4
  %3629 = zext i32 %3628 to i64
  store i64 %3629, i64* %RCX.i1162, align 8
  %3630 = add i64 %3615, -176
  %3631 = add i64 %3614, 36
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i32*
  %3633 = load i32, i32* %3632, align 4
  %3634 = zext i32 %3633 to i64
  store i64 %3634, i64* %R8.i1169, align 8
  %3635 = add i64 %3615, -180
  %3636 = add i64 %3614, 43
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = zext i32 %3638 to i64
  store i64 %3639, i64* %R9.i1180, align 8
  %3640 = add i64 %3615, -140
  %3641 = add i64 %3614, 51
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3640 to float*
  %3643 = load float, float* %3642, align 4
  %3644 = fpext float %3643 to double
  store double %3644, double* %982, align 1
  %3645 = add i64 %3615, -160
  %3646 = add i64 %3614, 59
  store i64 %3646, i64* %3, align 8
  %3647 = inttoptr i64 %3645 to i64*
  %3648 = load i64, i64* %3647, align 8
  store i64 %3648, i64* %2064, align 1
  store double 0.000000e+00, double* %2065, align 1
  store i8 2, i8* %AL.i1531, align 1
  %3649 = add i64 %3614, -145831
  %3650 = add i64 %3614, 66
  %3651 = load i64, i64* %6, align 8
  %3652 = add i64 %3651, -8
  %3653 = inttoptr i64 %3652 to i64*
  store i64 %3650, i64* %3653, align 8
  store i64 %3652, i64* %6, align 8
  store i64 %3649, i64* %3, align 8
  %3654 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %3612)
  %3655 = load i64, i64* %3, align 8
  %3656 = load i64, i64* bitcast (%G_0x663040_type* @G_0x663040 to i64*), align 8
  store i64 %3656, i64* %RDI.i1356, align 8
  %3657 = load i64, i64* %RBP.i, align 8
  %3658 = add i64 %3657, -120
  %3659 = add i64 %3655, 12
  store i64 %3659, i64* %3, align 8
  %3660 = inttoptr i64 %3658 to i64*
  %3661 = load i64, i64* %3660, align 8
  store i64 %3661, i64* %RSI.i423, align 8
  %3662 = add i64 %3657, -580
  %3663 = load i32, i32* %EAX.i1603, align 4
  %3664 = add i64 %3655, 18
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3662 to i32*
  store i32 %3663, i32* %3665, align 4
  %3666 = load i64, i64* %3, align 8
  %3667 = add i64 %3666, 176309
  %3668 = add i64 %3666, 5
  %3669 = load i64, i64* %6, align 8
  %3670 = add i64 %3669, -8
  %3671 = inttoptr i64 %3670 to i64*
  store i64 %3668, i64* %3671, align 8
  store i64 %3670, i64* %6, align 8
  store i64 %3667, i64* %3, align 8
  %call2_424e8b = tail call %struct.Memory* @sub_44ff40.PrintFancyAli(%struct.State* nonnull %0, i64 %3667, %struct.Memory* %3654)
  %3672 = load i64, i64* %RBP.i, align 8
  %3673 = add i64 %3672, -240
  %3674 = load i64, i64* %3, align 8
  %3675 = add i64 %3674, 6
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3673 to i32*
  %3677 = load i32, i32* %3676, align 4
  %3678 = add i32 %3677, 1
  %3679 = zext i32 %3678 to i64
  store i64 %3679, i64* %RAX.i1193, align 8
  %3680 = icmp eq i32 %3677, -1
  %3681 = icmp eq i32 %3678, 0
  %3682 = or i1 %3680, %3681
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %39, align 1
  %3684 = and i32 %3678, 255
  %3685 = tail call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  store i8 %3688, i8* %46, align 1
  %3689 = xor i32 %3678, %3677
  %3690 = lshr i32 %3689, 4
  %3691 = trunc i32 %3690 to i8
  %3692 = and i8 %3691, 1
  store i8 %3692, i8* %51, align 1
  %3693 = zext i1 %3681 to i8
  store i8 %3693, i8* %54, align 1
  %3694 = lshr i32 %3678, 31
  %3695 = trunc i32 %3694 to i8
  store i8 %3695, i8* %57, align 1
  %3696 = lshr i32 %3677, 31
  %3697 = xor i32 %3694, %3696
  %3698 = add nuw nsw i32 %3697, %3694
  %3699 = icmp eq i32 %3698, 2
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %63, align 1
  %3701 = add i64 %3674, 15
  store i64 %3701, i64* %3, align 8
  store i32 %3678, i32* %3676, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_424e9f

block_.L_424e9f:                                  ; preds = %block_424e37, %routine_ucomiss_MINUS0x110__rbp____xmm0.exit, %routine_ucomisd__xmm0___xmm1.exit
  %3702 = phi i64 [ %3575, %routine_ucomisd__xmm0___xmm1.exit ], [ %3614, %routine_ucomiss_MINUS0x110__rbp____xmm0.exit ], [ %.pre194, %block_424e37 ]
  %MEMORY.62 = phi %struct.Memory* [ %3573, %routine_ucomisd__xmm0___xmm1.exit ], [ %3612, %routine_ucomiss_MINUS0x110__rbp____xmm0.exit ], [ %call2_424e8b, %block_424e37 ]
  %3703 = add i64 %3702, 10
  store i64 %3703, i64* %3, align 8
  br label %block_.L_424ea9

block_.L_424ea9:                                  ; preds = %block_.L_424e9f, %block_.L_424e03
  %storemerge100 = phi i64 [ %3536, %block_.L_424e03 ], [ %3703, %block_.L_424e9f ]
  %MEMORY.63 = phi %struct.Memory* [ %MEMORY.61, %block_.L_424e03 ], [ %MEMORY.62, %block_.L_424e9f ]
  %3704 = load i64, i64* %RBP.i, align 8
  %3705 = add i64 %3704, -96
  %3706 = add i64 %storemerge100, 3
  store i64 %3706, i64* %3, align 8
  %3707 = inttoptr i64 %3705 to i32*
  %3708 = load i32, i32* %3707, align 4
  %3709 = add i32 %3708, 1
  %3710 = zext i32 %3709 to i64
  store i64 %3710, i64* %RAX.i1193, align 8
  %3711 = icmp eq i32 %3708, -1
  %3712 = icmp eq i32 %3709, 0
  %3713 = or i1 %3711, %3712
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %39, align 1
  %3715 = and i32 %3709, 255
  %3716 = tail call i32 @llvm.ctpop.i32(i32 %3715)
  %3717 = trunc i32 %3716 to i8
  %3718 = and i8 %3717, 1
  %3719 = xor i8 %3718, 1
  store i8 %3719, i8* %46, align 1
  %3720 = xor i32 %3709, %3708
  %3721 = lshr i32 %3720, 4
  %3722 = trunc i32 %3721 to i8
  %3723 = and i8 %3722, 1
  store i8 %3723, i8* %51, align 1
  %3724 = zext i1 %3712 to i8
  store i8 %3724, i8* %54, align 1
  %3725 = lshr i32 %3709, 31
  %3726 = trunc i32 %3725 to i8
  store i8 %3726, i8* %57, align 1
  %3727 = lshr i32 %3708, 31
  %3728 = xor i32 %3725, %3727
  %3729 = add nuw nsw i32 %3728, %3725
  %3730 = icmp eq i32 %3729, 2
  %3731 = zext i1 %3730 to i8
  store i8 %3731, i8* %63, align 1
  %3732 = add i64 %storemerge100, 9
  store i64 %3732, i64* %3, align 8
  store i32 %3709, i32* %3707, align 4
  %3733 = load i64, i64* %3, align 8
  %3734 = add i64 %3733, -520
  store i64 %3734, i64* %3, align 8
  br label %block_.L_424caa

block_.L_424eb7.loopexit:                         ; preds = %block_.L_424caa
  %.pre199 = inttoptr i64 %3272 to i32*
  br label %block_.L_424eb7

block_.L_424eb7:                                  ; preds = %block_.L_424eb7.loopexit, %block_424ccf
  %.pre-phi200 = phi i32* [ %.pre199, %block_.L_424eb7.loopexit ], [ %3274, %block_424ccf ]
  %3735 = phi i64 [ %3271, %block_.L_424eb7.loopexit ], [ %3306, %block_424ccf ]
  %3736 = add i64 %3735, 7
  store i64 %3736, i64* %3, align 8
  %3737 = load i32, i32* %.pre-phi200, align 4
  store i8 0, i8* %39, align 1
  %3738 = and i32 %3737, 255
  %3739 = tail call i32 @llvm.ctpop.i32(i32 %3738)
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = xor i8 %3741, 1
  store i8 %3742, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %3743 = icmp eq i32 %3737, 0
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %54, align 1
  %3745 = lshr i32 %3737, 31
  %3746 = trunc i32 %3745 to i8
  store i8 %3746, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v250 = select i1 %3743, i64 13, i64 36
  %3747 = add i64 %3735, %.v250
  store i64 %3747, i64* %3, align 8
  br i1 %3743, label %block_424ec4, label %block_.L_424edb

block_424ec4:                                     ; preds = %block_.L_424eb7
  store i64 ptrtoint (%G__0x458008_type* @G__0x458008 to i64), i64* %RDI.i1356, align 8
  store i8 0, i8* %AL.i1531, align 1
  %3748 = add i64 %3747, -145972
  %3749 = add i64 %3747, 17
  %3750 = load i64, i64* %6, align 8
  %3751 = add i64 %3750, -8
  %3752 = inttoptr i64 %3751 to i64*
  store i64 %3749, i64* %3752, align 8
  store i64 %3751, i64* %6, align 8
  store i64 %3748, i64* %3, align 8
  %3753 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.60)
  %3754 = load i64, i64* %RBP.i, align 8
  %3755 = add i64 %3754, -584
  %3756 = load i32, i32* %EAX.i1603, align 4
  %3757 = load i64, i64* %3, align 8
  %3758 = add i64 %3757, 6
  store i64 %3758, i64* %3, align 8
  %3759 = inttoptr i64 %3755 to i32*
  store i32 %3756, i32* %3759, align 4
  %.pre183 = load i64, i64* %RBP.i, align 8
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_424edb

block_.L_424edb:                                  ; preds = %block_.L_424eb7, %block_424ec4
  %3760 = phi i64 [ %3747, %block_.L_424eb7 ], [ %.pre184, %block_424ec4 ]
  %3761 = phi i64 [ %3231, %block_.L_424eb7 ], [ %.pre183, %block_424ec4 ]
  %MEMORY.65 = phi %struct.Memory* [ %MEMORY.60, %block_.L_424eb7 ], [ %3753, %block_424ec4 ]
  %3762 = add i64 %3761, -240
  %3763 = add i64 %3760, 6
  store i64 %3763, i64* %3, align 8
  %3764 = inttoptr i64 %3762 to i32*
  %3765 = load i32, i32* %3764, align 4
  %3766 = zext i32 %3765 to i64
  store i64 %3766, i64* %RAX.i1193, align 8
  %3767 = add i64 %3761, -244
  %3768 = add i64 %3760, 12
  store i64 %3768, i64* %3, align 8
  %3769 = inttoptr i64 %3767 to i32*
  %3770 = load i32, i32* %3769, align 4
  %3771 = sub i32 %3765, %3770
  %3772 = icmp ult i32 %3765, %3770
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %39, align 1
  %3774 = and i32 %3771, 255
  %3775 = tail call i32 @llvm.ctpop.i32(i32 %3774)
  %3776 = trunc i32 %3775 to i8
  %3777 = and i8 %3776, 1
  %3778 = xor i8 %3777, 1
  store i8 %3778, i8* %46, align 1
  %3779 = xor i32 %3770, %3765
  %3780 = xor i32 %3779, %3771
  %3781 = lshr i32 %3780, 4
  %3782 = trunc i32 %3781 to i8
  %3783 = and i8 %3782, 1
  store i8 %3783, i8* %51, align 1
  %3784 = icmp eq i32 %3771, 0
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %54, align 1
  %3786 = lshr i32 %3771, 31
  %3787 = trunc i32 %3786 to i8
  store i8 %3787, i8* %57, align 1
  %3788 = lshr i32 %3765, 31
  %3789 = lshr i32 %3770, 31
  %3790 = xor i32 %3789, %3788
  %3791 = xor i32 %3786, %3788
  %3792 = add nuw nsw i32 %3791, %3790
  %3793 = icmp eq i32 %3792, 2
  %3794 = zext i1 %3793 to i8
  store i8 %3794, i8* %63, align 1
  %.v251 = select i1 %3784, i64 18, i64 47
  %3795 = add i64 %3760, %.v251
  store i64 %3795, i64* %3, align 8
  br i1 %3784, label %block_424eed, label %block_.L_424f0a

block_424eed:                                     ; preds = %block_.L_424edb
  store i64 ptrtoint (%G__0x458025_type* @G__0x458025 to i64), i64* %RDI.i1356, align 8
  %3796 = add i64 %3795, 16
  store i64 %3796, i64* %3, align 8
  %3797 = load i32, i32* %3769, align 4
  %3798 = zext i32 %3797 to i64
  store i64 %3798, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %3799 = add i64 %3795, -146013
  %3800 = add i64 %3795, 23
  %3801 = load i64, i64* %6, align 8
  %3802 = add i64 %3801, -8
  %3803 = inttoptr i64 %3802 to i64*
  store i64 %3800, i64* %3803, align 8
  store i64 %3802, i64* %6, align 8
  store i64 %3799, i64* %3, align 8
  %3804 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.65)
  %3805 = load i64, i64* %RBP.i, align 8
  %3806 = add i64 %3805, -588
  %3807 = load i32, i32* %EAX.i1603, align 4
  %3808 = load i64, i64* %3, align 8
  %3809 = add i64 %3808, 6
  store i64 %3809, i64* %3, align 8
  %3810 = inttoptr i64 %3806 to i32*
  store i32 %3807, i32* %3810, align 4
  %.pre185 = load i64, i64* %3, align 8
  %.pre195.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_424f0a

block_.L_424f0a:                                  ; preds = %block_.L_424edb, %block_424eed
  %.pre195 = phi i64 [ %3761, %block_.L_424edb ], [ %.pre195.pre, %block_424eed ]
  %3811 = phi i64 [ %3795, %block_.L_424edb ], [ %.pre185, %block_424eed ]
  %MEMORY.66 = phi %struct.Memory* [ %MEMORY.65, %block_.L_424edb ], [ %3804, %block_424eed ]
  %3812 = add i64 %3811, 5
  store i64 %3812, i64* %3, align 8
  br label %block_.L_424f0f

block_.L_424f0f:                                  ; preds = %block_.L_424f0a, %block_.L_424c69
  %3813 = phi i64 [ %3192, %block_.L_424c69 ], [ %.pre195, %block_.L_424f0a ]
  %3814 = phi i64 [ %3207, %block_.L_424c69 ], [ %3812, %block_.L_424f0a ]
  %MEMORY.67 = phi %struct.Memory* [ %MEMORY.59, %block_.L_424c69 ], [ %MEMORY.66, %block_.L_424f0a ]
  store i64 ptrtoint (%G__0x458051_type* @G__0x458051 to i64), i64* %RDI.i1356, align 8
  %3815 = add i64 %3813, -216
  %3816 = add i64 %3814, 16
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RSI.i423, align 8
  store i8 0, i8* %AL.i1531, align 1
  %3820 = add i64 %3814, -146047
  %3821 = add i64 %3814, 23
  %3822 = load i64, i64* %6, align 8
  %3823 = add i64 %3822, -8
  %3824 = inttoptr i64 %3823 to i64*
  store i64 %3821, i64* %3824, align 8
  store i64 %3823, i64* %6, align 8
  store i64 %3820, i64* %3, align 8
  %3825 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.67)
  %3826 = load i64, i64* %RBP.i, align 8
  %3827 = add i64 %3826, -112
  %3828 = load i64, i64* %3, align 8
  %3829 = add i64 %3828, 4
  store i64 %3829, i64* %3, align 8
  %3830 = inttoptr i64 %3827 to i64*
  %3831 = load i64, i64* %3830, align 8
  store i64 %3831, i64* %RDI.i1356, align 8
  %3832 = add i64 %3826, -592
  %3833 = load i32, i32* %EAX.i1603, align 4
  %3834 = add i64 %3828, 10
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3832 to i32*
  store i32 %3833, i32* %3835, align 4
  %3836 = load i64, i64* %3, align 8
  %3837 = add i64 %3836, -51232
  %3838 = add i64 %3836, 5
  %3839 = load i64, i64* %6, align 8
  %3840 = add i64 %3839, -8
  %3841 = inttoptr i64 %3840 to i64*
  store i64 %3838, i64* %3841, align 8
  store i64 %3840, i64* %6, align 8
  store i64 %3837, i64* %3, align 8
  %call2_424f30 = tail call %struct.Memory* @sub_418710.FreeHistogram(%struct.State* nonnull %0, i64 %3837, %struct.Memory* %3825)
  %3842 = load i64, i64* %RBP.i, align 8
  %3843 = add i64 %3842, -72
  %3844 = load i64, i64* %3, align 8
  %3845 = add i64 %3844, 4
  store i64 %3845, i64* %3, align 8
  %3846 = inttoptr i64 %3843 to i64*
  %3847 = load i64, i64* %3846, align 8
  store i64 %3847, i64* %RDI.i1356, align 8
  %3848 = add i64 %3844, -32309
  %3849 = add i64 %3844, 9
  %3850 = load i64, i64* %6, align 8
  %3851 = add i64 %3850, -8
  %3852 = inttoptr i64 %3851 to i64*
  store i64 %3849, i64* %3852, align 8
  store i64 %3851, i64* %6, align 8
  store i64 %3848, i64* %3, align 8
  %call2_424f39 = tail call %struct.Memory* @sub_41d100.HMMFileClose(%struct.State* nonnull %0, i64 %3848, %struct.Memory* %call2_424f30)
  %3853 = load i64, i64* %RBP.i, align 8
  %3854 = add i64 %3853, -88
  %3855 = load i64, i64* %3, align 8
  %3856 = add i64 %3855, 4
  store i64 %3856, i64* %3, align 8
  %3857 = inttoptr i64 %3854 to i64*
  %3858 = load i64, i64* %3857, align 8
  store i64 %3858, i64* %RDI.i1356, align 8
  %3859 = add i64 %3855, 110114
  %3860 = add i64 %3855, 9
  %3861 = load i64, i64* %6, align 8
  %3862 = add i64 %3861, -8
  %3863 = inttoptr i64 %3862 to i64*
  store i64 %3860, i64* %3863, align 8
  store i64 %3862, i64* %6, align 8
  store i64 %3859, i64* %3, align 8
  %call2_424f42 = tail call %struct.Memory* @sub_43fd60.SeqfileClose(%struct.State* nonnull %0, i64 %3859, %struct.Memory* %call2_424f39)
  %3864 = load i64, i64* %RBP.i, align 8
  %3865 = add i64 %3864, -128
  %3866 = load i64, i64* %3, align 8
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %3, align 8
  %3868 = inttoptr i64 %3865 to i64*
  %3869 = load i64, i64* %3868, align 8
  store i64 %3869, i64* %RDI.i1356, align 8
  %3870 = add i64 %3866, 161641
  %3871 = add i64 %3866, 9
  %3872 = load i64, i64* %6, align 8
  %3873 = add i64 %3872, -8
  %3874 = inttoptr i64 %3873 to i64*
  store i64 %3871, i64* %3874, align 8
  store i64 %3873, i64* %6, align 8
  store i64 %3870, i64* %3, align 8
  %call2_424f4b = tail call %struct.Memory* @sub_44c6b0.FreeTophits(%struct.State* nonnull %0, i64 %3870, %struct.Memory* %call2_424f42)
  %3875 = load i64, i64* %RBP.i, align 8
  %3876 = add i64 %3875, -136
  %3877 = load i64, i64* %3, align 8
  %3878 = add i64 %3877, 7
  store i64 %3878, i64* %3, align 8
  %3879 = inttoptr i64 %3876 to i64*
  %3880 = load i64, i64* %3879, align 8
  store i64 %3880, i64* %RDI.i1356, align 8
  %3881 = add i64 %3877, 161632
  %3882 = add i64 %3877, 12
  %3883 = load i64, i64* %6, align 8
  %3884 = add i64 %3883, -8
  %3885 = inttoptr i64 %3884 to i64*
  store i64 %3882, i64* %3885, align 8
  store i64 %3884, i64* %6, align 8
  store i64 %3881, i64* %3, align 8
  %call2_424f57 = tail call %struct.Memory* @sub_44c6b0.FreeTophits(%struct.State* nonnull %0, i64 %3881, %struct.Memory* %call2_424f4b)
  %3886 = load i64, i64* %RBP.i, align 8
  %3887 = add i64 %3886, -104
  %3888 = load i64, i64* %3, align 8
  %3889 = add i64 %3888, 4
  store i64 %3889, i64* %3, align 8
  %3890 = inttoptr i64 %3887 to i64*
  %3891 = load i64, i64* %3890, align 8
  store i64 %3891, i64* %RDI.i1356, align 8
  %3892 = add i64 %3888, 54900
  %3893 = add i64 %3888, 9
  %3894 = load i64, i64* %6, align 8
  %3895 = add i64 %3894, -8
  %3896 = inttoptr i64 %3895 to i64*
  store i64 %3893, i64* %3896, align 8
  store i64 %3895, i64* %6, align 8
  store i64 %3892, i64* %3, align 8
  %call2_424f60 = tail call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* nonnull %0, i64 %3892, %struct.Memory* %call2_424f57)
  %3897 = load i64, i64* %3, align 8
  %3898 = add i64 %3897, 9339
  %3899 = add i64 %3897, 5
  %3900 = load i64, i64* %6, align 8
  %3901 = add i64 %3900, -8
  %3902 = inttoptr i64 %3901 to i64*
  store i64 %3899, i64* %3902, align 8
  store i64 %3901, i64* %6, align 8
  store i64 %3898, i64* %3, align 8
  %call2_424f65 = tail call %struct.Memory* @sub_4273e0.SqdClean(%struct.State* nonnull %0, i64 %3898, %struct.Memory* %call2_424f60)
  %3903 = load i64, i64* %RBP.i, align 8
  %3904 = add i64 %3903, -44
  %3905 = load i64, i64* %3, align 8
  %3906 = add i64 %3905, 7
  store i64 %3906, i64* %3, align 8
  %3907 = inttoptr i64 %3904 to i32*
  store i32 0, i32* %3907, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_424f71

block_.L_424f71:                                  ; preds = %block_.L_424f0f, %block_423cbc
  %3908 = phi i64 [ %.pre196, %block_.L_424f0f ], [ %129, %block_423cbc ]
  %MEMORY.68 = phi %struct.Memory* [ %call2_424f65, %block_.L_424f0f ], [ %call2_423cc3, %block_423cbc ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3909 = load i64, i64* %RBP.i, align 8
  %3910 = add i64 %3909, -44
  %3911 = add i64 %3908, 3
  store i64 %3911, i64* %3, align 8
  %3912 = inttoptr i64 %3910 to i32*
  %3913 = load i32, i32* %3912, align 4
  %3914 = zext i32 %3913 to i64
  store i64 %3914, i64* %RAX.i, align 8
  %3915 = load i64, i64* %6, align 8
  %3916 = add i64 %3915, 648
  store i64 %3916, i64* %6, align 8
  %3917 = icmp ugt i64 %3915, -649
  %3918 = zext i1 %3917 to i8
  store i8 %3918, i8* %39, align 1
  %3919 = trunc i64 %3916 to i32
  %3920 = and i32 %3919, 255
  %3921 = tail call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  store i8 %3924, i8* %46, align 1
  %3925 = xor i64 %3916, %3915
  %3926 = lshr i64 %3925, 4
  %3927 = trunc i64 %3926 to i8
  %3928 = and i8 %3927, 1
  store i8 %3928, i8* %51, align 1
  %3929 = icmp eq i64 %3916, 0
  %3930 = zext i1 %3929 to i8
  store i8 %3930, i8* %54, align 1
  %3931 = lshr i64 %3916, 63
  %3932 = trunc i64 %3931 to i8
  store i8 %3932, i8* %57, align 1
  %3933 = lshr i64 %3915, 63
  %3934 = xor i64 %3931, %3933
  %3935 = add nuw nsw i64 %3934, %3931
  %3936 = icmp eq i64 %3935, 2
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %63, align 1
  %3938 = add i64 %3908, 11
  store i64 %3938, i64* %3, align 8
  %3939 = add i64 %3915, 656
  %3940 = inttoptr i64 %3916 to i64*
  %3941 = load i64, i64* %3940, align 8
  store i64 %3941, i64* %RBX.i145, align 8
  store i64 %3939, i64* %6, align 8
  %3942 = add i64 %3908, 13
  store i64 %3942, i64* %3, align 8
  %3943 = add i64 %3915, 664
  %3944 = inttoptr i64 %3939 to i64*
  %3945 = load i64, i64* %3944, align 8
  store i64 %3945, i64* %R12.i137, align 8
  store i64 %3943, i64* %6, align 8
  %3946 = add i64 %3908, 15
  store i64 %3946, i64* %3, align 8
  %3947 = add i64 %3915, 672
  %3948 = inttoptr i64 %3943 to i64*
  %3949 = load i64, i64* %3948, align 8
  store i64 %3949, i64* %R13.i112, align 8
  store i64 %3947, i64* %6, align 8
  %3950 = add i64 %3908, 17
  store i64 %3950, i64* %3, align 8
  %3951 = add i64 %3915, 680
  %3952 = inttoptr i64 %3947 to i64*
  %3953 = load i64, i64* %3952, align 8
  store i64 %3953, i64* %R14.i74, align 8
  store i64 %3951, i64* %6, align 8
  %3954 = add i64 %3908, 19
  store i64 %3954, i64* %3, align 8
  %3955 = add i64 %3915, 688
  %3956 = inttoptr i64 %3951 to i64*
  %3957 = load i64, i64* %3956, align 8
  store i64 %3957, i64* %R15.i54, align 8
  store i64 %3955, i64* %6, align 8
  %3958 = add i64 %3908, 20
  store i64 %3958, i64* %3, align 8
  %3959 = add i64 %3915, 696
  %3960 = inttoptr i64 %3955 to i64*
  %3961 = load i64, i64* %3960, align 8
  store i64 %3961, i64* %RBP.i, align 8
  store i64 %3959, i64* %6, align 8
  %3962 = add i64 %3908, 21
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3959 to i64*
  %3964 = load i64, i64* %3963, align 8
  store i64 %3964, i64* %3, align 8
  %3965 = add i64 %3915, 704
  store i64 %3965, i64* %6, align 8
  ret %struct.Memory* %MEMORY.68
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RBP, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 1
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x288___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -648
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 648
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %28
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_423cd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.hmmcalibrate(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424f71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x30bc0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x30bc0__rip__type* @G_0x30bc0__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x30a84__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x30a84__rip__type* @G_0x30a84__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x30bb8__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x30bb8__rip__type* @G_0x30bb8__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -324
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -340
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -332
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7fffffff__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2147483647, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm2__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x661560___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x661560_type* @G__0x661560 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x11___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x661670___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x134__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x128__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x130__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x160__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Getopt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4241bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b4b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b4b_type* @G__0x457b4b to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423e17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4241b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b4e___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b4e_type* @G__0x457b4e to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423e4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.atof_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4241b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b51___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b51_type* @G__0x457b51 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423e85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4241ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b54_type* @G__0x457b54 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423eb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4241a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b57___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b57_type* @G__0x457b57 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423ee3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4241a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x45713b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x45713b_type* @G__0x45713b to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423f16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42419e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b60___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b60_type* @G__0x457b60 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423f41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424199(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b69___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b69_type* @G__0x457b69 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423f6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b72___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b72_type* @G__0x457b72 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423f97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42418f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b7b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b7b_type* @G__0x457b7b to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423fcc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42418a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b82___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b82_type* @G__0x457b82 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424005(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424185(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b89___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b89_type* @G__0x457b89 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424030(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424180(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b93___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b93_type* @G__0x457b93 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42405b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42417b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457161___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457161_type* @G__0x457161 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424086(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -324
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424176(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457b9b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457b9b_type* @G__0x457b9b to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4240b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457ba1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457ba1_type* @G__0x457ba1 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424103(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.String2SeqfileFormat(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4240fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457bac___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457bac_type* @G__0x457bac to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x130__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42416c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x457173___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x457173_type* @G__0x457173 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424167(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6617f0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6617f0_type* @G__0x6617f0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x663040___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x663040_type* @G_0x663040 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.HMMERBanner(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x661670___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.puts_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x661830___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x661830_type* @G__0x661830 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x164__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.exit_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423d87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x134__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4241e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457176___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457176_type* @G__0x457176 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x661670___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x134__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -324
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424254(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -340
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424254(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457bd3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457bd3_type* @G__0x457bd3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -332
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42427f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42427f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457c1d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457c1d_type* @G__0x457c1d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4242c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457c6d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457c6d_type* @G__0x457c6d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Strparse(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4242c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x456fc4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 7, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457c76___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457c76_type* @G__0x457c76 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SeqfileOpen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42430a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457c7e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457c7e_type* @G__0x457c7e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x661670___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x661670_type* @G__0x661670 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457cab___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457cab_type* @G__0x457cab to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.HMMFileOpen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42434a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457cb3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457cb3_type* @G__0x457cb3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.HMMFileRead(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457cd1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457cd1_type* @G__0x457cd1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424395(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457cf2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457cf2_type* @G__0x457cf2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setne__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7Logoddsify(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4243db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x676d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4243db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457d2b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457d2b_type* @G__0x457d2b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SetAutocuts(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42440c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457d72___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457d72_type* @G__0x457d72 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457dae___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457dae_type* @G__0x457dae to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457dd3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457dd3_type* @G__0x457dd3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x16c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424484(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457df3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457df3_type* @G__0x457df3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e17___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e17_type* @G__0x457e17 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x302c7__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x302c7__rip__type* @G_0x302c7__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x120__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -288
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4244d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jp_.L_4244d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e34___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e34_type* @G__0x457e34 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x17c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424596(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e3c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e3c_type* @G__0x457e3c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x120__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -384
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42451e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e44___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e44_type* @G__0x457e44 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -388
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424591(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e4c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e4c_type* @G__0x457e4c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -392
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42458c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424570(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e54___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e54_type* @G__0x457e54 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424587(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -400
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e5c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e5c_type* @G__0x457e5c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x301b5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x301b5__rip__type* @G_0x301b5__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x110__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -272
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x194__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -404
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4245e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jp_.L_4245e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -408
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4246a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x110__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x19c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e79___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e79_type* @G__0x457e79 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -416
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4246a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424659(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e81___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e81_type* @G__0x457e81 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42469e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424682(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e89___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e89_type* @G__0x457e89 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -424
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424699(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -428
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457e91___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457e91_type* @G__0x457e91 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x301d7__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x301d7__rip__type* @G_0x301d7__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -432
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4246fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jp_.L_4246fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42471a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457eae___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457eae_type* @G__0x457eae to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x118__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457eba___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457eba_type* @G__0x457eba to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x30165__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x30165__rip__type* @G_0x30165__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -444
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42476d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jp_.L_42476d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -448
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42478c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457ed7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457ed7_type* @G__0x457ed7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x108__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -452
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458548___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458548_type* @G__0x458548 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffff38___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967096, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 200, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 100, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocHistogram(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 200, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocTophits(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42484a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x120__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xd8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x138__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x140__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.main_loop_pvm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42491c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4248c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.main_loop_threaded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424917(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.main_loop_serial_393(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x80___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 128
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 7
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42496a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1c0__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 448
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1c4__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 452
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x14__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ExtremeValueSetHistogram(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424983(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424a63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x200___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 9
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x1d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -464
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4249cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4249e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458d45___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1d8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424a19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424a2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1e8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457ee2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457ee2_type* @G__0x457ee2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1d0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1e0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424b46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457ef8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457ef8_type* @G__0x457ef8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -496
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424aae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424ac4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457f0a___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457f0a_type* @G__0x457f0a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1f8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457f11___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457f11_type* @G__0x457f11 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -508
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424b0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x208__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -520
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424b25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x208__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457f22___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457f22_type* @G__0x457f22 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -524
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424b7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457f33___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457f33_type* @G__0x457f33 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x210__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -528
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424b92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457f72___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457f72_type* @G__0x457f72 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -532
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FullSortTophits(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.TophitsMaxName(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %6, %5
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_424bc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x218__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -536
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424bd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x218__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x34___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 52, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xe8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xb___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -11
  %8 = icmp ult i32 %4, 11
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_424c06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x34___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 52, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xe8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -540
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424c16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x21c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -540
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_424c57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -544
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424c69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x220__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_424f0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457fa9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457fa9_type* @G__0x457fa9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -548
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x14__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_424eb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = xor i1 %6, %9
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %.v, %3
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xf4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -244
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %4, %10
  %12 = icmp ult i32 %4, %10
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %10, %4
  %22 = xor i32 %21, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %11, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %4, 31
  %34 = lshr i32 %10, 31
  %35 = xor i32 %34, %33
  %36 = xor i32 %30, %33
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424cd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424eb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x98__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x8c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xa8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xac__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xc8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xb0__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xb4__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xd4__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -212
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xb8__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xbc__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xe0__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xe4__rbp____r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x230__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x230__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__0x28__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__0x30__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__0x38__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x40__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__0x48__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r13__0x50__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x238__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x58__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.GetRankedHit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0xfc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_MINUS0x118__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_424e03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_424e08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424ea9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_424e9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -140
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_MINUS0x110__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x457fce___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x457fce_type* @G__0x457fce to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x8c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 2, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -580
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.PrintFancyAli(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, -1
  %10 = icmp eq i32 %7, 0
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %7, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %7, %6
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %10 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424ea4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424caa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424edb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458008___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458008_type* @G__0x458008 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -584
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424f0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458025___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458025_type* @G__0x458025 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -588
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424f0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458051___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458051_type* @G__0x458051 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -592
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FreeHistogram(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.HMMFileClose(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SeqfileClose(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FreeTophits(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FreePlan7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SqdClean(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = add i64 %3, %rel_off2
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %5, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x288___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 648
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -649
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i64 %6, %3
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %6, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = add nuw nsw i64 %29, %25
  %31 = icmp eq i64 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R13, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBP, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %PC, align 8
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
