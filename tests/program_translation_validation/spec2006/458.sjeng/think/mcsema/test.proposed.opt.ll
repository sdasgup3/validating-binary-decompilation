; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x46bd08__rip__type = type <{ [4 x i8] }>
%G_0x62db08_type = type <{ [8 x i8] }>
%G_0x62db0c_type = type <{ [4 x i8] }>
%G_0x62db10_type = type <{ [8 x i8] }>
%G_0x62db18_type = type <{ [8 x i8] }>
%G_0x62e4f0_type = type <{ [4 x i8] }>
%G_0x62e4f8_type = type <{ [4 x i8] }>
%G_0x62e514_type = type <{ [1 x i8] }>
%G_0x62e51c_type = type <{ [4 x i8] }>
%G_0x62e9e0_type = type <{ [4 x i8] }>
%G_0x62e9e4_type = type <{ [4 x i8] }>
%G_0x62e9f4_type = type <{ [4 x i8] }>
%G_0x62e9f8_type = type <{ [4 x i8] }>
%G_0x62e9fc_type = type <{ [4 x i8] }>
%G_0x62ea10_type = type <{ [4 x i8] }>
%G_0x62ea14_type = type <{ [4 x i8] }>
%G_0x62ea18_type = type <{ [4 x i8] }>
%G_0x62ea1c_type = type <{ [4 x i8] }>
%G_0x62ea20_type = type <{ [8 x i8] }>
%G_0x62ea24_type = type <{ [4 x i8] }>
%G_0x62ea28_type = type <{ [8 x i8] }>
%G_0x62ea30_type = type <{ [8 x i8] }>
%G_0x633b44_type = type <{ [4 x i8] }>
%G_0x633b50_type = type <{ [4 x i8] }>
%G_0x63ae44_type = type <{ [4 x i8] }>
%G_0x63ae48_type = type <{ [1 x i8] }>
%G_0x85f150_type = type <{ [4 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x85f164_type = type <{ [4 x i8] }>
%G_0x85f168_type = type <{ [4 x i8] }>
%G_0x8644f4_type = type <{ [4 x i8] }>
%G_0x864500_type = type <{ [4 x i8] }>
%G_0x864504_type = type <{ [4 x i8] }>
%G_0x864508_type = type <{ [4 x i8] }>
%G_0x86450c_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661d8_type = type <{ [1 x i8] }>
%G_0x8661dc_type = type <{ [1 x i8] }>
%G_0x8662e0_type = type <{ [4 x i8] }>
%G_0x8662e8_type = type <{ [8 x i8] }>
%G_0x866530_type = type <{ [4 x i8] }>
%G_0x866538_type = type <{ [4 x i8] }>
%G_0x866780_type = type <{ [4 x i8] }>
%G_0x866788_type = type <{ [1 x i8] }>
%G_0x86678c_type = type <{ [1 x i8] }>
%G_0x86679c_type = type <{ [1 x i8] }>
%G_0x8667a4_type = type <{ [4 x i8] }>
%G_0x86bd6c_type = type <{ [4 x i8] }>
%G_0x86bd78_type = type <{ [1 x i8] }>
%G_0x86bd84_type = type <{ [4 x i8] }>
%G_0x86bd88_type = type <{ [4 x i8] }>
%G_0x86bd90_type = type <{ [4 x i8] }>
%G_0x880b10_type = type <{ [4 x i8] }>
%G_0x880b18_type = type <{ [4 x i8] }>
%G_0x881df0_type = type <{ [4 x i8] }>
%G_0x8825f8_type = type <{ [4 x i8] }>
%G_0x886a60_type = type <{ [1 x i8] }>
%G_0x886a68_type = type <{ [4 x i8] }>
%G_0x886b80_type = type <{ [4 x i8] }>
%G_0x886bbc_type = type <{ [1 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
%G_0x8870a0_type = type <{ [4 x i8] }>
%G_0x8870a4_type = type <{ [4 x i8] }>
%G_0x8a05b4_type = type <{ [4 x i8] }>
%G_0x8a0a70_type = type <{ [4 x i8] }>
%G_0x8a0a74_type = type <{ [4 x i8] }>
%G_0x8a0a78_type = type <{ [4 x i8] }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
%G_0xd0f3__rip__type = type <{ [8 x i8] }>
%G_0xd420__rip__type = type <{ [8 x i8] }>
%G_0xd430__rip__type = type <{ [8 x i8] }>
%G_0xd4f7__rip__type = type <{ [4 x i8] }>
%G_0xd50b__rip__type = type <{ [8 x i8] }>
%G__0x429086_type = type <{ [8 x i8] }>
%G__0x429096_type = type <{ [8 x i8] }>
%G__0x4290a9_type = type <{ [8 x i8] }>
%G__0x4290b9_type = type <{ [8 x i8] }>
%G__0x4290cd_type = type <{ [8 x i8] }>
%G__0x4290fe_type = type <{ [8 x i8] }>
%G__0x429119_type = type <{ [8 x i8] }>
%G__0x42914d_type = type <{ [8 x i8] }>
%G__0x429172_type = type <{ [8 x i8] }>
%G__0x42918b_type = type <{ [8 x i8] }>
%G__0x4291bc_type = type <{ [8 x i8] }>
%G__0x4291cc_type = type <{ [8 x i8] }>
%G__0x42921d_type = type <{ [8 x i8] }>
%G__0x639220_type = type <{ [8 x i8] }>
%G__0x63ae50_type = type <{ [8 x i8] }>
%G__0x85f1f0_type = type <{ [8 x i8] }>
%G__0x86bda0_type = type <{ [8 x i8] }>
%G__0x8822b0_type = type <{ [8 x i8] }>
%G__0x882600_type = type <{ [8 x i8] }>
%G__0x884320_type = type <{ [8 x i8] }>
%G__0x884b20_type = type <{ [8 x i8] }>
%G__0x886bf0_type = type <{ [8 x i8] }>
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
@G_0x46bd08__rip_ = global %G_0x46bd08__rip__type zeroinitializer
@G_0x62db08 = local_unnamed_addr global %G_0x62db08_type zeroinitializer
@G_0x62db0c = local_unnamed_addr global %G_0x62db0c_type zeroinitializer
@G_0x62db10 = local_unnamed_addr global %G_0x62db10_type zeroinitializer
@G_0x62db18 = local_unnamed_addr global %G_0x62db18_type zeroinitializer
@G_0x62e4f0 = local_unnamed_addr global %G_0x62e4f0_type zeroinitializer
@G_0x62e4f8 = local_unnamed_addr global %G_0x62e4f8_type zeroinitializer
@G_0x62e514 = local_unnamed_addr global %G_0x62e514_type zeroinitializer
@G_0x62e51c = local_unnamed_addr global %G_0x62e51c_type zeroinitializer
@G_0x62e9e0 = local_unnamed_addr global %G_0x62e9e0_type zeroinitializer
@G_0x62e9e4 = local_unnamed_addr global %G_0x62e9e4_type zeroinitializer
@G_0x62e9f4 = local_unnamed_addr global %G_0x62e9f4_type zeroinitializer
@G_0x62e9f8 = local_unnamed_addr global %G_0x62e9f8_type zeroinitializer
@G_0x62e9fc = local_unnamed_addr global %G_0x62e9fc_type zeroinitializer
@G_0x62ea10 = local_unnamed_addr global %G_0x62ea10_type zeroinitializer
@G_0x62ea14 = local_unnamed_addr global %G_0x62ea14_type zeroinitializer
@G_0x62ea18 = local_unnamed_addr global %G_0x62ea18_type zeroinitializer
@G_0x62ea1c = local_unnamed_addr global %G_0x62ea1c_type zeroinitializer
@G_0x62ea20 = local_unnamed_addr global %G_0x62ea20_type zeroinitializer
@G_0x62ea24 = local_unnamed_addr global %G_0x62ea24_type zeroinitializer
@G_0x62ea28 = local_unnamed_addr global %G_0x62ea28_type zeroinitializer
@G_0x62ea30 = local_unnamed_addr global %G_0x62ea30_type zeroinitializer
@G_0x633b44 = local_unnamed_addr global %G_0x633b44_type zeroinitializer
@G_0x633b50 = local_unnamed_addr global %G_0x633b50_type zeroinitializer
@G_0x63ae44 = local_unnamed_addr global %G_0x63ae44_type zeroinitializer
@G_0x63ae48 = local_unnamed_addr global %G_0x63ae48_type zeroinitializer
@G_0x85f150 = local_unnamed_addr global %G_0x85f150_type zeroinitializer
@G_0x85f154 = local_unnamed_addr global %G_0x85f154_type zeroinitializer
@G_0x85f164 = local_unnamed_addr global %G_0x85f164_type zeroinitializer
@G_0x85f168 = local_unnamed_addr global %G_0x85f168_type zeroinitializer
@G_0x8644f4 = local_unnamed_addr global %G_0x8644f4_type zeroinitializer
@G_0x864500 = local_unnamed_addr global %G_0x864500_type zeroinitializer
@G_0x864504 = local_unnamed_addr global %G_0x864504_type zeroinitializer
@G_0x864508 = local_unnamed_addr global %G_0x864508_type zeroinitializer
@G_0x86450c = local_unnamed_addr global %G_0x86450c_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661d8 = local_unnamed_addr global %G_0x8661d8_type zeroinitializer
@G_0x8661dc = local_unnamed_addr global %G_0x8661dc_type zeroinitializer
@G_0x8662e0 = local_unnamed_addr global %G_0x8662e0_type zeroinitializer
@G_0x8662e8 = local_unnamed_addr global %G_0x8662e8_type zeroinitializer
@G_0x866530 = local_unnamed_addr global %G_0x866530_type zeroinitializer
@G_0x866538 = local_unnamed_addr global %G_0x866538_type zeroinitializer
@G_0x866780 = local_unnamed_addr global %G_0x866780_type zeroinitializer
@G_0x866788 = local_unnamed_addr global %G_0x866788_type zeroinitializer
@G_0x86678c = local_unnamed_addr global %G_0x86678c_type zeroinitializer
@G_0x86679c = local_unnamed_addr global %G_0x86679c_type zeroinitializer
@G_0x8667a4 = local_unnamed_addr global %G_0x8667a4_type zeroinitializer
@G_0x86bd6c = local_unnamed_addr global %G_0x86bd6c_type zeroinitializer
@G_0x86bd78 = local_unnamed_addr global %G_0x86bd78_type zeroinitializer
@G_0x86bd84 = local_unnamed_addr global %G_0x86bd84_type zeroinitializer
@G_0x86bd88 = local_unnamed_addr global %G_0x86bd88_type zeroinitializer
@G_0x86bd90 = local_unnamed_addr global %G_0x86bd90_type zeroinitializer
@G_0x880b10 = local_unnamed_addr global %G_0x880b10_type zeroinitializer
@G_0x880b18 = local_unnamed_addr global %G_0x880b18_type zeroinitializer
@G_0x881df0 = local_unnamed_addr global %G_0x881df0_type zeroinitializer
@G_0x8825f8 = local_unnamed_addr global %G_0x8825f8_type zeroinitializer
@G_0x886a60 = local_unnamed_addr global %G_0x886a60_type zeroinitializer
@G_0x886a68 = local_unnamed_addr global %G_0x886a68_type zeroinitializer
@G_0x886b80 = local_unnamed_addr global %G_0x886b80_type zeroinitializer
@G_0x886bbc = local_unnamed_addr global %G_0x886bbc_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer
@G_0x8870a0 = local_unnamed_addr global %G_0x8870a0_type zeroinitializer
@G_0x8870a4 = local_unnamed_addr global %G_0x8870a4_type zeroinitializer
@G_0x8a05b4 = local_unnamed_addr global %G_0x8a05b4_type zeroinitializer
@G_0x8a0a70 = local_unnamed_addr global %G_0x8a0a70_type zeroinitializer
@G_0x8a0a74 = local_unnamed_addr global %G_0x8a0a74_type zeroinitializer
@G_0x8a0a78 = local_unnamed_addr global %G_0x8a0a78_type zeroinitializer
@G_0x8a2a04 = local_unnamed_addr global %G_0x8a2a04_type zeroinitializer
@G_0xd0f3__rip_ = global %G_0xd0f3__rip__type zeroinitializer
@G_0xd420__rip_ = global %G_0xd420__rip__type zeroinitializer
@G_0xd430__rip_ = global %G_0xd430__rip__type zeroinitializer
@G_0xd4f7__rip_ = global %G_0xd4f7__rip__type zeroinitializer
@G_0xd50b__rip_ = global %G_0xd50b__rip__type zeroinitializer
@G__0x429086 = global %G__0x429086_type zeroinitializer
@G__0x429096 = global %G__0x429096_type zeroinitializer
@G__0x4290a9 = global %G__0x4290a9_type zeroinitializer
@G__0x4290b9 = global %G__0x4290b9_type zeroinitializer
@G__0x4290cd = global %G__0x4290cd_type zeroinitializer
@G__0x4290fe = global %G__0x4290fe_type zeroinitializer
@G__0x429119 = global %G__0x429119_type zeroinitializer
@G__0x42914d = global %G__0x42914d_type zeroinitializer
@G__0x429172 = global %G__0x429172_type zeroinitializer
@G__0x42918b = global %G__0x42918b_type zeroinitializer
@G__0x4291bc = global %G__0x4291bc_type zeroinitializer
@G__0x4291cc = global %G__0x4291cc_type zeroinitializer
@G__0x42921d = global %G__0x42921d_type zeroinitializer
@G__0x639220 = global %G__0x639220_type zeroinitializer
@G__0x63ae50 = global %G__0x63ae50_type zeroinitializer
@G__0x85f1f0 = global %G__0x85f1f0_type zeroinitializer
@G__0x86bda0 = global %G__0x86bda0_type zeroinitializer
@G__0x8822b0 = global %G__0x8822b0_type zeroinitializer
@G__0x882600 = global %G__0x882600_type zeroinitializer
@G__0x884320 = global %G__0x884320_type zeroinitializer
@G__0x884b20 = global %G__0x884b20_type zeroinitializer
@G__0x886bf0 = global %G__0x886bf0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4243e0.interrupt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423760.rtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40d610.check_phase(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4214c0.allocate_time(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4204c0.clear_tt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402c10.reset_ecache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414310.proofnumberscan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423770.rdifftime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4193f0.search_root(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4232b0.stringize_pv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423410.post_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4159f0.proofnumbercheck(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_421970.comp_to_san(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401be0.ProcessHoldings(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @think(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -12648
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 12640
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i70 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %RDI.i71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = load i64, i64* %RDI.i71, align 8
  store i64 %40, i64* %RAX.i70, align 8
  %41 = add i64 %7, -92
  %42 = add i64 %10, 20
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i32*
  store i32 0, i32* %43, align 4
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -92
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 0, i32* %48, align 4
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -12408
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 10
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 0, i32* %53, align 4
  %54 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x86bd84_type* @G_0x86bd84 to i32*), align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -12416
  %57 = add i64 %54, 21
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  store i32 0, i32* %58, align 4
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -12536
  %61 = load i64, i64* %RAX.i70, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 7
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -12544
  %67 = load i64, i64* %RDI.i71, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %EAX.i1655 = bitcast %union.anon* %39 to i32*
  %RSI.i1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDX.i1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %AL.i1401 = bitcast %union.anon* %39 to i8*
  %RSI.i1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RCX.i1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1109 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %ECX.i1106 = bitcast %union.anon* %71 to i32*
  %RDX.i1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %75 = bitcast i64* %74 to double*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %77 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %76, i64 0, i32 0, i32 0, i32 0, i64 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %79 = bitcast i64* %78 to double*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %81 = bitcast %union.VectorReg* %80 to double*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %83 = bitcast %union.VectorReg* %82 to double*
  %84 = bitcast %union.VectorReg* %76 to double*
  %85 = bitcast [32 x %union.VectorReg]* %72 to double*
  %CL.i662 = bitcast %union.anon* %71 to i8*
  %86 = bitcast i64* %6 to i64**
  %87 = bitcast %union.VectorReg* %80 to i8*
  %88 = bitcast %union.VectorReg* %80 to <2 x i32>*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %90 = bitcast i64* %89 to <2 x i32>*
  %91 = bitcast %union.VectorReg* %80 to float*
  %92 = getelementptr inbounds i8, i8* %87, i64 4
  %93 = bitcast i8* %92 to i32*
  %94 = bitcast i64* %89 to i32*
  %95 = getelementptr inbounds i8, i8* %87, i64 12
  %96 = bitcast i8* %95 to i32*
  %97 = bitcast %union.VectorReg* %80 to <2 x float>*
  %98 = bitcast %union.VectorReg* %76 to i8*
  %99 = bitcast %union.VectorReg* %76 to i32*
  %100 = getelementptr inbounds i8, i8* %98, i64 4
  %101 = bitcast i8* %100 to float*
  %102 = bitcast i64* %78 to float*
  %103 = getelementptr inbounds i8, i8* %98, i64 12
  %104 = bitcast i8* %103 to float*
  %105 = bitcast %union.VectorReg* %76 to <2 x float>*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_41a989

block_.L_41a989:                                  ; preds = %block_.L_41a989.backedge, %entry
  %106 = phi i64 [ %.pre, %entry ], [ %3594, %block_.L_41a989.backedge ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.0.be, %block_.L_41a989.backedge ]
  store i32 0, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x63ae44_type* @G_0x63ae44 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x880b10_type* @G_0x880b10 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e4f0_type* @G_0x62e4f0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x864508_type* @G_0x864508 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86bd6c_type* @G_0x86bd6c to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8870a4_type* @G_0x8870a4 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x886a68_type* @G_0x886a68 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8a0a70_type* @G_0x8a0a70 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8662e0_type* @G_0x8662e0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e9fc_type* @G_0x62e9fc to i32*), align 8
  store i32 0, i32* bitcast (%G_0x866538_type* @G_0x866538 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x881df0_type* @G_0x881df0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e9f8_type* @G_0x62e9f8 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x866780_type* @G_0x866780 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e9f4_type* @G_0x62e9f4 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x864504_type* @G_0x864504 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8870a0_type* @G_0x8870a0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8a0a74_type* @G_0x8a0a74 to i32*), align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -112
  %109 = add i64 %106, 249
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 0, i32* %110, align 4
  %111 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x62ea1c_type* @G_0x62ea1c to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  store i32 200, i32* bitcast (%G_0x62ea18_type* @G_0x62ea18 to i32*), align 8
  store i8 0, i8* getelementptr inbounds (%G_0x86678c_type, %G_0x86678c_type* @G_0x86678c, i64 0, i32 0, i64 0), align 8
  store i32 -1, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  %112 = add i64 %111, 39262
  %113 = add i64 %111, 57
  %114 = load i64, i64* %6, align 8
  %115 = add i64 %114, -8
  %116 = inttoptr i64 %115 to i64*
  store i64 %113, i64* %116, align 8
  store i64 %115, i64* %6, align 8
  store i64 %112, i64* %3, align 8
  %call2_41aab6 = tail call %struct.Memory* @sub_4243e0.interrupt(%struct.State* nonnull %0, i64 %112, %struct.Memory* %MEMORY.0)
  %117 = load i32, i32* %EAX.i1655, align 4
  %118 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %119 = and i32 %117, 255
  %120 = tail call i32 @llvm.ctpop.i32(i32 %119)
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = xor i8 %122, 1
  store i8 %123, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %124 = icmp eq i32 %117, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %29, align 1
  %126 = lshr i32 %117, 31
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v328 = select i1 %124, i64 84, i64 9
  %128 = add i64 %118, %.v328
  store i64 %128, i64* %3, align 8
  br i1 %124, label %block_.L_41ab0f, label %block_41aac4

block_41aac4:                                     ; preds = %block_.L_41a989
  %129 = load i32, i32* bitcast (%G_0x62e514_type* @G_0x62e514 to i32*), align 8
  store i8 0, i8* %14, align 1
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %135 = icmp eq i32 %129, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %29, align 1
  %137 = lshr i32 %129, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v329 = select i1 %135, i64 14, i64 28
  %139 = add i64 %128, %.v329
  store i64 %139, i64* %3, align 8
  br i1 %135, label %block_41aad2, label %block_.L_41aae0

block_41aad2:                                     ; preds = %block_41aac4
  %140 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %141 = and i32 %140, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %146 = icmp eq i32 %140, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %29, align 1
  %148 = lshr i32 %140, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v330 = select i1 %146, i64 61, i64 14
  %150 = add i64 %139, %.v330
  store i64 %150, i64* %3, align 8
  br i1 %146, label %block_.L_41ab0f, label %block_.L_41aae0

block_.L_41aae0:                                  ; preds = %block_41aac4, %block_41aad2
  %151 = phi i64 [ %150, %block_41aad2 ], [ %139, %block_41aac4 ]
  %152 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %152, i64* %RAX.i70, align 8
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -12544
  %155 = add i64 %151, 15
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RCX.i1163, align 8
  %158 = add i64 %151, 18
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i64*
  store i64 %152, i64* %159, align 8
  %160 = load i64, i64* %3, align 8
  %161 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %162 = load i64, i64* %RCX.i1163, align 8
  %163 = add i64 %162, 8
  %164 = add i64 %160, 12
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i64*
  store i64 %161, i64* %165, align 8
  %166 = load i64, i64* %3, align 8
  %167 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %167, i64* %RAX.i70, align 8
  %168 = load i64, i64* %RCX.i1163, align 8
  %169 = add i64 %168, 16
  %170 = add i64 %166, 12
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %171, align 8
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 4854
  store i64 %173, i64* %3, align 8
  br label %block_.L_41be00

block_.L_41ab0f:                                  ; preds = %block_41aad2, %block_.L_41a989
  %174 = phi i64 [ %150, %block_41aad2 ], [ %128, %block_.L_41a989 ]
  %175 = add i64 %174, 35921
  %176 = add i64 %174, 5
  %177 = load i64, i64* %6, align 8
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %176, i64* %179, align 8
  store i64 %178, i64* %6, align 8
  store i64 %175, i64* %3, align 8
  %call2_41ab0f = tail call %struct.Memory* @sub_423760.rtime(%struct.State* nonnull %0, i64 %175, %struct.Memory* %MEMORY.0)
  %180 = load i64, i64* %RAX.i70, align 8
  %181 = load i64, i64* %3, align 8
  store i64 %180, i64* bitcast (%G_0x8662e8_type* @G_0x8662e8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %182 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %183 = add i32 %182, -4
  %184 = icmp ult i32 %182, 4
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %14, align 1
  %186 = and i32 %183, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186)
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %21, align 1
  %191 = xor i32 %183, %182
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %26, align 1
  %195 = icmp eq i32 %183, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %29, align 1
  %197 = lshr i32 %183, 31
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %32, align 1
  %199 = lshr i32 %182, 31
  %200 = xor i32 %197, %199
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %38, align 1
  %.v331 = select i1 %195, i64 33, i64 49
  %204 = add i64 %181, %.v331
  %205 = add i64 %204, 11
  store i64 %205, i64* %3, align 8
  br i1 %195, label %block_41ab35, label %block_.L_41ab45

block_41ab35:                                     ; preds = %block_.L_41ab0f
  store i32 1, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %206 = add i64 %204, 27
  store i64 %206, i64* %3, align 8
  br label %block_.L_41ab50

block_.L_41ab45:                                  ; preds = %block_.L_41ab0f
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  br label %block_.L_41ab50

block_.L_41ab50:                                  ; preds = %block_.L_41ab45, %block_41ab35
  %207 = phi i64 [ %205, %block_.L_41ab45 ], [ %206, %block_41ab35 ]
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -12400
  store i64 %209, i64* %RDI.i71, align 8
  %210 = add i64 %207, -77088
  %211 = add i64 %207, 12
  %212 = load i64, i64* %6, align 8
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %211, i64* %214, align 8
  store i64 %213, i64* %6, align 8
  store i64 %210, i64* %3, align 8
  %call2_41ab57 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %210, %struct.Memory* %MEMORY.0)
  %215 = load i64, i64* %3, align 8
  %216 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RAX.i70, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -12420
  %220 = add i64 %215, 13
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  store i32 %216, i32* %221, align 4
  %222 = load i64, i64* %3, align 8
  %223 = add i64 %222, -70281
  %224 = add i64 %222, 5
  %225 = load i64, i64* %6, align 8
  %226 = add i64 %225, -8
  %227 = inttoptr i64 %226 to i64*
  store i64 %224, i64* %227, align 8
  store i64 %226, i64* %6, align 8
  store i64 %223, i64* %3, align 8
  %call2_41ab69 = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %223, %struct.Memory* %MEMORY.0)
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -12412
  %230 = load i32, i32* %EAX.i1655, align 4
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 6
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %229 to i32*
  store i32 %230, i32* %233, align 4
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -12404
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, 10
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %235 to i32*
  store i32 0, i32* %238, align 4
  %.pre286 = load i64, i64* %3, align 8
  br label %block_.L_41ab7e

block_.L_41ab7e:                                  ; preds = %block_.L_41abe1, %block_.L_41ab50
  %239 = phi i64 [ %390, %block_.L_41abe1 ], [ %.pre286, %block_.L_41ab50 ]
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -12404
  %242 = add i64 %239, 6
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RAX.i70, align 8
  %246 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %247 = sub i32 %244, %246
  %248 = icmp ult i32 %244, %246
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %14, align 1
  %250 = and i32 %247, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %21, align 1
  %255 = xor i32 %246, %244
  %256 = xor i32 %255, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %26, align 1
  %260 = icmp eq i32 %247, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %29, align 1
  %262 = lshr i32 %247, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %32, align 1
  %264 = lshr i32 %244, 31
  %265 = lshr i32 %246, 31
  %266 = xor i32 %265, %264
  %267 = xor i32 %262, %264
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %38, align 1
  %271 = icmp ne i8 %263, 0
  %272 = xor i1 %271, %269
  %.v332 = select i1 %272, i64 19, i64 137
  %273 = add i64 %239, %.v332
  store i64 %273, i64* %3, align 8
  br i1 %272, label %block_41ab91, label %block_.L_41ac07

block_41ab91:                                     ; preds = %block_.L_41ab7e
  %274 = add i64 %240, -12400
  store i64 %274, i64* %RDI.i71, align 8
  %275 = add i64 %273, 13
  store i64 %275, i64* %3, align 8
  %276 = load i32, i32* %243, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RSI.i1595, align 8
  %278 = add i64 %273, -62561
  %279 = add i64 %273, 18
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %call2_41ab9e = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %278, %struct.Memory* %MEMORY.0)
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -12400
  %285 = load i64, i64* %3, align 8
  store i64 %284, i64* %RDI.i71, align 8
  %286 = add i64 %283, -12404
  %287 = add i64 %285, 13
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RSI.i1595, align 8
  %291 = add i64 %283, -12412
  %292 = add i64 %285, 19
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RDX.i1585, align 8
  %296 = add i64 %285, -83235
  %297 = add i64 %285, 24
  %298 = load i64, i64* %6, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %6, align 8
  store i64 %296, i64* %3, align 8
  %call2_41abb6 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %296, %struct.Memory* %MEMORY.0)
  %301 = load i32, i32* %EAX.i1655, align 4
  %302 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %303 = and i32 %301, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303)
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %308 = icmp eq i32 %301, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %29, align 1
  %310 = lshr i32 %301, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v440 = select i1 %308, i64 38, i64 9
  %312 = add i64 %302, %.v440
  store i64 %312, i64* %3, align 8
  br i1 %308, label %block_.L_41abe1, label %block_41abc4

block_41abc4:                                     ; preds = %block_41ab91
  %313 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %314 = add i32 %313, 1
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RAX.i70, align 8
  %316 = icmp eq i32 %313, -1
  %317 = icmp eq i32 %314, 0
  %318 = or i1 %316, %317
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %14, align 1
  %320 = and i32 %314, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %21, align 1
  %325 = xor i32 %314, %313
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %26, align 1
  %329 = zext i1 %317 to i8
  store i8 %329, i8* %29, align 1
  %330 = lshr i32 %314, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %32, align 1
  %332 = lshr i32 %313, 31
  %333 = xor i32 %330, %332
  %334 = add nuw nsw i32 %333, %330
  %335 = icmp eq i32 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %38, align 1
  store i32 %314, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -12404
  %339 = add i64 %312, 23
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RAX.i70, align 8
  %343 = add i64 %337, -12408
  %344 = add i64 %312, 29
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  store i32 %341, i32* %345, align 4
  %.pre320 = load i64, i64* %3, align 8
  br label %block_.L_41abe1

block_.L_41abe1:                                  ; preds = %block_41abc4, %block_41ab91
  %346 = phi i64 [ %.pre320, %block_41abc4 ], [ %312, %block_41ab91 ]
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -12400
  store i64 %348, i64* %RDI.i71, align 8
  %349 = add i64 %347, -12404
  %350 = add i64 %346, 13
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RSI.i1595, align 8
  %354 = add i64 %346, -58433
  %355 = add i64 %346, 18
  %356 = load i64, i64* %6, align 8
  %357 = add i64 %356, -8
  %358 = inttoptr i64 %357 to i64*
  store i64 %355, i64* %358, align 8
  store i64 %357, i64* %6, align 8
  store i64 %354, i64* %3, align 8
  %call2_41abee = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %354, %struct.Memory* %MEMORY.0)
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -12404
  %361 = load i64, i64* %3, align 8
  %362 = add i64 %361, 6
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = add i32 %364, 1
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX.i70, align 8
  %367 = icmp eq i32 %364, -1
  %368 = icmp eq i32 %365, 0
  %369 = or i1 %367, %368
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %14, align 1
  %371 = and i32 %365, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %21, align 1
  %376 = xor i32 %365, %364
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %26, align 1
  %380 = zext i1 %368 to i8
  store i8 %380, i8* %29, align 1
  %381 = lshr i32 %365, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %32, align 1
  %383 = lshr i32 %364, 31
  %384 = xor i32 %381, %383
  %385 = add nuw nsw i32 %384, %381
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %38, align 1
  %388 = add i64 %361, 15
  store i64 %388, i64* %3, align 8
  store i32 %365, i32* %363, align 4
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, -132
  store i64 %390, i64* %3, align 8
  br label %block_.L_41ab7e

block_.L_41ac07:                                  ; preds = %block_.L_41ab7e
  %391 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %392 = add i32 %391, -4
  %393 = icmp ult i32 %391, 4
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %14, align 1
  %395 = and i32 %392, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %21, align 1
  %400 = xor i32 %392, %391
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %26, align 1
  %404 = icmp eq i32 %392, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %29, align 1
  %406 = lshr i32 %392, 31
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %32, align 1
  %408 = lshr i32 %391, 31
  %409 = xor i32 %406, %408
  %410 = add nuw nsw i32 %409, %408
  %411 = icmp eq i32 %410, 2
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %38, align 1
  %.v333 = select i1 %404, i64 14, i64 226
  %413 = add i64 %273, %.v333
  store i64 %413, i64* %3, align 8
  br i1 %404, label %block_41ac15, label %block_.L_41ace9

block_41ac15:                                     ; preds = %block_.L_41ac07
  %414 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %415 = and i32 %414, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %420 = icmp eq i32 %414, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %29, align 1
  %422 = lshr i32 %414, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v437 = select i1 %420, i64 14, i64 212
  %424 = add i64 %413, %.v437
  store i64 %424, i64* %3, align 8
  br i1 %420, label %block_41ac23, label %block_.L_41ace9

block_41ac23:                                     ; preds = %block_41ac15
  %425 = add i64 %240, -12400
  store i64 %425, i64* %RDI.i71, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %426 = add i64 %240, -12420
  %427 = add i64 %424, 28
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  store i32 0, i32* %428, align 4
  %429 = load i64, i64* %3, align 8
  %430 = add i64 %429, -77327
  %431 = add i64 %429, 5
  %432 = load i64, i64* %6, align 8
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %431, i64* %434, align 8
  store i64 %433, i64* %6, align 8
  store i64 %430, i64* %3, align 8
  %call2_41ac3f = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %430, %struct.Memory* %MEMORY.0)
  %435 = load i64, i64* %3, align 8
  %436 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX.i70, align 8
  %438 = load i64, i64* %RBP.i, align 8
  %439 = add i64 %438, -12420
  %440 = add i64 %435, 13
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i32*
  store i32 %436, i32* %441, align 4
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -12404
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 10
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %443 to i32*
  store i32 0, i32* %446, align 4
  %.pre287 = load i64, i64* %3, align 8
  br label %block_.L_41ac5b

block_.L_41ac5b:                                  ; preds = %block_.L_41acbe, %block_41ac23
  %447 = phi i64 [ %598, %block_.L_41acbe ], [ %.pre287, %block_41ac23 ]
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -12404
  %450 = add i64 %447, 6
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RAX.i70, align 8
  %454 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %455 = sub i32 %452, %454
  %456 = icmp ult i32 %452, %454
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %14, align 1
  %458 = and i32 %455, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %21, align 1
  %463 = xor i32 %454, %452
  %464 = xor i32 %463, %455
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %26, align 1
  %468 = icmp eq i32 %455, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %29, align 1
  %470 = lshr i32 %455, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %32, align 1
  %472 = lshr i32 %452, 31
  %473 = lshr i32 %454, 31
  %474 = xor i32 %473, %472
  %475 = xor i32 %470, %472
  %476 = add nuw nsw i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %38, align 1
  %479 = icmp ne i8 %471, 0
  %480 = xor i1 %479, %477
  %.v438 = select i1 %480, i64 19, i64 137
  %481 = add i64 %447, %.v438
  store i64 %481, i64* %3, align 8
  br i1 %480, label %block_41ac6e, label %block_.L_41ace4

block_41ac6e:                                     ; preds = %block_.L_41ac5b
  %482 = add i64 %448, -12400
  store i64 %482, i64* %RDI.i71, align 8
  %483 = add i64 %481, 13
  store i64 %483, i64* %3, align 8
  %484 = load i32, i32* %451, align 4
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RSI.i1595, align 8
  %486 = add i64 %481, -62782
  %487 = add i64 %481, 18
  %488 = load i64, i64* %6, align 8
  %489 = add i64 %488, -8
  %490 = inttoptr i64 %489 to i64*
  store i64 %487, i64* %490, align 8
  store i64 %489, i64* %6, align 8
  store i64 %486, i64* %3, align 8
  %call2_41ac7b = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %486, %struct.Memory* %MEMORY.0)
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -12400
  %493 = load i64, i64* %3, align 8
  store i64 %492, i64* %RDI.i71, align 8
  %494 = add i64 %491, -12404
  %495 = add i64 %493, 13
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RSI.i1595, align 8
  %499 = add i64 %491, -12412
  %500 = add i64 %493, 19
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RDX.i1585, align 8
  %504 = add i64 %493, -83456
  %505 = add i64 %493, 24
  %506 = load i64, i64* %6, align 8
  %507 = add i64 %506, -8
  %508 = inttoptr i64 %507 to i64*
  store i64 %505, i64* %508, align 8
  store i64 %507, i64* %6, align 8
  store i64 %504, i64* %3, align 8
  %call2_41ac93 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %504, %struct.Memory* %MEMORY.0)
  %509 = load i32, i32* %EAX.i1655, align 4
  %510 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %511 = and i32 %509, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %516 = icmp eq i32 %509, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %29, align 1
  %518 = lshr i32 %509, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v439 = select i1 %516, i64 38, i64 9
  %520 = add i64 %510, %.v439
  store i64 %520, i64* %3, align 8
  br i1 %516, label %block_.L_41acbe, label %block_41aca1

block_41aca1:                                     ; preds = %block_41ac6e
  %521 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %522 = add i32 %521, 1
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RAX.i70, align 8
  %524 = icmp eq i32 %521, -1
  %525 = icmp eq i32 %522, 0
  %526 = or i1 %524, %525
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %14, align 1
  %528 = and i32 %522, 255
  %529 = tail call i32 @llvm.ctpop.i32(i32 %528)
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = xor i8 %531, 1
  store i8 %532, i8* %21, align 1
  %533 = xor i32 %522, %521
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %26, align 1
  %537 = zext i1 %525 to i8
  store i8 %537, i8* %29, align 1
  %538 = lshr i32 %522, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %32, align 1
  %540 = lshr i32 %521, 31
  %541 = xor i32 %538, %540
  %542 = add nuw nsw i32 %541, %538
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %38, align 1
  store i32 %522, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -12404
  %547 = add i64 %520, 23
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RAX.i70, align 8
  %551 = add i64 %545, -12408
  %552 = add i64 %520, 29
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i32*
  store i32 %549, i32* %553, align 4
  %.pre288 = load i64, i64* %3, align 8
  br label %block_.L_41acbe

block_.L_41acbe:                                  ; preds = %block_41aca1, %block_41ac6e
  %554 = phi i64 [ %.pre288, %block_41aca1 ], [ %520, %block_41ac6e ]
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -12400
  store i64 %556, i64* %RDI.i71, align 8
  %557 = add i64 %555, -12404
  %558 = add i64 %554, 13
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RSI.i1595, align 8
  %562 = add i64 %554, -58654
  %563 = add i64 %554, 18
  %564 = load i64, i64* %6, align 8
  %565 = add i64 %564, -8
  %566 = inttoptr i64 %565 to i64*
  store i64 %563, i64* %566, align 8
  store i64 %565, i64* %6, align 8
  store i64 %562, i64* %3, align 8
  %call2_41accb = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %562, %struct.Memory* %MEMORY.0)
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -12404
  %569 = load i64, i64* %3, align 8
  %570 = add i64 %569, 6
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %568 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, 1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX.i70, align 8
  %575 = icmp eq i32 %572, -1
  %576 = icmp eq i32 %573, 0
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %573, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %573, %572
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %26, align 1
  %588 = zext i1 %576 to i8
  store i8 %588, i8* %29, align 1
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %32, align 1
  %591 = lshr i32 %572, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %589
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %38, align 1
  %596 = add i64 %569, 15
  store i64 %596, i64* %3, align 8
  store i32 %573, i32* %571, align 4
  %597 = load i64, i64* %3, align 8
  %598 = add i64 %597, -132
  store i64 %598, i64* %3, align 8
  br label %block_.L_41ac5b

block_.L_41ace4:                                  ; preds = %block_.L_41ac5b
  %599 = add i64 %481, 5
  store i64 %599, i64* %3, align 8
  %.pre289 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  br label %block_.L_41ace9

block_.L_41ace9:                                  ; preds = %block_41ac15, %block_.L_41ac07, %block_.L_41ace4
  %600 = phi i64 [ %448, %block_.L_41ace4 ], [ %240, %block_41ac15 ], [ %240, %block_.L_41ac07 ]
  %601 = phi i32 [ %.pre289, %block_.L_41ace4 ], [ 4, %block_41ac15 ], [ %391, %block_.L_41ac07 ]
  %602 = phi i64 [ %599, %block_.L_41ace4 ], [ %424, %block_41ac15 ], [ %413, %block_.L_41ac07 ]
  %603 = add i32 %601, -1
  %604 = icmp eq i32 %601, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %14, align 1
  %606 = and i32 %603, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %21, align 1
  %611 = xor i32 %603, %601
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %26, align 1
  %615 = icmp eq i32 %603, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %29, align 1
  %617 = lshr i32 %603, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %32, align 1
  %619 = lshr i32 %601, 31
  %620 = xor i32 %617, %619
  %621 = add nuw nsw i32 %620, %619
  %622 = icmp eq i32 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %38, align 1
  %.v334 = select i1 %615, i64 124, i64 14
  %624 = add i64 %602, %.v334
  store i64 %624, i64* %3, align 8
  br i1 %615, label %block_.L_41ad65, label %block_41acf7

block_41acf7:                                     ; preds = %block_.L_41ace9
  %625 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %626 = and i32 %625, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %631 = icmp eq i32 %625, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %29, align 1
  %633 = lshr i32 %625, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v335 = select i1 %631, i64 14, i64 110
  %635 = add i64 %624, %.v335
  store i64 %635, i64* %3, align 8
  br i1 %631, label %block_41ad05, label %block_.L_41ad65

block_41ad05:                                     ; preds = %block_41acf7
  %636 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %637 = add i32 %636, -1
  %638 = icmp eq i32 %636, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %14, align 1
  %640 = and i32 %637, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %21, align 1
  %645 = xor i32 %637, %636
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %26, align 1
  %649 = icmp eq i32 %637, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %29, align 1
  %651 = lshr i32 %637, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %32, align 1
  %653 = lshr i32 %636, 31
  %654 = xor i32 %651, %653
  %655 = add nuw nsw i32 %654, %653
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %38, align 1
  %.v436 = select i1 %649, i64 14, i64 91
  %658 = add i64 %635, %.v436
  store i64 %658, i64* %3, align 8
  br i1 %649, label %block_41ad13, label %block_.L_41ad60

block_41ad13:                                     ; preds = %block_41ad05
  %659 = add i64 %600, -12400
  store i64 %659, i64* %RAX.i70, align 8
  %660 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %661 = mul i32 %660, 100
  %662 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %663 = add i32 %662, %661
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RCX.i1109, align 8
  %665 = icmp ult i32 %663, %661
  %666 = icmp ult i32 %663, %662
  %667 = or i1 %665, %666
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %14, align 1
  %669 = and i32 %663, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %21, align 1
  %674 = xor i32 %662, %661
  %675 = xor i32 %674, %663
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %26, align 1
  %679 = icmp eq i32 %663, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %29, align 1
  %681 = lshr i32 %663, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %32, align 1
  %683 = lshr i32 %661, 31
  %684 = lshr i32 %662, 31
  %685 = xor i32 %681, %683
  %686 = xor i32 %681, %684
  %687 = add nuw nsw i32 %685, %686
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %38, align 1
  store i32 %663, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %690 = add i64 %600, -12408
  %691 = add i64 %658, 36
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = sext i32 %693 to i64
  %695 = mul nsw i64 %694, 24
  store i64 %695, i64* %RDX.i1585, align 8
  %696 = lshr i64 %695, 63
  %697 = load i64, i64* %RAX.i70, align 8
  %698 = add i64 %695, %697
  store i64 %698, i64* %RAX.i70, align 8
  %699 = icmp ult i64 %698, %697
  %700 = icmp ult i64 %698, %695
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %14, align 1
  %703 = trunc i64 %698 to i32
  %704 = and i32 %703, 255
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %21, align 1
  %709 = xor i64 %695, %697
  %710 = xor i64 %709, %698
  %711 = lshr i64 %710, 4
  %712 = trunc i64 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %26, align 1
  %714 = icmp eq i64 %698, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %29, align 1
  %716 = lshr i64 %698, 63
  %717 = trunc i64 %716 to i8
  store i8 %717, i8* %32, align 1
  %718 = lshr i64 %697, 63
  %719 = xor i64 %716, %718
  %720 = xor i64 %716, %696
  %721 = add nuw nsw i64 %719, %720
  %722 = icmp eq i64 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %38, align 1
  %724 = inttoptr i64 %698 to i64*
  %725 = add i64 %658, 46
  store i64 %725, i64* %3, align 8
  %726 = load i64, i64* %724, align 8
  store i64 %726, i64* %RDX.i1585, align 8
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -12544
  %729 = add i64 %658, 53
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RSI.i1595, align 8
  %732 = add i64 %658, 56
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  store i64 %726, i64* %733, align 8
  %734 = load i64, i64* %RAX.i70, align 8
  %735 = add i64 %734, 8
  %736 = load i64, i64* %3, align 8
  %737 = add i64 %736, 4
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %735 to i64*
  %739 = load i64, i64* %738, align 8
  store i64 %739, i64* %RDX.i1585, align 8
  %740 = load i64, i64* %RSI.i1595, align 8
  %741 = add i64 %740, 8
  %742 = add i64 %736, 8
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  store i64 %739, i64* %743, align 8
  %744 = load i64, i64* %RAX.i70, align 8
  %745 = add i64 %744, 16
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, 4
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %745 to i64*
  %749 = load i64, i64* %748, align 8
  store i64 %749, i64* %RAX.i70, align 8
  %750 = load i64, i64* %RSI.i1595, align 8
  %751 = add i64 %750, 16
  %752 = add i64 %746, 8
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  store i64 %749, i64* %753, align 8
  %754 = load i64, i64* %3, align 8
  %755 = add i64 %754, 4261
  store i64 %755, i64* %3, align 8
  br label %block_.L_41be00

block_.L_41ad60:                                  ; preds = %block_41ad05
  %756 = add i64 %658, 5
  store i64 %756, i64* %3, align 8
  br label %block_.L_41ad65

block_.L_41ad65:                                  ; preds = %block_41acf7, %block_.L_41ad60, %block_.L_41ace9
  %757 = phi i64 [ %756, %block_.L_41ad60 ], [ %635, %block_41acf7 ], [ %624, %block_.L_41ace9 ]
  %758 = add i64 %757, -55125
  %759 = add i64 %757, 5
  %760 = load i64, i64* %6, align 8
  %761 = add i64 %760, -8
  %762 = inttoptr i64 %761 to i64*
  store i64 %759, i64* %762, align 8
  store i64 %761, i64* %6, align 8
  store i64 %758, i64* %3, align 8
  %call2_41ad65 = tail call %struct.Memory* @sub_40d610.check_phase(%struct.State* nonnull %0, i64 %758, %struct.Memory* %MEMORY.0)
  %763 = load i64, i64* %3, align 8
  %764 = add i64 %763, ptrtoint (%G_0x46bd08__rip__type* @G_0x46bd08__rip_ to i64)
  %765 = add i64 %763, 6
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RAX.i70, align 8
  store i8 0, i8* %14, align 1
  %769 = and i32 %767, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %21, align 1
  %774 = icmp eq i32 %767, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %29, align 1
  %776 = lshr i32 %767, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %778 = load i64, i64* %RBP.i, align 8
  %779 = add i64 %778, -12548
  %780 = add i64 %763, 14
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  store i32 %767, i32* %781, align 4
  %782 = load i64, i64* %3, align 8
  %783 = load i8, i8* %29, align 1
  %784 = icmp ne i8 %783, 0
  %.v555 = select i1 %784, i64 63, i64 6
  %785 = add i64 %782, %.v555
  store i64 %785, i64* %3, align 8
  %cmpBr_41ad78 = icmp eq i8 %783, 1
  br i1 %cmpBr_41ad78, label %block_.L_41adb7, label %block_41ad7e

block_41ad7e:                                     ; preds = %block_.L_41ad65
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -12548
  %788 = add i64 %785, 11
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = add i32 %790, -1
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RAX.i70, align 8
  %793 = icmp eq i32 %790, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %14, align 1
  %795 = and i32 %791, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %21, align 1
  %800 = xor i32 %791, %790
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %26, align 1
  %804 = icmp eq i32 %791, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %29, align 1
  %806 = lshr i32 %791, 31
  %807 = trunc i32 %806 to i8
  store i8 %807, i8* %32, align 1
  %808 = lshr i32 %790, 31
  %809 = xor i32 %806, %808
  %810 = add nuw nsw i32 %809, %808
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %38, align 1
  %813 = add i64 %786, -12552
  %814 = add i64 %785, 20
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  store i32 %791, i32* %815, align 4
  %816 = load i64, i64* %3, align 8
  %817 = load i8, i8* %29, align 1
  %818 = icmp ne i8 %817, 0
  %.v556 = select i1 %818, i64 65, i64 6
  %819 = add i64 %816, %.v556
  store i64 %819, i64* %3, align 8
  %cmpBr_41ad92 = icmp eq i8 %817, 1
  br i1 %cmpBr_41ad92, label %block_.L_41add3, label %block_41ad98

block_41ad98:                                     ; preds = %block_41ad7e
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -12548
  %822 = add i64 %819, 11
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = add i32 %824, -2
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX.i70, align 8
  %827 = icmp ult i32 %824, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %14, align 1
  %829 = and i32 %825, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %21, align 1
  %834 = xor i32 %825, %824
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %26, align 1
  %838 = icmp eq i32 %825, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %29, align 1
  %840 = lshr i32 %825, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %32, align 1
  %842 = lshr i32 %824, 31
  %843 = xor i32 %840, %842
  %844 = add nuw nsw i32 %843, %842
  %845 = icmp eq i32 %844, 2
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %38, align 1
  %847 = add i64 %820, -12556
  %848 = add i64 %819, 20
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  store i32 %825, i32* %849, align 4
  %850 = load i64, i64* %3, align 8
  %851 = load i8, i8* %29, align 1
  %852 = icmp ne i8 %851, 0
  %.v557 = select i1 %852, i64 67, i64 6
  %853 = add i64 %850, %.v557
  store i64 %853, i64* %3, align 8
  %cmpBr_41adac = icmp eq i8 %851, 1
  br i1 %cmpBr_41adac, label %block_.L_41adef, label %block_41adb2

block_41adb2:                                     ; preds = %block_41ad98
  %854 = add i64 %853, 84
  store i64 %854, i64* %3, align 8
  br label %block_.L_41ae06

block_.L_41adb7:                                  ; preds = %block_.L_41ad65
  store i64 ptrtoint (%G__0x429086_type* @G__0x429086 to i64), i64* %RDI.i71, align 8
  store i8 0, i8* %AL.i1401, align 1
  %855 = add i64 %785, -106759
  %856 = add i64 %785, 17
  %857 = load i64, i64* %6, align 8
  %858 = add i64 %857, -8
  %859 = inttoptr i64 %858 to i64*
  store i64 %856, i64* %859, align 8
  store i64 %858, i64* %6, align 8
  store i64 %855, i64* %3, align 8
  %860 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41ad65)
  %861 = load i64, i64* %RBP.i, align 8
  %862 = add i64 %861, -12560
  %863 = load i32, i32* %EAX.i1655, align 4
  %864 = load i64, i64* %3, align 8
  %865 = add i64 %864, 6
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %862 to i32*
  store i32 %863, i32* %866, align 4
  %867 = load i64, i64* %3, align 8
  %868 = add i64 %867, 56
  store i64 %868, i64* %3, align 8
  br label %block_.L_41ae06

block_.L_41add3:                                  ; preds = %block_41ad7e
  store i64 ptrtoint (%G__0x429096_type* @G__0x429096 to i64), i64* %RDI.i71, align 8
  store i8 0, i8* %AL.i1401, align 1
  %869 = add i64 %819, -106787
  %870 = add i64 %819, 17
  %871 = load i64, i64* %6, align 8
  %872 = add i64 %871, -8
  %873 = inttoptr i64 %872 to i64*
  store i64 %870, i64* %873, align 8
  store i64 %872, i64* %6, align 8
  store i64 %869, i64* %3, align 8
  %874 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41ad65)
  %875 = load i64, i64* %RBP.i, align 8
  %876 = add i64 %875, -12564
  %877 = load i32, i32* %EAX.i1655, align 4
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, 6
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %876 to i32*
  store i32 %877, i32* %880, align 4
  %881 = load i64, i64* %3, align 8
  %882 = add i64 %881, 28
  store i64 %882, i64* %3, align 8
  br label %block_.L_41ae06

block_.L_41adef:                                  ; preds = %block_41ad98
  store i64 ptrtoint (%G__0x4290a9_type* @G__0x4290a9 to i64), i64* %RDI.i71, align 8
  store i8 0, i8* %AL.i1401, align 1
  %883 = add i64 %853, -106815
  %884 = add i64 %853, 17
  %885 = load i64, i64* %6, align 8
  %886 = add i64 %885, -8
  %887 = inttoptr i64 %886 to i64*
  store i64 %884, i64* %887, align 8
  store i64 %886, i64* %6, align 8
  store i64 %883, i64* %3, align 8
  %888 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41ad65)
  %889 = load i64, i64* %RBP.i, align 8
  %890 = add i64 %889, -12568
  %891 = load i32, i32* %EAX.i1655, align 4
  %892 = load i64, i64* %3, align 8
  %893 = add i64 %892, 6
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %890 to i32*
  store i32 %891, i32* %894, align 4
  %.pre290 = load i64, i64* %3, align 8
  br label %block_.L_41ae06

block_.L_41ae06:                                  ; preds = %block_.L_41adef, %block_.L_41add3, %block_.L_41adb7, %block_41adb2
  %895 = phi i64 [ %868, %block_.L_41adb7 ], [ %882, %block_.L_41add3 ], [ %.pre290, %block_.L_41adef ], [ %854, %block_41adb2 ]
  %MEMORY.10 = phi %struct.Memory* [ %860, %block_.L_41adb7 ], [ %874, %block_.L_41add3 ], [ %888, %block_.L_41adef ], [ %call2_41ad65, %block_41adb2 ]
  %896 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %897 = and i32 %896, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %902 = icmp eq i32 %896, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %29, align 1
  %904 = lshr i32 %896, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v336 = select i1 %902, i64 14, i64 127
  %906 = add i64 %895, %.v336
  store i64 %906, i64* %3, align 8
  br i1 %902, label %block_41ae14, label %block_.L_41ae85

block_41ae14:                                     ; preds = %block_.L_41ae06
  %907 = load i32, i32* bitcast (%G_0x886b80_type* @G_0x886b80 to i32*), align 8
  store i8 0, i8* %14, align 1
  %908 = and i32 %907, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %913 = icmp eq i32 %907, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %29, align 1
  %915 = lshr i32 %907, 31
  %916 = trunc i32 %915 to i8
  store i8 %916, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v433 = select i1 %913, i64 14, i64 94
  %917 = add i64 %906, %.v433
  store i64 %917, i64* %3, align 8
  br i1 %913, label %block_41ae22, label %block_.L_41ae72

block_41ae22:                                     ; preds = %block_41ae14
  %918 = load i32, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  store i8 0, i8* %14, align 1
  %919 = and i32 %918, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %924 = icmp eq i32 %918, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %29, align 1
  %926 = lshr i32 %918, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v434 = select i1 %924, i64 63, i64 14
  %928 = add i64 %917, %.v434
  store i64 %928, i64* %3, align 8
  br i1 %924, label %block_.L_41ae61, label %block_41ae30

block_41ae30:                                     ; preds = %block_41ae22
  %929 = add i64 %928, 26256
  %930 = add i64 %928, 5
  %931 = load i64, i64* %6, align 8
  %932 = add i64 %931, -8
  %933 = inttoptr i64 %932 to i64*
  store i64 %930, i64* %933, align 8
  store i64 %932, i64* %6, align 8
  store i64 %929, i64* %3, align 8
  %call2_41ae30 = tail call %struct.Memory* @sub_4214c0.allocate_time(%struct.State* nonnull %0, i64 %929, %struct.Memory* %MEMORY.10)
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -108
  %936 = load i32, i32* %EAX.i1655, align 4
  %937 = load i64, i64* %3, align 8
  %938 = add i64 %937, 3
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %935 to i32*
  store i32 %936, i32* %939, align 4
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -108
  %942 = load i64, i64* %3, align 8
  %943 = add i64 %942, 4
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = add i32 %945, -40
  %947 = icmp ult i32 %945, 40
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %14, align 1
  %949 = and i32 %946, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949)
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %21, align 1
  %954 = xor i32 %946, %945
  %955 = lshr i32 %954, 4
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %26, align 1
  %958 = icmp eq i32 %946, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %29, align 1
  %960 = lshr i32 %946, 31
  %961 = trunc i32 %960 to i8
  store i8 %961, i8* %32, align 1
  %962 = lshr i32 %945, 31
  %963 = xor i32 %960, %962
  %964 = add nuw nsw i32 %963, %962
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %38, align 1
  %967 = icmp ne i8 %961, 0
  %968 = xor i1 %967, %965
  %969 = or i1 %958, %968
  %.v435 = select i1 %969, i64 26, i64 10
  %970 = add i64 %942, %.v435
  store i64 %970, i64* %3, align 8
  br i1 %969, label %block_.L_41ae52, label %block_41ae42

block_41ae42:                                     ; preds = %block_41ae30
  store i32 40, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %971 = add i64 %970, 26
  store i64 %971, i64* %3, align 8
  br label %block_.L_41ae5c

block_.L_41ae52:                                  ; preds = %block_41ae30
  %972 = add i64 %970, 3
  store i64 %972, i64* %3, align 8
  %973 = load i32, i32* %944, align 4
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX.i70, align 8
  %975 = add i64 %970, 10
  store i64 %975, i64* %3, align 8
  store i32 %973, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  br label %block_.L_41ae5c

block_.L_41ae5c:                                  ; preds = %block_.L_41ae52, %block_41ae42
  %976 = phi i32 [ %973, %block_.L_41ae52 ], [ 40, %block_41ae42 ]
  %977 = phi i64 [ %975, %block_.L_41ae52 ], [ %971, %block_41ae42 ]
  %978 = add i64 %977, 17
  store i64 %978, i64* %3, align 8
  br label %block_.L_41ae6d

block_.L_41ae61:                                  ; preds = %block_41ae22
  %979 = add i64 %928, 26207
  %980 = add i64 %928, 5
  %981 = load i64, i64* %6, align 8
  %982 = add i64 %981, -8
  %983 = inttoptr i64 %982 to i64*
  store i64 %980, i64* %983, align 8
  store i64 %982, i64* %6, align 8
  store i64 %979, i64* %3, align 8
  %call2_41ae61 = tail call %struct.Memory* @sub_4214c0.allocate_time(%struct.State* nonnull %0, i64 %979, %struct.Memory* %MEMORY.10)
  %984 = load i32, i32* %EAX.i1655, align 4
  %985 = load i64, i64* %3, align 8
  %986 = add i64 %985, 7
  store i64 %986, i64* %3, align 8
  store i32 %984, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  br label %block_.L_41ae6d

block_.L_41ae6d:                                  ; preds = %block_.L_41ae61, %block_.L_41ae5c
  %987 = phi i32 [ %984, %block_.L_41ae61 ], [ %976, %block_.L_41ae5c ]
  %988 = phi i64 [ %986, %block_.L_41ae61 ], [ %978, %block_.L_41ae5c ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_41ae61, %block_.L_41ae61 ], [ %call2_41ae30, %block_.L_41ae5c ]
  %989 = add i64 %988, 19
  store i64 %989, i64* %3, align 8
  br label %block_.L_41ae80

block_.L_41ae72:                                  ; preds = %block_41ae14
  %990 = zext i32 %907 to i64
  store i64 %990, i64* %RAX.i70, align 8
  %991 = add i64 %917, 14
  store i64 %991, i64* %3, align 8
  store i32 %907, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  br label %block_.L_41ae80

block_.L_41ae80:                                  ; preds = %block_.L_41ae72, %block_.L_41ae6d
  %992 = phi i32 [ %907, %block_.L_41ae72 ], [ %987, %block_.L_41ae6d ]
  %993 = phi i64 [ %991, %block_.L_41ae72 ], [ %989, %block_.L_41ae6d ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.10, %block_.L_41ae72 ], [ %MEMORY.12, %block_.L_41ae6d ]
  %994 = add i64 %993, 16
  store i64 %994, i64* %3, align 8
  br label %block_.L_41ae90

block_.L_41ae85:                                  ; preds = %block_.L_41ae06
  %995 = add i64 %906, 11
  store i64 %995, i64* %3, align 8
  store i32 999999, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  br label %block_.L_41ae90

block_.L_41ae90:                                  ; preds = %block_.L_41ae85, %block_.L_41ae80
  %996 = phi i32 [ 999999, %block_.L_41ae85 ], [ %992, %block_.L_41ae80 ]
  %997 = phi i64 [ %995, %block_.L_41ae85 ], [ %994, %block_.L_41ae80 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.10, %block_.L_41ae85 ], [ %MEMORY.13, %block_.L_41ae80 ]
  %998 = load i64, i64* %RBP.i, align 8
  %999 = add i64 %998, -12416
  %1000 = add i64 %997, 7
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  store i8 0, i8* %14, align 1
  %1003 = and i32 %1002, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1008 = icmp eq i32 %1002, 0
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %29, align 1
  %1010 = lshr i32 %1002, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v337 = select i1 %1008, i64 77, i64 13
  %1012 = add i64 %997, %.v337
  store i64 %1012, i64* %3, align 8
  br i1 %1008, label %block_.L_41aedd, label %block_41ae9d

block_41ae9d:                                     ; preds = %block_.L_41ae90
  %1013 = add i64 %1012, ptrtoint (%G_0xd50b__rip__type* @G_0xd50b__rip_ to i64)
  %1014 = add i64 %1012, 8
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i64*
  %1016 = load i64, i64* %1015, align 8
  store i64 %1016, i64* %73, align 1
  store double 0.000000e+00, double* %75, align 1
  %1017 = add i64 %1012, add (i64 ptrtoint (%G_0xd4f7__rip__type* @G_0xd4f7__rip_ to i64), i64 8)
  %1018 = add i64 %1012, 16
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  store i32 %1020, i32* %99, align 1
  store float 0.000000e+00, float* %101, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %1021 = load <2 x i32>, <2 x i32>* %88, align 1
  %1022 = load <2 x i32>, <2 x i32>* %90, align 1
  %1023 = sitofp i32 %996 to float
  store float %1023, float* %91, align 1
  %1024 = extractelement <2 x i32> %1021, i32 1
  store i32 %1024, i32* %93, align 1
  %1025 = extractelement <2 x i32> %1022, i32 0
  store i32 %1025, i32* %94, align 1
  %1026 = extractelement <2 x i32> %1022, i32 1
  store i32 %1026, i32* %96, align 1
  %1027 = load <2 x float>, <2 x float>* %97, align 1
  %1028 = load <2 x i32>, <2 x i32>* %90, align 1
  %1029 = load <2 x float>, <2 x float>* %105, align 1
  %1030 = extractelement <2 x float> %1027, i32 0
  %1031 = extractelement <2 x float> %1029, i32 0
  %1032 = fmul float %1030, %1031
  store float %1032, float* %91, align 1
  %1033 = bitcast <2 x float> %1027 to <2 x i32>
  %1034 = extractelement <2 x i32> %1033, i32 1
  store i32 %1034, i32* %93, align 1
  %1035 = extractelement <2 x i32> %1028, i32 0
  store i32 %1035, i32* %94, align 1
  %1036 = extractelement <2 x i32> %1028, i32 1
  store i32 %1036, i32* %96, align 1
  %1037 = load <2 x float>, <2 x float>* %97, align 1
  %1038 = extractelement <2 x float> %1037, i32 0
  %1039 = fpext float %1038 to double
  store double %1039, double* %84, align 1
  %1040 = add i64 %1012, 41
  store i64 %1040, i64* %3, align 8
  %1041 = bitcast <2 x float> %1037 to <2 x i32>
  %1042 = load <2 x i32>, <2 x i32>* %90, align 1
  %1043 = load i32, i32* %1001, align 4
  %1044 = sitofp i32 %1043 to float
  store float %1044, float* %91, align 1
  %1045 = extractelement <2 x i32> %1041, i32 1
  store i32 %1045, i32* %93, align 1
  %1046 = extractelement <2 x i32> %1042, i32 0
  store i32 %1046, i32* %94, align 1
  %1047 = extractelement <2 x i32> %1042, i32 1
  store i32 %1047, i32* %96, align 1
  %1048 = load <2 x float>, <2 x float>* %97, align 1
  %1049 = extractelement <2 x float> %1048, i32 0
  %1050 = fpext float %1049 to double
  %1051 = bitcast i64 %1016 to double
  %1052 = fadd double %1050, %1051
  store double %1052, double* %81, align 1
  %1053 = fdiv double %1039, %1052
  store double %1053, double* %84, align 1
  %1054 = tail call double @llvm.trunc.f64(double %1053)
  %1055 = tail call double @llvm.fabs.f64(double %1054)
  %1056 = fcmp ogt double %1055, 0x41DFFFFFFFC00000
  %1057 = fptosi double %1054 to i32
  %1058 = zext i32 %1057 to i64
  %1059 = select i1 %1056, i64 2147483648, i64 %1058
  store i64 %1059, i64* %RAX.i70, align 8
  %1060 = trunc i64 %1059 to i32
  %1061 = add i64 %1012, 64
  store i64 %1061, i64* %3, align 8
  store i32 %1060, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  br label %block_.L_41aedd

block_.L_41aedd:                                  ; preds = %block_41ae9d, %block_.L_41ae90
  %1062 = phi i32 [ %1060, %block_41ae9d ], [ %996, %block_.L_41ae90 ]
  %1063 = phi i64 [ %1061, %block_41ae9d ], [ %1012, %block_.L_41ae90 ]
  store i64 ptrtoint (%G__0x4290b9_type* @G__0x4290b9 to i64), i64* %RDI.i71, align 8
  %1064 = zext i32 %1062 to i64
  store i64 %1064, i64* %RSI.i1309, align 8
  store i8 0, i8* %AL.i1401, align 1
  %1065 = add i64 %1063, -107053
  %1066 = add i64 %1063, 24
  %1067 = load i64, i64* %6, align 8
  %1068 = add i64 %1067, -8
  %1069 = inttoptr i64 %1068 to i64*
  store i64 %1066, i64* %1069, align 8
  store i64 %1068, i64* %6, align 8
  store i64 %1065, i64* %3, align 8
  %1070 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.14)
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -12416
  %1073 = load i64, i64* %3, align 8
  %1074 = add i64 %1073, 7
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1072 to i32*
  %1076 = load i32, i32* %1075, align 4
  store i8 0, i8* %14, align 1
  %1077 = and i32 %1076, 255
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1082 = icmp eq i32 %1076, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %29, align 1
  %1084 = lshr i32 %1076, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1086 = add i64 %1071, -12572
  %1087 = load i32, i32* %EAX.i1655, align 4
  %1088 = add i64 %1073, 13
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1086 to i32*
  store i32 %1087, i32* %1089, align 4
  %1090 = load i64, i64* %3, align 8
  %1091 = add i64 %1090, 43
  %1092 = add i64 %1090, 6
  %1093 = load i8, i8* %29, align 1
  %1094 = icmp eq i8 %1093, 0
  %1095 = select i1 %1094, i64 %1091, i64 %1092
  store i64 %1095, i64* %3, align 8
  br i1 %1094, label %block_.L_41af2d, label %block_41af08

block_41af08:                                     ; preds = %block_.L_41aedd
  %1096 = add i64 %1095, 21944
  %1097 = add i64 %1095, 5
  %1098 = load i64, i64* %6, align 8
  %1099 = add i64 %1098, -8
  %1100 = inttoptr i64 %1099 to i64*
  store i64 %1097, i64* %1100, align 8
  store i64 %1099, i64* %6, align 8
  store i64 %1096, i64* %3, align 8
  %call2_41af08 = tail call %struct.Memory* @sub_4204c0.clear_tt(%struct.State* nonnull %0, i64 %1096, %struct.Memory* %1070)
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, -99069
  %1103 = add i64 %1101, 5
  %1104 = load i64, i64* %6, align 8
  %1105 = add i64 %1104, -8
  %1106 = inttoptr i64 %1105 to i64*
  store i64 %1103, i64* %1106, align 8
  store i64 %1105, i64* %6, align 8
  store i64 %1102, i64* %3, align 8
  %call2_41af0d = tail call %struct.Memory* @sub_402c10.reset_ecache(%struct.State* nonnull %0, i64 %1102, %struct.Memory* %call2_41af08)
  %1107 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x886bf0_type* @G__0x886bf0 to i64), i64* %RAX.i70, align 8
  store i64 0, i64* %RSI.i1309, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1200, i64* %RCX.i1109, align 8
  store i64 1200, i64* %RDX.i1585, align 8
  store i64 ptrtoint (%G__0x886bf0_type* @G__0x886bf0 to i64), i64* %RDI.i71, align 8
  %1108 = add i64 %1107, -107074
  %1109 = add i64 %1107, 27
  %1110 = load i64, i64* %6, align 8
  %1111 = add i64 %1110, -8
  %1112 = inttoptr i64 %1111 to i64*
  store i64 %1109, i64* %1112, align 8
  store i64 %1111, i64* %6, align 8
  store i64 %1108, i64* %3, align 8
  %1113 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %call2_41af0d)
  %.pre291 = load i64, i64* %3, align 8
  br label %block_.L_41af2d

block_.L_41af2d:                                  ; preds = %block_41af08, %block_.L_41aedd
  %1114 = phi i64 [ %1091, %block_.L_41aedd ], [ %.pre291, %block_41af08 ]
  %MEMORY.16 = phi %struct.Memory* [ %1070, %block_.L_41aedd ], [ %1113, %block_41af08 ]
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, -12416
  %1117 = add i64 %1114, 7
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  store i8 0, i8* %14, align 1
  %1120 = and i32 %1119, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1125 = icmp eq i32 %1119, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %29, align 1
  %1127 = lshr i32 %1119, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v338 = select i1 %1125, i64 13, i64 141
  %1129 = add i64 %1114, %.v338
  store i64 %1129, i64* %3, align 8
  br i1 %1125, label %block_41af3a, label %block_.L_41afba

block_41af3a:                                     ; preds = %block_.L_41af2d
  %1130 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %1131 = and i32 %1130, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1136 = icmp eq i32 %1130, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %29, align 1
  %1138 = lshr i32 %1130, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v428 = select i1 %1136, i64 14, i64 128
  %1140 = add i64 %1129, %.v428
  store i64 %1140, i64* %3, align 8
  br i1 %1136, label %block_41af48, label %block_.L_41afba

block_41af48:                                     ; preds = %block_41af3a
  %1141 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %1142 = add i32 %1141, -3
  %1143 = icmp ult i32 %1141, 3
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %14, align 1
  %1145 = and i32 %1142, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %21, align 1
  %1150 = xor i32 %1142, %1141
  %1151 = lshr i32 %1150, 4
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %26, align 1
  %1154 = icmp eq i32 %1142, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %29, align 1
  %1156 = lshr i32 %1142, 31
  %1157 = trunc i32 %1156 to i8
  store i8 %1157, i8* %32, align 1
  %1158 = lshr i32 %1141, 31
  %1159 = xor i32 %1156, %1158
  %1160 = add nuw nsw i32 %1159, %1158
  %1161 = icmp eq i32 %1160, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %38, align 1
  %.v429 = select i1 %1154, i64 28, i64 14
  %1163 = add i64 %1140, %.v429
  store i64 %1163, i64* %3, align 8
  br i1 %1154, label %block_.L_41af64, label %block_41af56

block_41af56:                                     ; preds = %block_41af48
  %1164 = add i32 %1141, -4
  %1165 = icmp ult i32 %1141, 4
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %14, align 1
  %1167 = and i32 %1164, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %21, align 1
  %1172 = xor i32 %1164, %1141
  %1173 = lshr i32 %1172, 4
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %26, align 1
  %1176 = icmp eq i32 %1164, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %29, align 1
  %1178 = lshr i32 %1164, 31
  %1179 = trunc i32 %1178 to i8
  store i8 %1179, i8* %32, align 1
  %1180 = xor i32 %1178, %1158
  %1181 = add nuw nsw i32 %1180, %1158
  %1182 = icmp eq i32 %1181, 2
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %38, align 1
  %.v430 = select i1 %1176, i64 14, i64 100
  %1184 = add i64 %1163, %.v430
  store i64 %1184, i64* %3, align 8
  br i1 %1176, label %block_.L_41af64, label %block_.L_41afba

block_.L_41af64:                                  ; preds = %block_41af56, %block_41af48
  %1185 = phi i64 [ %1184, %block_41af56 ], [ %1163, %block_41af48 ]
  %1186 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %1187 = add i32 %1186, -3
  %1188 = icmp ult i32 %1186, 3
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %14, align 1
  %1190 = and i32 %1187, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %21, align 1
  %1195 = xor i32 %1187, %1186
  %1196 = lshr i32 %1195, 4
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  store i8 %1198, i8* %26, align 1
  %1199 = icmp eq i32 %1187, 0
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %29, align 1
  %1201 = lshr i32 %1187, 31
  %1202 = trunc i32 %1201 to i8
  store i8 %1202, i8* %32, align 1
  %1203 = lshr i32 %1186, 31
  %1204 = xor i32 %1201, %1203
  %1205 = add nuw nsw i32 %1204, %1203
  %1206 = icmp eq i32 %1205, 2
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %38, align 1
  %1208 = icmp ne i8 %1202, 0
  %1209 = xor i1 %1208, %1206
  %.demorgan = or i1 %1199, %1209
  %.v431 = select i1 %.demorgan, i64 14, i64 28
  %1210 = add i64 %1185, %.v431
  store i64 %1210, i64* %3, align 8
  br i1 %.demorgan, label %block_41af72, label %block_.L_41af80

block_41af72:                                     ; preds = %block_.L_41af64
  store i8 %1144, i8* %14, align 1
  store i8 %1149, i8* %21, align 1
  store i8 %1153, i8* %26, align 1
  store i8 %1155, i8* %29, align 1
  store i8 %1157, i8* %32, align 1
  store i8 %1162, i8* %38, align 1
  %.v432 = select i1 %1154, i64 72, i64 14
  %1211 = add i64 %1210, %.v432
  store i64 %1211, i64* %3, align 8
  br i1 %1154, label %block_.L_41afba, label %block_.L_41af80

block_.L_41af80:                                  ; preds = %block_.L_41af64, %block_41af72
  %1212 = phi i64 [ %1211, %block_41af72 ], [ %1210, %block_.L_41af64 ]
  %1213 = add i64 %1212, ptrtoint (%G_0xd430__rip__type* @G_0xd430__rip_ to i64)
  %1214 = add i64 %1212, 8
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %73, align 1
  store double 0.000000e+00, double* %75, align 1
  %1217 = add i64 %1212, add (i64 ptrtoint (%G_0xd420__rip__type* @G_0xd420__rip_ to i64), i64 8)
  %1218 = add i64 %1212, 16
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i64*
  %1220 = load i64, i64* %1219, align 8
  store i64 %1220, i64* %77, align 1
  store double 0.000000e+00, double* %79, align 1
  %1221 = load <2 x i32>, <2 x i32>* %88, align 1
  %1222 = load <2 x i32>, <2 x i32>* %90, align 1
  %1223 = load i32, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %1224 = sitofp i32 %1223 to float
  store float %1224, float* %91, align 1
  %1225 = extractelement <2 x i32> %1221, i32 1
  store i32 %1225, i32* %93, align 1
  %1226 = extractelement <2 x i32> %1222, i32 0
  store i32 %1226, i32* %94, align 1
  %1227 = extractelement <2 x i32> %1222, i32 1
  store i32 %1227, i32* %96, align 1
  %1228 = load <2 x float>, <2 x float>* %97, align 1
  %1229 = extractelement <2 x float> %1228, i32 0
  %1230 = fpext float %1229 to double
  %1231 = bitcast i64 %1220 to double
  %1232 = fmul double %1230, %1231
  %1233 = bitcast i64 %1216 to double
  %1234 = fdiv double %1232, %1233
  store double %1234, double* %81, align 1
  %1235 = tail call double @llvm.trunc.f64(double %1234)
  %1236 = tail call double @llvm.fabs.f64(double %1235)
  %1237 = fcmp ogt double %1236, 0x41DFFFFFFFC00000
  %1238 = fptosi double %1235 to i32
  %1239 = zext i32 %1238 to i64
  %1240 = select i1 %1237, i64 2147483648, i64 %1239
  store i64 %1240, i64* %RAX.i70, align 8
  %1241 = trunc i64 %1240 to i32
  store i32 %1241, i32* bitcast (%G_0x85f168_type* @G_0x85f168 to i32*), align 8
  %1242 = add i64 %1212, -27760
  %1243 = add i64 %1212, 53
  %1244 = load i64, i64* %6, align 8
  %1245 = add i64 %1244, -8
  %1246 = inttoptr i64 %1245 to i64*
  store i64 %1243, i64* %1246, align 8
  store i64 %1245, i64* %6, align 8
  store i64 %1242, i64* %3, align 8
  %call2_41afb0 = tail call %struct.Memory* @sub_414310.proofnumberscan(%struct.State* nonnull %0, i64 %1242, %struct.Memory* %MEMORY.16)
  %1247 = load i64, i64* %3, align 8
  %1248 = add i64 %1247, 71
  br label %block_.L_41affc

block_.L_41afba:                                  ; preds = %block_41af56, %block_41af3a, %block_.L_41af2d, %block_41af72
  %1249 = phi i64 [ %1211, %block_41af72 ], [ %1184, %block_41af56 ], [ %1140, %block_41af3a ], [ %1129, %block_.L_41af2d ]
  %1250 = add i64 %1249, 7
  store i64 %1250, i64* %3, align 8
  %1251 = load i32, i32* %1118, align 4
  store i8 0, i8* %14, align 1
  %1252 = and i32 %1251, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1257 = icmp eq i32 %1251, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %29, align 1
  %1259 = lshr i32 %1251, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v339 = select i1 %1257, i64 13, i64 61
  %1261 = add i64 %1249, %.v339
  store i64 %1261, i64* %3, align 8
  br i1 %1257, label %block_41afc7, label %block_.L_41aff7

block_41afc7:                                     ; preds = %block_.L_41afba
  %1262 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %1262, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1263 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %1263, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1264 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1264, i64* %RAX.i70, align 8
  %1265 = add i64 %1261, 48
  store i64 %1265, i64* %3, align 8
  store i64 %1264, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  br label %block_.L_41aff7

block_.L_41aff7:                                  ; preds = %block_.L_41afba, %block_41afc7
  %1266 = phi i64 [ %1265, %block_41afc7 ], [ %1261, %block_.L_41afba ]
  %1267 = add i64 %1266, 5
  store i64 %1267, i64* %3, align 8
  br label %block_.L_41affc

block_.L_41affc:                                  ; preds = %block_.L_41aff7, %block_.L_41af80
  %storemerge = phi i64 [ %1248, %block_.L_41af80 ], [ %1267, %block_.L_41aff7 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_41afb0, %block_.L_41af80 ], [ %MEMORY.16, %block_.L_41aff7 ]
  %1268 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1269 = and i32 %1268, 255
  %1270 = tail call i32 @llvm.ctpop.i32(i32 %1269)
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = xor i8 %1272, 1
  store i8 %1273, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1274 = icmp eq i32 %1268, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %29, align 1
  %1276 = lshr i32 %1268, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v340 = select i1 %1274, i64 81, i64 14
  %1278 = add i64 %storemerge, %.v340
  store i64 %1278, i64* %3, align 8
  br i1 %1274, label %block_.L_41b04d, label %block_41b00a

block_41b00a:                                     ; preds = %block_.L_41affc
  %1279 = load i32, i32* bitcast (%G_0x62ea24_type* @G_0x62ea24 to i32*), align 8
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i70, align 8
  %1281 = load i32, i32* bitcast (%G_0x62db0c_type* @G_0x62db0c to i32*), align 8
  %1282 = sub i32 %1279, %1281
  %1283 = icmp ult i32 %1279, %1281
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %14, align 1
  %1285 = and i32 %1282, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  %1290 = xor i32 %1281, %1279
  %1291 = xor i32 %1290, %1282
  %1292 = lshr i32 %1291, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %26, align 1
  %1295 = icmp eq i32 %1282, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %29, align 1
  %1297 = lshr i32 %1282, 31
  %1298 = trunc i32 %1297 to i8
  store i8 %1298, i8* %32, align 1
  %1299 = lshr i32 %1279, 31
  %1300 = lshr i32 %1281, 31
  %1301 = xor i32 %1300, %1299
  %1302 = xor i32 %1297, %1299
  %1303 = add nuw nsw i32 %1302, %1301
  %1304 = icmp eq i32 %1303, 2
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %38, align 1
  %.v341 = select i1 %1295, i64 20, i64 67
  %1306 = add i64 %1278, %.v341
  store i64 %1306, i64* %3, align 8
  br i1 %1295, label %block_41b01e, label %block_.L_41b04d

block_41b01e:                                     ; preds = %block_41b00a
  %1307 = load i64, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  store i64 %1307, i64* %RAX.i70, align 8
  %1308 = load i64, i64* %RBP.i, align 8
  %1309 = add i64 %1308, -12544
  %1310 = add i64 %1306, 15
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  store i64 %1312, i64* %RCX.i1163, align 8
  %1313 = add i64 %1306, 18
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i64*
  store i64 %1307, i64* %1314, align 8
  %1315 = load i64, i64* %3, align 8
  %1316 = load i64, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1317 = load i64, i64* %RCX.i1163, align 8
  %1318 = add i64 %1317, 8
  %1319 = add i64 %1315, 12
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i64*
  store i64 %1316, i64* %1320, align 8
  %1321 = load i64, i64* %3, align 8
  %1322 = load i64, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  store i64 %1322, i64* %RAX.i70, align 8
  %1323 = load i64, i64* %RCX.i1163, align 8
  %1324 = add i64 %1323, 16
  %1325 = add i64 %1321, 12
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  store i64 %1322, i64* %1326, align 8
  %1327 = load i64, i64* %3, align 8
  %1328 = add i64 %1327, 3512
  store i64 %1328, i64* %3, align 8
  br label %block_.L_41be00

block_.L_41b04d:                                  ; preds = %block_41b00a, %block_.L_41affc
  %1329 = phi i64 [ %1306, %block_41b00a ], [ %1278, %block_.L_41affc ]
  %1330 = load i32, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1331 = and i32 %1330, 255
  %1332 = tail call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  store i8 %1335, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1336 = icmp eq i32 %1330, 0
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %29, align 1
  %1338 = lshr i32 %1330, 31
  %1339 = trunc i32 %1338 to i8
  store i8 %1339, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v342 = select i1 %1336, i64 14, i64 28
  %1340 = add i64 %1329, %.v342
  store i64 %1340, i64* %3, align 8
  br i1 %1336, label %block_41b05b, label %block_.L_41b069

block_41b05b:                                     ; preds = %block_.L_41b04d
  store i8 0, i8* %14, align 1
  store i8 %1273, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1275, i8* %29, align 1
  store i8 %1277, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v427 = select i1 %1274, i64 89, i64 14
  %1341 = add i64 %1340, %.v427
  store i64 %1341, i64* %3, align 8
  br i1 %1274, label %block_.L_41b0b4, label %block_.L_41b069

block_.L_41b069:                                  ; preds = %block_.L_41b04d, %block_41b05b
  %1342 = phi i64 [ %1341, %block_41b05b ], [ %1340, %block_.L_41b04d ]
  %1343 = load i32, i32* bitcast (%G_0x62ea24_type* @G_0x62ea24 to i32*), align 8
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX.i70, align 8
  %1345 = load i32, i32* bitcast (%G_0x62db0c_type* @G_0x62db0c to i32*), align 8
  %1346 = sub i32 %1343, %1345
  %1347 = icmp ult i32 %1343, %1345
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %14, align 1
  %1349 = and i32 %1346, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %21, align 1
  %1354 = xor i32 %1345, %1343
  %1355 = xor i32 %1354, %1346
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %26, align 1
  %1359 = icmp eq i32 %1346, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %29, align 1
  %1361 = lshr i32 %1346, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %32, align 1
  %1363 = lshr i32 %1343, 31
  %1364 = lshr i32 %1345, 31
  %1365 = xor i32 %1364, %1363
  %1366 = xor i32 %1361, %1363
  %1367 = add nuw nsw i32 %1366, %1365
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %38, align 1
  %.v343 = select i1 %1359, i64 75, i64 20
  %1370 = add i64 %1342, %.v343
  store i64 %1370, i64* %3, align 8
  br i1 %1359, label %block_.L_41b0b4, label %block_41b07d

block_41b07d:                                     ; preds = %block_.L_41b069
  %1371 = load i32, i32* bitcast (%G_0x62e514_type* @G_0x62e514 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1372 = and i32 %1371, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1377 = icmp eq i32 %1371, 0
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %29, align 1
  %1379 = lshr i32 %1371, 31
  %1380 = trunc i32 %1379 to i8
  store i8 %1380, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v344 = select i1 %1377, i64 14, i64 55
  %1381 = add i64 %1370, %.v344
  store i64 %1381, i64* %3, align 8
  br i1 %1377, label %block_41b08b, label %block_.L_41b0b4

block_41b08b:                                     ; preds = %block_41b07d
  %1382 = load i64, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -24
  %1385 = add i64 %1381, 12
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i64*
  store i64 %1382, i64* %1386, align 8
  %1387 = load i64, i64* %3, align 8
  %1388 = load i64, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -16
  %1391 = add i64 %1387, 12
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  store i64 %1388, i64* %1392, align 8
  %1393 = load i64, i64* %3, align 8
  %1394 = load i64, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  store i64 %1394, i64* %RAX.i70, align 8
  %1395 = load i64, i64* %RBP.i, align 8
  %1396 = add i64 %1395, -8
  %1397 = add i64 %1393, 12
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i64*
  store i64 %1394, i64* %1398, align 8
  %1399 = load i64, i64* %3, align 8
  %1400 = add i64 %1399, 1571
  br label %block_.L_41b6d2

block_.L_41b0b4:                                  ; preds = %block_41b07d, %block_.L_41b069, %block_41b05b
  %1401 = phi i64 [ %1381, %block_41b07d ], [ %1370, %block_.L_41b069 ], [ %1341, %block_41b05b ]
  %1402 = load i64, i64* %RBP.i, align 8
  %1403 = add i64 %1402, -76
  %1404 = add i64 %1401, 7
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i32*
  store i32 0, i32* %1405, align 4
  %.pre292 = load i64, i64* %3, align 8
  br label %block_.L_41b0bb

block_.L_41b0bb:                                  ; preds = %block_.L_41b130, %block_.L_41b0b4
  %1406 = phi i64 [ %1606, %block_.L_41b130 ], [ %.pre292, %block_.L_41b0b4 ]
  %1407 = load i64, i64* %RBP.i, align 8
  %1408 = add i64 %1407, -76
  %1409 = add i64 %1406, 7
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = add i32 %1411, -300
  %1413 = icmp ult i32 %1411, 300
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %14, align 1
  %1415 = and i32 %1412, 255
  %1416 = tail call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  store i8 %1419, i8* %21, align 1
  %1420 = xor i32 %1412, %1411
  %1421 = lshr i32 %1420, 4
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  store i8 %1423, i8* %26, align 1
  %1424 = icmp eq i32 %1412, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %29, align 1
  %1426 = lshr i32 %1412, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %32, align 1
  %1428 = lshr i32 %1411, 31
  %1429 = xor i32 %1426, %1428
  %1430 = add nuw nsw i32 %1429, %1428
  %1431 = icmp eq i32 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %38, align 1
  %1433 = icmp ne i8 %1427, 0
  %1434 = xor i1 %1433, %1431
  %.v345 = select i1 %1434, i64 13, i64 136
  %1435 = add i64 %1406, %.v345
  store i64 %1435, i64* %3, align 8
  br i1 %1434, label %block_41b0c8, label %block_.L_41b143

block_41b0c8:                                     ; preds = %block_.L_41b0bb
  %1436 = add i64 %1407, -80
  %1437 = add i64 %1435, 7
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  store i32 0, i32* %1438, align 4
  %.pre319 = load i64, i64* %3, align 8
  br label %block_.L_41b0cf

block_.L_41b0cf:                                  ; preds = %block_41b0dc, %block_41b0c8
  %1439 = phi i64 [ %1576, %block_41b0dc ], [ %.pre319, %block_41b0c8 ]
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -80
  %1442 = add i64 %1439, 7
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = add i32 %1444, -300
  %1446 = icmp ult i32 %1444, 300
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %14, align 1
  %1448 = and i32 %1445, 255
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %21, align 1
  %1453 = xor i32 %1445, %1444
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  store i8 %1456, i8* %26, align 1
  %1457 = icmp eq i32 %1445, 0
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %29, align 1
  %1459 = lshr i32 %1445, 31
  %1460 = trunc i32 %1459 to i8
  store i8 %1460, i8* %32, align 1
  %1461 = lshr i32 %1444, 31
  %1462 = xor i32 %1459, %1461
  %1463 = add nuw nsw i32 %1462, %1461
  %1464 = icmp eq i32 %1463, 2
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %38, align 1
  %1466 = icmp ne i8 %1460, 0
  %1467 = xor i1 %1466, %1464
  %.v327 = select i1 %1467, i64 13, i64 97
  %1468 = add i64 %1439, %.v327
  store i64 %1468, i64* %3, align 8
  br i1 %1467, label %block_41b0dc, label %block_.L_41b130

block_41b0dc:                                     ; preds = %block_.L_41b0cf
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i70, align 8
  %1469 = add i64 %1440, -76
  %1470 = add i64 %1468, 14
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = mul nsw i64 %1473, 7200
  store i64 %1474, i64* %RCX.i1163, align 8
  %1475 = lshr i64 %1474, 63
  %1476 = add i64 %1474, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  store i64 %1476, i64* %RAX.i70, align 8
  %1477 = icmp ult i64 %1476, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1478 = icmp ult i64 %1476, %1474
  %1479 = or i1 %1477, %1478
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %14, align 1
  %1481 = trunc i64 %1476 to i32
  %1482 = and i32 %1481, 248
  %1483 = tail call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  store i8 %1486, i8* %21, align 1
  %1487 = xor i64 %1476, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1488 = lshr i64 %1487, 4
  %1489 = trunc i64 %1488 to i8
  %1490 = and i8 %1489, 1
  store i8 %1490, i8* %26, align 1
  %1491 = icmp eq i64 %1476, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %29, align 1
  %1493 = lshr i64 %1476, 63
  %1494 = trunc i64 %1493 to i8
  store i8 %1494, i8* %32, align 1
  %1495 = xor i64 %1493, lshr (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 63)
  %1496 = xor i64 %1493, %1475
  %1497 = add nuw nsw i64 %1495, %1496
  %1498 = icmp eq i64 %1497, 2
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %38, align 1
  %1500 = add i64 %1468, 28
  store i64 %1500, i64* %3, align 8
  %1501 = load i32, i32* %1443, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = mul nsw i64 %1502, 24
  %1504 = lshr i64 %1503, 63
  %1505 = add i64 %1503, %1476
  store i64 %1505, i64* %RAX.i70, align 8
  %1506 = icmp ult i64 %1505, %1476
  %1507 = icmp ult i64 %1505, %1503
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %14, align 1
  %1510 = trunc i64 %1505 to i32
  %1511 = and i32 %1510, 248
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %21, align 1
  %1516 = xor i64 %1503, %1476
  %1517 = xor i64 %1516, %1505
  %1518 = lshr i64 %1517, 4
  %1519 = trunc i64 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %26, align 1
  %1521 = icmp eq i64 %1505, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %29, align 1
  %1523 = lshr i64 %1505, 63
  %1524 = trunc i64 %1523 to i8
  store i8 %1524, i8* %32, align 1
  %1525 = xor i64 %1523, %1493
  %1526 = xor i64 %1523, %1504
  %1527 = add nuw nsw i64 %1525, %1526
  %1528 = icmp eq i64 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %38, align 1
  %1530 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  %1531 = inttoptr i64 %1505 to i64*
  %1532 = add i64 %1468, 46
  store i64 %1532, i64* %3, align 8
  store i64 %1530, i64* %1531, align 8
  %1533 = load i64, i64* %3, align 8
  %1534 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %1535 = load i64, i64* %RAX.i70, align 8
  %1536 = add i64 %1535, 8
  %1537 = add i64 %1533, 12
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i64*
  store i64 %1534, i64* %1538, align 8
  %1539 = load i64, i64* %3, align 8
  %1540 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1540, i64* %RCX.i1163, align 8
  %1541 = load i64, i64* %RAX.i70, align 8
  %1542 = add i64 %1541, 16
  %1543 = add i64 %1539, 12
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i64*
  store i64 %1540, i64* %1544, align 8
  %1545 = load i64, i64* %RBP.i, align 8
  %1546 = add i64 %1545, -80
  %1547 = load i64, i64* %3, align 8
  %1548 = add i64 %1547, 3
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1546 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = add i32 %1550, 1
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RAX.i70, align 8
  %1553 = icmp eq i32 %1550, -1
  %1554 = icmp eq i32 %1551, 0
  %1555 = or i1 %1553, %1554
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %14, align 1
  %1557 = and i32 %1551, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  %1562 = xor i32 %1551, %1550
  %1563 = lshr i32 %1562, 4
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  store i8 %1565, i8* %26, align 1
  %1566 = zext i1 %1554 to i8
  store i8 %1566, i8* %29, align 1
  %1567 = lshr i32 %1551, 31
  %1568 = trunc i32 %1567 to i8
  store i8 %1568, i8* %32, align 1
  %1569 = lshr i32 %1550, 31
  %1570 = xor i32 %1567, %1569
  %1571 = add nuw nsw i32 %1570, %1567
  %1572 = icmp eq i32 %1571, 2
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %38, align 1
  %1574 = add i64 %1547, 9
  store i64 %1574, i64* %3, align 8
  store i32 %1551, i32* %1549, align 4
  %1575 = load i64, i64* %3, align 8
  %1576 = add i64 %1575, -92
  store i64 %1576, i64* %3, align 8
  br label %block_.L_41b0cf

block_.L_41b130:                                  ; preds = %block_.L_41b0cf
  %1577 = add i64 %1440, -76
  %1578 = add i64 %1468, 8
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = add i32 %1580, 1
  %1582 = zext i32 %1581 to i64
  store i64 %1582, i64* %RAX.i70, align 8
  %1583 = icmp eq i32 %1580, -1
  %1584 = icmp eq i32 %1581, 0
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %14, align 1
  %1587 = and i32 %1581, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i32 %1581, %1580
  %1593 = lshr i32 %1592, 4
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %26, align 1
  %1596 = zext i1 %1584 to i8
  store i8 %1596, i8* %29, align 1
  %1597 = lshr i32 %1581, 31
  %1598 = trunc i32 %1597 to i8
  store i8 %1598, i8* %32, align 1
  %1599 = lshr i32 %1580, 31
  %1600 = xor i32 %1597, %1599
  %1601 = add nuw nsw i32 %1600, %1597
  %1602 = icmp eq i32 %1601, 2
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %38, align 1
  %1604 = add i64 %1468, 14
  store i64 %1604, i64* %3, align 8
  store i32 %1581, i32* %1579, align 4
  %1605 = load i64, i64* %3, align 8
  %1606 = add i64 %1605, -131
  store i64 %1606, i64* %3, align 8
  br label %block_.L_41b0bb

block_.L_41b143:                                  ; preds = %block_.L_41b0bb
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RAX.i70, align 8
  store i64 0, i64* %RSI.i1309, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 82944, i64* %RCX.i1109, align 8
  store i64 82944, i64* %RDX.i1107, align 8
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RDI.i71, align 8
  %1607 = add i64 %1435, -107635
  %1608 = add i64 %1435, 27
  %1609 = load i64, i64* %6, align 8
  %1610 = add i64 %1609, -8
  %1611 = inttoptr i64 %1610 to i64*
  store i64 %1608, i64* %1611, align 8
  store i64 %1610, i64* %6, align 8
  store i64 %1607, i64* %3, align 8
  %1612 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %MEMORY.21)
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -76
  %1615 = load i64, i64* %3, align 8
  %1616 = add i64 %1615, 7
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1614 to i32*
  store i32 0, i32* %1617, align 4
  %.pre293 = load i64, i64* %3, align 8
  br label %block_.L_41b165

block_.L_41b165:                                  ; preds = %block_41b172, %block_.L_41b143
  %1618 = phi i64 [ %1862, %block_41b172 ], [ %.pre293, %block_.L_41b143 ]
  %1619 = load i64, i64* %RBP.i, align 8
  %1620 = add i64 %1619, -76
  %1621 = add i64 %1618, 7
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = add i32 %1623, -300
  %1625 = icmp ult i32 %1623, 300
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %14, align 1
  %1627 = and i32 %1624, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i32 %1624, %1623
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %26, align 1
  %1636 = icmp eq i32 %1624, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %29, align 1
  %1638 = lshr i32 %1624, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %32, align 1
  %1640 = lshr i32 %1623, 31
  %1641 = xor i32 %1638, %1640
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %38, align 1
  %1645 = icmp ne i8 %1639, 0
  %1646 = xor i1 %1645, %1643
  %.v346 = select i1 %1646, i64 13, i64 240
  %1647 = add i64 %1618, %.v346
  %1648 = add i64 %1647, 10
  store i64 %1648, i64* %3, align 8
  br i1 %1646, label %block_41b172, label %block_.L_41b255

block_41b172:                                     ; preds = %block_.L_41b165
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i70, align 8
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RCX.i1109, align 8
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RDX.i1107, align 8
  %1649 = add i64 %1647, 34
  store i64 %1649, i64* %3, align 8
  %1650 = load i32, i32* %1622, align 4
  %1651 = sext i32 %1650 to i64
  store i64 %1651, i64* %RSI.i1309, align 8
  %1652 = shl nsw i64 %1651, 2
  %1653 = add nsw i64 %1652, 6481200
  %1654 = add i64 %1647, 45
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i32*
  store i32 0, i32* %1655, align 4
  %1656 = load i64, i64* %RBP.i, align 8
  %1657 = add i64 %1656, -76
  %1658 = load i64, i64* %3, align 8
  %1659 = add i64 %1658, 4
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1657 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = sext i32 %1661 to i64
  store i64 %1662, i64* %RSI.i1309, align 8
  %1663 = shl nsw i64 %1662, 2
  %1664 = add nsw i64 %1663, 6524000
  %1665 = add i64 %1658, 15
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i32*
  store i32 0, i32* %1666, align 4
  %1667 = load i64, i64* %RBP.i, align 8
  %1668 = add i64 %1667, -76
  %1669 = load i64, i64* %3, align 8
  %1670 = add i64 %1669, 4
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1668 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = sext i32 %1672 to i64
  store i64 %1673, i64* %RSI.i1309, align 8
  %1674 = shl nsw i64 %1673, 2
  %1675 = add nsw i64 %1674, 8920576
  %1676 = add i64 %1669, 15
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  store i32 0, i32* %1677, align 4
  %1678 = load i64, i64* %RBP.i, align 8
  %1679 = add i64 %1678, -76
  %1680 = load i64, i64* %3, align 8
  %1681 = add i64 %1680, 4
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1679 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = sext i32 %1683 to i64
  %1685 = mul nsw i64 %1684, 24
  %1686 = lshr i64 %1685, 63
  %1687 = load i64, i64* %RDX.i1107, align 8
  %1688 = add i64 %1685, %1687
  store i64 %1688, i64* %RDX.i1107, align 8
  %1689 = icmp ult i64 %1688, %1687
  %1690 = icmp ult i64 %1688, %1685
  %1691 = or i1 %1689, %1690
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = trunc i64 %1688 to i32
  %1694 = and i32 %1693, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %21, align 1
  %1699 = xor i64 %1685, %1687
  %1700 = xor i64 %1699, %1688
  %1701 = lshr i64 %1700, 4
  %1702 = trunc i64 %1701 to i8
  %1703 = and i8 %1702, 1
  store i8 %1703, i8* %26, align 1
  %1704 = icmp eq i64 %1688, 0
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %29, align 1
  %1706 = lshr i64 %1688, 63
  %1707 = trunc i64 %1706 to i8
  store i8 %1707, i8* %32, align 1
  %1708 = lshr i64 %1687, 63
  %1709 = xor i64 %1706, %1708
  %1710 = xor i64 %1706, %1686
  %1711 = add nuw nsw i64 %1709, %1710
  %1712 = icmp eq i64 %1711, 2
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %38, align 1
  %1714 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  %1715 = inttoptr i64 %1688 to i64*
  %1716 = add i64 %1680, 22
  store i64 %1716, i64* %3, align 8
  store i64 %1714, i64* %1715, align 8
  %1717 = load i64, i64* %3, align 8
  %1718 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %1719 = load i64, i64* %RDX.i1107, align 8
  %1720 = add i64 %1719, 8
  %1721 = add i64 %1717, 12
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i64*
  store i64 %1718, i64* %1722, align 8
  %1723 = load i64, i64* %3, align 8
  %1724 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1724, i64* %RSI.i1309, align 8
  %1725 = load i64, i64* %RDX.i1107, align 8
  %1726 = add i64 %1725, 16
  %1727 = add i64 %1723, 12
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i64*
  store i64 %1724, i64* %1728, align 8
  %1729 = load i64, i64* %RBP.i, align 8
  %1730 = add i64 %1729, -76
  %1731 = load i64, i64* %3, align 8
  %1732 = add i64 %1731, 4
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1730 to i32*
  %1734 = load i32, i32* %1733, align 4
  %1735 = sext i32 %1734 to i64
  %1736 = mul nsw i64 %1735, 24
  %1737 = lshr i64 %1736, 63
  %1738 = load i64, i64* %RCX.i1109, align 8
  %1739 = add i64 %1736, %1738
  store i64 %1739, i64* %RCX.i1109, align 8
  %1740 = icmp ult i64 %1739, %1738
  %1741 = icmp ult i64 %1739, %1736
  %1742 = or i1 %1740, %1741
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %14, align 1
  %1744 = trunc i64 %1739 to i32
  %1745 = and i32 %1744, 255
  %1746 = tail call i32 @llvm.ctpop.i32(i32 %1745)
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  store i8 %1749, i8* %21, align 1
  %1750 = xor i64 %1736, %1738
  %1751 = xor i64 %1750, %1739
  %1752 = lshr i64 %1751, 4
  %1753 = trunc i64 %1752 to i8
  %1754 = and i8 %1753, 1
  store i8 %1754, i8* %26, align 1
  %1755 = icmp eq i64 %1739, 0
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %29, align 1
  %1757 = lshr i64 %1739, 63
  %1758 = trunc i64 %1757 to i8
  store i8 %1758, i8* %32, align 1
  %1759 = lshr i64 %1738, 63
  %1760 = xor i64 %1757, %1759
  %1761 = xor i64 %1757, %1737
  %1762 = add nuw nsw i64 %1760, %1761
  %1763 = icmp eq i64 %1762, 2
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %38, align 1
  %1765 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  %1766 = inttoptr i64 %1739 to i64*
  %1767 = add i64 %1731, 22
  store i64 %1767, i64* %3, align 8
  store i64 %1765, i64* %1766, align 8
  %1768 = load i64, i64* %3, align 8
  %1769 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %1770 = load i64, i64* %RCX.i1109, align 8
  %1771 = add i64 %1770, 8
  %1772 = add i64 %1768, 12
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i64*
  store i64 %1769, i64* %1773, align 8
  %1774 = load i64, i64* %3, align 8
  %1775 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1775, i64* %RDX.i1107, align 8
  %1776 = load i64, i64* %RCX.i1109, align 8
  %1777 = add i64 %1776, 16
  %1778 = add i64 %1774, 12
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i64*
  store i64 %1775, i64* %1779, align 8
  %1780 = load i64, i64* %RBP.i, align 8
  %1781 = add i64 %1780, -76
  %1782 = load i64, i64* %3, align 8
  %1783 = add i64 %1782, 4
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1781 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = sext i32 %1785 to i64
  %1787 = mul nsw i64 %1786, 24
  %1788 = lshr i64 %1787, 63
  %1789 = load i64, i64* %RAX.i70, align 8
  %1790 = add i64 %1787, %1789
  store i64 %1790, i64* %RAX.i70, align 8
  %1791 = icmp ult i64 %1790, %1789
  %1792 = icmp ult i64 %1790, %1787
  %1793 = or i1 %1791, %1792
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %14, align 1
  %1795 = trunc i64 %1790 to i32
  %1796 = and i32 %1795, 255
  %1797 = tail call i32 @llvm.ctpop.i32(i32 %1796)
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  %1800 = xor i8 %1799, 1
  store i8 %1800, i8* %21, align 1
  %1801 = xor i64 %1787, %1789
  %1802 = xor i64 %1801, %1790
  %1803 = lshr i64 %1802, 4
  %1804 = trunc i64 %1803 to i8
  %1805 = and i8 %1804, 1
  store i8 %1805, i8* %26, align 1
  %1806 = icmp eq i64 %1790, 0
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %29, align 1
  %1808 = lshr i64 %1790, 63
  %1809 = trunc i64 %1808 to i8
  store i8 %1809, i8* %32, align 1
  %1810 = lshr i64 %1789, 63
  %1811 = xor i64 %1808, %1810
  %1812 = xor i64 %1808, %1788
  %1813 = add nuw nsw i64 %1811, %1812
  %1814 = icmp eq i64 %1813, 2
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %38, align 1
  %1816 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  %1817 = inttoptr i64 %1790 to i64*
  %1818 = add i64 %1782, 22
  store i64 %1818, i64* %3, align 8
  store i64 %1816, i64* %1817, align 8
  %1819 = load i64, i64* %3, align 8
  %1820 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %1821 = load i64, i64* %RAX.i70, align 8
  %1822 = add i64 %1821, 8
  %1823 = add i64 %1819, 12
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1822 to i64*
  store i64 %1820, i64* %1824, align 8
  %1825 = load i64, i64* %3, align 8
  %1826 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %1826, i64* %RCX.i1109, align 8
  %1827 = load i64, i64* %RAX.i70, align 8
  %1828 = add i64 %1827, 16
  %1829 = add i64 %1825, 12
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i64*
  store i64 %1826, i64* %1830, align 8
  %1831 = load i64, i64* %RBP.i, align 8
  %1832 = add i64 %1831, -76
  %1833 = load i64, i64* %3, align 8
  %1834 = add i64 %1833, 3
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1832 to i32*
  %1836 = load i32, i32* %1835, align 4
  %1837 = add i32 %1836, 1
  %1838 = zext i32 %1837 to i64
  store i64 %1838, i64* %RAX.i70, align 8
  %1839 = icmp eq i32 %1836, -1
  %1840 = icmp eq i32 %1837, 0
  %1841 = or i1 %1839, %1840
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %14, align 1
  %1843 = and i32 %1837, 255
  %1844 = tail call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  store i8 %1847, i8* %21, align 1
  %1848 = xor i32 %1837, %1836
  %1849 = lshr i32 %1848, 4
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  store i8 %1851, i8* %26, align 1
  %1852 = zext i1 %1840 to i8
  store i8 %1852, i8* %29, align 1
  %1853 = lshr i32 %1837, 31
  %1854 = trunc i32 %1853 to i8
  store i8 %1854, i8* %32, align 1
  %1855 = lshr i32 %1836, 31
  %1856 = xor i32 %1853, %1855
  %1857 = add nuw nsw i32 %1856, %1853
  %1858 = icmp eq i32 %1857, 2
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %38, align 1
  %1860 = add i64 %1833, 9
  store i64 %1860, i64* %3, align 8
  store i32 %1837, i32* %1835, align 4
  %1861 = load i64, i64* %3, align 8
  %1862 = add i64 %1861, -235
  store i64 %1862, i64* %3, align 8
  br label %block_.L_41b165

block_.L_41b255:                                  ; preds = %block_.L_41b165
  store i64 ptrtoint (%G__0x884320_type* @G__0x884320 to i64), i64* %RAX.i70, align 8
  store i64 0, i64* %RSI.i1309, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 2048, i64* %RCX.i1109, align 8
  store i64 2048, i64* %RDX.i1107, align 8
  store i64 ptrtoint (%G__0x884320_type* @G__0x884320 to i64), i64* %RDI.i71, align 8
  %1863 = add i64 %1647, -107909
  %1864 = add i64 %1647, 27
  %1865 = load i64, i64* %6, align 8
  %1866 = add i64 %1865, -8
  %1867 = inttoptr i64 %1866 to i64*
  store i64 %1864, i64* %1867, align 8
  store i64 %1866, i64* %6, align 8
  store i64 %1863, i64* %3, align 8
  %1868 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %1612)
  %1869 = load i64, i64* %RBP.i, align 8
  %1870 = add i64 %1869, -92
  %1871 = load i64, i64* %3, align 8
  %1872 = add i64 %1871, 7
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1870 to i32*
  store i32 0, i32* %1873, align 4
  %1874 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %1875 = load i64, i64* %RBP.i, align 8
  %1876 = add i64 %1875, -96
  %1877 = add i64 %1874, 18
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  store i32 0, i32* %1878, align 4
  %1879 = load i64, i64* %3, align 8
  %1880 = add i64 %1879, 11
  store i64 %1880, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  br label %block_.L_41b294

block_.L_41b294:                                  ; preds = %block_.L_41b6b2, %block_.L_41b255
  %1881 = phi i32 [ 1, %block_.L_41b255 ], [ %2881, %block_.L_41b6b2 ]
  %1882 = phi i64 [ %1880, %block_.L_41b255 ], [ %2904, %block_.L_41b6b2 ]
  %MEMORY.28 = phi %struct.Memory* [ %1868, %block_.L_41b255 ], [ %MEMORY.40, %block_.L_41b6b2 ]
  %1883 = zext i32 %1881 to i64
  store i64 %1883, i64* %RAX.i70, align 8
  %1884 = load i32, i32* bitcast (%G_0x880b18_type* @G_0x880b18 to i32*), align 8
  %1885 = sub i32 %1881, %1884
  %1886 = icmp ult i32 %1881, %1884
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %14, align 1
  %1888 = and i32 %1885, 255
  %1889 = tail call i32 @llvm.ctpop.i32(i32 %1888)
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  %1892 = xor i8 %1891, 1
  store i8 %1892, i8* %21, align 1
  %1893 = xor i32 %1884, %1881
  %1894 = xor i32 %1893, %1885
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %26, align 1
  %1898 = icmp eq i32 %1885, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %29, align 1
  %1900 = lshr i32 %1885, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %32, align 1
  %1902 = lshr i32 %1881, 31
  %1903 = lshr i32 %1884, 31
  %1904 = xor i32 %1903, %1902
  %1905 = xor i32 %1900, %1902
  %1906 = add nuw nsw i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %38, align 1
  %1909 = icmp ne i8 %1901, 0
  %1910 = xor i1 %1909, %1907
  %.demorgan324 = or i1 %1898, %1910
  %.v347 = select i1 %.demorgan324, i64 20, i64 1081
  %1911 = add i64 %1882, %.v347
  store i64 %1911, i64* %3, align 8
  br i1 %.demorgan324, label %block_41b2a8, label %block_.L_41b6cd.loopexit

block_41b2a8:                                     ; preds = %block_.L_41b294
  %1912 = add i64 %1911, 33976
  %1913 = add i64 %1911, 5
  %1914 = load i64, i64* %6, align 8
  %1915 = add i64 %1914, -8
  %1916 = inttoptr i64 %1915 to i64*
  store i64 %1913, i64* %1916, align 8
  store i64 %1915, i64* %6, align 8
  store i64 %1912, i64* %3, align 8
  %call2_41b2a8 = tail call %struct.Memory* @sub_423760.rtime(%struct.State* nonnull %0, i64 %1912, %struct.Memory* %MEMORY.28)
  %1917 = load i64, i64* %3, align 8
  %1918 = load i64, i64* bitcast (%G_0x8662e8_type* @G_0x8662e8 to i64*), align 8
  store i64 %1918, i64* %RSI.i1309, align 8
  %1919 = load i64, i64* %RAX.i70, align 8
  store i64 %1919, i64* %RDI.i71, align 8
  %1920 = add i64 %1917, 33987
  %1921 = add i64 %1917, 16
  %1922 = load i64, i64* %6, align 8
  %1923 = add i64 %1922, -8
  %1924 = inttoptr i64 %1923 to i64*
  store i64 %1921, i64* %1924, align 8
  store i64 %1923, i64* %6, align 8
  store i64 %1920, i64* %3, align 8
  %call2_41b2b8 = tail call %struct.Memory* @sub_423770.rdifftime(%struct.State* nonnull %0, i64 %1920, %struct.Memory* %MEMORY.28)
  %1925 = load i64, i64* %3, align 8
  %1926 = add i64 %1925, ptrtoint (%G_0xd0f3__rip__type* @G_0xd0f3__rip_ to i64)
  %1927 = add i64 %1925, 8
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i64*
  %1929 = load i64, i64* %1928, align 8
  store i64 %1929, i64* %73, align 1
  store double 0.000000e+00, double* %75, align 1
  %1930 = add i64 %1925, add (i64 ptrtoint (%G_0xd0f3__rip__type* @G_0xd0f3__rip_ to i64), i64 8)
  %1931 = add i64 %1925, 16
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i64*
  %1933 = load i64, i64* %1932, align 8
  store i64 %1933, i64* %77, align 1
  store double 0.000000e+00, double* %79, align 1
  %1934 = load i64, i64* %RBP.i, align 8
  %1935 = add i64 %1934, -88
  %1936 = load i32, i32* %EAX.i1655, align 4
  %1937 = add i64 %1925, 19
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1935 to i32*
  store i32 %1936, i32* %1938, align 4
  %1939 = load i64, i64* %RBP.i, align 8
  %1940 = add i64 %1939, -88
  %1941 = load i64, i64* %3, align 8
  %1942 = add i64 %1941, 5
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1940 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = sitofp i32 %1944 to double
  store double %1945, double* %81, align 1
  %1946 = load i32, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %1947 = sitofp i32 %1946 to double
  %1948 = load double, double* %84, align 1
  %1949 = fmul double %1947, %1948
  %1950 = load double, double* %85, align 1
  %1951 = fdiv double %1949, %1950
  store double %1951, double* %83, align 1
  %1952 = add i64 %1941, 26
  store i64 %1952, i64* %3, align 8
  %1953 = fcmp uno double %1945, %1951
  br i1 %1953, label %1954, label %1964

; <label>:1954:                                   ; preds = %block_41b2a8
  %1955 = fadd double %1951, %1945
  %1956 = bitcast double %1955 to i64
  %1957 = and i64 %1956, 9221120237041090560
  %1958 = icmp eq i64 %1957, 9218868437227405312
  %1959 = and i64 %1956, 2251799813685247
  %1960 = icmp ne i64 %1959, 0
  %1961 = and i1 %1958, %1960
  br i1 %1961, label %1962, label %1970

; <label>:1962:                                   ; preds = %1954
  %1963 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1952, %struct.Memory* %MEMORY.28)
  %.pre294 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm3___xmm2.exit

; <label>:1964:                                   ; preds = %block_41b2a8
  %1965 = fcmp ogt double %1945, %1951
  br i1 %1965, label %1970, label %1966

; <label>:1966:                                   ; preds = %1964
  %1967 = fcmp olt double %1945, %1951
  br i1 %1967, label %1970, label %1968

; <label>:1968:                                   ; preds = %1966
  %1969 = fcmp oeq double %1945, %1951
  br i1 %1969, label %1970, label %1974

; <label>:1970:                                   ; preds = %1968, %1966, %1964, %1954
  %1971 = phi i8 [ 0, %1964 ], [ 0, %1966 ], [ 1, %1968 ], [ 1, %1954 ]
  %1972 = phi i8 [ 0, %1964 ], [ 0, %1966 ], [ 0, %1968 ], [ 1, %1954 ]
  %1973 = phi i8 [ 0, %1964 ], [ 1, %1966 ], [ 0, %1968 ], [ 1, %1954 ]
  store i8 %1971, i8* %29, align 1
  store i8 %1972, i8* %21, align 1
  store i8 %1973, i8* %14, align 1
  br label %1974

; <label>:1974:                                   ; preds = %1970, %1968
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm3___xmm2.exit

routine_ucomisd__xmm3___xmm2.exit:                ; preds = %1974, %1962
  %1975 = phi i64 [ %.pre294, %1962 ], [ %1952, %1974 ]
  %1976 = phi %struct.Memory* [ %1963, %1962 ], [ %MEMORY.28, %1974 ]
  %1977 = add i64 %1975, 25
  %1978 = add i64 %1975, 6
  %1979 = load i8, i8* %14, align 1
  %1980 = load i8, i8* %29, align 1
  %1981 = or i8 %1980, %1979
  %1982 = icmp ne i8 %1981, 0
  %1983 = select i1 %1982, i64 %1977, i64 %1978
  store i64 %1983, i64* %3, align 8
  br i1 %1982, label %block_.L_41b303, label %block_41b2f0

block_41b2f0:                                     ; preds = %routine_ucomisd__xmm3___xmm2.exit
  %1984 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %1985 = add i32 %1984, -2
  %1986 = icmp ult i32 %1984, 2
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %14, align 1
  %1988 = and i32 %1985, 255
  %1989 = tail call i32 @llvm.ctpop.i32(i32 %1988)
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  %1992 = xor i8 %1991, 1
  store i8 %1992, i8* %21, align 1
  %1993 = xor i32 %1985, %1984
  %1994 = lshr i32 %1993, 4
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  store i8 %1996, i8* %26, align 1
  %1997 = icmp eq i32 %1985, 0
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %29, align 1
  %1999 = lshr i32 %1985, 31
  %2000 = trunc i32 %1999 to i8
  store i8 %2000, i8* %32, align 1
  %2001 = lshr i32 %1984, 31
  %2002 = xor i32 %1999, %2001
  %2003 = add nuw nsw i32 %2002, %2001
  %2004 = icmp eq i32 %2003, 2
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %38, align 1
  %2006 = icmp ne i8 %2000, 0
  %2007 = xor i1 %2006, %2004
  %2008 = or i1 %1997, %2007
  %.v406 = select i1 %2008, i64 19, i64 14
  %2009 = add i64 %1983, %.v406
  store i64 %2009, i64* %3, align 8
  br i1 %2008, label %block_.L_41b303, label %block_41b2fe

block_41b2fe:                                     ; preds = %block_41b2f0
  %2010 = add i64 %2009, 975
  br label %block_.L_41b6cd.sink.split

block_.L_41b303:                                  ; preds = %block_41b2f0, %routine_ucomisd__xmm3___xmm2.exit
  %2011 = phi i64 [ %2009, %block_41b2f0 ], [ %1977, %routine_ucomisd__xmm3___xmm2.exit ]
  %2012 = load i64, i64* %RBP.i, align 8
  %2013 = add i64 %2012, -12456
  store i64 %2013, i64* %RDI.i71, align 8
  store i64 100, i64* %RAX.i70, align 8
  store i64 35, i64* %RCX.i1109, align 8
  store i32 0, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  %2014 = add i64 %2012, -92
  %2015 = add i64 %2011, 31
  store i64 %2015, i64* %3, align 8
  %2016 = inttoptr i64 %2014 to i32*
  %2017 = load i32, i32* %2016, align 4
  %2018 = zext i32 %2017 to i64
  %2019 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %2020 = icmp eq i32 %2019, 2
  %2021 = select i1 %2020, i64 35, i64 100
  store i64 %2021, i64* %RSI.i1309, align 8
  %2022 = trunc i64 %2021 to i32
  %2023 = sub i32 %2017, %2022
  %2024 = zext i32 %2023 to i64
  store i64 %2024, i64* %RDX.i1107, align 8
  %2025 = icmp ult i32 %2017, %2022
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %14, align 1
  %2027 = and i32 %2023, 255
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %21, align 1
  %2032 = xor i64 %2021, %2018
  %2033 = trunc i64 %2032 to i32
  %2034 = xor i32 %2033, %2023
  %2035 = lshr i32 %2034, 4
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  store i8 %2037, i8* %26, align 1
  %2038 = icmp eq i32 %2023, 0
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %29, align 1
  %2040 = lshr i32 %2023, 31
  %2041 = trunc i32 %2040 to i8
  store i8 %2041, i8* %32, align 1
  %2042 = lshr i32 %2017, 31
  %2043 = xor i32 %2040, %2042
  %2044 = add nuw nsw i32 %2043, %2042
  %2045 = icmp eq i32 %2044, 2
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %38, align 1
  %2047 = add i64 %2012, -100
  %2048 = add i64 %2011, 49
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2047 to i32*
  store i32 %2023, i32* %2049, align 4
  %2050 = load i64, i64* %RBP.i, align 8
  %2051 = add i64 %2050, -92
  %2052 = load i64, i64* %3, align 8
  %2053 = add i64 %2052, 3
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = zext i32 %2055 to i64
  %2057 = load i32, i32* %ECX.i1106, align 4
  %2058 = zext i32 %2057 to i64
  %2059 = load i64, i64* %RAX.i70, align 8
  %2060 = select i1 %2020, i64 %2058, i64 %2059
  %2061 = and i64 %2060, 4294967295
  store i64 %2061, i64* %RAX.i70, align 8
  %2062 = trunc i64 %2060 to i32
  %2063 = add i32 %2062, %2055
  %2064 = zext i32 %2063 to i64
  store i64 %2064, i64* %RDX.i1107, align 8
  %2065 = icmp ult i32 %2063, %2055
  %2066 = icmp ult i32 %2063, %2062
  %2067 = or i1 %2065, %2066
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %14, align 1
  %2069 = and i32 %2063, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %21, align 1
  %2074 = xor i64 %2060, %2056
  %2075 = trunc i64 %2074 to i32
  %2076 = xor i32 %2075, %2063
  %2077 = lshr i32 %2076, 4
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %26, align 1
  %2080 = icmp eq i32 %2063, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %29, align 1
  %2082 = lshr i32 %2063, 31
  %2083 = trunc i32 %2082 to i8
  store i8 %2083, i8* %32, align 1
  %2084 = lshr i32 %2055, 31
  %2085 = lshr i32 %2062, 31
  %2086 = xor i32 %2082, %2084
  %2087 = xor i32 %2082, %2085
  %2088 = add nuw nsw i32 %2086, %2087
  %2089 = icmp eq i32 %2088, 2
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %38, align 1
  %2091 = add i64 %2050, -104
  %2092 = add i64 %2052, 19
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i32*
  store i32 %2063, i32* %2093, align 4
  %2094 = load i64, i64* %RBP.i, align 8
  %2095 = add i64 %2094, -100
  %2096 = load i64, i64* %3, align 8
  %2097 = add i64 %2096, 3
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2095 to i32*
  %2099 = load i32, i32* %2098, align 4
  %2100 = zext i32 %2099 to i64
  store i64 %2100, i64* %RSI.i1309, align 8
  %2101 = add i64 %2094, -104
  %2102 = add i64 %2096, 6
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RDX.i1107, align 8
  %2106 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2107 = zext i32 %2106 to i64
  store i64 %2107, i64* %RCX.i1109, align 8
  %2108 = add i64 %2096, -8023
  %2109 = add i64 %2096, 18
  %2110 = load i64, i64* %6, align 8
  %2111 = add i64 %2110, -8
  %2112 = inttoptr i64 %2111 to i64*
  store i64 %2109, i64* %2112, align 8
  store i64 %2111, i64* %6, align 8
  store i64 %2108, i64* %3, align 8
  %call2_41b354 = tail call %struct.Memory* @sub_4193f0.search_root(%struct.State* nonnull %0, i64 %2108, %struct.Memory* %1976)
  %2113 = load i64, i64* %RBP.i, align 8
  %2114 = add i64 %2113, -12456
  %2115 = load i64, i64* %3, align 8
  %2116 = add i64 %2115, 7
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2114 to i64*
  %2118 = load i64, i64* %2117, align 8
  store i64 %2118, i64* %RDI.i71, align 8
  %2119 = add i64 %2113, -48
  %2120 = add i64 %2115, 11
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i64*
  store i64 %2118, i64* %2121, align 8
  %2122 = load i64, i64* %RBP.i, align 8
  %2123 = add i64 %2122, -12448
  %2124 = load i64, i64* %3, align 8
  %2125 = add i64 %2124, 7
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2123 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RDI.i71, align 8
  %2128 = add i64 %2122, -40
  %2129 = add i64 %2124, 11
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i64*
  store i64 %2127, i64* %2130, align 8
  %2131 = load i64, i64* %RBP.i, align 8
  %2132 = add i64 %2131, -12440
  %2133 = load i64, i64* %3, align 8
  %2134 = add i64 %2133, 7
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2132 to i64*
  %2136 = load i64, i64* %2135, align 8
  store i64 %2136, i64* %RDI.i71, align 8
  %2137 = add i64 %2131, -32
  %2138 = add i64 %2133, 11
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i64*
  store i64 %2136, i64* %2139, align 8
  %2140 = load i64, i64* %3, align 8
  %2141 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2142 = and i32 %2141, 255
  %2143 = tail call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  store i8 %2146, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2147 = icmp eq i32 %2141, 0
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %29, align 1
  %2149 = lshr i32 %2141, 31
  %2150 = trunc i32 %2149 to i8
  store i8 %2150, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v407 = select i1 %2147, i64 19, i64 14
  %2151 = add i64 %2140, %.v407
  store i64 %2151, i64* %3, align 8
  br i1 %2147, label %block_.L_41b38d, label %block_41b388

block_41b388:                                     ; preds = %block_.L_41b303
  %2152 = add i64 %2151, 837
  br label %block_.L_41b6cd.sink.split

block_.L_41b38d:                                  ; preds = %block_.L_41b303
  %2153 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RAX.i70, align 8
  %2155 = load i64, i64* %RBP.i, align 8
  %2156 = add i64 %2155, -100
  %2157 = add i64 %2151, 10
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = sub i32 %2153, %2159
  %2161 = icmp ult i32 %2153, %2159
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %14, align 1
  %2163 = and i32 %2160, 255
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163)
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %21, align 1
  %2168 = xor i32 %2159, %2153
  %2169 = xor i32 %2168, %2160
  %2170 = lshr i32 %2169, 4
  %2171 = trunc i32 %2170 to i8
  %2172 = and i8 %2171, 1
  store i8 %2172, i8* %26, align 1
  %2173 = icmp eq i32 %2160, 0
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %29, align 1
  %2175 = lshr i32 %2160, 31
  %2176 = trunc i32 %2175 to i8
  store i8 %2176, i8* %32, align 1
  %2177 = lshr i32 %2153, 31
  %2178 = lshr i32 %2159, 31
  %2179 = xor i32 %2178, %2177
  %2180 = xor i32 %2175, %2177
  %2181 = add nuw nsw i32 %2180, %2179
  %2182 = icmp eq i32 %2181, 2
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %38, align 1
  %2184 = icmp ne i8 %2176, 0
  %2185 = xor i1 %2184, %2182
  %.demorgan325 = or i1 %2173, %2185
  %.v441 = select i1 %.demorgan325, i64 16, i64 32
  %2186 = add i64 %2151, %.v441
  %2187 = add i64 %2186, 11
  store i64 %2187, i64* %3, align 8
  br i1 %.demorgan325, label %block_41b39d, label %block_.L_41b3ad

block_41b39d:                                     ; preds = %block_.L_41b38d
  store i32 1, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  %2188 = add i64 %2186, 27
  store i64 %2188, i64* %3, align 8
  br label %block_.L_41b3b8

block_.L_41b3ad:                                  ; preds = %block_.L_41b38d
  store i32 0, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  br label %block_.L_41b3b8

block_.L_41b3b8:                                  ; preds = %block_.L_41b3ad, %block_41b39d
  %2189 = phi i64 [ %2187, %block_.L_41b3ad ], [ %2188, %block_41b39d ]
  store i64 %2154, i64* %RAX.i70, align 8
  %2190 = add i64 %2189, 10
  store i64 %2190, i64* %3, align 8
  %2191 = load i32, i32* %2158, align 4
  %2192 = sub i32 %2153, %2191
  %2193 = icmp ult i32 %2153, %2191
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %14, align 1
  %2195 = and i32 %2192, 255
  %2196 = tail call i32 @llvm.ctpop.i32(i32 %2195)
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = xor i8 %2198, 1
  store i8 %2199, i8* %21, align 1
  %2200 = xor i32 %2191, %2153
  %2201 = xor i32 %2200, %2192
  %2202 = lshr i32 %2201, 4
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  store i8 %2204, i8* %26, align 1
  %2205 = icmp eq i32 %2192, 0
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %29, align 1
  %2207 = lshr i32 %2192, 31
  %2208 = trunc i32 %2207 to i8
  store i8 %2208, i8* %32, align 1
  %2209 = lshr i32 %2191, 31
  %2210 = xor i32 %2209, %2177
  %2211 = xor i32 %2207, %2177
  %2212 = add nuw nsw i32 %2211, %2210
  %2213 = icmp eq i32 %2212, 2
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %38, align 1
  %2215 = icmp ne i8 %2208, 0
  %2216 = xor i1 %2215, %2213
  %.demorgan326 = or i1 %2205, %2216
  %.v408 = select i1 %.demorgan326, i64 16, i64 131
  %2217 = add i64 %2189, %.v408
  store i64 %2217, i64* %3, align 8
  br i1 %.demorgan326, label %block_41b3c8, label %block_.L_41b43b

block_41b3c8:                                     ; preds = %block_.L_41b3b8
  %2218 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2219 = and i32 %2218, 255
  %2220 = tail call i32 @llvm.ctpop.i32(i32 %2219)
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  store i8 %2223, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2224 = icmp eq i32 %2218, 0
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %29, align 1
  %2226 = lshr i32 %2218, 31
  %2227 = trunc i32 %2226 to i8
  store i8 %2227, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v425 = select i1 %2224, i64 14, i64 115
  %2228 = add i64 %2217, %.v425
  store i64 %2228, i64* %3, align 8
  br i1 %2224, label %block_41b3d6, label %block_.L_41b43b

block_41b3d6:                                     ; preds = %block_41b3c8
  %2229 = add i64 %2155, -12480
  store i64 %2229, i64* %RDI.i71, align 8
  store i64 4293967296, i64* %RSI.i1309, align 8
  store i64 1000000, i64* %RDX.i1107, align 8
  %2230 = add i64 %2155, -112
  %2231 = add i64 %2228, 20
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = add i32 %2233, 1
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RAX.i70, align 8
  %2236 = icmp eq i32 %2233, -1
  %2237 = icmp eq i32 %2234, 0
  %2238 = or i1 %2236, %2237
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %14, align 1
  %2240 = and i32 %2234, 255
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %21, align 1
  %2245 = xor i32 %2234, %2233
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %26, align 1
  %2249 = zext i1 %2237 to i8
  store i8 %2249, i8* %29, align 1
  %2250 = lshr i32 %2234, 31
  %2251 = trunc i32 %2250 to i8
  store i8 %2251, i8* %32, align 1
  %2252 = lshr i32 %2233, 31
  %2253 = xor i32 %2250, %2252
  %2254 = add nuw nsw i32 %2253, %2250
  %2255 = icmp eq i32 %2254, 2
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %38, align 1
  %2257 = add i64 %2228, 26
  store i64 %2257, i64* %3, align 8
  store i32 %2234, i32* %2232, align 4
  %2258 = load i64, i64* %3, align 8
  %2259 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2260 = zext i32 %2259 to i64
  store i64 %2260, i64* %RCX.i1109, align 8
  %2261 = add i64 %2258, -8192
  %2262 = add i64 %2258, 12
  %2263 = load i64, i64* %6, align 8
  %2264 = add i64 %2263, -8
  %2265 = inttoptr i64 %2264 to i64*
  store i64 %2262, i64* %2265, align 8
  store i64 %2264, i64* %6, align 8
  store i64 %2261, i64* %3, align 8
  %call2_41b3f7 = tail call %struct.Memory* @sub_4193f0.search_root(%struct.State* nonnull %0, i64 %2261, %struct.Memory* %call2_41b354)
  %2266 = load i64, i64* %RBP.i, align 8
  %2267 = add i64 %2266, -12480
  %2268 = load i64, i64* %3, align 8
  %2269 = add i64 %2268, 7
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2267 to i64*
  %2271 = load i64, i64* %2270, align 8
  store i64 %2271, i64* %RDI.i71, align 8
  %2272 = add i64 %2266, -48
  %2273 = add i64 %2268, 11
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i64*
  store i64 %2271, i64* %2274, align 8
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -12472
  %2277 = load i64, i64* %3, align 8
  %2278 = add i64 %2277, 7
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2276 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RDI.i71, align 8
  %2281 = add i64 %2275, -40
  %2282 = add i64 %2277, 11
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i64*
  store i64 %2280, i64* %2283, align 8
  %2284 = load i64, i64* %RBP.i, align 8
  %2285 = add i64 %2284, -12464
  %2286 = load i64, i64* %3, align 8
  %2287 = add i64 %2286, 7
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2285 to i64*
  %2289 = load i64, i64* %2288, align 8
  store i64 %2289, i64* %RDI.i71, align 8
  %2290 = add i64 %2284, -32
  %2291 = add i64 %2286, 11
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i64*
  store i64 %2289, i64* %2292, align 8
  %2293 = load i64, i64* %3, align 8
  %2294 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2295 = and i32 %2294, 255
  %2296 = tail call i32 @llvm.ctpop.i32(i32 %2295)
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = xor i8 %2298, 1
  store i8 %2299, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2300 = icmp eq i32 %2294, 0
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %29, align 1
  %2302 = lshr i32 %2294, 31
  %2303 = trunc i32 %2302 to i8
  store i8 %2303, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v426 = select i1 %2300, i64 14, i64 25
  %2304 = add i64 %2293, %.v426
  store i64 %2304, i64* %3, align 8
  br i1 %2300, label %block_41b42b, label %block_.L_41b436

block_41b42b:                                     ; preds = %block_41b3d6
  %2305 = add i64 %2304, 11
  store i64 %2305, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  br label %block_.L_41b436

block_.L_41b436:                                  ; preds = %block_41b3d6, %block_41b42b
  %2306 = phi i64 [ %2305, %block_41b42b ], [ %2304, %block_41b3d6 ]
  %2307 = add i64 %2306, 175
  br label %block_.L_41b4e5

block_.L_41b43b:                                  ; preds = %block_41b3c8, %block_.L_41b3b8
  %2308 = phi i64 [ %2228, %block_41b3c8 ], [ %2217, %block_.L_41b3b8 ]
  store i64 %2154, i64* %RAX.i70, align 8
  %2309 = add i64 %2155, -104
  %2310 = add i64 %2308, 10
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = sub i32 %2153, %2312
  %2314 = icmp ult i32 %2153, %2312
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %14, align 1
  %2316 = and i32 %2313, 255
  %2317 = tail call i32 @llvm.ctpop.i32(i32 %2316)
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  store i8 %2320, i8* %21, align 1
  %2321 = xor i32 %2312, %2153
  %2322 = xor i32 %2321, %2313
  %2323 = lshr i32 %2322, 4
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  store i8 %2325, i8* %26, align 1
  %2326 = icmp eq i32 %2313, 0
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %29, align 1
  %2328 = lshr i32 %2313, 31
  %2329 = trunc i32 %2328 to i8
  store i8 %2329, i8* %32, align 1
  %2330 = lshr i32 %2312, 31
  %2331 = xor i32 %2330, %2177
  %2332 = xor i32 %2328, %2177
  %2333 = add nuw nsw i32 %2332, %2331
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %38, align 1
  %2336 = icmp ne i8 %2329, 0
  %2337 = xor i1 %2336, %2334
  %.v409 = select i1 %2337, i64 165, i64 16
  %2338 = add i64 %2308, %.v409
  store i64 %2338, i64* %3, align 8
  br i1 %2337, label %block_.L_41b4e0, label %block_41b44b

block_41b44b:                                     ; preds = %block_.L_41b43b
  %2339 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2340 = and i32 %2339, 255
  %2341 = tail call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  store i8 %2344, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2345 = icmp eq i32 %2339, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %29, align 1
  %2347 = lshr i32 %2339, 31
  %2348 = trunc i32 %2347 to i8
  store i8 %2348, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v410 = select i1 %2345, i64 14, i64 149
  %2349 = add i64 %2338, %.v410
  store i64 %2349, i64* %3, align 8
  br i1 %2345, label %block_41b459, label %block_.L_41b4e0

block_41b459:                                     ; preds = %block_41b44b
  %2350 = add i64 %2155, -12504
  store i64 %2350, i64* %RDI.i71, align 8
  store i64 4293967296, i64* %RSI.i1309, align 8
  store i64 1000000, i64* %RDX.i1107, align 8
  %2351 = add i64 %2155, -48
  %2352 = add i64 %2349, 21
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %RAX.i70, align 8
  %2355 = add i64 %2155, -24
  %2356 = add i64 %2349, 25
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i64*
  store i64 %2354, i64* %2357, align 8
  %2358 = load i64, i64* %RBP.i, align 8
  %2359 = add i64 %2358, -40
  %2360 = load i64, i64* %3, align 8
  %2361 = add i64 %2360, 4
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2359 to i64*
  %2363 = load i64, i64* %2362, align 8
  store i64 %2363, i64* %RAX.i70, align 8
  %2364 = add i64 %2358, -16
  %2365 = add i64 %2360, 8
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  store i64 %2363, i64* %2366, align 8
  %2367 = load i64, i64* %RBP.i, align 8
  %2368 = add i64 %2367, -32
  %2369 = load i64, i64* %3, align 8
  %2370 = add i64 %2369, 4
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2368 to i64*
  %2372 = load i64, i64* %2371, align 8
  store i64 %2372, i64* %RAX.i70, align 8
  %2373 = add i64 %2367, -8
  %2374 = add i64 %2369, 8
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i64*
  store i64 %2372, i64* %2375, align 8
  %2376 = load i64, i64* %3, align 8
  store i64 %2154, i64* %RCX.i1109, align 8
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -92
  %2379 = add i64 %2376, 10
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  store i32 %2153, i32* %2380, align 4
  %2381 = load i64, i64* %RBP.i, align 8
  %2382 = add i64 %2381, -112
  %2383 = load i64, i64* %3, align 8
  %2384 = add i64 %2383, 3
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2382 to i32*
  %2386 = load i32, i32* %2385, align 4
  %2387 = add i32 %2386, 1
  %2388 = icmp eq i32 %2386, -1
  %2389 = icmp eq i32 %2387, 0
  %2390 = or i1 %2388, %2389
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %14, align 1
  %2392 = and i32 %2387, 255
  %2393 = tail call i32 @llvm.ctpop.i32(i32 %2392)
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  %2396 = xor i8 %2395, 1
  store i8 %2396, i8* %21, align 1
  %2397 = xor i32 %2387, %2386
  %2398 = lshr i32 %2397, 4
  %2399 = trunc i32 %2398 to i8
  %2400 = and i8 %2399, 1
  store i8 %2400, i8* %26, align 1
  %2401 = zext i1 %2389 to i8
  store i8 %2401, i8* %29, align 1
  %2402 = lshr i32 %2387, 31
  %2403 = trunc i32 %2402 to i8
  store i8 %2403, i8* %32, align 1
  %2404 = lshr i32 %2386, 31
  %2405 = xor i32 %2402, %2404
  %2406 = add nuw nsw i32 %2405, %2402
  %2407 = icmp eq i32 %2406, 2
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %38, align 1
  %2409 = add i64 %2383, 9
  store i64 %2409, i64* %3, align 8
  store i32 %2387, i32* %2385, align 4
  %2410 = load i64, i64* %3, align 8
  %2411 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2412 = zext i32 %2411 to i64
  store i64 %2412, i64* %RCX.i1109, align 8
  %2413 = add i64 %2410, -8357
  %2414 = add i64 %2410, 12
  %2415 = load i64, i64* %6, align 8
  %2416 = add i64 %2415, -8
  %2417 = inttoptr i64 %2416 to i64*
  store i64 %2414, i64* %2417, align 8
  store i64 %2416, i64* %6, align 8
  store i64 %2413, i64* %3, align 8
  %call2_41b49c = tail call %struct.Memory* @sub_4193f0.search_root(%struct.State* nonnull %0, i64 %2413, %struct.Memory* %call2_41b354)
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -12504
  %2420 = load i64, i64* %3, align 8
  %2421 = add i64 %2420, 7
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2419 to i64*
  %2423 = load i64, i64* %2422, align 8
  store i64 %2423, i64* %RAX.i70, align 8
  %2424 = add i64 %2418, -48
  %2425 = add i64 %2420, 11
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i64*
  store i64 %2423, i64* %2426, align 8
  %2427 = load i64, i64* %RBP.i, align 8
  %2428 = add i64 %2427, -12496
  %2429 = load i64, i64* %3, align 8
  %2430 = add i64 %2429, 7
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2428 to i64*
  %2432 = load i64, i64* %2431, align 8
  store i64 %2432, i64* %RAX.i70, align 8
  %2433 = add i64 %2427, -40
  %2434 = add i64 %2429, 11
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i64*
  store i64 %2432, i64* %2435, align 8
  %2436 = load i64, i64* %RBP.i, align 8
  %2437 = add i64 %2436, -12488
  %2438 = load i64, i64* %3, align 8
  %2439 = add i64 %2438, 7
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2437 to i64*
  %2441 = load i64, i64* %2440, align 8
  store i64 %2441, i64* %RAX.i70, align 8
  %2442 = add i64 %2436, -32
  %2443 = add i64 %2438, 11
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i64*
  store i64 %2441, i64* %2444, align 8
  %2445 = load i64, i64* %3, align 8
  %2446 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2447 = and i32 %2446, 255
  %2448 = tail call i32 @llvm.ctpop.i32(i32 %2447)
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  %2451 = xor i8 %2450, 1
  store i8 %2451, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2452 = icmp eq i32 %2446, 0
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %29, align 1
  %2454 = lshr i32 %2446, 31
  %2455 = trunc i32 %2454 to i8
  store i8 %2455, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v424 = select i1 %2452, i64 14, i64 25
  %2456 = add i64 %2445, %.v424
  store i64 %2456, i64* %3, align 8
  br i1 %2452, label %block_41b4d0, label %block_.L_41b4db

block_41b4d0:                                     ; preds = %block_41b459
  %2457 = add i64 %2456, 11
  store i64 %2457, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  br label %block_.L_41b4db

block_.L_41b4db:                                  ; preds = %block_41b459, %block_41b4d0
  %2458 = phi i64 [ %2457, %block_41b4d0 ], [ %2456, %block_41b459 ]
  %2459 = add i64 %2458, 5
  store i64 %2459, i64* %3, align 8
  br label %block_.L_41b4e0

block_.L_41b4e0:                                  ; preds = %block_41b44b, %block_.L_41b4db, %block_.L_41b43b
  %2460 = phi i64 [ %2338, %block_.L_41b43b ], [ %2349, %block_41b44b ], [ %2459, %block_.L_41b4db ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_41b354, %block_.L_41b43b ], [ %call2_41b354, %block_41b44b ], [ %call2_41b49c, %block_.L_41b4db ]
  %2461 = add i64 %2460, 5
  store i64 %2461, i64* %3, align 8
  br label %block_.L_41b4e5

block_.L_41b4e5:                                  ; preds = %block_.L_41b4e0, %block_.L_41b436
  %storemerge128 = phi i64 [ %2307, %block_.L_41b436 ], [ %2461, %block_.L_41b4e0 ]
  %MEMORY.35 = phi %struct.Memory* [ %call2_41b3f7, %block_.L_41b436 ], [ %MEMORY.34, %block_.L_41b4e0 ]
  %2462 = add i64 %storemerge128, 36603
  %2463 = add i64 %storemerge128, 5
  %2464 = load i64, i64* %6, align 8
  %2465 = add i64 %2464, -8
  %2466 = inttoptr i64 %2465 to i64*
  store i64 %2463, i64* %2466, align 8
  store i64 %2465, i64* %6, align 8
  store i64 %2462, i64* %3, align 8
  %call2_41b4e5 = tail call %struct.Memory* @sub_4243e0.interrupt(%struct.State* nonnull %0, i64 %2462, %struct.Memory* %MEMORY.35)
  %2467 = load i32, i32* %EAX.i1655, align 4
  %2468 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2469 = and i32 %2467, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2474 = icmp eq i32 %2467, 0
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %29, align 1
  %2476 = lshr i32 %2467, 31
  %2477 = trunc i32 %2476 to i8
  store i8 %2477, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v411 = select i1 %2474, i64 113, i64 9
  %2478 = add i64 %2468, %.v411
  store i64 %2478, i64* %3, align 8
  br i1 %2474, label %block_.L_41b55b, label %block_41b4f3

block_41b4f3:                                     ; preds = %block_.L_41b4e5
  %2479 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2480 = add i32 %2479, -1
  %2481 = icmp eq i32 %2479, 0
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %14, align 1
  %2483 = and i32 %2480, 255
  %2484 = tail call i32 @llvm.ctpop.i32(i32 %2483)
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = xor i8 %2486, 1
  store i8 %2487, i8* %21, align 1
  %2488 = xor i32 %2480, %2479
  %2489 = lshr i32 %2488, 4
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  store i8 %2491, i8* %26, align 1
  %2492 = icmp eq i32 %2480, 0
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %29, align 1
  %2494 = lshr i32 %2480, 31
  %2495 = trunc i32 %2494 to i8
  store i8 %2495, i8* %32, align 1
  %2496 = lshr i32 %2479, 31
  %2497 = xor i32 %2494, %2496
  %2498 = add nuw nsw i32 %2497, %2496
  %2499 = icmp eq i32 %2498, 2
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %38, align 1
  %2501 = icmp ne i8 %2495, 0
  %2502 = xor i1 %2501, %2499
  %2503 = or i1 %2492, %2502
  %.v412 = select i1 %2503, i64 104, i64 14
  %2504 = add i64 %2478, %.v412
  store i64 %2504, i64* %3, align 8
  br i1 %2503, label %block_.L_41b55b, label %block_41b501

block_41b501:                                     ; preds = %block_41b4f3
  %2505 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %2506 = and i32 %2505, 255
  %2507 = tail call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2511 = icmp eq i32 %2505, 0
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %29, align 1
  %2513 = lshr i32 %2505, 31
  %2514 = trunc i32 %2513 to i8
  store i8 %2514, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v413 = select i1 %2511, i64 61, i64 14
  %2515 = add i64 %2504, %.v413
  %2516 = add i64 %2515, 8
  store i64 %2516, i64* %3, align 8
  br i1 %2511, label %block_.L_41b53e, label %block_41b50f

block_41b50f:                                     ; preds = %block_41b501
  %2517 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %2517, i64* %RAX.i70, align 8
  %2518 = load i64, i64* %RBP.i, align 8
  %2519 = add i64 %2518, -12544
  %2520 = add i64 %2515, 15
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i64*
  %2522 = load i64, i64* %2521, align 8
  store i64 %2522, i64* %RCX.i1109, align 8
  %2523 = add i64 %2515, 18
  store i64 %2523, i64* %3, align 8
  %2524 = inttoptr i64 %2522 to i64*
  store i64 %2517, i64* %2524, align 8
  %2525 = load i64, i64* %3, align 8
  %2526 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %2527 = load i64, i64* %RCX.i1109, align 8
  %2528 = add i64 %2527, 8
  %2529 = add i64 %2525, 12
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  store i64 %2526, i64* %2530, align 8
  %2531 = load i64, i64* %3, align 8
  %2532 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %2532, i64* %RAX.i70, align 8
  %2533 = load i64, i64* %RCX.i1109, align 8
  %2534 = add i64 %2533, 16
  %2535 = add i64 %2531, 12
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i64*
  store i64 %2532, i64* %2536, align 8
  %2537 = load i64, i64* %3, align 8
  %2538 = add i64 %2537, 2247
  store i64 %2538, i64* %3, align 8
  br label %block_.L_41be00

block_.L_41b53e:                                  ; preds = %block_41b501
  %2539 = load i32, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2540 = and i32 %2539, 255
  %2541 = tail call i32 @llvm.ctpop.i32(i32 %2540)
  %2542 = trunc i32 %2541 to i8
  %2543 = and i8 %2542, 1
  %2544 = xor i8 %2543, 1
  store i8 %2544, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2545 = icmp eq i32 %2539, 0
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %29, align 1
  %2547 = lshr i32 %2539, 31
  %2548 = trunc i32 %2547 to i8
  store i8 %2548, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v414 = select i1 %2545, i64 14, i64 19
  %2549 = add i64 %2515, %.v414
  store i64 %2549, i64* %3, align 8
  br i1 %2545, label %block_41b54c, label %block_.L_41b551

block_41b54c:                                     ; preds = %block_.L_41b53e
  %2550 = add i64 %2549, 385
  br label %block_.L_41b6cd.sink.split

block_.L_41b551:                                  ; preds = %block_.L_41b53e
  %2551 = add i64 %2549, 10
  store i64 %2551, i64* %3, align 8
  br label %block_.L_41b55b

block_.L_41b55b:                                  ; preds = %block_.L_41b551, %block_41b4f3, %block_.L_41b4e5
  %2552 = phi i64 [ %2551, %block_.L_41b551 ], [ %2504, %block_41b4f3 ], [ %2478, %block_.L_41b4e5 ]
  %2553 = load i32, i32* bitcast (%G_0x8661dc_type* @G_0x8661dc to i32*), align 8
  store i8 0, i8* %14, align 1
  %2554 = and i32 %2553, 255
  %2555 = tail call i32 @llvm.ctpop.i32(i32 %2554)
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = xor i8 %2557, 1
  store i8 %2558, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2559 = icmp eq i32 %2553, 0
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %29, align 1
  %2561 = lshr i32 %2553, 31
  %2562 = trunc i32 %2561 to i8
  store i8 %2562, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v415 = select i1 %2559, i64 14, i64 245
  %2563 = add i64 %2552, %.v415
  store i64 %2563, i64* %3, align 8
  br i1 %2559, label %block_41b569, label %block_.L_41b650

block_41b569:                                     ; preds = %block_.L_41b55b
  %2564 = load i32, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2565 = and i32 %2564, 255
  %2566 = tail call i32 @llvm.ctpop.i32(i32 %2565)
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = xor i8 %2568, 1
  store i8 %2569, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2570 = icmp eq i32 %2564, 0
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %29, align 1
  %2572 = lshr i32 %2564, 31
  %2573 = trunc i32 %2572 to i8
  store i8 %2573, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v418 = select i1 %2570, i64 14, i64 231
  %2574 = add i64 %2563, %.v418
  store i64 %2574, i64* %3, align 8
  br i1 %2570, label %block_41b577, label %block_.L_41b650

block_41b577:                                     ; preds = %block_41b569
  %2575 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %2576 = add i32 %2575, 1000000
  %2577 = icmp ult i32 %2575, -1000000
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %14, align 1
  %2579 = and i32 %2576, 255
  %2580 = tail call i32 @llvm.ctpop.i32(i32 %2579)
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = xor i8 %2582, 1
  store i8 %2583, i8* %21, align 1
  %2584 = xor i32 %2576, %2575
  %2585 = lshr i32 %2584, 4
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  store i8 %2587, i8* %26, align 1
  %2588 = icmp eq i32 %2576, 0
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %29, align 1
  %2590 = lshr i32 %2576, 31
  %2591 = trunc i32 %2590 to i8
  store i8 %2591, i8* %32, align 1
  %2592 = lshr i32 %2575, 31
  %2593 = xor i32 %2592, 1
  %2594 = xor i32 %2590, %2592
  %2595 = add nuw nsw i32 %2594, %2593
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %38, align 1
  %.v419 = select i1 %2588, i64 17, i64 64
  %2598 = add i64 %2574, %.v419
  store i64 %2598, i64* %3, align 8
  br i1 %2588, label %block_41b588, label %block_.L_41b5b7

block_41b588:                                     ; preds = %block_41b577
  %2599 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %2599, i64* %RAX.i70, align 8
  %2600 = load i64, i64* %RBP.i, align 8
  %2601 = add i64 %2600, -12544
  %2602 = add i64 %2598, 15
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i64*
  %2604 = load i64, i64* %2603, align 8
  store i64 %2604, i64* %RCX.i1109, align 8
  %2605 = add i64 %2598, 18
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i64*
  store i64 %2599, i64* %2606, align 8
  %2607 = load i64, i64* %3, align 8
  %2608 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %2609 = load i64, i64* %RCX.i1109, align 8
  %2610 = add i64 %2609, 8
  %2611 = add i64 %2607, 12
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i64*
  store i64 %2608, i64* %2612, align 8
  %2613 = load i64, i64* %3, align 8
  %2614 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %2614, i64* %RAX.i70, align 8
  %2615 = load i64, i64* %RCX.i1109, align 8
  %2616 = add i64 %2615, 16
  %2617 = add i64 %2613, 12
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2616 to i64*
  store i64 %2614, i64* %2618, align 8
  %2619 = load i64, i64* %3, align 8
  %2620 = add i64 %2619, 2126
  store i64 %2620, i64* %3, align 8
  br label %block_.L_41be00

block_.L_41b5b7:                                  ; preds = %block_41b577
  store i64 ptrtoint (%G__0x8822b0_type* @G__0x8822b0 to i64), i64* %RDI.i71, align 8
  %2621 = load i64, i64* %RBP.i, align 8
  %2622 = add i64 %2621, -48
  %2623 = add i64 %2598, 14
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i64*
  %2625 = load i64, i64* %2624, align 8
  store i64 %2625, i64* %RAX.i70, align 8
  %2626 = add i64 %2621, -24
  %2627 = add i64 %2598, 18
  store i64 %2627, i64* %3, align 8
  %2628 = inttoptr i64 %2626 to i64*
  store i64 %2625, i64* %2628, align 8
  %2629 = load i64, i64* %RBP.i, align 8
  %2630 = add i64 %2629, -40
  %2631 = load i64, i64* %3, align 8
  %2632 = add i64 %2631, 4
  store i64 %2632, i64* %3, align 8
  %2633 = inttoptr i64 %2630 to i64*
  %2634 = load i64, i64* %2633, align 8
  store i64 %2634, i64* %RAX.i70, align 8
  %2635 = add i64 %2629, -16
  %2636 = add i64 %2631, 8
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i64*
  store i64 %2634, i64* %2637, align 8
  %2638 = load i64, i64* %RBP.i, align 8
  %2639 = add i64 %2638, -32
  %2640 = load i64, i64* %3, align 8
  %2641 = add i64 %2640, 4
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2639 to i64*
  %2643 = load i64, i64* %2642, align 8
  store i64 %2643, i64* %RAX.i70, align 8
  %2644 = add i64 %2638, -8
  %2645 = add i64 %2640, 8
  store i64 %2645, i64* %3, align 8
  %2646 = inttoptr i64 %2644 to i64*
  store i64 %2643, i64* %2646, align 8
  %2647 = load i64, i64* %3, align 8
  %2648 = zext i32 %2575 to i64
  store i64 %2648, i64* %RCX.i1109, align 8
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -92
  %2651 = add i64 %2647, 10
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i32*
  store i32 %2575, i32* %2652, align 4
  %2653 = load i64, i64* %3, align 8
  %2654 = add i64 %2653, 31949
  %2655 = add i64 %2653, 5
  %2656 = load i64, i64* %6, align 8
  %2657 = add i64 %2656, -8
  %2658 = inttoptr i64 %2657 to i64*
  store i64 %2655, i64* %2658, align 8
  store i64 %2657, i64* %6, align 8
  store i64 %2654, i64* %3, align 8
  %call2_41b5e3 = tail call %struct.Memory* @sub_4232b0.stringize_pv(%struct.State* nonnull %0, i64 %2654, %struct.Memory* %call2_41b4e5)
  %2659 = load i64, i64* %3, align 8
  %2660 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2661 = and i32 %2660, 255
  %2662 = tail call i32 @llvm.ctpop.i32(i32 %2661)
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = xor i8 %2664, 1
  store i8 %2665, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2666 = icmp eq i32 %2660, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %29, align 1
  %2668 = lshr i32 %2660, 31
  %2669 = trunc i32 %2668 to i8
  store i8 %2669, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v420 = select i1 %2666, i64 14, i64 30
  %2670 = add i64 %2659, %.v420
  store i64 %2670, i64* %3, align 8
  %2671 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  br i1 %2666, label %block_41b5f6, label %block_.L_41b606

block_41b5f6:                                     ; preds = %block_.L_41b5b7
  %2672 = zext i32 %2671 to i64
  store i64 %2672, i64* %RAX.i70, align 8
  %2673 = trunc i32 %2671 to i8
  store i8 %2673, i8* %CL.i662, align 1
  %2674 = add i64 %2670, 16
  store i64 %2674, i64* %3, align 8
  store i8 %2673, i8* getelementptr inbounds (%G_0x86678c_type, %G_0x86678c_type* @G_0x86678c, i64 0, i32 0, i64 0), align 8
  br label %block_.L_41b606

block_.L_41b606:                                  ; preds = %block_.L_41b5b7, %block_41b5f6
  %2675 = phi i64 [ %2674, %block_41b5f6 ], [ %2670, %block_.L_41b5b7 ]
  %2676 = add i32 %2671, -2
  %2677 = icmp ult i32 %2671, 2
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %14, align 1
  %2679 = and i32 %2676, 255
  %2680 = tail call i32 @llvm.ctpop.i32(i32 %2679)
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = xor i8 %2682, 1
  store i8 %2683, i8* %21, align 1
  %2684 = xor i32 %2676, %2671
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %26, align 1
  %2688 = icmp eq i32 %2676, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %29, align 1
  %2690 = lshr i32 %2676, 31
  %2691 = trunc i32 %2690 to i8
  store i8 %2691, i8* %32, align 1
  %2692 = lshr i32 %2671, 31
  %2693 = xor i32 %2690, %2692
  %2694 = add nuw nsw i32 %2693, %2692
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %38, align 1
  %2697 = icmp ne i8 %2691, 0
  %2698 = xor i1 %2697, %2695
  %.v421 = select i1 %2698, i64 26, i64 14
  %2699 = add i64 %2675, %.v421
  store i64 %2699, i64* %3, align 8
  br i1 %2698, label %block_.L_41b620, label %block_41b614

block_41b614:                                     ; preds = %block_.L_41b606
  %2700 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RDI.i71, align 8
  %2702 = add i64 %2699, 32252
  %2703 = add i64 %2699, 12
  %2704 = load i64, i64* %6, align 8
  %2705 = add i64 %2704, -8
  %2706 = inttoptr i64 %2705 to i64*
  store i64 %2703, i64* %2706, align 8
  store i64 %2705, i64* %6, align 8
  store i64 %2702, i64* %3, align 8
  %call2_41b61b = tail call %struct.Memory* @sub_423410.post_thinking(%struct.State* nonnull %0, i64 %2702, %struct.Memory* %call2_41b5e3)
  %.pre296 = load i64, i64* %3, align 8
  br label %block_.L_41b620

block_.L_41b620:                                  ; preds = %block_41b614, %block_.L_41b606
  %2707 = phi i64 [ %2699, %block_.L_41b606 ], [ %.pre296, %block_41b614 ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_41b5e3, %block_.L_41b606 ], [ %call2_41b61b, %block_41b614 ]
  %2708 = load i64, i64* %RBP.i, align 8
  %2709 = add i64 %2708, -92
  %2710 = add i64 %2707, 7
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = add i32 %2712, -900000
  %2714 = icmp ult i32 %2712, 900000
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %14, align 1
  %2716 = and i32 %2713, 255
  %2717 = tail call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  store i8 %2720, i8* %21, align 1
  %2721 = xor i32 %2713, %2712
  %2722 = lshr i32 %2721, 4
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  store i8 %2724, i8* %26, align 1
  %2725 = icmp eq i32 %2713, 0
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %29, align 1
  %2727 = lshr i32 %2713, 31
  %2728 = trunc i32 %2727 to i8
  store i8 %2728, i8* %32, align 1
  %2729 = lshr i32 %2712, 31
  %2730 = xor i32 %2727, %2729
  %2731 = add nuw nsw i32 %2730, %2729
  %2732 = icmp eq i32 %2731, 2
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %38, align 1
  %2734 = icmp ne i8 %2728, 0
  %2735 = xor i1 %2734, %2732
  %2736 = or i1 %2725, %2735
  %.v422 = select i1 %2736, i64 43, i64 13
  %2737 = add i64 %2707, %.v422
  store i64 %2737, i64* %3, align 8
  br i1 %2736, label %block_.L_41b64b, label %block_41b62d

block_41b62d:                                     ; preds = %block_.L_41b620
  %2738 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %2739 = sub i32 1000000, %2738
  %2740 = zext i32 %2739 to i64
  store i64 %2740, i64* %RAX.i70, align 8
  %2741 = lshr i32 %2739, 31
  %2742 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2743 = sub i32 %2739, %2742
  %2744 = icmp ult i32 %2739, %2742
  %2745 = zext i1 %2744 to i8
  store i8 %2745, i8* %14, align 1
  %2746 = and i32 %2743, 255
  %2747 = tail call i32 @llvm.ctpop.i32(i32 %2746)
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  store i8 %2750, i8* %21, align 1
  %2751 = xor i32 %2742, %2739
  %2752 = xor i32 %2751, %2743
  %2753 = lshr i32 %2752, 4
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  store i8 %2755, i8* %26, align 1
  %2756 = icmp eq i32 %2743, 0
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %29, align 1
  %2758 = lshr i32 %2743, 31
  %2759 = trunc i32 %2758 to i8
  store i8 %2759, i8* %32, align 1
  %2760 = lshr i32 %2742, 31
  %2761 = xor i32 %2760, %2741
  %2762 = xor i32 %2758, %2741
  %2763 = add nuw nsw i32 %2762, %2761
  %2764 = icmp eq i32 %2763, 2
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %38, align 1
  %2766 = icmp ne i8 %2759, 0
  %2767 = xor i1 %2766, %2764
  %.v423 = select i1 %2767, i64 25, i64 30
  %2768 = add i64 %2737, %.v423
  store i64 %2768, i64* %3, align 8
  br i1 %2767, label %block_41b646, label %block_.L_41b64b

block_41b646:                                     ; preds = %block_41b62d
  %2769 = add i64 %2768, 135
  br label %block_.L_41b6cd.sink.split

block_.L_41b64b:                                  ; preds = %block_41b62d, %block_.L_41b620
  %2770 = phi i64 [ %2768, %block_41b62d ], [ %2737, %block_.L_41b620 ]
  %2771 = add i64 %2770, 5
  store i64 %2771, i64* %3, align 8
  br label %block_.L_41b650

block_.L_41b650:                                  ; preds = %block_41b569, %block_.L_41b55b, %block_.L_41b64b
  %2772 = phi i64 [ %2563, %block_.L_41b55b ], [ %2574, %block_41b569 ], [ %2771, %block_.L_41b64b ]
  %MEMORY.40 = phi %struct.Memory* [ %call2_41b4e5, %block_.L_41b55b ], [ %call2_41b4e5, %block_41b569 ], [ %MEMORY.38, %block_.L_41b64b ]
  %2773 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2774 = and i32 %2773, 255
  %2775 = tail call i32 @llvm.ctpop.i32(i32 %2774)
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  %2778 = xor i8 %2777, 1
  store i8 %2778, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2779 = icmp eq i32 %2773, 0
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %29, align 1
  %2781 = lshr i32 %2773, 31
  %2782 = trunc i32 %2781 to i8
  store i8 %2782, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v416 = select i1 %2779, i64 19, i64 14
  %2783 = add i64 %2772, %.v416
  store i64 %2783, i64* %3, align 8
  br i1 %2779, label %block_.L_41b663, label %block_41b65e

block_41b65e:                                     ; preds = %block_.L_41b650
  %2784 = add i64 %2783, 111
  br label %block_.L_41b6cd.sink.split

block_.L_41b663:                                  ; preds = %block_.L_41b650
  %2785 = load i64, i64* %RBP.i, align 8
  %2786 = add i64 %2785, -80
  %2787 = add i64 %2783, 7
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2786 to i32*
  store i32 0, i32* %2788, align 4
  %.pre297 = load i64, i64* %3, align 8
  br label %block_.L_41b66a

block_.L_41b66a:                                  ; preds = %block_41b677, %block_.L_41b663
  %2789 = phi i64 [ %2879, %block_41b677 ], [ %.pre297, %block_.L_41b663 ]
  %2790 = load i64, i64* %RBP.i, align 8
  %2791 = add i64 %2790, -80
  %2792 = add i64 %2789, 7
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i32*
  %2794 = load i32, i32* %2793, align 4
  %2795 = add i32 %2794, -300
  %2796 = icmp ult i32 %2794, 300
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %14, align 1
  %2798 = and i32 %2795, 255
  %2799 = tail call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  store i8 %2802, i8* %21, align 1
  %2803 = xor i32 %2795, %2794
  %2804 = lshr i32 %2803, 4
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  store i8 %2806, i8* %26, align 1
  %2807 = icmp eq i32 %2795, 0
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %29, align 1
  %2809 = lshr i32 %2795, 31
  %2810 = trunc i32 %2809 to i8
  store i8 %2810, i8* %32, align 1
  %2811 = lshr i32 %2794, 31
  %2812 = xor i32 %2809, %2811
  %2813 = add nuw nsw i32 %2812, %2811
  %2814 = icmp eq i32 %2813, 2
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %38, align 1
  %2816 = icmp ne i8 %2810, 0
  %2817 = xor i1 %2816, %2814
  %.v417 = select i1 %2817, i64 13, i64 72
  %2818 = add i64 %2789, %.v417
  store i64 %2818, i64* %3, align 8
  br i1 %2817, label %block_41b677, label %block_.L_41b6b2

block_41b677:                                     ; preds = %block_.L_41b66a
  %2819 = add i64 %2818, 4
  store i64 %2819, i64* %3, align 8
  %2820 = load i32, i32* %2793, align 4
  %2821 = sext i32 %2820 to i64
  store i64 %2821, i64* %RAX.i70, align 8
  %2822 = shl nsw i64 %2821, 2
  %2823 = add nsw i64 %2822, 6481200
  %2824 = add i64 %2818, 15
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i32*
  store i32 0, i32* %2825, align 4
  %2826 = load i64, i64* %RBP.i, align 8
  %2827 = add i64 %2826, -80
  %2828 = load i64, i64* %3, align 8
  %2829 = add i64 %2828, 4
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2827 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = sext i32 %2831 to i64
  store i64 %2832, i64* %RAX.i70, align 8
  %2833 = shl nsw i64 %2832, 2
  %2834 = add nsw i64 %2833, 6524000
  %2835 = add i64 %2828, 15
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  store i32 0, i32* %2836, align 4
  %2837 = load i64, i64* %RBP.i, align 8
  %2838 = add i64 %2837, -80
  %2839 = load i64, i64* %3, align 8
  %2840 = add i64 %2839, 4
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2838 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = sext i32 %2842 to i64
  store i64 %2843, i64* %RAX.i70, align 8
  %2844 = shl nsw i64 %2843, 2
  %2845 = add nsw i64 %2844, 8920576
  %2846 = add i64 %2839, 15
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2845 to i32*
  store i32 0, i32* %2847, align 4
  %2848 = load i64, i64* %RBP.i, align 8
  %2849 = add i64 %2848, -80
  %2850 = load i64, i64* %3, align 8
  %2851 = add i64 %2850, 3
  store i64 %2851, i64* %3, align 8
  %2852 = inttoptr i64 %2849 to i32*
  %2853 = load i32, i32* %2852, align 4
  %2854 = add i32 %2853, 1
  %2855 = zext i32 %2854 to i64
  store i64 %2855, i64* %RAX.i70, align 8
  %2856 = icmp eq i32 %2853, -1
  %2857 = icmp eq i32 %2854, 0
  %2858 = or i1 %2856, %2857
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %14, align 1
  %2860 = and i32 %2854, 255
  %2861 = tail call i32 @llvm.ctpop.i32(i32 %2860)
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  %2864 = xor i8 %2863, 1
  store i8 %2864, i8* %21, align 1
  %2865 = xor i32 %2854, %2853
  %2866 = lshr i32 %2865, 4
  %2867 = trunc i32 %2866 to i8
  %2868 = and i8 %2867, 1
  store i8 %2868, i8* %26, align 1
  %2869 = zext i1 %2857 to i8
  store i8 %2869, i8* %29, align 1
  %2870 = lshr i32 %2854, 31
  %2871 = trunc i32 %2870 to i8
  store i8 %2871, i8* %32, align 1
  %2872 = lshr i32 %2853, 31
  %2873 = xor i32 %2870, %2872
  %2874 = add nuw nsw i32 %2873, %2870
  %2875 = icmp eq i32 %2874, 2
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %38, align 1
  %2877 = add i64 %2850, 9
  store i64 %2877, i64* %3, align 8
  store i32 %2854, i32* %2852, align 4
  %2878 = load i64, i64* %3, align 8
  %2879 = add i64 %2878, -67
  store i64 %2879, i64* %3, align 8
  br label %block_.L_41b66a

block_.L_41b6b2:                                  ; preds = %block_.L_41b66a
  %2880 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2881 = add i32 %2880, 1
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RAX.i70, align 8
  %2883 = icmp eq i32 %2880, -1
  %2884 = icmp eq i32 %2881, 0
  %2885 = or i1 %2883, %2884
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %14, align 1
  %2887 = and i32 %2881, 255
  %2888 = tail call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  store i8 %2891, i8* %21, align 1
  %2892 = xor i32 %2881, %2880
  %2893 = lshr i32 %2892, 4
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  store i8 %2895, i8* %26, align 1
  %2896 = zext i1 %2884 to i8
  store i8 %2896, i8* %29, align 1
  %2897 = lshr i32 %2881, 31
  %2898 = trunc i32 %2897 to i8
  store i8 %2898, i8* %32, align 1
  %2899 = lshr i32 %2880, 31
  %2900 = xor i32 %2897, %2899
  %2901 = add nuw nsw i32 %2900, %2897
  %2902 = icmp eq i32 %2901, 2
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %38, align 1
  store i32 %2881, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2904 = add i64 %2818, -1054
  store i64 %2904, i64* %3, align 8
  br label %block_.L_41b294

block_.L_41b6cd.sink.split:                       ; preds = %block_41b2fe, %block_41b388, %block_41b54c, %block_41b646, %block_41b65e
  %.sink = phi i64 [ %2784, %block_41b65e ], [ %2769, %block_41b646 ], [ %2550, %block_41b54c ], [ %2152, %block_41b388 ], [ %2010, %block_41b2fe ]
  %MEMORY.42.ph = phi %struct.Memory* [ %MEMORY.40, %block_41b65e ], [ %MEMORY.38, %block_41b646 ], [ %call2_41b4e5, %block_41b54c ], [ %call2_41b354, %block_41b388 ], [ %1976, %block_41b2fe ]
  store i64 %.sink, i64* %3, align 8
  br label %block_.L_41b6cd

block_.L_41b6cd.loopexit:                         ; preds = %block_.L_41b294
  br label %block_.L_41b6cd

block_.L_41b6cd:                                  ; preds = %block_.L_41b6cd.loopexit, %block_.L_41b6cd.sink.split
  %2905 = phi i64 [ %.sink, %block_.L_41b6cd.sink.split ], [ %1911, %block_.L_41b6cd.loopexit ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.42.ph, %block_.L_41b6cd.sink.split ], [ %MEMORY.28, %block_.L_41b6cd.loopexit ]
  %2906 = add i64 %2905, 5
  store i64 %2906, i64* %3, align 8
  %.pre298 = load i32, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  br label %block_.L_41b6d2

block_.L_41b6d2:                                  ; preds = %block_.L_41b6cd, %block_41b08b
  %2907 = phi i32 [ %1330, %block_41b08b ], [ %.pre298, %block_.L_41b6cd ]
  %storemerge124 = phi i64 [ %1400, %block_41b08b ], [ %2906, %block_.L_41b6cd ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.21, %block_41b08b ], [ %MEMORY.42, %block_.L_41b6cd ]
  store i8 0, i8* %14, align 1
  %2908 = and i32 %2907, 255
  %2909 = tail call i32 @llvm.ctpop.i32(i32 %2908)
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  store i8 %2912, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2913 = icmp eq i32 %2907, 0
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %29, align 1
  %2915 = lshr i32 %2907, 31
  %2916 = trunc i32 %2915 to i8
  store i8 %2916, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v348 = select i1 %2913, i64 14, i64 495
  %2917 = add i64 %storemerge124, %.v348
  store i64 %2917, i64* %3, align 8
  br i1 %2913, label %block_41b6e0, label %block_.L_41b8c1

block_41b6e0:                                     ; preds = %block_.L_41b6d2
  %2918 = load i64, i64* %RBP.i, align 8
  %2919 = add i64 %2918, -24
  %2920 = add i64 %2917, 4
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i64*
  %2922 = load i64, i64* %2921, align 8
  store i64 %2922, i64* %RAX.i70, align 8
  %2923 = add i64 %2918, -72
  %2924 = add i64 %2917, 8
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  store i64 %2922, i64* %2925, align 8
  %2926 = load i64, i64* %RBP.i, align 8
  %2927 = add i64 %2926, -16
  %2928 = load i64, i64* %3, align 8
  %2929 = add i64 %2928, 4
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2927 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RAX.i70, align 8
  %2932 = add i64 %2926, -64
  %2933 = add i64 %2928, 8
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i64*
  store i64 %2931, i64* %2934, align 8
  %2935 = load i64, i64* %RBP.i, align 8
  %2936 = add i64 %2935, -8
  %2937 = load i64, i64* %3, align 8
  %2938 = add i64 %2937, 4
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2936 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RAX.i70, align 8
  %2941 = add i64 %2935, -56
  %2942 = add i64 %2937, 8
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i64*
  store i64 %2940, i64* %2943, align 8
  %2944 = load i64, i64* %3, align 8
  %2945 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %2946 = add i32 %2945, -4
  %2947 = icmp ult i32 %2945, 4
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %14, align 1
  %2949 = and i32 %2946, 255
  %2950 = tail call i32 @llvm.ctpop.i32(i32 %2949)
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %21, align 1
  %2954 = xor i32 %2946, %2945
  %2955 = lshr i32 %2954, 4
  %2956 = trunc i32 %2955 to i8
  %2957 = and i8 %2956, 1
  store i8 %2957, i8* %26, align 1
  %2958 = icmp eq i32 %2946, 0
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %29, align 1
  %2960 = lshr i32 %2946, 31
  %2961 = trunc i32 %2960 to i8
  store i8 %2961, i8* %32, align 1
  %2962 = lshr i32 %2945, 31
  %2963 = xor i32 %2960, %2962
  %2964 = add nuw nsw i32 %2963, %2962
  %2965 = icmp eq i32 %2964, 2
  %2966 = zext i1 %2965 to i8
  store i8 %2966, i8* %38, align 1
  %.v392 = select i1 %2958, i64 28, i64 14
  %2967 = add i64 %2944, %.v392
  store i64 %2967, i64* %3, align 8
  br i1 %2958, label %block_.L_41b714, label %block_41b706

block_41b706:                                     ; preds = %block_41b6e0
  %2968 = add i32 %2945, -3
  %2969 = icmp ult i32 %2945, 3
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %14, align 1
  %2971 = and i32 %2968, 255
  %2972 = tail call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  store i8 %2975, i8* %21, align 1
  %2976 = xor i32 %2968, %2945
  %2977 = lshr i32 %2976, 4
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  store i8 %2979, i8* %26, align 1
  %2980 = icmp eq i32 %2968, 0
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %29, align 1
  %2982 = lshr i32 %2968, 31
  %2983 = trunc i32 %2982 to i8
  store i8 %2983, i8* %32, align 1
  %2984 = xor i32 %2982, %2962
  %2985 = add nuw nsw i32 %2984, %2962
  %2986 = icmp eq i32 %2985, 2
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %38, align 1
  %.v393 = select i1 %2980, i64 14, i64 438
  %2988 = add i64 %2967, %.v393
  store i64 %2988, i64* %3, align 8
  br i1 %2980, label %block_.L_41b714, label %block_.L_41b8bc

block_.L_41b714:                                  ; preds = %block_41b706, %block_41b6e0
  %2989 = phi i64 [ %2988, %block_41b706 ], [ %2967, %block_41b6e0 ]
  %2990 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2991 = and i32 %2990, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2996 = icmp eq i32 %2990, 0
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %29, align 1
  %2998 = lshr i32 %2990, 31
  %2999 = trunc i32 %2998 to i8
  store i8 %2999, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v394 = select i1 %2996, i64 14, i64 424
  %3000 = add i64 %2989, %.v394
  store i64 %3000, i64* %3, align 8
  br i1 %2996, label %block_41b722, label %block_.L_41b8bc

block_41b722:                                     ; preds = %block_.L_41b714
  %3001 = load i32, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  store i8 0, i8* %14, align 1
  %3002 = and i32 %3001, 255
  %3003 = tail call i32 @llvm.ctpop.i32(i32 %3002)
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = xor i8 %3005, 1
  store i8 %3006, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3007 = icmp eq i32 %3001, 0
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %29, align 1
  %3009 = lshr i32 %3001, 31
  %3010 = trunc i32 %3009 to i8
  store i8 %3010, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v395 = select i1 %3007, i64 14, i64 410
  %3011 = add i64 %3000, %.v395
  store i64 %3011, i64* %3, align 8
  br i1 %3007, label %block_41b730, label %block_.L_41b8bc

block_41b730:                                     ; preds = %block_41b722
  %3012 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %3013 = and i32 %3012, 255
  %3014 = tail call i32 @llvm.ctpop.i32(i32 %3013)
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = xor i8 %3016, 1
  store i8 %3017, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3018 = icmp eq i32 %3012, 0
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %29, align 1
  %3020 = lshr i32 %3012, 31
  %3021 = trunc i32 %3020 to i8
  store i8 %3021, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v396 = select i1 %3018, i64 14, i64 396
  %3022 = add i64 %3011, %.v396
  store i64 %3022, i64* %3, align 8
  br i1 %3018, label %block_41b73e, label %block_.L_41b8bc

block_41b73e:                                     ; preds = %block_41b730
  %3023 = load i64, i64* %RBP.i, align 8
  %3024 = add i64 %3023, -12528
  store i64 %3024, i64* %RDI.i71, align 8
  %3025 = add i64 %3023, -24
  store i64 %3025, i64* %RAX.i70, align 8
  store i32 0, i32* bitcast (%G_0x62ea10_type* @G_0x62ea10 to i32*), align 8
  %.cast = inttoptr i64 %3025 to i64*
  %3026 = add i64 %3022, 25
  store i64 %3026, i64* %3, align 8
  %3027 = load i64, i64* %.cast, align 8
  store i64 %3027, i64* %RCX.i1163, align 8
  %3028 = load i64*, i64** %86, align 8
  %3029 = add i64 %3022, 29
  store i64 %3029, i64* %3, align 8
  store i64 %3027, i64* %3028, align 8
  %3030 = load i64, i64* %RAX.i70, align 8
  %3031 = add i64 %3030, 8
  %3032 = load i64, i64* %3, align 8
  %3033 = add i64 %3032, 4
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3031 to i64*
  %3035 = load i64, i64* %3034, align 8
  store i64 %3035, i64* %RCX.i1163, align 8
  %3036 = load i64, i64* %6, align 8
  %3037 = add i64 %3036, 8
  %3038 = add i64 %3032, 9
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i64*
  store i64 %3035, i64* %3039, align 8
  %3040 = load i64, i64* %RAX.i70, align 8
  %3041 = add i64 %3040, 16
  %3042 = load i64, i64* %3, align 8
  %3043 = add i64 %3042, 4
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3041 to i64*
  %3045 = load i64, i64* %3044, align 8
  store i64 %3045, i64* %RAX.i70, align 8
  %3046 = load i64, i64* %6, align 8
  %3047 = add i64 %3046, 16
  %3048 = add i64 %3042, 9
  store i64 %3048, i64* %3, align 8
  %3049 = inttoptr i64 %3047 to i64*
  store i64 %3045, i64* %3049, align 8
  %3050 = load i64, i64* %3, align 8
  %3051 = add i64 %3050, -23933
  %3052 = add i64 %3050, 5
  %3053 = load i64, i64* %6, align 8
  %3054 = add i64 %3053, -8
  %3055 = inttoptr i64 %3054 to i64*
  store i64 %3052, i64* %3055, align 8
  store i64 %3054, i64* %6, align 8
  store i64 %3051, i64* %3, align 8
  %call2_41b76d = tail call %struct.Memory* @sub_4159f0.proofnumbercheck(%struct.State* nonnull %0, i64 %3051, %struct.Memory* %MEMORY.43)
  %3056 = load i64, i64* %RBP.i, align 8
  %3057 = add i64 %3056, -12528
  %3058 = load i64, i64* %3, align 8
  %3059 = add i64 %3058, 7
  store i64 %3059, i64* %3, align 8
  %3060 = inttoptr i64 %3057 to i64*
  %3061 = load i64, i64* %3060, align 8
  store i64 %3061, i64* %RAX.i70, align 8
  %3062 = add i64 %3056, -24
  %3063 = add i64 %3058, 11
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i64*
  store i64 %3061, i64* %3064, align 8
  %3065 = load i64, i64* %RBP.i, align 8
  %3066 = add i64 %3065, -12520
  %3067 = load i64, i64* %3, align 8
  %3068 = add i64 %3067, 7
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3066 to i64*
  %3070 = load i64, i64* %3069, align 8
  store i64 %3070, i64* %RAX.i70, align 8
  %3071 = add i64 %3065, -16
  %3072 = add i64 %3067, 11
  store i64 %3072, i64* %3, align 8
  %3073 = inttoptr i64 %3071 to i64*
  store i64 %3070, i64* %3073, align 8
  %3074 = load i64, i64* %RBP.i, align 8
  %3075 = add i64 %3074, -12512
  %3076 = load i64, i64* %3, align 8
  %3077 = add i64 %3076, 7
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3075 to i64*
  %3079 = load i64, i64* %3078, align 8
  store i64 %3079, i64* %RAX.i70, align 8
  %3080 = add i64 %3074, -8
  %3081 = add i64 %3076, 11
  store i64 %3081, i64* %3, align 8
  %3082 = inttoptr i64 %3080 to i64*
  store i64 %3079, i64* %3082, align 8
  %3083 = load i64, i64* %RBP.i, align 8
  %3084 = add i64 %3083, -12416
  %3085 = load i64, i64* %3, align 8
  %3086 = add i64 %3085, 7
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3084 to i32*
  %3088 = load i32, i32* %3087, align 4
  %3089 = add i32 %3088, -10
  %3090 = icmp ult i32 %3088, 10
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %14, align 1
  %3092 = and i32 %3089, 255
  %3093 = tail call i32 @llvm.ctpop.i32(i32 %3092)
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = xor i8 %3095, 1
  store i8 %3096, i8* %21, align 1
  %3097 = xor i32 %3089, %3088
  %3098 = lshr i32 %3097, 4
  %3099 = trunc i32 %3098 to i8
  %3100 = and i8 %3099, 1
  store i8 %3100, i8* %26, align 1
  %3101 = icmp eq i32 %3089, 0
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %29, align 1
  %3103 = lshr i32 %3089, 31
  %3104 = trunc i32 %3103 to i8
  store i8 %3104, i8* %32, align 1
  %3105 = lshr i32 %3088, 31
  %3106 = xor i32 %3103, %3105
  %3107 = add nuw nsw i32 %3106, %3105
  %3108 = icmp eq i32 %3107, 2
  %3109 = zext i1 %3108 to i8
  store i8 %3109, i8* %38, align 1
  %3110 = icmp ne i8 %3104, 0
  %3111 = xor i1 %3110, %3108
  %.v397 = select i1 %3111, i64 13, i64 292
  %3112 = add i64 %3085, %.v397
  store i64 %3112, i64* %3, align 8
  br i1 %3111, label %block_41b7a0, label %block_.L_41b8b7

block_41b7a0:                                     ; preds = %block_41b73e
  %3113 = load i32, i32* bitcast (%G_0x62ea10_type* @G_0x62ea10 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3114 = and i32 %3113, 255
  %3115 = tail call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  store i8 %3118, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3119 = icmp eq i32 %3113, 0
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %29, align 1
  %3121 = lshr i32 %3113, 31
  %3122 = trunc i32 %3121 to i8
  store i8 %3122, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v398 = select i1 %3119, i64 279, i64 14
  %3123 = add i64 %3112, %.v398
  store i64 %3123, i64* %3, align 8
  br i1 %3119, label %block_.L_41b8b7, label %block_41b7ae

block_41b7ae:                                     ; preds = %block_41b7a0
  %3124 = add i64 %3123, 6
  store i64 %3124, i64* %3, align 8
  %3125 = load i32, i32* %3087, align 4
  %3126 = add i32 %3125, 1
  %3127 = zext i32 %3126 to i64
  store i64 %3127, i64* %RAX.i70, align 8
  %3128 = icmp eq i32 %3125, -1
  %3129 = icmp eq i32 %3126, 0
  %3130 = or i1 %3128, %3129
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %14, align 1
  %3132 = and i32 %3126, 255
  %3133 = tail call i32 @llvm.ctpop.i32(i32 %3132)
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  %3136 = xor i8 %3135, 1
  store i8 %3136, i8* %21, align 1
  %3137 = xor i32 %3126, %3125
  %3138 = lshr i32 %3137, 4
  %3139 = trunc i32 %3138 to i8
  %3140 = and i8 %3139, 1
  store i8 %3140, i8* %26, align 1
  %3141 = zext i1 %3129 to i8
  store i8 %3141, i8* %29, align 1
  %3142 = lshr i32 %3126, 31
  %3143 = trunc i32 %3142 to i8
  store i8 %3143, i8* %32, align 1
  %3144 = lshr i32 %3125, 31
  %3145 = xor i32 %3142, %3144
  %3146 = add nuw nsw i32 %3145, %3142
  %3147 = icmp eq i32 %3146, 2
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %38, align 1
  %3149 = add i64 %3123, 15
  store i64 %3149, i64* %3, align 8
  store i32 %3126, i32* %3087, align 4
  %3150 = load i64, i64* %RBP.i, align 8
  %3151 = add i64 %3150, -76
  %3152 = load i64, i64* %3, align 8
  %3153 = add i64 %3152, 7
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3151 to i32*
  store i32 0, i32* %3154, align 4
  %.pre299 = load i64, i64* %3, align 8
  br label %block_.L_41b7c4

block_.L_41b7c4:                                  ; preds = %block_.L_41b840, %block_41b7ae
  %3155 = phi i64 [ %3439, %block_.L_41b840 ], [ %.pre299, %block_41b7ae ]
  %3156 = load i64, i64* %RBP.i, align 8
  %3157 = add i64 %3156, -76
  %3158 = add i64 %3155, 3
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  %3160 = load i32, i32* %3159, align 4
  %3161 = zext i32 %3160 to i64
  store i64 %3161, i64* %RAX.i70, align 8
  %3162 = add i64 %3156, -12420
  %3163 = add i64 %3155, 9
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = sub i32 %3160, %3165
  %3167 = icmp ult i32 %3160, %3165
  %3168 = zext i1 %3167 to i8
  store i8 %3168, i8* %14, align 1
  %3169 = and i32 %3166, 255
  %3170 = tail call i32 @llvm.ctpop.i32(i32 %3169)
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  %3173 = xor i8 %3172, 1
  store i8 %3173, i8* %21, align 1
  %3174 = xor i32 %3165, %3160
  %3175 = xor i32 %3174, %3166
  %3176 = lshr i32 %3175, 4
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  store i8 %3178, i8* %26, align 1
  %3179 = icmp eq i32 %3166, 0
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %29, align 1
  %3181 = lshr i32 %3166, 31
  %3182 = trunc i32 %3181 to i8
  store i8 %3182, i8* %32, align 1
  %3183 = lshr i32 %3160, 31
  %3184 = lshr i32 %3165, 31
  %3185 = xor i32 %3184, %3183
  %3186 = xor i32 %3181, %3183
  %3187 = add nuw nsw i32 %3186, %3185
  %3188 = icmp eq i32 %3187, 2
  %3189 = zext i1 %3188 to i8
  store i8 %3189, i8* %38, align 1
  %3190 = icmp ne i8 %3182, 0
  %3191 = xor i1 %3190, %3188
  %.v399 = select i1 %3191, i64 15, i64 143
  %3192 = add i64 %3155, %.v399
  store i64 %3192, i64* %3, align 8
  br i1 %3191, label %block_41b7d3, label %block_.L_41b853.loopexit

block_41b7d3:                                     ; preds = %block_.L_41b7c4
  %3193 = add i64 %3156, -12400
  store i64 %3193, i64* %RAX.i70, align 8
  %3194 = add i64 %3192, 11
  store i64 %3194, i64* %3, align 8
  %3195 = load i32, i32* %3159, align 4
  %3196 = sext i32 %3195 to i64
  %3197 = mul nsw i64 %3196, 24
  store i64 %3197, i64* %RCX.i1163, align 8
  %3198 = lshr i64 %3197, 63
  %3199 = add i64 %3197, %3193
  store i64 %3199, i64* %RAX.i70, align 8
  %3200 = icmp ult i64 %3199, %3193
  %3201 = icmp ult i64 %3199, %3197
  %3202 = or i1 %3200, %3201
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %14, align 1
  %3204 = trunc i64 %3199 to i32
  %3205 = and i32 %3204, 255
  %3206 = tail call i32 @llvm.ctpop.i32(i32 %3205)
  %3207 = trunc i32 %3206 to i8
  %3208 = and i8 %3207, 1
  %3209 = xor i8 %3208, 1
  store i8 %3209, i8* %21, align 1
  %3210 = xor i64 %3197, %3193
  %3211 = xor i64 %3210, %3199
  %3212 = lshr i64 %3211, 4
  %3213 = trunc i64 %3212 to i8
  %3214 = and i8 %3213, 1
  store i8 %3214, i8* %26, align 1
  %3215 = icmp eq i64 %3199, 0
  %3216 = zext i1 %3215 to i8
  store i8 %3216, i8* %29, align 1
  %3217 = lshr i64 %3199, 63
  %3218 = trunc i64 %3217 to i8
  store i8 %3218, i8* %32, align 1
  %3219 = lshr i64 %3193, 63
  %3220 = xor i64 %3217, %3219
  %3221 = xor i64 %3217, %3198
  %3222 = add nuw nsw i64 %3220, %3221
  %3223 = icmp eq i64 %3222, 2
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %38, align 1
  %3225 = inttoptr i64 %3199 to i32*
  %3226 = add i64 %3192, 20
  store i64 %3226, i64* %3, align 8
  %3227 = load i32, i32* %3225, align 4
  %3228 = zext i32 %3227 to i64
  store i64 %3228, i64* %RDX.i1107, align 8
  %3229 = add i64 %3156, -72
  %3230 = add i64 %3192, 23
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = sub i32 %3227, %3232
  %3234 = icmp ult i32 %3227, %3232
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %14, align 1
  %3236 = and i32 %3233, 255
  %3237 = tail call i32 @llvm.ctpop.i32(i32 %3236)
  %3238 = trunc i32 %3237 to i8
  %3239 = and i8 %3238, 1
  %3240 = xor i8 %3239, 1
  store i8 %3240, i8* %21, align 1
  %3241 = xor i32 %3232, %3227
  %3242 = xor i32 %3241, %3233
  %3243 = lshr i32 %3242, 4
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  store i8 %3245, i8* %26, align 1
  %3246 = icmp eq i32 %3233, 0
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %29, align 1
  %3248 = lshr i32 %3233, 31
  %3249 = trunc i32 %3248 to i8
  store i8 %3249, i8* %32, align 1
  %3250 = lshr i32 %3227, 31
  %3251 = lshr i32 %3232, 31
  %3252 = xor i32 %3251, %3250
  %3253 = xor i32 %3248, %3250
  %3254 = add nuw nsw i32 %3253, %3252
  %3255 = icmp eq i32 %3254, 2
  %3256 = zext i1 %3255 to i8
  store i8 %3256, i8* %38, align 1
  %.v403 = select i1 %3246, i64 29, i64 109
  %3257 = add i64 %3192, %.v403
  store i64 %3257, i64* %3, align 8
  br i1 %3246, label %block_41b7f0, label %block_.L_41b840

block_41b7f0:                                     ; preds = %block_41b7d3
  %3258 = load i64, i64* %RBP.i, align 8
  %3259 = add i64 %3258, -12400
  store i64 %3259, i64* %RAX.i70, align 8
  %3260 = add i64 %3258, -76
  %3261 = add i64 %3257, 11
  store i64 %3261, i64* %3, align 8
  %3262 = inttoptr i64 %3260 to i32*
  %3263 = load i32, i32* %3262, align 4
  %3264 = sext i32 %3263 to i64
  %3265 = mul nsw i64 %3264, 24
  store i64 %3265, i64* %RCX.i1163, align 8
  %3266 = lshr i64 %3265, 63
  %3267 = add i64 %3265, %3259
  store i64 %3267, i64* %RAX.i70, align 8
  %3268 = icmp ult i64 %3267, %3259
  %3269 = icmp ult i64 %3267, %3265
  %3270 = or i1 %3268, %3269
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %14, align 1
  %3272 = trunc i64 %3267 to i32
  %3273 = and i32 %3272, 255
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %21, align 1
  %3278 = xor i64 %3265, %3259
  %3279 = xor i64 %3278, %3267
  %3280 = lshr i64 %3279, 4
  %3281 = trunc i64 %3280 to i8
  %3282 = and i8 %3281, 1
  store i8 %3282, i8* %26, align 1
  %3283 = icmp eq i64 %3267, 0
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %29, align 1
  %3285 = lshr i64 %3267, 63
  %3286 = trunc i64 %3285 to i8
  store i8 %3286, i8* %32, align 1
  %3287 = lshr i64 %3259, 63
  %3288 = xor i64 %3285, %3287
  %3289 = xor i64 %3285, %3266
  %3290 = add nuw nsw i64 %3288, %3289
  %3291 = icmp eq i64 %3290, 2
  %3292 = zext i1 %3291 to i8
  store i8 %3292, i8* %38, align 1
  %3293 = add i64 %3267, 4
  %3294 = add i64 %3257, 21
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = zext i32 %3296 to i64
  store i64 %3297, i64* %RDX.i1107, align 8
  %3298 = add i64 %3258, -68
  %3299 = add i64 %3257, 24
  store i64 %3299, i64* %3, align 8
  %3300 = inttoptr i64 %3298 to i32*
  %3301 = load i32, i32* %3300, align 4
  %3302 = sub i32 %3296, %3301
  %3303 = icmp ult i32 %3296, %3301
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %14, align 1
  %3305 = and i32 %3302, 255
  %3306 = tail call i32 @llvm.ctpop.i32(i32 %3305)
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  store i8 %3309, i8* %21, align 1
  %3310 = xor i32 %3301, %3296
  %3311 = xor i32 %3310, %3302
  %3312 = lshr i32 %3311, 4
  %3313 = trunc i32 %3312 to i8
  %3314 = and i8 %3313, 1
  store i8 %3314, i8* %26, align 1
  %3315 = icmp eq i32 %3302, 0
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %29, align 1
  %3317 = lshr i32 %3302, 31
  %3318 = trunc i32 %3317 to i8
  store i8 %3318, i8* %32, align 1
  %3319 = lshr i32 %3296, 31
  %3320 = lshr i32 %3301, 31
  %3321 = xor i32 %3320, %3319
  %3322 = xor i32 %3317, %3319
  %3323 = add nuw nsw i32 %3322, %3321
  %3324 = icmp eq i32 %3323, 2
  %3325 = zext i1 %3324 to i8
  store i8 %3325, i8* %38, align 1
  %.v404 = select i1 %3315, i64 30, i64 80
  %3326 = add i64 %3257, %.v404
  store i64 %3326, i64* %3, align 8
  br i1 %3315, label %block_41b80e, label %block_.L_41b840

block_41b80e:                                     ; preds = %block_41b7f0
  %3327 = load i64, i64* %RBP.i, align 8
  %3328 = add i64 %3327, -12400
  store i64 %3328, i64* %RAX.i70, align 8
  %3329 = add i64 %3327, -76
  %3330 = add i64 %3326, 11
  store i64 %3330, i64* %3, align 8
  %3331 = inttoptr i64 %3329 to i32*
  %3332 = load i32, i32* %3331, align 4
  %3333 = sext i32 %3332 to i64
  %3334 = mul nsw i64 %3333, 24
  store i64 %3334, i64* %RCX.i1163, align 8
  %3335 = lshr i64 %3334, 63
  %3336 = add i64 %3334, %3328
  store i64 %3336, i64* %RAX.i70, align 8
  %3337 = icmp ult i64 %3336, %3328
  %3338 = icmp ult i64 %3336, %3334
  %3339 = or i1 %3337, %3338
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %14, align 1
  %3341 = trunc i64 %3336 to i32
  %3342 = and i32 %3341, 255
  %3343 = tail call i32 @llvm.ctpop.i32(i32 %3342)
  %3344 = trunc i32 %3343 to i8
  %3345 = and i8 %3344, 1
  %3346 = xor i8 %3345, 1
  store i8 %3346, i8* %21, align 1
  %3347 = xor i64 %3334, %3328
  %3348 = xor i64 %3347, %3336
  %3349 = lshr i64 %3348, 4
  %3350 = trunc i64 %3349 to i8
  %3351 = and i8 %3350, 1
  store i8 %3351, i8* %26, align 1
  %3352 = icmp eq i64 %3336, 0
  %3353 = zext i1 %3352 to i8
  store i8 %3353, i8* %29, align 1
  %3354 = lshr i64 %3336, 63
  %3355 = trunc i64 %3354 to i8
  store i8 %3355, i8* %32, align 1
  %3356 = lshr i64 %3328, 63
  %3357 = xor i64 %3354, %3356
  %3358 = xor i64 %3354, %3335
  %3359 = add nuw nsw i64 %3357, %3358
  %3360 = icmp eq i64 %3359, 2
  %3361 = zext i1 %3360 to i8
  store i8 %3361, i8* %38, align 1
  %3362 = add i64 %3336, 12
  %3363 = add i64 %3326, 21
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3362 to i32*
  %3365 = load i32, i32* %3364, align 4
  %3366 = zext i32 %3365 to i64
  store i64 %3366, i64* %RDX.i1107, align 8
  %3367 = add i64 %3327, -60
  %3368 = add i64 %3326, 24
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  %3370 = load i32, i32* %3369, align 4
  %3371 = sub i32 %3365, %3370
  %3372 = icmp ult i32 %3365, %3370
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %14, align 1
  %3374 = and i32 %3371, 255
  %3375 = tail call i32 @llvm.ctpop.i32(i32 %3374)
  %3376 = trunc i32 %3375 to i8
  %3377 = and i8 %3376, 1
  %3378 = xor i8 %3377, 1
  store i8 %3378, i8* %21, align 1
  %3379 = xor i32 %3370, %3365
  %3380 = xor i32 %3379, %3371
  %3381 = lshr i32 %3380, 4
  %3382 = trunc i32 %3381 to i8
  %3383 = and i8 %3382, 1
  store i8 %3383, i8* %26, align 1
  %3384 = icmp eq i32 %3371, 0
  %3385 = zext i1 %3384 to i8
  store i8 %3385, i8* %29, align 1
  %3386 = lshr i32 %3371, 31
  %3387 = trunc i32 %3386 to i8
  store i8 %3387, i8* %32, align 1
  %3388 = lshr i32 %3365, 31
  %3389 = lshr i32 %3370, 31
  %3390 = xor i32 %3389, %3388
  %3391 = xor i32 %3386, %3388
  %3392 = add nuw nsw i32 %3391, %3390
  %3393 = icmp eq i32 %3392, 2
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %38, align 1
  %.v405 = select i1 %3384, i64 30, i64 50
  %3395 = add i64 %3326, %.v405
  store i64 %3395, i64* %3, align 8
  br i1 %3384, label %block_41b82c, label %block_.L_41b840

block_41b82c:                                     ; preds = %block_41b80e
  %3396 = load i64, i64* %RBP.i, align 8
  %3397 = add i64 %3396, -76
  %3398 = add i64 %3395, 4
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3397 to i32*
  %3400 = load i32, i32* %3399, align 4
  %3401 = sext i32 %3400 to i64
  store i64 %3401, i64* %RAX.i70, align 8
  %3402 = shl nsw i64 %3401, 2
  %3403 = add nsw i64 %3402, 8940528
  %3404 = add i64 %3395, 15
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i32*
  store i32 1, i32* %3405, align 4
  %3406 = load i64, i64* %3, align 8
  %3407 = add i64 %3406, 24
  store i64 %3407, i64* %3, align 8
  %.pre300 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41b853

block_.L_41b840:                                  ; preds = %block_41b80e, %block_41b7f0, %block_41b7d3
  %3408 = phi i64 [ %3395, %block_41b80e ], [ %3326, %block_41b7f0 ], [ %3257, %block_41b7d3 ]
  %3409 = load i64, i64* %RBP.i, align 8
  %3410 = add i64 %3409, -76
  %3411 = add i64 %3408, 8
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = add i32 %3413, 1
  %3415 = zext i32 %3414 to i64
  store i64 %3415, i64* %RAX.i70, align 8
  %3416 = icmp eq i32 %3413, -1
  %3417 = icmp eq i32 %3414, 0
  %3418 = or i1 %3416, %3417
  %3419 = zext i1 %3418 to i8
  store i8 %3419, i8* %14, align 1
  %3420 = and i32 %3414, 255
  %3421 = tail call i32 @llvm.ctpop.i32(i32 %3420)
  %3422 = trunc i32 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = xor i8 %3423, 1
  store i8 %3424, i8* %21, align 1
  %3425 = xor i32 %3414, %3413
  %3426 = lshr i32 %3425, 4
  %3427 = trunc i32 %3426 to i8
  %3428 = and i8 %3427, 1
  store i8 %3428, i8* %26, align 1
  %3429 = zext i1 %3417 to i8
  store i8 %3429, i8* %29, align 1
  %3430 = lshr i32 %3414, 31
  %3431 = trunc i32 %3430 to i8
  store i8 %3431, i8* %32, align 1
  %3432 = lshr i32 %3413, 31
  %3433 = xor i32 %3430, %3432
  %3434 = add nuw nsw i32 %3433, %3430
  %3435 = icmp eq i32 %3434, 2
  %3436 = zext i1 %3435 to i8
  store i8 %3436, i8* %38, align 1
  %3437 = add i64 %3408, 14
  store i64 %3437, i64* %3, align 8
  store i32 %3414, i32* %3412, align 4
  %3438 = load i64, i64* %3, align 8
  %3439 = add i64 %3438, -138
  store i64 %3439, i64* %3, align 8
  br label %block_.L_41b7c4

block_.L_41b853.loopexit:                         ; preds = %block_.L_41b7c4
  br label %block_.L_41b853

block_.L_41b853:                                  ; preds = %block_.L_41b853.loopexit, %block_41b82c
  %3440 = phi i64 [ %3407, %block_41b82c ], [ %3192, %block_.L_41b853.loopexit ]
  %3441 = phi i64 [ %.pre300, %block_41b82c ], [ %3156, %block_.L_41b853.loopexit ]
  %3442 = add i64 %3441, -80
  %3443 = add i64 %3440, 7
  store i64 %3443, i64* %3, align 8
  %3444 = inttoptr i64 %3442 to i32*
  store i32 0, i32* %3444, align 4
  %.pre301 = load i64, i64* %3, align 8
  br label %block_.L_41b85a

block_.L_41b85a:                                  ; preds = %block_.L_41b884, %block_.L_41b853
  %3445 = phi i64 [ %3560, %block_.L_41b884 ], [ %.pre301, %block_.L_41b853 ]
  %3446 = load i64, i64* %RBP.i, align 8
  %3447 = add i64 %3446, -80
  %3448 = add i64 %3445, 3
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = zext i32 %3450 to i64
  store i64 %3451, i64* %RAX.i70, align 8
  %3452 = add i64 %3446, -12420
  %3453 = add i64 %3445, 9
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i32*
  %3455 = load i32, i32* %3454, align 4
  %3456 = sub i32 %3450, %3455
  %3457 = icmp ult i32 %3450, %3455
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %14, align 1
  %3459 = and i32 %3456, 255
  %3460 = tail call i32 @llvm.ctpop.i32(i32 %3459)
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  store i8 %3463, i8* %21, align 1
  %3464 = xor i32 %3455, %3450
  %3465 = xor i32 %3464, %3456
  %3466 = lshr i32 %3465, 4
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  store i8 %3468, i8* %26, align 1
  %3469 = icmp eq i32 %3456, 0
  %3470 = zext i1 %3469 to i8
  store i8 %3470, i8* %29, align 1
  %3471 = lshr i32 %3456, 31
  %3472 = trunc i32 %3471 to i8
  store i8 %3472, i8* %32, align 1
  %3473 = lshr i32 %3450, 31
  %3474 = lshr i32 %3455, 31
  %3475 = xor i32 %3474, %3473
  %3476 = xor i32 %3471, %3473
  %3477 = add nuw nsw i32 %3476, %3475
  %3478 = icmp eq i32 %3477, 2
  %3479 = zext i1 %3478 to i8
  store i8 %3479, i8* %38, align 1
  %3480 = icmp ne i8 %3472, 0
  %3481 = xor i1 %3480, %3478
  %.v400 = select i1 %3481, i64 15, i64 61
  %3482 = add i64 %3445, %.v400
  store i64 %3482, i64* %3, align 8
  br i1 %3481, label %block_41b869, label %block_.L_41b897

block_41b869:                                     ; preds = %block_.L_41b85a
  %3483 = add i64 %3482, 4
  store i64 %3483, i64* %3, align 8
  %3484 = load i32, i32* %3449, align 4
  %3485 = sext i32 %3484 to i64
  store i64 %3485, i64* %RAX.i70, align 8
  %3486 = shl nsw i64 %3485, 2
  %3487 = add nsw i64 %3486, 8940528
  %3488 = add i64 %3482, 12
  store i64 %3488, i64* %3, align 8
  %3489 = inttoptr i64 %3487 to i32*
  %3490 = load i32, i32* %3489, align 4
  store i8 0, i8* %14, align 1
  %3491 = and i32 %3490, 255
  %3492 = tail call i32 @llvm.ctpop.i32(i32 %3491)
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  %3495 = xor i8 %3494, 1
  store i8 %3495, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3496 = icmp eq i32 %3490, 0
  %3497 = zext i1 %3496 to i8
  store i8 %3497, i8* %29, align 1
  %3498 = lshr i32 %3490, 31
  %3499 = trunc i32 %3498 to i8
  store i8 %3499, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v402 = select i1 %3496, i64 27, i64 18
  %3500 = add i64 %3482, %.v402
  store i64 %3500, i64* %3, align 8
  br i1 %3496, label %block_.L_41b884, label %block_41b87b

block_41b87b:                                     ; preds = %block_41b869
  %3501 = add i64 %3446, -84
  %3502 = add i64 %3500, 3
  store i64 %3502, i64* %3, align 8
  %3503 = inttoptr i64 %3501 to i32*
  %3504 = load i32, i32* %3503, align 4
  %3505 = add i32 %3504, 1
  %3506 = zext i32 %3505 to i64
  store i64 %3506, i64* %RAX.i70, align 8
  %3507 = icmp eq i32 %3504, -1
  %3508 = icmp eq i32 %3505, 0
  %3509 = or i1 %3507, %3508
  %3510 = zext i1 %3509 to i8
  store i8 %3510, i8* %14, align 1
  %3511 = and i32 %3505, 255
  %3512 = tail call i32 @llvm.ctpop.i32(i32 %3511)
  %3513 = trunc i32 %3512 to i8
  %3514 = and i8 %3513, 1
  %3515 = xor i8 %3514, 1
  store i8 %3515, i8* %21, align 1
  %3516 = xor i32 %3505, %3504
  %3517 = lshr i32 %3516, 4
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  store i8 %3519, i8* %26, align 1
  %3520 = zext i1 %3508 to i8
  store i8 %3520, i8* %29, align 1
  %3521 = lshr i32 %3505, 31
  %3522 = trunc i32 %3521 to i8
  store i8 %3522, i8* %32, align 1
  %3523 = lshr i32 %3504, 31
  %3524 = xor i32 %3521, %3523
  %3525 = add nuw nsw i32 %3524, %3521
  %3526 = icmp eq i32 %3525, 2
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %38, align 1
  %3528 = add i64 %3500, 9
  store i64 %3528, i64* %3, align 8
  store i32 %3505, i32* %3503, align 4
  %.pre302 = load i64, i64* %3, align 8
  %.pre303 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41b884

block_.L_41b884:                                  ; preds = %block_41b87b, %block_41b869
  %3529 = phi i64 [ %.pre303, %block_41b87b ], [ %3446, %block_41b869 ]
  %3530 = phi i64 [ %.pre302, %block_41b87b ], [ %3500, %block_41b869 ]
  %3531 = add i64 %3529, -80
  %3532 = add i64 %3530, 8
  store i64 %3532, i64* %3, align 8
  %3533 = inttoptr i64 %3531 to i32*
  %3534 = load i32, i32* %3533, align 4
  %3535 = add i32 %3534, 1
  %3536 = zext i32 %3535 to i64
  store i64 %3536, i64* %RAX.i70, align 8
  %3537 = icmp eq i32 %3534, -1
  %3538 = icmp eq i32 %3535, 0
  %3539 = or i1 %3537, %3538
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %14, align 1
  %3541 = and i32 %3535, 255
  %3542 = tail call i32 @llvm.ctpop.i32(i32 %3541)
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = xor i8 %3544, 1
  store i8 %3545, i8* %21, align 1
  %3546 = xor i32 %3535, %3534
  %3547 = lshr i32 %3546, 4
  %3548 = trunc i32 %3547 to i8
  %3549 = and i8 %3548, 1
  store i8 %3549, i8* %26, align 1
  %3550 = zext i1 %3538 to i8
  store i8 %3550, i8* %29, align 1
  %3551 = lshr i32 %3535, 31
  %3552 = trunc i32 %3551 to i8
  store i8 %3552, i8* %32, align 1
  %3553 = lshr i32 %3534, 31
  %3554 = xor i32 %3551, %3553
  %3555 = add nuw nsw i32 %3554, %3551
  %3556 = icmp eq i32 %3555, 2
  %3557 = zext i1 %3556 to i8
  store i8 %3557, i8* %38, align 1
  %3558 = add i64 %3530, 14
  store i64 %3558, i64* %3, align 8
  store i32 %3535, i32* %3533, align 4
  %3559 = load i64, i64* %3, align 8
  %3560 = add i64 %3559, -56
  store i64 %3560, i64* %3, align 8
  br label %block_.L_41b85a

block_.L_41b897:                                  ; preds = %block_.L_41b85a
  %3561 = add i64 %3446, -84
  %3562 = add i64 %3482, 3
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3561 to i32*
  %3564 = load i32, i32* %3563, align 4
  %3565 = zext i32 %3564 to i64
  store i64 %3565, i64* %RAX.i70, align 8
  %3566 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %3567 = sub i32 %3564, %3566
  %3568 = icmp ult i32 %3564, %3566
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %14, align 1
  %3570 = and i32 %3567, 255
  %3571 = tail call i32 @llvm.ctpop.i32(i32 %3570)
  %3572 = trunc i32 %3571 to i8
  %3573 = and i8 %3572, 1
  %3574 = xor i8 %3573, 1
  store i8 %3574, i8* %21, align 1
  %3575 = xor i32 %3566, %3564
  %3576 = xor i32 %3575, %3567
  %3577 = lshr i32 %3576, 4
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  store i8 %3579, i8* %26, align 1
  %3580 = icmp eq i32 %3567, 0
  %3581 = zext i1 %3580 to i8
  store i8 %3581, i8* %29, align 1
  %3582 = lshr i32 %3567, 31
  %3583 = trunc i32 %3582 to i8
  store i8 %3583, i8* %32, align 1
  %3584 = lshr i32 %3564, 31
  %3585 = lshr i32 %3566, 31
  %3586 = xor i32 %3585, %3584
  %3587 = xor i32 %3582, %3584
  %3588 = add nuw nsw i32 %3587, %3586
  %3589 = icmp eq i32 %3588, 2
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %38, align 1
  %.v401 = select i1 %3580, i64 16, i64 27
  %3591 = add i64 %3482, %.v401
  store i64 %3591, i64* %3, align 8
  br i1 %3580, label %block_41b8a7, label %block_.L_41a989.backedge

block_41b8a7:                                     ; preds = %block_.L_41b897
  %3592 = add i64 %3591, 11
  store i64 %3592, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  br label %block_.L_41a989.backedge

block_.L_41a989.backedge:                         ; preds = %block_.L_41b897, %block_41b8a7, %block_.L_41bcbc
  %3593 = phi i64 [ %.pre316, %block_.L_41bcbc ], [ %3592, %block_41b8a7 ], [ %3591, %block_.L_41b897 ]
  %.sink216 = phi i64 [ -4975, %block_.L_41bcbc ], [ -3881, %block_41b8a7 ], [ -3881, %block_.L_41b897 ]
  %MEMORY.0.be = phi %struct.Memory* [ %4707, %block_.L_41bcbc ], [ %call2_41b76d, %block_41b8a7 ], [ %call2_41b76d, %block_.L_41b897 ]
  %3594 = add i64 %3593, %.sink216
  store i64 %3594, i64* %3, align 8
  br label %block_.L_41a989

block_.L_41b8b7:                                  ; preds = %block_41b73e, %block_41b7a0
  %3595 = phi i64 [ %3112, %block_41b73e ], [ %3123, %block_41b7a0 ]
  %3596 = add i64 %3595, 5
  store i64 %3596, i64* %3, align 8
  br label %block_.L_41b8bc

block_.L_41b8bc:                                  ; preds = %block_41b730, %block_41b722, %block_.L_41b714, %block_41b706, %block_.L_41b8b7
  %3597 = phi i64 [ %3000, %block_.L_41b714 ], [ %3011, %block_41b722 ], [ %3022, %block_41b730 ], [ %3596, %block_.L_41b8b7 ], [ %2988, %block_41b706 ]
  %MEMORY.52 = phi %struct.Memory* [ %MEMORY.43, %block_.L_41b714 ], [ %MEMORY.43, %block_41b722 ], [ %MEMORY.43, %block_41b730 ], [ %call2_41b76d, %block_.L_41b8b7 ], [ %MEMORY.43, %block_41b706 ]
  %3598 = add i64 %3597, 5
  store i64 %3598, i64* %3, align 8
  br label %block_.L_41b8c1

block_.L_41b8c1:                                  ; preds = %block_.L_41b6d2, %block_.L_41b8bc
  %3599 = phi i64 [ %2917, %block_.L_41b6d2 ], [ %3598, %block_.L_41b8bc ]
  %MEMORY.53 = phi %struct.Memory* [ %MEMORY.43, %block_.L_41b6d2 ], [ %MEMORY.52, %block_.L_41b8bc ]
  %3600 = load i32, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  store i8 0, i8* %14, align 1
  %3601 = and i32 %3600, 255
  %3602 = tail call i32 @llvm.ctpop.i32(i32 %3601)
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  store i8 %3605, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3606 = icmp eq i32 %3600, 0
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %29, align 1
  %3608 = lshr i32 %3600, 31
  %3609 = trunc i32 %3608 to i8
  store i8 %3609, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v349 = select i1 %3606, i64 38, i64 14
  %3610 = add i64 %3599, %.v349
  store i64 %3610, i64* %3, align 8
  br i1 %3606, label %block_.L_41b8e7, label %block_41b8cf

block_41b8cf:                                     ; preds = %block_.L_41b8c1
  %3611 = load i64, i64* %RBP.i, align 8
  %3612 = add i64 %3611, -72
  %3613 = add i64 %3610, 4
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3612 to i64*
  %3615 = load i64, i64* %3614, align 8
  store i64 %3615, i64* %RAX.i70, align 8
  %3616 = add i64 %3611, -24
  %3617 = add i64 %3610, 8
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3616 to i64*
  store i64 %3615, i64* %3618, align 8
  %3619 = load i64, i64* %RBP.i, align 8
  %3620 = add i64 %3619, -64
  %3621 = load i64, i64* %3, align 8
  %3622 = add i64 %3621, 4
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3620 to i64*
  %3624 = load i64, i64* %3623, align 8
  store i64 %3624, i64* %RAX.i70, align 8
  %3625 = add i64 %3619, -16
  %3626 = add i64 %3621, 8
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i64*
  store i64 %3624, i64* %3627, align 8
  %3628 = load i64, i64* %RBP.i, align 8
  %3629 = add i64 %3628, -56
  %3630 = load i64, i64* %3, align 8
  %3631 = add i64 %3630, 4
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3629 to i64*
  %3633 = load i64, i64* %3632, align 8
  store i64 %3633, i64* %RAX.i70, align 8
  %3634 = add i64 %3628, -8
  %3635 = add i64 %3630, 8
  store i64 %3635, i64* %3, align 8
  %3636 = inttoptr i64 %3634 to i64*
  store i64 %3633, i64* %3636, align 8
  %.pre304 = load i64, i64* %3, align 8
  br label %block_.L_41b8e7

block_.L_41b8e7:                                  ; preds = %block_41b8cf, %block_.L_41b8c1
  %3637 = phi i64 [ %.pre304, %block_41b8cf ], [ %3610, %block_.L_41b8c1 ]
  %3638 = load i64, i64* %RBP.i, align 8
  %3639 = add i64 %3638, -12416
  %3640 = add i64 %3637, 7
  store i64 %3640, i64* %3, align 8
  %3641 = inttoptr i64 %3639 to i32*
  %3642 = load i32, i32* %3641, align 4
  store i8 0, i8* %14, align 1
  %3643 = and i32 %3642, 255
  %3644 = tail call i32 @llvm.ctpop.i32(i32 %3643)
  %3645 = trunc i32 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = xor i8 %3646, 1
  store i8 %3647, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3648 = icmp eq i32 %3642, 0
  %3649 = zext i1 %3648 to i8
  store i8 %3649, i8* %29, align 1
  %3650 = lshr i32 %3642, 31
  %3651 = trunc i32 %3650 to i8
  store i8 %3651, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v350 = select i1 %3648, i64 115, i64 13
  %3652 = add i64 %3637, %.v350
  store i64 %3652, i64* %3, align 8
  br i1 %3648, label %block_.L_41b95a, label %block_41b8f4

block_41b8f4:                                     ; preds = %block_.L_41b8e7
  %3653 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3654 = and i32 %3653, 255
  %3655 = tail call i32 @llvm.ctpop.i32(i32 %3654)
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  store i8 %3658, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3659 = icmp eq i32 %3653, 0
  %3660 = zext i1 %3659 to i8
  store i8 %3660, i8* %29, align 1
  %3661 = lshr i32 %3653, 31
  %3662 = trunc i32 %3661 to i8
  store i8 %3662, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v351 = select i1 %3659, i64 102, i64 14
  %3663 = add i64 %3652, %.v351
  store i64 %3663, i64* %3, align 8
  br i1 %3659, label %block_.L_41b95a, label %block_41b902

block_41b902:                                     ; preds = %block_41b8f4
  %3664 = add i64 %3638, -24
  store i64 %3664, i64* %RAX.i70, align 8
  %3665 = add i64 %3638, -12428
  store i64 %3665, i64* %RDI.i71, align 8
  %.cast217 = inttoptr i64 %3664 to i64*
  %3666 = add i64 %3663, 14
  store i64 %3666, i64* %3, align 8
  %3667 = load i64, i64* %.cast217, align 8
  store i64 %3667, i64* %RCX.i1163, align 8
  %3668 = load i64*, i64** %86, align 8
  %3669 = add i64 %3663, 18
  store i64 %3669, i64* %3, align 8
  store i64 %3667, i64* %3668, align 8
  %3670 = load i64, i64* %RAX.i70, align 8
  %3671 = add i64 %3670, 8
  %3672 = load i64, i64* %3, align 8
  %3673 = add i64 %3672, 4
  store i64 %3673, i64* %3, align 8
  %3674 = inttoptr i64 %3671 to i64*
  %3675 = load i64, i64* %3674, align 8
  store i64 %3675, i64* %RCX.i1163, align 8
  %3676 = load i64, i64* %6, align 8
  %3677 = add i64 %3676, 8
  %3678 = add i64 %3672, 9
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3677 to i64*
  store i64 %3675, i64* %3679, align 8
  %3680 = load i64, i64* %RAX.i70, align 8
  %3681 = add i64 %3680, 16
  %3682 = load i64, i64* %3, align 8
  %3683 = add i64 %3682, 4
  store i64 %3683, i64* %3, align 8
  %3684 = inttoptr i64 %3681 to i64*
  %3685 = load i64, i64* %3684, align 8
  store i64 %3685, i64* %RAX.i70, align 8
  %3686 = load i64, i64* %6, align 8
  %3687 = add i64 %3686, 16
  %3688 = add i64 %3682, 9
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i64*
  store i64 %3685, i64* %3689, align 8
  %3690 = load i64, i64* %3, align 8
  %3691 = add i64 %3690, 24650
  %3692 = add i64 %3690, 5
  %3693 = load i64, i64* %6, align 8
  %3694 = add i64 %3693, -8
  %3695 = inttoptr i64 %3694 to i64*
  store i64 %3692, i64* %3695, align 8
  store i64 %3694, i64* %6, align 8
  store i64 %3691, i64* %3, align 8
  %call2_41b926 = tail call %struct.Memory* @sub_421970.comp_to_san(%struct.State* nonnull %0, i64 %3691, %struct.Memory* %MEMORY.53)
  %3696 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4290cd_type* @G__0x4290cd to i64), i64* %RDI.i71, align 8
  %3697 = load i64, i64* %RBP.i, align 8
  %3698 = add i64 %3697, -12428
  store i64 %3698, i64* %RDX.i1585, align 8
  %3699 = add i64 %3697, -12416
  %3700 = add i64 %3696, 23
  store i64 %3700, i64* %3, align 8
  %3701 = inttoptr i64 %3699 to i32*
  %3702 = load i32, i32* %3701, align 4
  %3703 = zext i32 %3702 to i64
  store i64 %3703, i64* %RSI.i1309, align 8
  store i8 0, i8* %AL.i1401, align 1
  %3704 = add i64 %3696, -109691
  %3705 = add i64 %3696, 30
  %3706 = load i64, i64* %6, align 8
  %3707 = add i64 %3706, -8
  %3708 = inttoptr i64 %3707 to i64*
  store i64 %3705, i64* %3708, align 8
  store i64 %3707, i64* %6, align 8
  store i64 %3704, i64* %3, align 8
  %3709 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41b926)
  %3710 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %3711 = load i64, i64* %RBP.i, align 8
  %3712 = add i64 %3711, -12576
  %3713 = load i32, i32* %EAX.i1655, align 4
  %3714 = add i64 %3710, 17
  store i64 %3714, i64* %3, align 8
  %3715 = inttoptr i64 %3712 to i32*
  store i32 %3713, i32* %3715, align 4
  %.pre305 = load i64, i64* %3, align 8
  br label %block_.L_41b95a

block_.L_41b95a:                                  ; preds = %block_41b902, %block_41b8f4, %block_.L_41b8e7
  %3716 = phi i64 [ %3652, %block_.L_41b8e7 ], [ %3663, %block_41b8f4 ], [ %.pre305, %block_41b902 ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.53, %block_.L_41b8e7 ], [ %MEMORY.53, %block_41b8f4 ], [ %3709, %block_41b902 ]
  %3717 = add i64 %3716, 32262
  %3718 = add i64 %3716, 5
  %3719 = load i64, i64* %6, align 8
  %3720 = add i64 %3719, -8
  %3721 = inttoptr i64 %3720 to i64*
  store i64 %3718, i64* %3721, align 8
  store i64 %3720, i64* %6, align 8
  store i64 %3717, i64* %3, align 8
  %call2_41b95a = tail call %struct.Memory* @sub_423760.rtime(%struct.State* nonnull %0, i64 %3717, %struct.Memory* %MEMORY.55)
  %3722 = load i64, i64* %3, align 8
  %3723 = load i64, i64* bitcast (%G_0x8662e8_type* @G_0x8662e8 to i64*), align 8
  store i64 %3723, i64* %RSI.i1309, align 8
  %3724 = load i64, i64* %RAX.i70, align 8
  store i64 %3724, i64* %RDI.i71, align 8
  %3725 = add i64 %3722, 32273
  %3726 = add i64 %3722, 16
  %3727 = load i64, i64* %6, align 8
  %3728 = add i64 %3727, -8
  %3729 = inttoptr i64 %3728 to i64*
  store i64 %3726, i64* %3729, align 8
  store i64 %3728, i64* %6, align 8
  store i64 %3725, i64* %3, align 8
  %call2_41b96a = tail call %struct.Memory* @sub_423770.rdifftime(%struct.State* nonnull %0, i64 %3725, %struct.Memory* %call2_41b95a)
  %3730 = load i64, i64* %RBP.i, align 8
  %3731 = add i64 %3730, -88
  %3732 = load i32, i32* %EAX.i1655, align 4
  %3733 = load i64, i64* %3, align 8
  %3734 = add i64 %3733, 3
  store i64 %3734, i64* %3, align 8
  %3735 = inttoptr i64 %3731 to i32*
  store i32 %3732, i32* %3735, align 4
  %3736 = load i64, i64* %RBP.i, align 8
  %3737 = add i64 %3736, -88
  %3738 = load i64, i64* %3, align 8
  %3739 = add i64 %3738, 3
  store i64 %3739, i64* %3, align 8
  %3740 = inttoptr i64 %3737 to i32*
  %3741 = load i32, i32* %3740, align 4
  %3742 = zext i32 %3741 to i64
  store i64 %3742, i64* %RAX.i70, align 8
  %3743 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %3744 = sub i32 %3743, %3741
  %3745 = zext i32 %3744 to i64
  store i64 %3745, i64* %RCX.i1109, align 8
  store i32 %3744, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %3746 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3747 = and i32 %3746, 255
  %3748 = tail call i32 @llvm.ctpop.i32(i32 %3747)
  %3749 = trunc i32 %3748 to i8
  %3750 = and i8 %3749, 1
  %3751 = xor i8 %3750, 1
  store i8 %3751, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3752 = icmp eq i32 %3746, 0
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %29, align 1
  %3754 = lshr i32 %3746, 31
  %3755 = trunc i32 %3754 to i8
  store i8 %3755, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v352 = select i1 %3752, i64 78, i64 33
  %3756 = add i64 %3738, %.v352
  store i64 %3756, i64* %3, align 8
  br i1 %3752, label %block_.L_41b9c0, label %block_41b993

block_41b993:                                     ; preds = %block_.L_41b95a
  %3757 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %3758 = and i32 %3757, 255
  %3759 = tail call i32 @llvm.ctpop.i32(i32 %3758)
  %3760 = trunc i32 %3759 to i8
  %3761 = and i8 %3760, 1
  %3762 = xor i8 %3761, 1
  store i8 %3762, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3763 = icmp eq i32 %3757, 0
  %3764 = zext i1 %3763 to i8
  store i8 %3764, i8* %29, align 1
  %3765 = lshr i32 %3757, 31
  %3766 = trunc i32 %3765 to i8
  store i8 %3766, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v353 = select i1 %3763, i64 14, i64 45
  %3767 = add i64 %3756, %.v353
  store i64 %3767, i64* %3, align 8
  br i1 %3763, label %block_41b9a1, label %block_.L_41b9c0

block_41b9a1:                                     ; preds = %block_41b993
  %3768 = load i32, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %3769 = zext i32 %3768 to i64
  store i64 %3769, i64* %RAX.i70, align 8
  %3770 = add i64 %3767, 10
  store i64 %3770, i64* %3, align 8
  %3771 = load i32, i32* %3740, align 4
  %3772 = sub i32 %3768, %3771
  %3773 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %3774 = add i32 %3773, %3772
  %3775 = lshr i32 %3774, 31
  %3776 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %3777 = add i32 %3776, %3774
  %3778 = zext i32 %3777 to i64
  store i64 %3778, i64* %RAX.i70, align 8
  %3779 = icmp ult i32 %3777, %3774
  %3780 = icmp ult i32 %3777, %3776
  %3781 = or i1 %3779, %3780
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %14, align 1
  %3783 = and i32 %3777, 255
  %3784 = tail call i32 @llvm.ctpop.i32(i32 %3783)
  %3785 = trunc i32 %3784 to i8
  %3786 = and i8 %3785, 1
  %3787 = xor i8 %3786, 1
  store i8 %3787, i8* %21, align 1
  %3788 = xor i32 %3776, %3774
  %3789 = xor i32 %3788, %3777
  %3790 = lshr i32 %3789, 4
  %3791 = trunc i32 %3790 to i8
  %3792 = and i8 %3791, 1
  store i8 %3792, i8* %26, align 1
  %3793 = icmp eq i32 %3777, 0
  %3794 = zext i1 %3793 to i8
  store i8 %3794, i8* %29, align 1
  %3795 = lshr i32 %3777, 31
  %3796 = trunc i32 %3795 to i8
  store i8 %3796, i8* %32, align 1
  %3797 = lshr i32 %3776, 31
  %3798 = xor i32 %3795, %3775
  %3799 = xor i32 %3795, %3797
  %3800 = add nuw nsw i32 %3798, %3799
  %3801 = icmp eq i32 %3800, 2
  %3802 = zext i1 %3801 to i8
  store i8 %3802, i8* %38, align 1
  %3803 = add i64 %3767, 31
  store i64 %3803, i64* %3, align 8
  store i32 %3777, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %.pre306 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41b9c0

block_.L_41b9c0:                                  ; preds = %block_41b993, %block_41b9a1, %block_.L_41b95a
  %3804 = phi i64 [ %3803, %block_41b9a1 ], [ %3767, %block_41b993 ], [ %3756, %block_.L_41b95a ]
  %3805 = phi i64 [ %.pre306, %block_41b9a1 ], [ %3736, %block_41b993 ], [ %3736, %block_.L_41b95a ]
  %3806 = add i64 %3805, -92
  %3807 = add i64 %3804, 7
  store i64 %3807, i64* %3, align 8
  %3808 = inttoptr i64 %3806 to i32*
  %3809 = load i32, i32* %3808, align 4
  %3810 = add i32 %3809, -999998
  %3811 = icmp ult i32 %3809, 999998
  %3812 = zext i1 %3811 to i8
  store i8 %3812, i8* %14, align 1
  %3813 = and i32 %3810, 255
  %3814 = tail call i32 @llvm.ctpop.i32(i32 %3813)
  %3815 = trunc i32 %3814 to i8
  %3816 = and i8 %3815, 1
  %3817 = xor i8 %3816, 1
  store i8 %3817, i8* %21, align 1
  %3818 = xor i32 %3809, 16
  %3819 = xor i32 %3818, %3810
  %3820 = lshr i32 %3819, 4
  %3821 = trunc i32 %3820 to i8
  %3822 = and i8 %3821, 1
  store i8 %3822, i8* %26, align 1
  %3823 = icmp eq i32 %3810, 0
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %29, align 1
  %3825 = lshr i32 %3810, 31
  %3826 = trunc i32 %3825 to i8
  store i8 %3826, i8* %32, align 1
  %3827 = lshr i32 %3809, 31
  %3828 = xor i32 %3825, %3827
  %3829 = add nuw nsw i32 %3828, %3827
  %3830 = icmp eq i32 %3829, 2
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %38, align 1
  %.v354 = select i1 %3823, i64 13, i64 73
  %3832 = add i64 %3804, %.v354
  store i64 %3832, i64* %3, align 8
  br i1 %3823, label %block_41b9cd, label %block_.L_41ba09

block_41b9cd:                                     ; preds = %block_.L_41b9c0
  %3833 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %3834 = and i32 %3833, 255
  %3835 = tail call i32 @llvm.ctpop.i32(i32 %3834)
  %3836 = trunc i32 %3835 to i8
  %3837 = and i8 %3836, 1
  %3838 = xor i8 %3837, 1
  store i8 %3838, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3839 = icmp eq i32 %3833, 0
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %29, align 1
  %3841 = lshr i32 %3833, 31
  %3842 = trunc i32 %3841 to i8
  store i8 %3842, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v390 = select i1 %3839, i64 14, i64 60
  %3843 = add i64 %3832, %.v390
  store i64 %3843, i64* %3, align 8
  br i1 %3839, label %block_41b9db, label %block_.L_41ba09

block_41b9db:                                     ; preds = %block_41b9cd
  %3844 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3845 = add i32 %3844, -1
  %3846 = icmp eq i32 %3844, 0
  %3847 = zext i1 %3846 to i8
  store i8 %3847, i8* %14, align 1
  %3848 = and i32 %3845, 255
  %3849 = tail call i32 @llvm.ctpop.i32(i32 %3848)
  %3850 = trunc i32 %3849 to i8
  %3851 = and i8 %3850, 1
  %3852 = xor i8 %3851, 1
  store i8 %3852, i8* %21, align 1
  %3853 = xor i32 %3845, %3844
  %3854 = lshr i32 %3853, 4
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  store i8 %3856, i8* %26, align 1
  %3857 = icmp eq i32 %3845, 0
  %3858 = zext i1 %3857 to i8
  store i8 %3858, i8* %29, align 1
  %3859 = lshr i32 %3845, 31
  %3860 = trunc i32 %3859 to i8
  store i8 %3860, i8* %32, align 1
  %3861 = lshr i32 %3844, 31
  %3862 = xor i32 %3859, %3861
  %3863 = add nuw nsw i32 %3862, %3861
  %3864 = icmp eq i32 %3863, 2
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %38, align 1
  %.v391 = select i1 %3857, i64 14, i64 30
  %3866 = add i64 %3843, %.v391
  %3867 = add i64 %3866, 11
  store i64 %3867, i64* %3, align 8
  br i1 %3857, label %block_41b9e9, label %block_.L_41b9f9

block_41b9e9:                                     ; preds = %block_41b9db
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %3868 = add i64 %3866, 27
  store i64 %3868, i64* %3, align 8
  br label %block_.L_41ba04

block_.L_41b9f9:                                  ; preds = %block_41b9db
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  br label %block_.L_41ba04

block_.L_41ba04:                                  ; preds = %block_.L_41b9f9, %block_41b9e9
  %3869 = phi i64 [ %3867, %block_.L_41b9f9 ], [ %3868, %block_41b9e9 ]
  %3870 = add i64 %3869, 83
  br label %block_.L_41ba57

block_.L_41ba09:                                  ; preds = %block_41b9cd, %block_.L_41b9c0
  %3871 = phi i64 [ %3843, %block_41b9cd ], [ %3832, %block_.L_41b9c0 ]
  %3872 = add i64 %3871, 7
  store i64 %3872, i64* %3, align 8
  %3873 = load i32, i32* %3808, align 4
  %3874 = add i32 %3873, 999998
  %3875 = icmp ult i32 %3873, -999998
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %14, align 1
  %3877 = and i32 %3874, 255
  %3878 = tail call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  store i8 %3881, i8* %21, align 1
  %3882 = xor i32 %3874, %3873
  %3883 = lshr i32 %3882, 4
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  store i8 %3885, i8* %26, align 1
  %3886 = icmp eq i32 %3874, 0
  %3887 = zext i1 %3886 to i8
  store i8 %3887, i8* %29, align 1
  %3888 = lshr i32 %3874, 31
  %3889 = trunc i32 %3888 to i8
  store i8 %3889, i8* %32, align 1
  %3890 = lshr i32 %3873, 31
  %3891 = xor i32 %3890, 1
  %3892 = xor i32 %3888, %3890
  %3893 = add nuw nsw i32 %3892, %3891
  %3894 = icmp eq i32 %3893, 2
  %3895 = zext i1 %3894 to i8
  store i8 %3895, i8* %38, align 1
  %.v355 = select i1 %3886, i64 13, i64 73
  %3896 = add i64 %3871, %.v355
  store i64 %3896, i64* %3, align 8
  br i1 %3886, label %block_41ba16, label %block_.L_41ba52

block_41ba16:                                     ; preds = %block_.L_41ba09
  %3897 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %3898 = and i32 %3897, 255
  %3899 = tail call i32 @llvm.ctpop.i32(i32 %3898)
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  %3902 = xor i8 %3901, 1
  store i8 %3902, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3903 = icmp eq i32 %3897, 0
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %29, align 1
  %3905 = lshr i32 %3897, 31
  %3906 = trunc i32 %3905 to i8
  store i8 %3906, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v388 = select i1 %3903, i64 14, i64 60
  %3907 = add i64 %3896, %.v388
  store i64 %3907, i64* %3, align 8
  br i1 %3903, label %block_41ba24, label %block_.L_41ba52

block_41ba24:                                     ; preds = %block_41ba16
  %3908 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %3909 = add i32 %3908, -1
  %3910 = icmp eq i32 %3908, 0
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %14, align 1
  %3912 = and i32 %3909, 255
  %3913 = tail call i32 @llvm.ctpop.i32(i32 %3912)
  %3914 = trunc i32 %3913 to i8
  %3915 = and i8 %3914, 1
  %3916 = xor i8 %3915, 1
  store i8 %3916, i8* %21, align 1
  %3917 = xor i32 %3909, %3908
  %3918 = lshr i32 %3917, 4
  %3919 = trunc i32 %3918 to i8
  %3920 = and i8 %3919, 1
  store i8 %3920, i8* %26, align 1
  %3921 = icmp eq i32 %3909, 0
  %3922 = zext i1 %3921 to i8
  store i8 %3922, i8* %29, align 1
  %3923 = lshr i32 %3909, 31
  %3924 = trunc i32 %3923 to i8
  store i8 %3924, i8* %32, align 1
  %3925 = lshr i32 %3908, 31
  %3926 = xor i32 %3923, %3925
  %3927 = add nuw nsw i32 %3926, %3925
  %3928 = icmp eq i32 %3927, 2
  %3929 = zext i1 %3928 to i8
  store i8 %3929, i8* %38, align 1
  %.v389 = select i1 %3921, i64 14, i64 30
  %3930 = add i64 %3907, %.v389
  %3931 = add i64 %3930, 11
  store i64 %3931, i64* %3, align 8
  br i1 %3921, label %block_41ba32, label %block_.L_41ba42

block_41ba32:                                     ; preds = %block_41ba24
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %3932 = add i64 %3930, 27
  store i64 %3932, i64* %3, align 8
  br label %block_.L_41ba4d

block_.L_41ba42:                                  ; preds = %block_41ba24
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  br label %block_.L_41ba4d

block_.L_41ba4d:                                  ; preds = %block_.L_41ba42, %block_41ba32
  %3933 = phi i64 [ %3931, %block_.L_41ba42 ], [ %3932, %block_41ba32 ]
  %3934 = add i64 %3933, 5
  store i64 %3934, i64* %3, align 8
  br label %block_.L_41ba52

block_.L_41ba52:                                  ; preds = %block_41ba16, %block_.L_41ba09, %block_.L_41ba4d
  %3935 = phi i64 [ %3934, %block_.L_41ba4d ], [ %3907, %block_41ba16 ], [ %3896, %block_.L_41ba09 ]
  %3936 = add i64 %3935, 5
  store i64 %3936, i64* %3, align 8
  br label %block_.L_41ba57

block_.L_41ba57:                                  ; preds = %block_.L_41ba52, %block_.L_41ba04
  %storemerge125 = phi i64 [ %3870, %block_.L_41ba04 ], [ %3936, %block_.L_41ba52 ]
  %3937 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
  store i8 0, i8* %14, align 1
  %3938 = and i32 %3937, 255
  %3939 = tail call i32 @llvm.ctpop.i32(i32 %3938)
  %3940 = trunc i32 %3939 to i8
  %3941 = and i8 %3940, 1
  %3942 = xor i8 %3941, 1
  store i8 %3942, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3943 = icmp eq i32 %3937, 0
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %29, align 1
  %3945 = lshr i32 %3937, 31
  %3946 = trunc i32 %3945 to i8
  store i8 %3946, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v356 = select i1 %3943, i64 278, i64 14
  %3947 = add i64 %storemerge125, %.v356
  store i64 %3947, i64* %3, align 8
  br i1 %3943, label %block_.L_41bb6d, label %block_41ba65

block_41ba65:                                     ; preds = %block_.L_41ba57
  %3948 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3949 = and i32 %3948, 255
  %3950 = tail call i32 @llvm.ctpop.i32(i32 %3949)
  %3951 = trunc i32 %3950 to i8
  %3952 = and i8 %3951, 1
  %3953 = xor i8 %3952, 1
  store i8 %3953, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3954 = icmp eq i32 %3948, 0
  %3955 = zext i1 %3954 to i8
  store i8 %3955, i8* %29, align 1
  %3956 = lshr i32 %3948, 31
  %3957 = trunc i32 %3956 to i8
  store i8 %3957, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v357 = select i1 %3954, i64 264, i64 14
  %3958 = add i64 %3947, %.v357
  store i64 %3958, i64* %3, align 8
  br i1 %3954, label %block_.L_41bb6d, label %block_41ba73

block_41ba73:                                     ; preds = %block_41ba65
  %3959 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %3960 = and i32 %3959, 255
  %3961 = tail call i32 @llvm.ctpop.i32(i32 %3960)
  %3962 = trunc i32 %3961 to i8
  %3963 = and i8 %3962, 1
  %3964 = xor i8 %3963, 1
  store i8 %3964, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3965 = icmp eq i32 %3959, 0
  %3966 = zext i1 %3965 to i8
  store i8 %3966, i8* %29, align 1
  %3967 = lshr i32 %3959, 31
  %3968 = trunc i32 %3967 to i8
  store i8 %3968, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v358 = select i1 %3965, i64 14, i64 250
  %3969 = add i64 %3958, %.v358
  store i64 %3969, i64* %3, align 8
  br i1 %3965, label %block_41ba81, label %block_.L_41bb6d

block_41ba81:                                     ; preds = %block_41ba73
  %3970 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %3971 = add i32 %3970, -3
  %3972 = icmp ult i32 %3970, 3
  %3973 = zext i1 %3972 to i8
  store i8 %3973, i8* %14, align 1
  %3974 = and i32 %3971, 255
  %3975 = tail call i32 @llvm.ctpop.i32(i32 %3974)
  %3976 = trunc i32 %3975 to i8
  %3977 = and i8 %3976, 1
  %3978 = xor i8 %3977, 1
  store i8 %3978, i8* %21, align 1
  %3979 = xor i32 %3971, %3970
  %3980 = lshr i32 %3979, 4
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  store i8 %3982, i8* %26, align 1
  %3983 = icmp eq i32 %3971, 0
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %29, align 1
  %3985 = lshr i32 %3971, 31
  %3986 = trunc i32 %3985 to i8
  store i8 %3986, i8* %32, align 1
  %3987 = lshr i32 %3970, 31
  %3988 = xor i32 %3985, %3987
  %3989 = add nuw nsw i32 %3988, %3987
  %3990 = icmp eq i32 %3989, 2
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %38, align 1
  %.v380 = select i1 %3983, i64 236, i64 14
  %3992 = add i64 %3969, %.v380
  store i64 %3992, i64* %3, align 8
  br i1 %3983, label %block_.L_41bb6d, label %block_41ba8f

block_41ba8f:                                     ; preds = %block_41ba81
  %3993 = add i32 %3970, -2
  %3994 = icmp ult i32 %3970, 2
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %14, align 1
  %3996 = and i32 %3993, 255
  %3997 = tail call i32 @llvm.ctpop.i32(i32 %3996)
  %3998 = trunc i32 %3997 to i8
  %3999 = and i8 %3998, 1
  %4000 = xor i8 %3999, 1
  store i8 %4000, i8* %21, align 1
  %4001 = xor i32 %3993, %3970
  %4002 = lshr i32 %4001, 4
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  store i8 %4004, i8* %26, align 1
  %4005 = icmp eq i32 %3993, 0
  %4006 = zext i1 %4005 to i8
  store i8 %4006, i8* %29, align 1
  %4007 = lshr i32 %3993, 31
  %4008 = trunc i32 %4007 to i8
  store i8 %4008, i8* %32, align 1
  %4009 = xor i32 %4007, %3987
  %4010 = add nuw nsw i32 %4009, %3987
  %4011 = icmp eq i32 %4010, 2
  %4012 = zext i1 %4011 to i8
  store i8 %4012, i8* %38, align 1
  %.v381 = select i1 %4005, i64 222, i64 14
  %4013 = add i64 %3992, %.v381
  store i64 %4013, i64* %3, align 8
  br i1 %4005, label %block_.L_41bb6d, label %block_41ba9d

block_41ba9d:                                     ; preds = %block_41ba8f
  %4014 = add i32 %3970, -4
  %4015 = icmp ult i32 %3970, 4
  %4016 = zext i1 %4015 to i8
  store i8 %4016, i8* %14, align 1
  %4017 = and i32 %4014, 255
  %4018 = tail call i32 @llvm.ctpop.i32(i32 %4017)
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = xor i8 %4020, 1
  store i8 %4021, i8* %21, align 1
  %4022 = xor i32 %4014, %3970
  %4023 = lshr i32 %4022, 4
  %4024 = trunc i32 %4023 to i8
  %4025 = and i8 %4024, 1
  store i8 %4025, i8* %26, align 1
  %4026 = icmp eq i32 %4014, 0
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %29, align 1
  %4028 = lshr i32 %4014, 31
  %4029 = trunc i32 %4028 to i8
  store i8 %4029, i8* %32, align 1
  %4030 = xor i32 %4028, %3987
  %4031 = add nuw nsw i32 %4030, %3987
  %4032 = icmp eq i32 %4031, 2
  %4033 = zext i1 %4032 to i8
  store i8 %4033, i8* %38, align 1
  %.v382 = select i1 %4026, i64 208, i64 14
  %4034 = add i64 %4013, %.v382
  store i64 %4034, i64* %3, align 8
  br i1 %4026, label %block_.L_41bb6d, label %block_41baab

block_41baab:                                     ; preds = %block_41ba9d
  %4035 = add i32 %3970, -5
  %4036 = icmp ult i32 %3970, 5
  %4037 = zext i1 %4036 to i8
  store i8 %4037, i8* %14, align 1
  %4038 = and i32 %4035, 255
  %4039 = tail call i32 @llvm.ctpop.i32(i32 %4038)
  %4040 = trunc i32 %4039 to i8
  %4041 = and i8 %4040, 1
  %4042 = xor i8 %4041, 1
  store i8 %4042, i8* %21, align 1
  %4043 = xor i32 %4035, %3970
  %4044 = lshr i32 %4043, 4
  %4045 = trunc i32 %4044 to i8
  %4046 = and i8 %4045, 1
  store i8 %4046, i8* %26, align 1
  %4047 = icmp eq i32 %4035, 0
  %4048 = zext i1 %4047 to i8
  store i8 %4048, i8* %29, align 1
  %4049 = lshr i32 %4035, 31
  %4050 = trunc i32 %4049 to i8
  store i8 %4050, i8* %32, align 1
  %4051 = xor i32 %4049, %3987
  %4052 = add nuw nsw i32 %4051, %3987
  %4053 = icmp eq i32 %4052, 2
  %4054 = zext i1 %4053 to i8
  store i8 %4054, i8* %38, align 1
  %.v383 = select i1 %4047, i64 194, i64 14
  %4055 = add i64 %4034, %.v383
  store i64 %4055, i64* %3, align 8
  br i1 %4047, label %block_.L_41bb6d, label %block_41bab9

block_41bab9:                                     ; preds = %block_41baab
  %4056 = add i32 %3970, -1
  %4057 = icmp eq i32 %3970, 0
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %14, align 1
  %4059 = and i32 %4056, 255
  %4060 = tail call i32 @llvm.ctpop.i32(i32 %4059)
  %4061 = trunc i32 %4060 to i8
  %4062 = and i8 %4061, 1
  %4063 = xor i8 %4062, 1
  store i8 %4063, i8* %21, align 1
  %4064 = xor i32 %4056, %3970
  %4065 = lshr i32 %4064, 4
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  store i8 %4067, i8* %26, align 1
  %4068 = icmp eq i32 %4056, 0
  %4069 = zext i1 %4068 to i8
  store i8 %4069, i8* %29, align 1
  %4070 = lshr i32 %4056, 31
  %4071 = trunc i32 %4070 to i8
  store i8 %4071, i8* %32, align 1
  %4072 = xor i32 %4070, %3987
  %4073 = add nuw nsw i32 %4072, %3987
  %4074 = icmp eq i32 %4073, 2
  %4075 = zext i1 %4074 to i8
  store i8 %4075, i8* %38, align 1
  %.v384 = select i1 %4068, i64 180, i64 14
  %4076 = add i64 %4055, %.v384
  store i64 %4076, i64* %3, align 8
  br i1 %4068, label %block_.L_41bb6d, label %block_41bac7

block_41bac7:                                     ; preds = %block_41bab9
  %4077 = load i32, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  store i8 0, i8* %14, align 1
  %4078 = and i32 %4077, 255
  %4079 = tail call i32 @llvm.ctpop.i32(i32 %4078)
  %4080 = trunc i32 %4079 to i8
  %4081 = and i8 %4080, 1
  %4082 = xor i8 %4081, 1
  store i8 %4082, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4083 = icmp eq i32 %4077, 0
  %4084 = zext i1 %4083 to i8
  store i8 %4084, i8* %29, align 1
  %4085 = lshr i32 %4077, 31
  %4086 = trunc i32 %4085 to i8
  store i8 %4086, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v385 = select i1 %4083, i64 14, i64 166
  %4087 = add i64 %4076, %.v385
  store i64 %4087, i64* %3, align 8
  br i1 %4083, label %block_41bad5, label %block_.L_41bb6d

block_41bad5:                                     ; preds = %block_41bac7
  %4088 = add i64 %4087, 7
  store i64 %4088, i64* %3, align 8
  %4089 = load i32, i32* %3808, align 4
  %4090 = add i32 %4089, -999600
  %4091 = icmp ult i32 %4089, 999600
  %4092 = zext i1 %4091 to i8
  store i8 %4092, i8* %14, align 1
  %4093 = and i32 %4090, 255
  %4094 = tail call i32 @llvm.ctpop.i32(i32 %4093)
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = xor i8 %4096, 1
  store i8 %4097, i8* %21, align 1
  %4098 = xor i32 %4089, 16
  %4099 = xor i32 %4098, %4090
  %4100 = lshr i32 %4099, 4
  %4101 = trunc i32 %4100 to i8
  %4102 = and i8 %4101, 1
  store i8 %4102, i8* %26, align 1
  %4103 = icmp eq i32 %4090, 0
  %4104 = zext i1 %4103 to i8
  store i8 %4104, i8* %29, align 1
  %4105 = lshr i32 %4090, 31
  %4106 = trunc i32 %4105 to i8
  store i8 %4106, i8* %32, align 1
  %4107 = lshr i32 %4089, 31
  %4108 = xor i32 %4105, %4107
  %4109 = add nuw nsw i32 %4108, %4107
  %4110 = icmp eq i32 %4109, 2
  %4111 = zext i1 %4110 to i8
  store i8 %4111, i8* %38, align 1
  %4112 = icmp ne i8 %4106, 0
  %4113 = xor i1 %4112, %4110
  %4114 = or i1 %4103, %4113
  %.v386 = select i1 %4114, i64 147, i64 13
  %4115 = add i64 %4087, %.v386
  store i64 %4115, i64* %3, align 8
  br i1 %4114, label %block_.L_41bb68, label %block_41bae2

block_41bae2:                                     ; preds = %block_41bad5
  %4116 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %4117 = add i32 %4116, -1
  %4118 = icmp eq i32 %4116, 0
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %14, align 1
  %4120 = and i32 %4117, 255
  %4121 = tail call i32 @llvm.ctpop.i32(i32 %4120)
  %4122 = trunc i32 %4121 to i8
  %4123 = and i8 %4122, 1
  %4124 = xor i8 %4123, 1
  store i8 %4124, i8* %21, align 1
  %4125 = xor i32 %4117, %4116
  %4126 = lshr i32 %4125, 4
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  store i8 %4128, i8* %26, align 1
  %4129 = icmp eq i32 %4117, 0
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %29, align 1
  %4131 = lshr i32 %4117, 31
  %4132 = trunc i32 %4131 to i8
  store i8 %4132, i8* %32, align 1
  %4133 = lshr i32 %4116, 31
  %4134 = xor i32 %4131, %4133
  %4135 = add nuw nsw i32 %4134, %4133
  %4136 = icmp eq i32 %4135, 2
  %4137 = zext i1 %4136 to i8
  store i8 %4137, i8* %38, align 1
  %.v387 = select i1 %4129, i64 74, i64 14
  %4138 = add i64 %4115, %.v387
  %4139 = add i64 %4138, 10
  store i64 %4139, i64* %3, align 8
  br i1 %4129, label %block_.L_41bb2c, label %block_41baf0

block_41baf0:                                     ; preds = %block_41bae2
  store i64 ptrtoint (%G__0x4290fe_type* @G__0x4290fe to i64), i64* %RDI.i71, align 8
  store i64 2, i64* %RAX.i70, align 8
  store i64 1000000, i64* %RCX.i1109, align 8
  %4140 = add i64 %4138, 23
  store i64 %4140, i64* %3, align 8
  %4141 = load i32, i32* %3808, align 4
  %4142 = sub i32 1000000, %4141
  %4143 = zext i32 %4142 to i64
  store i64 %4143, i64* %RCX.i1109, align 8
  %4144 = icmp ugt i32 %4141, 1000000
  %4145 = zext i1 %4144 to i8
  store i8 %4145, i8* %14, align 1
  %4146 = and i32 %4142, 255
  %4147 = tail call i32 @llvm.ctpop.i32(i32 %4146)
  %4148 = trunc i32 %4147 to i8
  %4149 = and i8 %4148, 1
  %4150 = xor i8 %4149, 1
  store i8 %4150, i8* %21, align 1
  %4151 = xor i32 %4142, %4141
  %4152 = lshr i32 %4151, 4
  %4153 = trunc i32 %4152 to i8
  %4154 = and i8 %4153, 1
  store i8 %4154, i8* %26, align 1
  %4155 = icmp eq i32 %4142, 0
  %4156 = zext i1 %4155 to i8
  store i8 %4156, i8* %29, align 1
  %4157 = lshr i32 %4142, 31
  %4158 = trunc i32 %4157 to i8
  store i8 %4158, i8* %32, align 1
  %4159 = lshr i32 %4141, 31
  %4160 = add nuw nsw i32 %4157, %4159
  %4161 = icmp eq i32 %4160, 2
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %38, align 1
  %4163 = add i64 %3805, -12580
  %4164 = add i64 %4138, 29
  store i64 %4164, i64* %3, align 8
  %4165 = inttoptr i64 %4163 to i32*
  store i32 2, i32* %4165, align 4
  %4166 = load i32, i32* %ECX.i1106, align 4
  %4167 = zext i32 %4166 to i64
  %4168 = load i64, i64* %3, align 8
  store i64 %4167, i64* %RAX.i70, align 8
  %4169 = sext i32 %4166 to i64
  %4170 = lshr i64 %4169, 32
  store i64 %4170, i64* %RDX.i1585, align 8
  %4171 = load i64, i64* %RBP.i, align 8
  %4172 = add i64 %4171, -12580
  %4173 = add i64 %4168, 9
  store i64 %4173, i64* %3, align 8
  %4174 = inttoptr i64 %4172 to i32*
  %4175 = load i32, i32* %4174, align 4
  %4176 = zext i32 %4175 to i64
  store i64 %4176, i64* %RCX.i1109, align 8
  %4177 = add i64 %4168, 11
  store i64 %4177, i64* %3, align 8
  %4178 = sext i32 %4175 to i64
  %4179 = shl nuw i64 %4170, 32
  %4180 = or i64 %4179, %4167
  %4181 = sdiv i64 %4180, %4178
  %4182 = shl i64 %4181, 32
  %4183 = ashr exact i64 %4182, 32
  %4184 = icmp eq i64 %4181, %4183
  br i1 %4184, label %4187, label %4185

; <label>:4185:                                   ; preds = %block_41baf0
  %4186 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4177, %struct.Memory* %call2_41b96a)
  %.pre307 = load i32, i32* %EAX.i1655, align 4
  %.pre308 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit226

; <label>:4187:                                   ; preds = %block_41baf0
  %4188 = srem i64 %4180, %4178
  %4189 = and i64 %4181, 4294967295
  store i64 %4189, i64* %RAX.i70, align 8
  %4190 = and i64 %4188, 4294967295
  store i64 %4190, i64* %RDX.i1107, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4191 = trunc i64 %4181 to i32
  br label %routine_idivl__ecx.exit226

routine_idivl__ecx.exit226:                       ; preds = %4187, %4185
  %4192 = phi i64 [ %.pre308, %4185 ], [ %4177, %4187 ]
  %4193 = phi i32 [ %.pre307, %4185 ], [ %4191, %4187 ]
  %4194 = phi %struct.Memory* [ %4186, %4185 ], [ %call2_41b96a, %4187 ]
  %4195 = zext i32 %4193 to i64
  store i64 %4195, i64* %RSI.i1309, align 8
  store i8 0, i8* %AL.i1401, align 1
  %4196 = add i64 %4192, -110184
  %4197 = add i64 %4192, 9
  %4198 = load i64, i64* %6, align 8
  %4199 = add i64 %4198, -8
  %4200 = inttoptr i64 %4199 to i64*
  store i64 %4197, i64* %4200, align 8
  store i64 %4199, i64* %6, align 8
  store i64 %4196, i64* %3, align 8
  %4201 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %4194)
  %4202 = load i64, i64* %RBP.i, align 8
  %4203 = add i64 %4202, -12584
  %4204 = load i32, i32* %EAX.i1655, align 4
  %4205 = load i64, i64* %3, align 8
  %4206 = add i64 %4205, 6
  store i64 %4206, i64* %3, align 8
  %4207 = inttoptr i64 %4203 to i32*
  store i32 %4204, i32* %4207, align 4
  %4208 = load i64, i64* %3, align 8
  %4209 = add i64 %4208, 60
  store i64 %4209, i64* %3, align 8
  br label %block_.L_41bb63

block_.L_41bb2c:                                  ; preds = %block_41bae2
  store i64 ptrtoint (%G__0x429119_type* @G__0x429119 to i64), i64* %RDI.i71, align 8
  store i64 2, i64* %RAX.i70, align 8
  store i64 1000000, i64* %RCX.i1109, align 8
  %4210 = add i64 %4138, 23
  store i64 %4210, i64* %3, align 8
  %4211 = load i32, i32* %3808, align 4
  %4212 = sub i32 1000000, %4211
  %4213 = zext i32 %4212 to i64
  store i64 %4213, i64* %RCX.i1109, align 8
  %4214 = icmp ugt i32 %4211, 1000000
  %4215 = zext i1 %4214 to i8
  store i8 %4215, i8* %14, align 1
  %4216 = and i32 %4212, 255
  %4217 = tail call i32 @llvm.ctpop.i32(i32 %4216)
  %4218 = trunc i32 %4217 to i8
  %4219 = and i8 %4218, 1
  %4220 = xor i8 %4219, 1
  store i8 %4220, i8* %21, align 1
  %4221 = xor i32 %4212, %4211
  %4222 = lshr i32 %4221, 4
  %4223 = trunc i32 %4222 to i8
  %4224 = and i8 %4223, 1
  store i8 %4224, i8* %26, align 1
  %4225 = icmp eq i32 %4212, 0
  %4226 = zext i1 %4225 to i8
  store i8 %4226, i8* %29, align 1
  %4227 = lshr i32 %4212, 31
  %4228 = trunc i32 %4227 to i8
  store i8 %4228, i8* %32, align 1
  %4229 = lshr i32 %4211, 31
  %4230 = add nuw nsw i32 %4227, %4229
  %4231 = icmp eq i32 %4230, 2
  %4232 = zext i1 %4231 to i8
  store i8 %4232, i8* %38, align 1
  %4233 = add i64 %3805, -12588
  %4234 = add i64 %4138, 29
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i32*
  store i32 2, i32* %4235, align 4
  %4236 = load i32, i32* %ECX.i1106, align 4
  %4237 = zext i32 %4236 to i64
  %4238 = load i64, i64* %3, align 8
  store i64 %4237, i64* %RAX.i70, align 8
  %4239 = sext i32 %4236 to i64
  %4240 = lshr i64 %4239, 32
  store i64 %4240, i64* %RDX.i1585, align 8
  %4241 = load i64, i64* %RBP.i, align 8
  %4242 = add i64 %4241, -12588
  %4243 = add i64 %4238, 9
  store i64 %4243, i64* %3, align 8
  %4244 = inttoptr i64 %4242 to i32*
  %4245 = load i32, i32* %4244, align 4
  %4246 = zext i32 %4245 to i64
  store i64 %4246, i64* %RCX.i1109, align 8
  %4247 = add i64 %4238, 11
  store i64 %4247, i64* %3, align 8
  %4248 = sext i32 %4245 to i64
  %4249 = shl nuw i64 %4240, 32
  %4250 = or i64 %4249, %4237
  %4251 = sdiv i64 %4250, %4248
  %4252 = shl i64 %4251, 32
  %4253 = ashr exact i64 %4252, 32
  %4254 = icmp eq i64 %4251, %4253
  br i1 %4254, label %4257, label %4255

; <label>:4255:                                   ; preds = %block_.L_41bb2c
  %4256 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4247, %struct.Memory* %call2_41b96a)
  %.pre309 = load i32, i32* %EAX.i1655, align 4
  %.pre310 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:4257:                                   ; preds = %block_.L_41bb2c
  %4258 = srem i64 %4250, %4248
  %4259 = and i64 %4251, 4294967295
  store i64 %4259, i64* %RAX.i70, align 8
  %4260 = and i64 %4258, 4294967295
  store i64 %4260, i64* %RDX.i1107, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4261 = trunc i64 %4251 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %4257, %4255
  %4262 = phi i64 [ %.pre310, %4255 ], [ %4247, %4257 ]
  %4263 = phi i32 [ %.pre309, %4255 ], [ %4261, %4257 ]
  %4264 = phi %struct.Memory* [ %4256, %4255 ], [ %call2_41b96a, %4257 ]
  %4265 = zext i32 %4263 to i64
  store i64 %4265, i64* %RSI.i1309, align 8
  store i8 0, i8* %AL.i1401, align 1
  %4266 = add i64 %4262, -110244
  %4267 = add i64 %4262, 9
  %4268 = load i64, i64* %6, align 8
  %4269 = add i64 %4268, -8
  %4270 = inttoptr i64 %4269 to i64*
  store i64 %4267, i64* %4270, align 8
  store i64 %4269, i64* %6, align 8
  store i64 %4266, i64* %3, align 8
  %4271 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %4264)
  %4272 = load i64, i64* %RBP.i, align 8
  %4273 = add i64 %4272, -12592
  %4274 = load i32, i32* %EAX.i1655, align 4
  %4275 = load i64, i64* %3, align 8
  %4276 = add i64 %4275, 6
  store i64 %4276, i64* %3, align 8
  %4277 = inttoptr i64 %4273 to i32*
  store i32 %4274, i32* %4277, align 4
  %.pre311 = load i64, i64* %3, align 8
  br label %block_.L_41bb63

block_.L_41bb63:                                  ; preds = %routine_idivl__ecx.exit, %routine_idivl__ecx.exit226
  %4278 = phi i64 [ %.pre311, %routine_idivl__ecx.exit ], [ %4209, %routine_idivl__ecx.exit226 ]
  %MEMORY.62 = phi %struct.Memory* [ %4271, %routine_idivl__ecx.exit ], [ %4201, %routine_idivl__ecx.exit226 ]
  %4279 = add i64 %4278, 5
  store i64 %4279, i64* %3, align 8
  br label %block_.L_41bb68

block_.L_41bb68:                                  ; preds = %block_.L_41bb63, %block_41bad5
  %4280 = phi i64 [ %4115, %block_41bad5 ], [ %4279, %block_.L_41bb63 ]
  %MEMORY.63 = phi %struct.Memory* [ %call2_41b96a, %block_41bad5 ], [ %MEMORY.62, %block_.L_41bb63 ]
  %4281 = add i64 %4280, 5
  store i64 %4281, i64* %3, align 8
  br label %block_.L_41bb6d

block_.L_41bb6d:                                  ; preds = %block_41bac7, %block_41ba73, %block_.L_41bb68, %block_41bab9, %block_41baab, %block_41ba9d, %block_41ba8f, %block_41ba81, %block_41ba65, %block_.L_41ba57
  %4282 = phi i64 [ %3947, %block_.L_41ba57 ], [ %3958, %block_41ba65 ], [ %3969, %block_41ba73 ], [ %3992, %block_41ba81 ], [ %4013, %block_41ba8f ], [ %4034, %block_41ba9d ], [ %4055, %block_41baab ], [ %4076, %block_41bab9 ], [ %4087, %block_41bac7 ], [ %4281, %block_.L_41bb68 ]
  %MEMORY.64 = phi %struct.Memory* [ %call2_41b96a, %block_.L_41ba57 ], [ %call2_41b96a, %block_41ba65 ], [ %call2_41b96a, %block_41ba73 ], [ %call2_41b96a, %block_41ba81 ], [ %call2_41b96a, %block_41ba8f ], [ %call2_41b96a, %block_41ba9d ], [ %call2_41b96a, %block_41baab ], [ %call2_41b96a, %block_41bab9 ], [ %call2_41b96a, %block_41bac7 ], [ %MEMORY.63, %block_.L_41bb68 ]
  %4283 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %4284 = add i32 %4283, -2
  %4285 = icmp ult i32 %4283, 2
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %14, align 1
  %4287 = and i32 %4284, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287)
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %21, align 1
  %4292 = xor i32 %4284, %4283
  %4293 = lshr i32 %4292, 4
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  store i8 %4295, i8* %26, align 1
  %4296 = icmp eq i32 %4284, 0
  %4297 = zext i1 %4296 to i8
  store i8 %4297, i8* %29, align 1
  %4298 = lshr i32 %4284, 31
  %4299 = trunc i32 %4298 to i8
  store i8 %4299, i8* %32, align 1
  %4300 = lshr i32 %4283, 31
  %4301 = xor i32 %4298, %4300
  %4302 = add nuw nsw i32 %4301, %4300
  %4303 = icmp eq i32 %4302, 2
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %38, align 1
  %.v359 = select i1 %4296, i64 164, i64 14
  %4305 = add i64 %4282, %.v359
  store i64 %4305, i64* %3, align 8
  br i1 %4296, label %block_.L_41bc11, label %block_41bb7b

block_41bb7b:                                     ; preds = %block_.L_41bb6d
  %4306 = add i32 %4283, -3
  %4307 = icmp ult i32 %4283, 3
  %4308 = zext i1 %4307 to i8
  store i8 %4308, i8* %14, align 1
  %4309 = and i32 %4306, 255
  %4310 = tail call i32 @llvm.ctpop.i32(i32 %4309)
  %4311 = trunc i32 %4310 to i8
  %4312 = and i8 %4311, 1
  %4313 = xor i8 %4312, 1
  store i8 %4313, i8* %21, align 1
  %4314 = xor i32 %4306, %4283
  %4315 = lshr i32 %4314, 4
  %4316 = trunc i32 %4315 to i8
  %4317 = and i8 %4316, 1
  store i8 %4317, i8* %26, align 1
  %4318 = icmp eq i32 %4306, 0
  %4319 = zext i1 %4318 to i8
  store i8 %4319, i8* %29, align 1
  %4320 = lshr i32 %4306, 31
  %4321 = trunc i32 %4320 to i8
  store i8 %4321, i8* %32, align 1
  %4322 = xor i32 %4320, %4300
  %4323 = add nuw nsw i32 %4322, %4300
  %4324 = icmp eq i32 %4323, 2
  %4325 = zext i1 %4324 to i8
  store i8 %4325, i8* %38, align 1
  %.v360 = select i1 %4318, i64 150, i64 14
  %4326 = add i64 %4305, %.v360
  store i64 %4326, i64* %3, align 8
  br i1 %4318, label %block_.L_41bc11, label %block_41bb89

block_41bb89:                                     ; preds = %block_41bb7b
  %4327 = add i32 %4283, -1
  %4328 = icmp eq i32 %4283, 0
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %14, align 1
  %4330 = and i32 %4327, 255
  %4331 = tail call i32 @llvm.ctpop.i32(i32 %4330)
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  %4334 = xor i8 %4333, 1
  store i8 %4334, i8* %21, align 1
  %4335 = xor i32 %4327, %4283
  %4336 = lshr i32 %4335, 4
  %4337 = trunc i32 %4336 to i8
  %4338 = and i8 %4337, 1
  store i8 %4338, i8* %26, align 1
  %4339 = icmp eq i32 %4327, 0
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %29, align 1
  %4341 = lshr i32 %4327, 31
  %4342 = trunc i32 %4341 to i8
  store i8 %4342, i8* %32, align 1
  %4343 = xor i32 %4341, %4300
  %4344 = add nuw nsw i32 %4343, %4300
  %4345 = icmp eq i32 %4344, 2
  %4346 = zext i1 %4345 to i8
  store i8 %4346, i8* %38, align 1
  %.v361 = select i1 %4339, i64 136, i64 14
  %4347 = add i64 %4326, %.v361
  store i64 %4347, i64* %3, align 8
  br i1 %4339, label %block_.L_41bc11, label %block_41bb97

block_41bb97:                                     ; preds = %block_41bb89
  %4348 = add i32 %4283, -4
  %4349 = icmp ult i32 %4283, 4
  %4350 = zext i1 %4349 to i8
  store i8 %4350, i8* %14, align 1
  %4351 = and i32 %4348, 255
  %4352 = tail call i32 @llvm.ctpop.i32(i32 %4351)
  %4353 = trunc i32 %4352 to i8
  %4354 = and i8 %4353, 1
  %4355 = xor i8 %4354, 1
  store i8 %4355, i8* %21, align 1
  %4356 = xor i32 %4348, %4283
  %4357 = lshr i32 %4356, 4
  %4358 = trunc i32 %4357 to i8
  %4359 = and i8 %4358, 1
  store i8 %4359, i8* %26, align 1
  %4360 = icmp eq i32 %4348, 0
  %4361 = zext i1 %4360 to i8
  store i8 %4361, i8* %29, align 1
  %4362 = lshr i32 %4348, 31
  %4363 = trunc i32 %4362 to i8
  store i8 %4363, i8* %32, align 1
  %4364 = xor i32 %4362, %4300
  %4365 = add nuw nsw i32 %4364, %4300
  %4366 = icmp eq i32 %4365, 2
  %4367 = zext i1 %4366 to i8
  store i8 %4367, i8* %38, align 1
  %.v362 = select i1 %4360, i64 122, i64 14
  %4368 = add i64 %4347, %.v362
  store i64 %4368, i64* %3, align 8
  br i1 %4360, label %block_.L_41bc11, label %block_41bba5

block_41bba5:                                     ; preds = %block_41bb97
  %4369 = add i32 %4283, -5
  %4370 = icmp ult i32 %4283, 5
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %14, align 1
  %4372 = and i32 %4369, 255
  %4373 = tail call i32 @llvm.ctpop.i32(i32 %4372)
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  store i8 %4376, i8* %21, align 1
  %4377 = xor i32 %4369, %4283
  %4378 = lshr i32 %4377, 4
  %4379 = trunc i32 %4378 to i8
  %4380 = and i8 %4379, 1
  store i8 %4380, i8* %26, align 1
  %4381 = icmp eq i32 %4369, 0
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %29, align 1
  %4383 = lshr i32 %4369, 31
  %4384 = trunc i32 %4383 to i8
  store i8 %4384, i8* %32, align 1
  %4385 = xor i32 %4383, %4300
  %4386 = add nuw nsw i32 %4385, %4300
  %4387 = icmp eq i32 %4386, 2
  %4388 = zext i1 %4387 to i8
  store i8 %4388, i8* %38, align 1
  %.v363 = select i1 %4381, i64 108, i64 14
  %4389 = add i64 %4368, %.v363
  store i64 %4389, i64* %3, align 8
  br i1 %4381, label %block_.L_41bc11, label %block_41bbb3

block_41bbb3:                                     ; preds = %block_41bba5
  %4390 = load i8, i8* getelementptr inbounds (%G_0x86678c_type, %G_0x86678c_type* @G_0x86678c, i64 0, i32 0, i64 0), align 8
  %4391 = sext i8 %4390 to i64
  %4392 = and i64 %4391, 4294967295
  store i64 %4392, i64* %RAX.i70, align 8
  %4393 = sext i8 %4390 to i32
  %4394 = add nsw i32 %4393, -3
  %4395 = icmp ult i8 %4390, 3
  %4396 = zext i1 %4395 to i8
  store i8 %4396, i8* %14, align 1
  %4397 = and i32 %4394, 255
  %4398 = tail call i32 @llvm.ctpop.i32(i32 %4397)
  %4399 = trunc i32 %4398 to i8
  %4400 = and i8 %4399, 1
  %4401 = xor i8 %4400, 1
  store i8 %4401, i8* %21, align 1
  %4402 = xor i32 %4394, %4393
  %4403 = lshr i32 %4402, 4
  %4404 = trunc i32 %4403 to i8
  %4405 = and i8 %4404, 1
  store i8 %4405, i8* %26, align 1
  %4406 = icmp eq i32 %4394, 0
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %29, align 1
  %4408 = lshr i32 %4394, 31
  %4409 = trunc i32 %4408 to i8
  store i8 %4409, i8* %32, align 1
  %4410 = lshr i32 %4393, 31
  %4411 = xor i32 %4408, %4410
  %4412 = add nuw nsw i32 %4411, %4410
  %4413 = icmp eq i32 %4412, 2
  %4414 = zext i1 %4413 to i8
  store i8 %4414, i8* %38, align 1
  %4415 = icmp ne i8 %4409, 0
  %4416 = xor i1 %4415, %4413
  %.v364 = select i1 %4416, i64 94, i64 17
  %4417 = add i64 %4389, %.v364
  store i64 %4417, i64* %3, align 8
  br i1 %4416, label %block_.L_41bc11, label %block_41bbc4

block_41bbc4:                                     ; preds = %block_41bbb3
  %4418 = load i32, i32* bitcast (%G_0x62ea24_type* @G_0x62ea24 to i32*), align 8
  %4419 = zext i32 %4418 to i64
  store i64 %4419, i64* %RAX.i70, align 8
  %4420 = load i32, i32* bitcast (%G_0x62db0c_type* @G_0x62db0c to i32*), align 8
  %4421 = sub i32 %4418, %4420
  %4422 = icmp ult i32 %4418, %4420
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %14, align 1
  %4424 = and i32 %4421, 255
  %4425 = tail call i32 @llvm.ctpop.i32(i32 %4424)
  %4426 = trunc i32 %4425 to i8
  %4427 = and i8 %4426, 1
  %4428 = xor i8 %4427, 1
  store i8 %4428, i8* %21, align 1
  %4429 = xor i32 %4420, %4418
  %4430 = xor i32 %4429, %4421
  %4431 = lshr i32 %4430, 4
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  store i8 %4433, i8* %26, align 1
  %4434 = icmp eq i32 %4421, 0
  %4435 = zext i1 %4434 to i8
  store i8 %4435, i8* %29, align 1
  %4436 = lshr i32 %4421, 31
  %4437 = trunc i32 %4436 to i8
  store i8 %4437, i8* %32, align 1
  %4438 = lshr i32 %4418, 31
  %4439 = lshr i32 %4420, 31
  %4440 = xor i32 %4439, %4438
  %4441 = xor i32 %4436, %4438
  %4442 = add nuw nsw i32 %4441, %4440
  %4443 = icmp eq i32 %4442, 2
  %4444 = zext i1 %4443 to i8
  store i8 %4444, i8* %38, align 1
  %.v365 = select i1 %4434, i64 20, i64 77
  %4445 = add i64 %4417, %.v365
  store i64 %4445, i64* %3, align 8
  br i1 %4434, label %block_41bbd8, label %block_.L_41bc11

block_41bbd8:                                     ; preds = %block_41bbc4
  %4446 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  store i8 0, i8* %14, align 1
  %4447 = and i32 %4446, 255
  %4448 = tail call i32 @llvm.ctpop.i32(i32 %4447)
  %4449 = trunc i32 %4448 to i8
  %4450 = and i8 %4449, 1
  %4451 = xor i8 %4450, 1
  store i8 %4451, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4452 = icmp eq i32 %4446, 0
  %4453 = zext i1 %4452 to i8
  store i8 %4453, i8* %29, align 1
  %4454 = lshr i32 %4446, 31
  %4455 = trunc i32 %4454 to i8
  store i8 %4455, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v377 = select i1 %4452, i64 14, i64 57
  %4456 = add i64 %4445, %.v377
  store i64 %4456, i64* %3, align 8
  br i1 %4452, label %block_41bbe6, label %block_.L_41bc11

block_41bbe6:                                     ; preds = %block_41bbd8
  %4457 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %4458 = add i32 %4457, -1
  %4459 = icmp eq i32 %4457, 0
  %4460 = zext i1 %4459 to i8
  store i8 %4460, i8* %14, align 1
  %4461 = and i32 %4458, 255
  %4462 = tail call i32 @llvm.ctpop.i32(i32 %4461)
  %4463 = trunc i32 %4462 to i8
  %4464 = and i8 %4463, 1
  %4465 = xor i8 %4464, 1
  store i8 %4465, i8* %21, align 1
  %4466 = xor i32 %4458, %4457
  %4467 = lshr i32 %4466, 4
  %4468 = trunc i32 %4467 to i8
  %4469 = and i8 %4468, 1
  store i8 %4469, i8* %26, align 1
  %4470 = icmp eq i32 %4458, 0
  %4471 = zext i1 %4470 to i8
  store i8 %4471, i8* %29, align 1
  %4472 = lshr i32 %4458, 31
  %4473 = trunc i32 %4472 to i8
  store i8 %4473, i8* %32, align 1
  %4474 = lshr i32 %4457, 31
  %4475 = xor i32 %4472, %4474
  %4476 = add nuw nsw i32 %4475, %4474
  %4477 = icmp eq i32 %4476, 2
  %4478 = zext i1 %4477 to i8
  store i8 %4478, i8* %38, align 1
  %.v378 = select i1 %4470, i64 43, i64 14
  %4479 = add i64 %4456, %.v378
  store i64 %4479, i64* %3, align 8
  br i1 %4470, label %block_.L_41bc11, label %block_41bbf4

block_41bbf4:                                     ; preds = %block_41bbe6
  %4480 = load i32, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  %4481 = add i32 %4480, 1
  %4482 = icmp ne i32 %4480, -1
  %4483 = zext i1 %4482 to i8
  store i8 %4483, i8* %14, align 1
  %4484 = and i32 %4481, 255
  %4485 = tail call i32 @llvm.ctpop.i32(i32 %4484)
  %4486 = trunc i32 %4485 to i8
  %4487 = and i8 %4486, 1
  %4488 = xor i8 %4487, 1
  store i8 %4488, i8* %21, align 1
  %4489 = xor i32 %4480, 16
  %4490 = xor i32 %4489, %4481
  %4491 = lshr i32 %4490, 4
  %4492 = trunc i32 %4491 to i8
  %4493 = and i8 %4492, 1
  store i8 %4493, i8* %26, align 1
  %4494 = icmp eq i32 %4481, 0
  %4495 = zext i1 %4494 to i8
  store i8 %4495, i8* %29, align 1
  %4496 = lshr i32 %4481, 31
  %4497 = trunc i32 %4496 to i8
  store i8 %4497, i8* %32, align 1
  %4498 = lshr i32 %4480, 31
  %4499 = xor i32 %4498, 1
  %4500 = xor i32 %4496, %4498
  %4501 = add nuw nsw i32 %4500, %4499
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %38, align 1
  %.v379 = select i1 %4494, i64 14, i64 24
  %4504 = add i64 %4479, %.v379
  store i64 %4504, i64* %3, align 8
  br i1 %4494, label %block_41bc02, label %block_.L_41bc0c

block_41bc02:                                     ; preds = %block_41bbf4
  store i64 0, i64* %RAX.i70, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i1109, align 8
  %4505 = add i64 %4504, 10
  store i64 %4505, i64* %3, align 8
  call void @llvm.trap()
  unreachable

block_.L_41bc0c:                                  ; preds = %block_41bbf4
  %4506 = add i64 %4504, 5
  store i64 %4506, i64* %3, align 8
  br label %block_.L_41bc11

block_.L_41bc11:                                  ; preds = %block_41bbd8, %block_41bbc4, %block_.L_41bc0c, %block_41bbe6, %block_41bbb3, %block_41bba5, %block_41bb97, %block_41bb89, %block_41bb7b, %block_.L_41bb6d
  %4507 = phi i64 [ %4506, %block_.L_41bc0c ], [ %4479, %block_41bbe6 ], [ %4456, %block_41bbd8 ], [ %4445, %block_41bbc4 ], [ %4417, %block_41bbb3 ], [ %4389, %block_41bba5 ], [ %4368, %block_41bb97 ], [ %4347, %block_41bb89 ], [ %4326, %block_41bb7b ], [ %4305, %block_.L_41bb6d ]
  %4508 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %4509 = add i32 %4508, -1
  %4510 = icmp eq i32 %4508, 0
  %4511 = zext i1 %4510 to i8
  store i8 %4511, i8* %14, align 1
  %4512 = and i32 %4509, 255
  %4513 = tail call i32 @llvm.ctpop.i32(i32 %4512)
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = xor i8 %4515, 1
  store i8 %4516, i8* %21, align 1
  %4517 = xor i32 %4509, %4508
  %4518 = lshr i32 %4517, 4
  %4519 = trunc i32 %4518 to i8
  %4520 = and i8 %4519, 1
  store i8 %4520, i8* %26, align 1
  %4521 = icmp eq i32 %4509, 0
  %4522 = zext i1 %4521 to i8
  store i8 %4522, i8* %29, align 1
  %4523 = lshr i32 %4509, 31
  %4524 = trunc i32 %4523 to i8
  store i8 %4524, i8* %32, align 1
  %4525 = lshr i32 %4508, 31
  %4526 = xor i32 %4523, %4525
  %4527 = add nuw nsw i32 %4526, %4525
  %4528 = icmp eq i32 %4527, 2
  %4529 = zext i1 %4528 to i8
  store i8 %4529, i8* %38, align 1
  %.v366 = select i1 %4521, i64 14, i64 94
  %4530 = add i64 %4507, %.v366
  store i64 %4530, i64* %3, align 8
  %4531 = load i64, i64* %RBP.i, align 8
  br i1 %4521, label %block_41bc1f, label %block_.L_41bc6f

block_41bc1f:                                     ; preds = %block_.L_41bc11
  %4532 = add i64 %4531, -92
  %4533 = add i64 %4530, 7
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i32*
  %4535 = load i32, i32* %4534, align 4
  %4536 = add i32 %4535, 999900
  %4537 = icmp ult i32 %4535, -999900
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %14, align 1
  %4539 = and i32 %4536, 255
  %4540 = tail call i32 @llvm.ctpop.i32(i32 %4539)
  %4541 = trunc i32 %4540 to i8
  %4542 = and i8 %4541, 1
  %4543 = xor i8 %4542, 1
  store i8 %4543, i8* %21, align 1
  %4544 = xor i32 %4536, %4535
  %4545 = lshr i32 %4544, 4
  %4546 = trunc i32 %4545 to i8
  %4547 = and i8 %4546, 1
  store i8 %4547, i8* %26, align 1
  %4548 = icmp eq i32 %4536, 0
  %4549 = zext i1 %4548 to i8
  store i8 %4549, i8* %29, align 1
  %4550 = lshr i32 %4536, 31
  %4551 = trunc i32 %4550 to i8
  store i8 %4551, i8* %32, align 1
  %4552 = lshr i32 %4535, 31
  %4553 = xor i32 %4552, 1
  %4554 = xor i32 %4550, %4552
  %4555 = add nuw nsw i32 %4554, %4553
  %4556 = icmp eq i32 %4555, 2
  %4557 = zext i1 %4556 to i8
  store i8 %4557, i8* %38, align 1
  %4558 = icmp ne i8 %4551, 0
  %4559 = xor i1 %4558, %4556
  %4560 = or i1 %4548, %4559
  %.v374 = select i1 %4560, i64 80, i64 13
  %4561 = add i64 %4530, %.v374
  store i64 %4561, i64* %3, align 8
  br i1 %4560, label %block_.L_41bc6f, label %block_41bc2c

block_41bc2c:                                     ; preds = %block_41bc1f
  %4562 = load i32, i32* bitcast (%G_0x62e9e4_type* @G_0x62e9e4 to i32*), align 8
  store i8 0, i8* %14, align 1
  %4563 = and i32 %4562, 255
  %4564 = tail call i32 @llvm.ctpop.i32(i32 %4563)
  %4565 = trunc i32 %4564 to i8
  %4566 = and i8 %4565, 1
  %4567 = xor i8 %4566, 1
  store i8 %4567, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4568 = icmp eq i32 %4562, 0
  %4569 = zext i1 %4568 to i8
  store i8 %4569, i8* %29, align 1
  %4570 = lshr i32 %4562, 31
  %4571 = trunc i32 %4570 to i8
  store i8 %4571, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v375 = select i1 %4568, i64 14, i64 62
  %4572 = add i64 %4561, %.v375
  store i64 %4572, i64* %3, align 8
  br i1 %4568, label %block_41bc3a, label %block_.L_41bc6a

block_41bc3a:                                     ; preds = %block_41bc2c
  %4573 = load i32, i32* bitcast (%G_0x86bd84_type* @G_0x86bd84 to i32*), align 8
  store i8 0, i8* %14, align 1
  %4574 = and i32 %4573, 255
  %4575 = tail call i32 @llvm.ctpop.i32(i32 %4574)
  %4576 = trunc i32 %4575 to i8
  %4577 = and i8 %4576, 1
  %4578 = xor i8 %4577, 1
  store i8 %4578, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4579 = icmp eq i32 %4573, 0
  %4580 = zext i1 %4579 to i8
  store i8 %4580, i8* %29, align 1
  %4581 = lshr i32 %4573, 31
  %4582 = trunc i32 %4581 to i8
  store i8 %4582, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v376 = select i1 %4579, i64 14, i64 48
  %4583 = add i64 %4572, %.v376
  store i64 %4583, i64* %3, align 8
  br i1 %4579, label %block_41bc48, label %block_.L_41bc6a

block_41bc48:                                     ; preds = %block_41bc3a
  store i64 ptrtoint (%G__0x42914d_type* @G__0x42914d to i64), i64* %RDI.i71, align 8
  store i32 1, i32* bitcast (%G_0x62e9e4_type* @G_0x62e9e4 to i32*), align 8
  store i8 0, i8* %AL.i1401, align 1
  %4584 = add i64 %4583, -110488
  %4585 = add i64 %4583, 28
  %4586 = load i64, i64* %6, align 8
  %4587 = add i64 %4586, -8
  %4588 = inttoptr i64 %4587 to i64*
  store i64 %4585, i64* %4588, align 8
  store i64 %4587, i64* %6, align 8
  store i64 %4584, i64* %3, align 8
  %4589 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.64)
  %4590 = load i64, i64* %RBP.i, align 8
  %4591 = add i64 %4590, -12596
  %4592 = load i32, i32* %EAX.i1655, align 4
  %4593 = load i64, i64* %3, align 8
  %4594 = add i64 %4593, 6
  store i64 %4594, i64* %3, align 8
  %4595 = inttoptr i64 %4591 to i32*
  store i32 %4592, i32* %4595, align 4
  %.pre313 = load i64, i64* %3, align 8
  br label %block_.L_41bc6a

block_.L_41bc6a:                                  ; preds = %block_41bc3a, %block_41bc2c, %block_41bc48
  %4596 = phi i64 [ %4572, %block_41bc2c ], [ %4583, %block_41bc3a ], [ %.pre313, %block_41bc48 ]
  %MEMORY.67 = phi %struct.Memory* [ %MEMORY.64, %block_41bc2c ], [ %MEMORY.64, %block_41bc3a ], [ %4589, %block_41bc48 ]
  %4597 = add i64 %4596, 376
  br label %block_.L_41bde2

block_.L_41bc6f:                                  ; preds = %block_.L_41bc11, %block_41bc1f
  %4598 = phi i64 [ %4561, %block_41bc1f ], [ %4530, %block_.L_41bc11 ]
  %4599 = add i64 %4531, -92
  %4600 = add i64 %4598, 7
  store i64 %4600, i64* %3, align 8
  %4601 = inttoptr i64 %4599 to i32*
  %4602 = load i32, i32* %4601, align 4
  %4603 = add i32 %4602, 999900
  %4604 = icmp ult i32 %4602, -999900
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %14, align 1
  %4606 = and i32 %4603, 255
  %4607 = tail call i32 @llvm.ctpop.i32(i32 %4606)
  %4608 = trunc i32 %4607 to i8
  %4609 = and i8 %4608, 1
  %4610 = xor i8 %4609, 1
  store i8 %4610, i8* %21, align 1
  %4611 = xor i32 %4603, %4602
  %4612 = lshr i32 %4611, 4
  %4613 = trunc i32 %4612 to i8
  %4614 = and i8 %4613, 1
  store i8 %4614, i8* %26, align 1
  %4615 = icmp eq i32 %4603, 0
  %4616 = zext i1 %4615 to i8
  store i8 %4616, i8* %29, align 1
  %4617 = lshr i32 %4603, 31
  %4618 = trunc i32 %4617 to i8
  store i8 %4618, i8* %32, align 1
  %4619 = lshr i32 %4602, 31
  %4620 = xor i32 %4619, 1
  %4621 = xor i32 %4617, %4619
  %4622 = add nuw nsw i32 %4621, %4620
  %4623 = icmp eq i32 %4622, 2
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %38, align 1
  %4625 = icmp ne i8 %4618, 0
  %4626 = xor i1 %4625, %4623
  %.v323 = select i1 %4626, i64 13, i64 253
  %4627 = add i64 %4598, %.v323
  store i64 %4627, i64* %3, align 8
  br i1 %4626, label %block_41bc7c, label %block_.L_41bd6c

block_41bc7c:                                     ; preds = %block_.L_41bc6f
  store i8 %4511, i8* %14, align 1
  store i8 %4516, i8* %21, align 1
  store i8 %4520, i8* %26, align 1
  store i8 %4522, i8* %29, align 1
  store i8 %4524, i8* %32, align 1
  store i8 %4529, i8* %38, align 1
  %.v322 = select i1 %4521, i64 14, i64 240
  %4628 = add i64 %4627, %.v322
  store i64 %4628, i64* %3, align 8
  br i1 %4521, label %block_41bc8a, label %block_.L_41bd6c

block_41bc8a:                                     ; preds = %block_41bc7c
  %4629 = load i32, i32* bitcast (%G_0x62ea24_type* @G_0x62ea24 to i32*), align 8
  %4630 = zext i32 %4629 to i64
  store i64 %4630, i64* %RAX.i70, align 8
  %4631 = load i32, i32* bitcast (%G_0x62db0c_type* @G_0x62db0c to i32*), align 8
  %4632 = sub i32 %4629, %4631
  %4633 = icmp ult i32 %4629, %4631
  %4634 = zext i1 %4633 to i8
  store i8 %4634, i8* %14, align 1
  %4635 = and i32 %4632, 255
  %4636 = tail call i32 @llvm.ctpop.i32(i32 %4635)
  %4637 = trunc i32 %4636 to i8
  %4638 = and i8 %4637, 1
  %4639 = xor i8 %4638, 1
  store i8 %4639, i8* %21, align 1
  %4640 = xor i32 %4631, %4629
  %4641 = xor i32 %4640, %4632
  %4642 = lshr i32 %4641, 4
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  store i8 %4644, i8* %26, align 1
  %4645 = icmp eq i32 %4632, 0
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %29, align 1
  %4647 = lshr i32 %4632, 31
  %4648 = trunc i32 %4647 to i8
  store i8 %4648, i8* %32, align 1
  %4649 = lshr i32 %4629, 31
  %4650 = lshr i32 %4631, 31
  %4651 = xor i32 %4650, %4649
  %4652 = xor i32 %4647, %4649
  %4653 = add nuw nsw i32 %4652, %4651
  %4654 = icmp eq i32 %4653, 2
  %4655 = zext i1 %4654 to i8
  store i8 %4655, i8* %38, align 1
  %.v321 = select i1 %4645, i64 20, i64 226
  %4656 = add i64 %4628, %.v321
  store i64 %4656, i64* %3, align 8
  br i1 %4645, label %block_41bc9e, label %block_.L_41bd6c

block_41bc9e:                                     ; preds = %block_41bc8a
  %4657 = load i32, i32* bitcast (%G_0x86bd84_type* @G_0x86bd84 to i32*), align 8
  store i8 0, i8* %14, align 1
  %4658 = and i32 %4657, 255
  %4659 = tail call i32 @llvm.ctpop.i32(i32 %4658)
  %4660 = trunc i32 %4659 to i8
  %4661 = and i8 %4660, 1
  %4662 = xor i8 %4661, 1
  store i8 %4662, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4663 = icmp eq i32 %4657, 0
  %4664 = zext i1 %4663 to i8
  store i8 %4664, i8* %29, align 1
  %4665 = lshr i32 %4657, 31
  %4666 = trunc i32 %4665 to i8
  store i8 %4666, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %4663, i64 30, i64 14
  %4667 = add i64 %4656, %.v
  store i64 %4667, i64* %3, align 8
  br i1 %4663, label %block_.L_41bcbc, label %block_41bcac

block_41bcac:                                     ; preds = %block_41bc9e
  store i32 1, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  %4668 = add i64 %4667, 88
  store i64 %4668, i64* %3, align 8
  %4669 = load i32, i32* %4601, align 4
  %4670 = add i32 %4669, 1000000
  %4671 = icmp ult i32 %4669, -1000000
  %4672 = zext i1 %4671 to i8
  store i8 %4672, i8* %14, align 1
  %4673 = and i32 %4670, 255
  %4674 = tail call i32 @llvm.ctpop.i32(i32 %4673)
  %4675 = trunc i32 %4674 to i8
  %4676 = and i8 %4675, 1
  %4677 = xor i8 %4676, 1
  store i8 %4677, i8* %21, align 1
  %4678 = xor i32 %4670, %4669
  %4679 = lshr i32 %4678, 4
  %4680 = trunc i32 %4679 to i8
  %4681 = and i8 %4680, 1
  store i8 %4681, i8* %26, align 1
  %4682 = icmp eq i32 %4670, 0
  %4683 = zext i1 %4682 to i8
  store i8 %4683, i8* %29, align 1
  %4684 = lshr i32 %4670, 31
  %4685 = trunc i32 %4684 to i8
  store i8 %4685, i8* %32, align 1
  %4686 = lshr i32 %4669, 31
  %4687 = xor i32 %4686, 1
  %4688 = xor i32 %4684, %4686
  %4689 = add nuw nsw i32 %4688, %4687
  %4690 = icmp eq i32 %4689, 2
  %4691 = zext i1 %4690 to i8
  store i8 %4691, i8* %38, align 1
  %4692 = icmp ne i8 %4685, 0
  %4693 = xor i1 %4692, %4690
  %4694 = or i1 %4682, %4693
  %.v372 = select i1 %4694, i64 187, i64 94
  %4695 = add i64 %4667, %.v372
  store i64 %4695, i64* %3, align 8
  br i1 %4694, label %block_.L_41bd67, label %block_41bd0a

block_.L_41bcbc:                                  ; preds = %block_41bc9e
  store i64 ptrtoint (%G__0x85f1f0_type* @G__0x85f1f0 to i64), i64* %RDI.i71, align 8
  store i32 1, i32* bitcast (%G_0x86bd84_type* @G_0x86bd84 to i32*), align 8
  %4696 = add i64 %4667, -106716
  %4697 = add i64 %4667, 26
  %4698 = load i64, i64* %6, align 8
  %4699 = add i64 %4698, -8
  %4700 = inttoptr i64 %4699 to i64*
  store i64 %4697, i64* %4700, align 8
  store i64 %4699, i64* %6, align 8
  store i64 %4696, i64* %3, align 8
  %call2_41bcd1 = tail call %struct.Memory* @sub_401be0.ProcessHoldings(%struct.State* nonnull %0, i64 %4696, %struct.Memory* %MEMORY.64)
  %4701 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x429172_type* @G__0x429172 to i64), i64* %RDI.i71, align 8
  store i32 0, i32* bitcast (%G_0x62e9e4_type* @G_0x62e9e4 to i32*), align 8
  store i8 0, i8* %AL.i1401, align 1
  %4702 = add i64 %4701, -110630
  %4703 = add i64 %4701, 28
  %4704 = load i64, i64* %6, align 8
  %4705 = add i64 %4704, -8
  %4706 = inttoptr i64 %4705 to i64*
  store i64 %4703, i64* %4706, align 8
  store i64 %4705, i64* %6, align 8
  store i64 %4702, i64* %3, align 8
  %4707 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_41bcd1)
  %4708 = load i64, i64* %RBP.i, align 8
  %4709 = add i64 %4708, -12600
  %4710 = load i32, i32* %EAX.i1655, align 4
  %4711 = load i64, i64* %3, align 8
  %4712 = add i64 %4711, 6
  store i64 %4712, i64* %3, align 8
  %4713 = inttoptr i64 %4709 to i32*
  store i32 %4710, i32* %4713, align 4
  %.pre316 = load i64, i64* %3, align 8
  br label %block_.L_41a989.backedge

block_41bd0a:                                     ; preds = %block_41bcac
  %4714 = load i32, i32* bitcast (%G_0x86bd78_type* @G_0x86bd78 to i32*), align 8
  store i8 0, i8* %14, align 1
  %4715 = and i32 %4714, 255
  %4716 = tail call i32 @llvm.ctpop.i32(i32 %4715)
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  %4719 = xor i8 %4718, 1
  store i8 %4719, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4720 = icmp eq i32 %4714, 0
  %4721 = zext i1 %4720 to i8
  store i8 %4721, i8* %29, align 1
  %4722 = lshr i32 %4714, 31
  %4723 = trunc i32 %4722 to i8
  store i8 %4723, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v373 = select i1 %4720, i64 65, i64 14
  %4724 = add i64 %4695, %.v373
  %4725 = add i64 %4724, 10
  store i64 %4725, i64* %3, align 8
  br i1 %4720, label %block_.L_41bd4b, label %block_41bd18

block_41bd18:                                     ; preds = %block_41bd0a
  store i64 ptrtoint (%G__0x42918b_type* @G__0x42918b to i64), i64* %RDI.i71, align 8
  store i8 0, i8* %AL.i1401, align 1
  %4726 = add i64 %4724, -110696
  %4727 = add i64 %4724, 17
  %4728 = load i64, i64* %6, align 8
  %4729 = add i64 %4728, -8
  %4730 = inttoptr i64 %4729 to i64*
  store i64 %4727, i64* %4730, align 8
  store i64 %4729, i64* %6, align 8
  store i64 %4726, i64* %3, align 8
  %4731 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.64)
  %4732 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4291bc_type* @G__0x4291bc to i64), i64* %RDI.i71, align 8
  %4733 = load i64, i64* %RBP.i, align 8
  %4734 = add i64 %4733, -12604
  %4735 = load i32, i32* %EAX.i1655, align 4
  %4736 = add i64 %4732, 16
  store i64 %4736, i64* %3, align 8
  %4737 = inttoptr i64 %4734 to i32*
  store i32 %4735, i32* %4737, align 4
  %4738 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1401, align 1
  %4739 = add i64 %4738, -110729
  %4740 = add i64 %4738, 7
  %4741 = load i64, i64* %6, align 8
  %4742 = add i64 %4741, -8
  %4743 = inttoptr i64 %4742 to i64*
  store i64 %4740, i64* %4743, align 8
  store i64 %4742, i64* %6, align 8
  store i64 %4739, i64* %3, align 8
  %4744 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %4731)
  %4745 = load i64, i64* %RBP.i, align 8
  %4746 = add i64 %4745, -12608
  %4747 = load i32, i32* %EAX.i1655, align 4
  %4748 = load i64, i64* %3, align 8
  %4749 = add i64 %4748, 6
  store i64 %4749, i64* %3, align 8
  %4750 = inttoptr i64 %4746 to i32*
  store i32 %4747, i32* %4750, align 4
  %4751 = load i64, i64* %3, align 8
  %4752 = add i64 %4751, 28
  store i64 %4752, i64* %3, align 8
  br label %block_.L_41bd62

block_.L_41bd4b:                                  ; preds = %block_41bd0a
  store i64 ptrtoint (%G__0x4291cc_type* @G__0x4291cc to i64), i64* %RDI.i71, align 8
  store i8 0, i8* %AL.i1401, align 1
  %4753 = add i64 %4724, -110747
  %4754 = add i64 %4724, 17
  %4755 = load i64, i64* %6, align 8
  %4756 = add i64 %4755, -8
  %4757 = inttoptr i64 %4756 to i64*
  store i64 %4754, i64* %4757, align 8
  store i64 %4756, i64* %6, align 8
  store i64 %4753, i64* %3, align 8
  %4758 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.64)
  %4759 = load i64, i64* %RBP.i, align 8
  %4760 = add i64 %4759, -12612
  %4761 = load i32, i32* %EAX.i1655, align 4
  %4762 = load i64, i64* %3, align 8
  %4763 = add i64 %4762, 6
  store i64 %4763, i64* %3, align 8
  %4764 = inttoptr i64 %4760 to i32*
  store i32 %4761, i32* %4764, align 4
  %.pre315 = load i64, i64* %3, align 8
  br label %block_.L_41bd62

block_.L_41bd62:                                  ; preds = %block_.L_41bd4b, %block_41bd18
  %4765 = phi i64 [ %.pre315, %block_.L_41bd4b ], [ %4752, %block_41bd18 ]
  %MEMORY.69 = phi %struct.Memory* [ %4758, %block_.L_41bd4b ], [ %4744, %block_41bd18 ]
  %4766 = add i64 %4765, 5
  store i64 %4766, i64* %3, align 8
  br label %block_.L_41bd67

block_.L_41bd67:                                  ; preds = %block_.L_41bd62, %block_41bcac
  %4767 = phi i64 [ %4695, %block_41bcac ], [ %4766, %block_.L_41bd62 ]
  %MEMORY.70 = phi %struct.Memory* [ %MEMORY.64, %block_41bcac ], [ %MEMORY.69, %block_.L_41bd62 ]
  %4768 = add i64 %4767, 118
  br label %block_.L_41bddd

block_.L_41bd6c:                                  ; preds = %block_41bc8a, %block_41bc7c, %block_.L_41bc6f
  %4769 = phi i64 [ %4627, %block_.L_41bc6f ], [ %4656, %block_41bc8a ], [ %4628, %block_41bc7c ]
  %4770 = add i64 %4769, 7
  store i64 %4770, i64* %3, align 8
  %4771 = load i32, i32* %4601, align 4
  %4772 = add i32 %4771, 60000
  %4773 = icmp ult i32 %4771, -60000
  %4774 = zext i1 %4773 to i8
  store i8 %4774, i8* %14, align 1
  %4775 = and i32 %4772, 255
  %4776 = tail call i32 @llvm.ctpop.i32(i32 %4775)
  %4777 = trunc i32 %4776 to i8
  %4778 = and i8 %4777, 1
  %4779 = xor i8 %4778, 1
  store i8 %4779, i8* %21, align 1
  %4780 = xor i32 %4772, %4771
  %4781 = lshr i32 %4780, 4
  %4782 = trunc i32 %4781 to i8
  %4783 = and i8 %4782, 1
  store i8 %4783, i8* %26, align 1
  %4784 = icmp eq i32 %4772, 0
  %4785 = zext i1 %4784 to i8
  store i8 %4785, i8* %29, align 1
  %4786 = lshr i32 %4772, 31
  %4787 = trunc i32 %4786 to i8
  store i8 %4787, i8* %32, align 1
  %4788 = lshr i32 %4771, 31
  %4789 = xor i32 %4788, 1
  %4790 = xor i32 %4786, %4788
  %4791 = add nuw nsw i32 %4790, %4789
  %4792 = icmp eq i32 %4791, 2
  %4793 = zext i1 %4792 to i8
  store i8 %4793, i8* %38, align 1
  %4794 = icmp ne i8 %4787, 0
  %4795 = xor i1 %4794, %4792
  %4796 = or i1 %4784, %4795
  %.v367 = select i1 %4796, i64 108, i64 13
  %4797 = add i64 %4769, %.v367
  store i64 %4797, i64* %3, align 8
  br i1 %4796, label %block_.L_41bdd8, label %block_41bd79

block_41bd79:                                     ; preds = %block_.L_41bd6c
  %4798 = add i64 %4797, 7
  store i64 %4798, i64* %3, align 8
  %4799 = load i32, i32* %4601, align 4
  %4800 = add i32 %4799, 40000
  %4801 = icmp ult i32 %4799, -40000
  %4802 = zext i1 %4801 to i8
  store i8 %4802, i8* %14, align 1
  %4803 = and i32 %4800, 255
  %4804 = tail call i32 @llvm.ctpop.i32(i32 %4803)
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  %4807 = xor i8 %4806, 1
  store i8 %4807, i8* %21, align 1
  %4808 = xor i32 %4800, %4799
  %4809 = lshr i32 %4808, 4
  %4810 = trunc i32 %4809 to i8
  %4811 = and i8 %4810, 1
  store i8 %4811, i8* %26, align 1
  %4812 = icmp eq i32 %4800, 0
  %4813 = zext i1 %4812 to i8
  store i8 %4813, i8* %29, align 1
  %4814 = lshr i32 %4800, 31
  %4815 = trunc i32 %4814 to i8
  store i8 %4815, i8* %32, align 1
  %4816 = lshr i32 %4799, 31
  %4817 = xor i32 %4816, 1
  %4818 = xor i32 %4814, %4816
  %4819 = add nuw nsw i32 %4818, %4817
  %4820 = icmp eq i32 %4819, 2
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %38, align 1
  %4822 = icmp ne i8 %4815, 0
  %4823 = xor i1 %4822, %4820
  %.v368 = select i1 %4823, i64 13, i64 95
  %4824 = add i64 %4797, %.v368
  store i64 %4824, i64* %3, align 8
  br i1 %4823, label %block_41bd86, label %block_.L_41bdd8

block_41bd86:                                     ; preds = %block_41bd79
  store i8 %4511, i8* %14, align 1
  store i8 %4516, i8* %21, align 1
  store i8 %4520, i8* %26, align 1
  store i8 %4522, i8* %29, align 1
  store i8 %4524, i8* %32, align 1
  store i8 %4529, i8* %38, align 1
  %.v369 = select i1 %4521, i64 14, i64 82
  %4825 = add i64 %4824, %.v369
  store i64 %4825, i64* %3, align 8
  br i1 %4521, label %block_41bd94, label %block_.L_41bdd8

block_41bd94:                                     ; preds = %block_41bd86
  %4826 = load i32, i32* bitcast (%G_0x86bd78_type* @G_0x86bd78 to i32*), align 8
  store i8 0, i8* %14, align 1
  %4827 = and i32 %4826, 255
  %4828 = tail call i32 @llvm.ctpop.i32(i32 %4827)
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  %4831 = xor i8 %4830, 1
  store i8 %4831, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4832 = icmp eq i32 %4826, 0
  %4833 = zext i1 %4832 to i8
  store i8 %4833, i8* %29, align 1
  %4834 = lshr i32 %4826, 31
  %4835 = trunc i32 %4834 to i8
  store i8 %4835, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v370 = select i1 %4832, i64 14, i64 68
  %4836 = add i64 %4825, %.v370
  store i64 %4836, i64* %3, align 8
  br i1 %4832, label %block_41bda2, label %block_.L_41bdd8

block_41bda2:                                     ; preds = %block_41bd94
  %4837 = load i32, i32* bitcast (%G_0x62ea24_type* @G_0x62ea24 to i32*), align 8
  %4838 = zext i32 %4837 to i64
  store i64 %4838, i64* %RAX.i70, align 8
  %4839 = load i32, i32* bitcast (%G_0x62db0c_type* @G_0x62db0c to i32*), align 8
  %4840 = sub i32 %4837, %4839
  %4841 = icmp ult i32 %4837, %4839
  %4842 = zext i1 %4841 to i8
  store i8 %4842, i8* %14, align 1
  %4843 = and i32 %4840, 255
  %4844 = tail call i32 @llvm.ctpop.i32(i32 %4843)
  %4845 = trunc i32 %4844 to i8
  %4846 = and i8 %4845, 1
  %4847 = xor i8 %4846, 1
  store i8 %4847, i8* %21, align 1
  %4848 = xor i32 %4839, %4837
  %4849 = xor i32 %4848, %4840
  %4850 = lshr i32 %4849, 4
  %4851 = trunc i32 %4850 to i8
  %4852 = and i8 %4851, 1
  store i8 %4852, i8* %26, align 1
  %4853 = icmp eq i32 %4840, 0
  %4854 = zext i1 %4853 to i8
  store i8 %4854, i8* %29, align 1
  %4855 = lshr i32 %4840, 31
  %4856 = trunc i32 %4855 to i8
  store i8 %4856, i8* %32, align 1
  %4857 = lshr i32 %4837, 31
  %4858 = lshr i32 %4839, 31
  %4859 = xor i32 %4858, %4857
  %4860 = xor i32 %4855, %4857
  %4861 = add nuw nsw i32 %4860, %4859
  %4862 = icmp eq i32 %4861, 2
  %4863 = zext i1 %4862 to i8
  store i8 %4863, i8* %38, align 1
  %.v371 = select i1 %4853, i64 20, i64 54
  %4864 = add i64 %4836, %.v371
  store i64 %4864, i64* %3, align 8
  br i1 %4853, label %block_41bdb6, label %block_.L_41bdd8

block_41bdb6:                                     ; preds = %block_41bda2
  store i64 ptrtoint (%G__0x42921d_type* @G__0x42921d to i64), i64* %RDI.i71, align 8
  store i32 1, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  store i8 0, i8* %AL.i1401, align 1
  %4865 = add i64 %4864, -110854
  %4866 = add i64 %4864, 28
  %4867 = load i64, i64* %6, align 8
  %4868 = add i64 %4867, -8
  %4869 = inttoptr i64 %4868 to i64*
  store i64 %4866, i64* %4869, align 8
  store i64 %4868, i64* %6, align 8
  store i64 %4865, i64* %3, align 8
  %4870 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.64)
  %4871 = load i64, i64* %RBP.i, align 8
  %4872 = add i64 %4871, -12616
  %4873 = load i32, i32* %EAX.i1655, align 4
  %4874 = load i64, i64* %3, align 8
  %4875 = add i64 %4874, 6
  store i64 %4875, i64* %3, align 8
  %4876 = inttoptr i64 %4872 to i32*
  store i32 %4873, i32* %4876, align 4
  %.pre317 = load i64, i64* %3, align 8
  br label %block_.L_41bdd8

block_.L_41bdd8:                                  ; preds = %block_41bda2, %block_41bd94, %block_41bd86, %block_41bd79, %block_41bdb6, %block_.L_41bd6c
  %4877 = phi i64 [ %4797, %block_.L_41bd6c ], [ %4824, %block_41bd79 ], [ %4825, %block_41bd86 ], [ %4836, %block_41bd94 ], [ %4864, %block_41bda2 ], [ %.pre317, %block_41bdb6 ]
  %MEMORY.72 = phi %struct.Memory* [ %MEMORY.64, %block_.L_41bd6c ], [ %MEMORY.64, %block_41bd79 ], [ %MEMORY.64, %block_41bd86 ], [ %MEMORY.64, %block_41bd94 ], [ %MEMORY.64, %block_41bda2 ], [ %4870, %block_41bdb6 ]
  %4878 = add i64 %4877, 5
  store i64 %4878, i64* %3, align 8
  br label %block_.L_41bddd

block_.L_41bddd:                                  ; preds = %block_.L_41bdd8, %block_.L_41bd67
  %storemerge127 = phi i64 [ %4768, %block_.L_41bd67 ], [ %4878, %block_.L_41bdd8 ]
  %MEMORY.73 = phi %struct.Memory* [ %MEMORY.70, %block_.L_41bd67 ], [ %MEMORY.72, %block_.L_41bdd8 ]
  %4879 = add i64 %storemerge127, 5
  store i64 %4879, i64* %3, align 8
  br label %block_.L_41bde2

block_.L_41bde2:                                  ; preds = %block_.L_41bddd, %block_.L_41bc6a
  %storemerge126 = phi i64 [ %4597, %block_.L_41bc6a ], [ %4879, %block_.L_41bddd ]
  %MEMORY.74 = phi %struct.Memory* [ %MEMORY.67, %block_.L_41bc6a ], [ %MEMORY.73, %block_.L_41bddd ]
  %4880 = load i64, i64* %RBP.i, align 8
  %4881 = add i64 %4880, -24
  %4882 = add i64 %storemerge126, 4
  store i64 %4882, i64* %3, align 8
  %4883 = inttoptr i64 %4881 to i64*
  %4884 = load i64, i64* %4883, align 8
  store i64 %4884, i64* %RAX.i70, align 8
  %4885 = add i64 %4880, -12544
  %4886 = add i64 %storemerge126, 11
  store i64 %4886, i64* %3, align 8
  %4887 = inttoptr i64 %4885 to i64*
  %4888 = load i64, i64* %4887, align 8
  store i64 %4888, i64* %RCX.i1109, align 8
  %4889 = add i64 %storemerge126, 14
  store i64 %4889, i64* %3, align 8
  %4890 = inttoptr i64 %4888 to i64*
  store i64 %4884, i64* %4890, align 8
  %4891 = load i64, i64* %RBP.i, align 8
  %4892 = add i64 %4891, -16
  %4893 = load i64, i64* %3, align 8
  %4894 = add i64 %4893, 4
  store i64 %4894, i64* %3, align 8
  %4895 = inttoptr i64 %4892 to i64*
  %4896 = load i64, i64* %4895, align 8
  store i64 %4896, i64* %RAX.i70, align 8
  %4897 = load i64, i64* %RCX.i1109, align 8
  %4898 = add i64 %4897, 8
  %4899 = add i64 %4893, 8
  store i64 %4899, i64* %3, align 8
  %4900 = inttoptr i64 %4898 to i64*
  store i64 %4896, i64* %4900, align 8
  %4901 = load i64, i64* %RBP.i, align 8
  %4902 = add i64 %4901, -8
  %4903 = load i64, i64* %3, align 8
  %4904 = add i64 %4903, 4
  store i64 %4904, i64* %3, align 8
  %4905 = inttoptr i64 %4902 to i64*
  %4906 = load i64, i64* %4905, align 8
  store i64 %4906, i64* %RAX.i70, align 8
  %4907 = load i64, i64* %RCX.i1109, align 8
  %4908 = add i64 %4907, 16
  %4909 = add i64 %4903, 8
  store i64 %4909, i64* %3, align 8
  %4910 = inttoptr i64 %4908 to i64*
  store i64 %4906, i64* %4910, align 8
  %.pre318 = load i64, i64* %3, align 8
  br label %block_.L_41be00

block_.L_41be00:                                  ; preds = %block_.L_41bde2, %block_41b588, %block_41b50f, %block_41b01e, %block_41ad13, %block_.L_41aae0
  %4911 = phi i64 [ %.pre318, %block_.L_41bde2 ], [ %2620, %block_41b588 ], [ %2538, %block_41b50f ], [ %1328, %block_41b01e ], [ %755, %block_41ad13 ], [ %173, %block_.L_41aae0 ]
  %MEMORY.75 = phi %struct.Memory* [ %MEMORY.74, %block_.L_41bde2 ], [ %call2_41b4e5, %block_41b588 ], [ %call2_41b4e5, %block_41b50f ], [ %MEMORY.21, %block_41b01e ], [ %MEMORY.0, %block_41ad13 ], [ %MEMORY.0, %block_.L_41aae0 ]
  %4912 = load i64, i64* %RBP.i, align 8
  %4913 = add i64 %4912, -12536
  %4914 = add i64 %4911, 7
  store i64 %4914, i64* %3, align 8
  %4915 = inttoptr i64 %4913 to i64*
  %4916 = load i64, i64* %4915, align 8
  store i64 %4916, i64* %RAX.i70, align 8
  %4917 = load i64, i64* %6, align 8
  %4918 = add i64 %4917, 12640
  store i64 %4918, i64* %6, align 8
  %4919 = icmp ugt i64 %4917, -12641
  %4920 = zext i1 %4919 to i8
  store i8 %4920, i8* %14, align 1
  %4921 = trunc i64 %4918 to i32
  %4922 = and i32 %4921, 255
  %4923 = tail call i32 @llvm.ctpop.i32(i32 %4922)
  %4924 = trunc i32 %4923 to i8
  %4925 = and i8 %4924, 1
  %4926 = xor i8 %4925, 1
  store i8 %4926, i8* %21, align 1
  %4927 = xor i64 %4918, %4917
  %4928 = lshr i64 %4927, 4
  %4929 = trunc i64 %4928 to i8
  %4930 = and i8 %4929, 1
  store i8 %4930, i8* %26, align 1
  %4931 = icmp eq i64 %4918, 0
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %29, align 1
  %4933 = lshr i64 %4918, 63
  %4934 = trunc i64 %4933 to i8
  store i8 %4934, i8* %32, align 1
  %4935 = lshr i64 %4917, 63
  %4936 = xor i64 %4933, %4935
  %4937 = add nuw nsw i64 %4936, %4933
  %4938 = icmp eq i64 %4937, 2
  %4939 = zext i1 %4938 to i8
  store i8 %4939, i8* %38, align 1
  %4940 = add i64 %4911, 15
  store i64 %4940, i64* %3, align 8
  %4941 = add i64 %4917, 12648
  %4942 = inttoptr i64 %4918 to i64*
  %4943 = load i64, i64* %4942, align 8
  store i64 %4943, i64* %RBP.i, align 8
  store i64 %4941, i64* %6, align 8
  %4944 = add i64 %4911, 16
  store i64 %4944, i64* %3, align 8
  %4945 = inttoptr i64 %4941 to i64*
  %4946 = load i64, i64* %4945, align 8
  store i64 %4946, i64* %3, align 8
  %4947 = add i64 %4917, 12656
  store i64 %4947, i64* %6, align 8
  ret %struct.Memory* %MEMORY.75
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x3160___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -12640
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 12640
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
define %struct.Memory* @routine_movq__rdi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd84_type* @G_0x86bd84 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12536
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x3100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12544
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x864500(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x63ae44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x63ae44_type* @G_0x63ae44 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x880b10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x880b10_type* @G_0x880b10 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e4f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e4f0_type* @G_0x62e4f0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62ea14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62ea14_type* @G_0x62ea14 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8667a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8667a4_type* @G_0x8667a4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x864508(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x864508_type* @G_0x864508 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd6c_type* @G_0x86bd6c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8870a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8870a4_type* @G_0x8870a4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x886a68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x886a68_type* @G_0x886a68 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8a0a70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8a0a70_type* @G_0x8a0a70 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8662e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8662e0_type* @G_0x8662e0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e9fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e9fc_type* @G_0x62e9fc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x866538(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866538_type* @G_0x866538 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x881df0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x881df0_type* @G_0x881df0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e9f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e9f8_type* @G_0x62e9f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x866780(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866780_type* @G_0x866780 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e9f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e9f4_type* @G_0x62e9f4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x864504(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x864504_type* @G_0x864504 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8870a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8870a0_type* @G_0x8870a0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8a0a74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8a0a74_type* @G_0x8a0a74 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62ea1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62ea1c_type* @G_0x62ea1c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e4f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8__0x62ea18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 200, i32* bitcast (%G_0x62ea18_type* @G_0x62ea18 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__0x86678c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  store i8 0, i8* getelementptr inbounds (%G_0x86678c_type, %G_0x86678c_type* @G_0x86678c, i64 0, i32 0, i64 0), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__0x8825f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 -1, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.interrupt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41ab0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x62e514(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e514_type* @G_0x62e514 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41aae0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x3100__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41be00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.rtime(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x8662e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x8662e8_type* @G_0x8662e8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %5, 4
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
define %struct.Memory* @routine_jne_.L_41ab45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3084__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.in_check(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x307c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3074__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12404
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
define %struct.Memory* @routine_cmpl_0x85f150___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41ac07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3074__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12404
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
define %struct.Memory* @routine_callq_.make(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x307c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12412
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
define %struct.Memory* @routine_callq_.check_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41abe1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12408
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.unmake(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12404
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ab7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ace9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62e9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3084__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12420
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41ace4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41acbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ac5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ace9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
define %struct.Memory* @routine_je_.L_41ad65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ad65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x62e9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
define %struct.Memory* @routine_jne_.L_41ad60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3070__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x64__0x8a0a78___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, 100
  %8 = trunc i64 %7 to i32
  %9 = and i64 %7, 4294967292
  store i64 %9, i64* %RCX, align 8
  %10 = mul i64 %6, 429496729600
  %11 = ashr exact i64 %10, 32
  %12 = icmp ne i64 %11, %7
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 252
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %13, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x86bd88___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x86bd88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3078__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
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
define %struct.Memory* @routine_movq_MINUS0x3100__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ad65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.check_phase(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x46bd08__rip____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x46bd08__rip__type* @G_0x46bd08__rip_ to i64)
  %5 = add i64 %3, 6
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
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
  %14 = icmp eq i32 %4, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %4, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12548
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41adb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ad83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3104__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12548
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
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp eq i32 %6, 0
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12552
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41add3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ad9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 2
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %6
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %7, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %7, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %6, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x310c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12556
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41adef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ae06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429086___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429086_type* @G__0x429086 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12560
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429096___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429096_type* @G__0x429096 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12564
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4290a9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4290a9_type* @G__0x4290a9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12568
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ae85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x886b80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886b80_type* @G_0x886b80 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ae72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x886a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41ae61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.allocate_time(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x28__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -40
  %10 = icmp ult i32 %8, 40
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
define %struct.Memory* @routine_jle_.L_41ae52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x28__0x633b44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 40, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ae5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl__eax__0x633b44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ae6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ae80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x886b80___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886b80_type* @G_0x886b80 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ae90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf423f__0x633b44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 999999, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12416
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
define %struct.Memory* @routine_je_.L_41aedd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xd50b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd50b__rip__type* @G_0xd50b__rip_ to i64)
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
define %struct.Memory* @routine_movss_0xd4f7__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xd4f7__rip__type* @G_0xd4f7__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_0x633b44___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fmul float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x3080__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12416
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4290b9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4290b9_type* @G__0x4290b9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b44___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x311c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12572
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41af2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.clear_tt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.reset_ecache(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x886bf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x886bf0_type* @G__0x886bf0 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x4b0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1200, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41afba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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
define %struct.Memory* @routine_je_.L_41af64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x63ae48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x63ae48_type* @G_0x63ae48 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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
define %struct.Memory* @routine_jg_.L_41af80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41afba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xd430__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd430__rip__type* @G_0xd430__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xd420__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd420__rip__type* @G_0xd420__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x85f168(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x85f168_type* @G_0x85f168 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.proofnumberscan(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41affc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41aff7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x62ea20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x62ea28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x62ea30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b04d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62ea24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea24_type* @G_0x62ea24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x62db0c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62db0c_type* @G_0x62db0c to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b04d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x62ea20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea20_type* @G_0x62ea20 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea28_type* @G_0x62ea28 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62ea30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62ea30_type* @G_0x62ea30 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62e4f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b069(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41b0b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41b0b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b6d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x12c__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -300
  %10 = icmp ult i32 %8, 300
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
define %struct.Memory* @routine_jge_.L_41b143(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x12c__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -300
  %10 = icmp ult i32 %8, 300
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
define %struct.Memory* @routine_jge_.L_41b130(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1c20___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 7200
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db08___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b0cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b135(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b0bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x86bda0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14400___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 82944, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41b255(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x882600___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x639220___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x884b20___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e530___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6481200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x638c60___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6524000
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x881e00___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8920576
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db08___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = icmp ult i64 %7, %3
  %9 = icmp ult i64 %7, %4
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %7 to i32
  %14 = and i32 %13, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i64 %4, %3
  %21 = xor i64 %20, %7
  %22 = lshr i64 %21, 4
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i64 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %7, 63
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %3, 63
  %33 = lshr i64 %4, 63
  %34 = xor i64 %29, %32
  %35 = xor i64 %29, %33
  %36 = add nuw nsw i64 %34, %35
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db08___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x884320___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x884320_type* @G__0x884320 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x800___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2048, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86450c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
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
define %struct.Memory* @routine_movl__0x1__0x633b50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b50___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x880b18___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x880b18_type* @G_0x880b18 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_41b6cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8662e8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8662e8_type* @G_0x8662e8 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.rdifftime(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xd0f3__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd0f3__rip__type* @G_0xd0f3__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xd0f3__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xd0f3__rip__type* @G_0xd0f3__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x58__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0x633b44___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
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
define %struct.Memory* @routine_jbe_.L_41b303(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_41b303(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41b6cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x30a8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 100, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x23___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 35, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
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
define %struct.Memory* @routine_cmovel__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RSI, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b50___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.search_root(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30a8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30a0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x3098__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b38d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x86450c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jg_.L_41b3ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x8644f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b3b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_41b43b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b43b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x30c0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfff0bdc0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4293967296, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf4240___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000000, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30c0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30b8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30b0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b436(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41b4e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
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
define %struct.Memory* @routine_jl_.L_41b4e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b4e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x30d8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86450c___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30d8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30d0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30c8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b4db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41b4e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b55b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x633b50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
define %struct.Memory* @routine_jle_.L_41b55b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41b53e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41b551(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41b556(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b55b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661dc_type* @G_0x8661dc to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b650(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8644f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfff0bdc0__0x86450c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %6 = add i32 %5, 1000000
  %7 = icmp ult i32 %5, -1000000
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
  %28 = xor i32 %27, 1
  %29 = xor i32 %24, %27
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b5b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x8822b0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x8822b0_type* @G__0x8822b0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.stringize_pv(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41b606(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__0x86678c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i8 %4, i8* getelementptr inbounds (%G_0x86678c_type, %G_0x86678c_type* @G_0x86678c, i64 0, i32 0, i64 0), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_41b620(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86450c___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.post_thinking(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xdbba0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -900000
  %10 = icmp ult i32 %8, 900000
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
define %struct.Memory* @routine_jle_.L_41b64b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xf4240___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000000, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x86450c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %8 = sub i32 %6, %7
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %6, %7
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %7, %6
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %6, 31
  %32 = lshr i32 %7, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x633b50___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41b64b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41b650(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b663(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41b6b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e530___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6481200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x638c60___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6524000
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x881e00___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8920576
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b66a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b6b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x633b50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b294(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b8c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41b8bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62e51c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x30f0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62ea10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62ea10_type* @G_0x62ea10 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.proofnumbercheck(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30f0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30e8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30e0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x3080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jge_.L_41b8b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62ea10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea10_type* @G_0x62ea10 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b8b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3080__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12416
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
define %struct.Memory* @routine_movl__eax__MINUS0x3080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12416
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3084__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12420
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
define %struct.Memory* @routine_jge_.L_41b853(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_jne_.L_41b840(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x886bf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8940528
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b853(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b845(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b7c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41b897(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8940528
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %9, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b884(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b889(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b85a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x62e9e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41b8b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x62e51c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a989(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b8bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41b8c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b8e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_41b95a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x308c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12428
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.comp_to_san(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4290cd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4290cd_type* @G__0x4290cd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x308c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12428
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3080__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12416
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
define %struct.Memory* @routine_movl__0x0__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12576
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl_0x8a05b4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_movl__ecx__0x8a05b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8a05b4_type* @G_0x8a05b4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661d8_type* @G_0x8661d8 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41b9c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41b9c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x633b44___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b44_type* @G_0x633b44 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_addl_0x8a0a78___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x8a0a78_type* @G_0x8a0a78 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x86bd88___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x86bd88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86bd88_type* @G_0x86bd88 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xf423e__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -999998
  %10 = icmp ult i32 %8, 999998
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ba09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
define %struct.Memory* @routine_jne_.L_41b9f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ba04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ba57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfff0bdc2__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 999998
  %10 = icmp ult i32 %8, -999998
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41ba52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41ba42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41ba4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41ba52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41bb6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41bb6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %5, 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %5, 5
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xf40b0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -999600
  %10 = icmp ult i32 %8, 999600
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41bb68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41bb2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4290fe___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4290fe_type* @G__0x4290fe to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf4240___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12580
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3124__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12580
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12584
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bb63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x429119___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429119_type* @G__0x429119 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x312c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12588
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x312c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12588
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
define %struct.Memory* @routine_movl__eax__MINUS0x3130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12592
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bb68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bb6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41bc11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x86678c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i8, i8* getelementptr inbounds (%G_0x86678c_type, %G_0x86678c_type* @G_0x86678c, i64 0, i32 0, i64 0), align 8
  %6 = sext i8 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_jl_.L_41bc11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41bc11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__0x8825f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  %6 = add i32 %5, 1
  %7 = icmp ne i32 %5, -1
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
  %16 = xor i32 %5, 16
  %17 = xor i32 %16, %6
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %6, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %6, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %5, 31
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41bc0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bc11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41bc6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfff0be24__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 999900
  %10 = icmp ult i32 %8, -999900
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41bc6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62e9e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e9e4_type* @G_0x62e9e4 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41bc6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x86bd84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd84_type* @G_0x86bd84 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x42914d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42914d_type* @G__0x42914d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x62e9e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x62e9e4_type* @G_0x62e9e4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12596
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bde2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41bd6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41bd6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41bcbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x86bd90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x86bd90_type* @G_0x86bd90 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bcfd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x85f1f0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x85f1f0_type* @G__0x85f1f0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x86bd84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x86bd84_type* @G_0x86bd84 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ProcessHoldings(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x429172___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x429172_type* @G__0x429172 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e9e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e9e4_type* @G_0x62e9e4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12600
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xfff0bdc0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1000000
  %10 = icmp ult i32 %8, -1000000
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41bd67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x86bd78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd78_type* @G_0x86bd78 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41bd4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x42918b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42918b_type* @G__0x42918b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4291bc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4291bc_type* @G__0x4291bc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x313c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12604
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12608
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bd62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4291cc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4291cc_type* @G__0x4291cc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12612
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bd67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41bddd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffff15a0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 60000
  %10 = icmp ult i32 %8, -60000
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41bdd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffff63c0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 40000
  %10 = icmp ult i32 %8, -40000
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41bdd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41bdd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x42921d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x42921d_type* @G__0x42921d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12616
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30f8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3160___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12640
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -12641
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

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #4

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }
