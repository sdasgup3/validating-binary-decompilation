; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae448_type = type <{ [4 x i8] }>
%G_0x7ae458_type = type <{ [4 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xab0eb8_type = type <{ [16 x i8] }>
%G_0xab0ec0_type = type <{ [16 x i8] }>
%G_0xab0ec8_type = type <{ [4 x i8] }>
%G_0xab0ecc_type = type <{ [4 x i8] }>
%G_0xab0ed0_type = type <{ [1 x i8] }>
%G_0xab0ed8_type = type <{ [1 x i8] }>
%G_0xab0ee4_type = type <{ [1 x i8] }>
%G_0xab0ee8_type = type <{ [4 x i8] }>
%G_0xab0f0c_type = type <{ [1 x i8] }>
%G_0xab0f10_type = type <{ [1 x i8] }>
%G_0xab0f14_type = type <{ [16 x i8] }>
%G_0xab0f18_type = type <{ [4 x i8] }>
%G_0xab0f1c_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [4 x i8] }>
%G_0xab0fb8_type = type <{ [1 x i8] }>
%G_0xab0fbc_type = type <{ [1 x i8] }>
%G_0xab0fd0_type = type <{ [1 x i8] }>
%G_0xab0fd4_type = type <{ [1 x i8] }>
%G_0xab0fd8_type = type <{ [1 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb4a000_type = type <{ [4 x i8] }>
%G_0xb4a004_type = type <{ [4 x i8] }>
%G_0xb4a008_type = type <{ [4 x i8] }>
%G_0xb4a00c_type = type <{ [4 x i8] }>
%G_0xb4a010_type = type <{ [4 x i8] }>
%G_0xb4a014_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G_0xbbc5d__rip__type = type <{ [8 x i8] }>
%G_0xbbdd3__rip__type = type <{ [8 x i8] }>
%G_0xbbf4a__rip__type = type <{ [8 x i8] }>
%G_0xbbfdd__rip__type = type <{ [4 x i8] }>
%G_0xbc11e__rip__type = type <{ [8 x i8] }>
%G_0xbc134__rip__type = type <{ [8 x i8] }>
%G_0xbc13b__rip__type = type <{ [8 x i8] }>
%G_0xbc164__rip__type = type <{ [4 x i8] }>
%G_0xbc1fe__rip__type = type <{ [8 x i8] }>
%G_0xbc2d5__rip__type = type <{ [8 x i8] }>
%G_0xbc34e__rip__type = type <{ [4 x i8] }>
%G_0xbc403__rip__type = type <{ [8 x i8] }>
%G_0xbc456__rip__type = type <{ [8 x i8] }>
%G_0xbc4ef__rip__type = type <{ [8 x i8] }>
%G_0xbc542__rip__type = type <{ [8 x i8] }>
%G_0xbc5f0__rip__type = type <{ [8 x i8] }>
%G_0xbc659__rip__type = type <{ [8 x i8] }>
%G_0xbc66d__rip__type = type <{ [4 x i8] }>
%G_0xbc882__rip__type = type <{ [8 x i8] }>
%G_0xbcac8__rip__type = type <{ [8 x i8] }>
%G_0xbcdde__rip__type = type <{ [4 x i8] }>
%G__0x579da7_type = type <{ [8 x i8] }>
%G__0x579daa_type = type <{ [8 x i8] }>
%G__0x57a0c7_type = type <{ [8 x i8] }>
%G__0x57a0df_type = type <{ [8 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x57a10c_type = type <{ [8 x i8] }>
%G__0x57a135_type = type <{ [8 x i8] }>
%G__0x57a146_type = type <{ [8 x i8] }>
%G__0x57bf39_type = type <{ [8 x i8] }>
%G__0x57bfef_type = type <{ [8 x i8] }>
%G__0x57c05a_type = type <{ [8 x i8] }>
%G__0x57c066_type = type <{ [8 x i8] }>
%G__0x57c08f_type = type <{ [8 x i8] }>
%G__0x57c0a0_type = type <{ [8 x i8] }>
%G__0x57c0af_type = type <{ [8 x i8] }>
%G__0x57c0d3_type = type <{ [8 x i8] }>
%G__0x57c0ed_type = type <{ [8 x i8] }>
%G__0x57c10f_type = type <{ [8 x i8] }>
%G__0x57c135_type = type <{ [8 x i8] }>
%G__0x57c13c_type = type <{ [8 x i8] }>
%G__0x57c149_type = type <{ [8 x i8] }>
%G__0x57c15d_type = type <{ [8 x i8] }>
%G__0x57c19b_type = type <{ [8 x i8] }>
%G__0x57c1c3_type = type <{ [8 x i8] }>
%G__0x57c1cb_type = type <{ [8 x i8] }>
%G__0x57c1e5_type = type <{ [8 x i8] }>
%G__0x57c1f2_type = type <{ [8 x i8] }>
%G__0x57c209_type = type <{ [8 x i8] }>
%G__0x57c220_type = type <{ [8 x i8] }>
%G__0x57c232_type = type <{ [8 x i8] }>
%G__0x57c24c_type = type <{ [8 x i8] }>
%G__0x57c266_type = type <{ [8 x i8] }>
%G__0x57c280_type = type <{ [8 x i8] }>
%G__0x57c29a_type = type <{ [8 x i8] }>
%G__0x57c2b4_type = type <{ [8 x i8] }>
%G__0x57c2ce_type = type <{ [8 x i8] }>
%G__0x57c2e8_type = type <{ [8 x i8] }>
%G__0x57c302_type = type <{ [8 x i8] }>
%G__0x57c312_type = type <{ [8 x i8] }>
%G__0x57c338_type = type <{ [8 x i8] }>
%G__0x57c353_type = type <{ [8 x i8] }>
%G__0x7ae448_type = type <{ [8 x i8] }>
%G__0xab0f18_type = type <{ [8 x i8] }>
%G__0xab0f1c_type = type <{ [8 x i8] }>
%G__0xb6e920_type = type <{ [8 x i8] }>
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
@G_0x7ae448 = local_unnamed_addr global %G_0x7ae448_type zeroinitializer
@G_0x7ae458 = local_unnamed_addr global %G_0x7ae458_type zeroinitializer
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xab0eb8 = local_unnamed_addr global %G_0xab0eb8_type zeroinitializer
@G_0xab0ec0 = local_unnamed_addr global %G_0xab0ec0_type zeroinitializer
@G_0xab0ec8 = local_unnamed_addr global %G_0xab0ec8_type zeroinitializer
@G_0xab0ecc = local_unnamed_addr global %G_0xab0ecc_type zeroinitializer
@G_0xab0ed0 = local_unnamed_addr global %G_0xab0ed0_type zeroinitializer
@G_0xab0ed8 = local_unnamed_addr global %G_0xab0ed8_type zeroinitializer
@G_0xab0ee4 = local_unnamed_addr global %G_0xab0ee4_type zeroinitializer
@G_0xab0ee8 = local_unnamed_addr global %G_0xab0ee8_type zeroinitializer
@G_0xab0f0c = local_unnamed_addr global %G_0xab0f0c_type zeroinitializer
@G_0xab0f10 = local_unnamed_addr global %G_0xab0f10_type zeroinitializer
@G_0xab0f14 = local_unnamed_addr global %G_0xab0f14_type zeroinitializer
@G_0xab0f18 = local_unnamed_addr global %G_0xab0f18_type zeroinitializer
@G_0xab0f1c = local_unnamed_addr global %G_0xab0f1c_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G_0xab0fb8 = local_unnamed_addr global %G_0xab0fb8_type zeroinitializer
@G_0xab0fbc = local_unnamed_addr global %G_0xab0fbc_type zeroinitializer
@G_0xab0fd0 = local_unnamed_addr global %G_0xab0fd0_type zeroinitializer
@G_0xab0fd4 = local_unnamed_addr global %G_0xab0fd4_type zeroinitializer
@G_0xab0fd8 = local_unnamed_addr global %G_0xab0fd8_type zeroinitializer
@G_0xafdfb0 = local_unnamed_addr global %G_0xafdfb0_type zeroinitializer
@G_0xb4a000 = local_unnamed_addr global %G_0xb4a000_type zeroinitializer
@G_0xb4a004 = local_unnamed_addr global %G_0xb4a004_type zeroinitializer
@G_0xb4a008 = local_unnamed_addr global %G_0xb4a008_type zeroinitializer
@G_0xb4a00c = local_unnamed_addr global %G_0xb4a00c_type zeroinitializer
@G_0xb4a010 = local_unnamed_addr global %G_0xb4a010_type zeroinitializer
@G_0xb4a014 = local_unnamed_addr global %G_0xb4a014_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb8b854 = local_unnamed_addr global %G_0xb8b854_type zeroinitializer
@G_0xbbc5d__rip_ = global %G_0xbbc5d__rip__type zeroinitializer
@G_0xbbdd3__rip_ = global %G_0xbbdd3__rip__type zeroinitializer
@G_0xbbf4a__rip_ = global %G_0xbbf4a__rip__type zeroinitializer
@G_0xbbfdd__rip_ = global %G_0xbbfdd__rip__type zeroinitializer
@G_0xbc11e__rip_ = global %G_0xbc11e__rip__type zeroinitializer
@G_0xbc134__rip_ = global %G_0xbc134__rip__type zeroinitializer
@G_0xbc13b__rip_ = global %G_0xbc13b__rip__type zeroinitializer
@G_0xbc164__rip_ = global %G_0xbc164__rip__type zeroinitializer
@G_0xbc1fe__rip_ = global %G_0xbc1fe__rip__type zeroinitializer
@G_0xbc2d5__rip_ = global %G_0xbc2d5__rip__type zeroinitializer
@G_0xbc34e__rip_ = global %G_0xbc34e__rip__type zeroinitializer
@G_0xbc403__rip_ = global %G_0xbc403__rip__type zeroinitializer
@G_0xbc456__rip_ = global %G_0xbc456__rip__type zeroinitializer
@G_0xbc4ef__rip_ = global %G_0xbc4ef__rip__type zeroinitializer
@G_0xbc542__rip_ = global %G_0xbc542__rip__type zeroinitializer
@G_0xbc5f0__rip_ = global %G_0xbc5f0__rip__type zeroinitializer
@G_0xbc659__rip_ = global %G_0xbc659__rip__type zeroinitializer
@G_0xbc66d__rip_ = global %G_0xbc66d__rip__type zeroinitializer
@G_0xbc882__rip_ = global %G_0xbc882__rip__type zeroinitializer
@G_0xbcac8__rip_ = global %G_0xbcac8__rip__type zeroinitializer
@G_0xbcdde__rip_ = global %G_0xbcdde__rip__type zeroinitializer
@G__0x579da7 = global %G__0x579da7_type zeroinitializer
@G__0x579daa = global %G__0x579daa_type zeroinitializer
@G__0x57a0c7 = global %G__0x57a0c7_type zeroinitializer
@G__0x57a0df = global %G__0x57a0df_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x57a10c = global %G__0x57a10c_type zeroinitializer
@G__0x57a135 = global %G__0x57a135_type zeroinitializer
@G__0x57a146 = global %G__0x57a146_type zeroinitializer
@G__0x57bf39 = global %G__0x57bf39_type zeroinitializer
@G__0x57bfef = global %G__0x57bfef_type zeroinitializer
@G__0x57c05a = global %G__0x57c05a_type zeroinitializer
@G__0x57c066 = global %G__0x57c066_type zeroinitializer
@G__0x57c08f = global %G__0x57c08f_type zeroinitializer
@G__0x57c0a0 = global %G__0x57c0a0_type zeroinitializer
@G__0x57c0af = global %G__0x57c0af_type zeroinitializer
@G__0x57c0d3 = global %G__0x57c0d3_type zeroinitializer
@G__0x57c0ed = global %G__0x57c0ed_type zeroinitializer
@G__0x57c10f = global %G__0x57c10f_type zeroinitializer
@G__0x57c135 = global %G__0x57c135_type zeroinitializer
@G__0x57c13c = global %G__0x57c13c_type zeroinitializer
@G__0x57c149 = global %G__0x57c149_type zeroinitializer
@G__0x57c15d = global %G__0x57c15d_type zeroinitializer
@G__0x57c19b = global %G__0x57c19b_type zeroinitializer
@G__0x57c1c3 = global %G__0x57c1c3_type zeroinitializer
@G__0x57c1cb = global %G__0x57c1cb_type zeroinitializer
@G__0x57c1e5 = global %G__0x57c1e5_type zeroinitializer
@G__0x57c1f2 = global %G__0x57c1f2_type zeroinitializer
@G__0x57c209 = global %G__0x57c209_type zeroinitializer
@G__0x57c220 = global %G__0x57c220_type zeroinitializer
@G__0x57c232 = global %G__0x57c232_type zeroinitializer
@G__0x57c24c = global %G__0x57c24c_type zeroinitializer
@G__0x57c266 = global %G__0x57c266_type zeroinitializer
@G__0x57c280 = global %G__0x57c280_type zeroinitializer
@G__0x57c29a = global %G__0x57c29a_type zeroinitializer
@G__0x57c2b4 = global %G__0x57c2b4_type zeroinitializer
@G__0x57c2ce = global %G__0x57c2ce_type zeroinitializer
@G__0x57c2e8 = global %G__0x57c2e8_type zeroinitializer
@G__0x57c302 = global %G__0x57c302_type zeroinitializer
@G__0x57c312 = global %G__0x57c312_type zeroinitializer
@G__0x57c338 = global %G__0x57c338_type zeroinitializer
@G__0x57c353 = global %G__0x57c353_type zeroinitializer
@G__0x7ae448 = global %G__0x7ae448_type zeroinitializer
@G__0xab0f18 = global %G__0xab0f18_type zeroinitializer
@G__0xab0f1c = global %G__0xab0f1c_type zeroinitializer
@G__0xb6e920 = global %G__0xb6e920_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @fflush(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_47c350.start_timer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4274f0.get_level(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415e70.stones_on_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4275b0.find_mirror_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c3d0.time_report(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46cc10.print_moyo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_474e00.showboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48a790.worm_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_424f30.fuseki(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_472fa0.shapes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_418700.combinations(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4276d0.revise_thrashing_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_474900.endgame_shapes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4278f0.revise_semeai(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423930.fill_liberty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c530.record_top_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427a70.move_considered(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4049b0.aftermath_genmove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408d30.test_gray_border(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @do_genmove(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -424
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i102 = bitcast %union.anon* %18 to i32*
  %RAX.i103 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i103, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %RDI.i152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %19 = add i64 %7, -24
  %20 = load i64, i64* %RDI.i152, align 8
  %21 = add i64 %10, 16
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %22, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -20
  %26 = load i32, i32* %ESI.i, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %3, align 8
  %35 = bitcast [32 x %union.VectorReg]* %30 to <2 x float>*
  %36 = load <2 x float>, <2 x float>* %35, align 1
  %37 = extractelement <2 x float> %36, i32 0
  %38 = inttoptr i64 %32 to float*
  store float %37, float* %38, align 4
  %RDX.i379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -32
  %41 = load i64, i64* %RDX.i379, align 8
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %44, align 8
  %45 = load i32, i32* %EAX.i102, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* %3, align 8
  store i64 %46, i64* %RDI.i152, align 8
  %48 = add i64 %47, 352323
  %49 = add i64 %47, 7
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %49, i64* %52, align 8
  store i64 %51, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  %call2_42630f = tail call %struct.Memory* @sub_47c350.start_timer(%struct.State* %0, i64 %48, %struct.Memory* %2)
  %53 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x7ae448_type* @G__0x7ae448 to i64), i64* %RDI.i152, align 8
  %54 = bitcast [32 x %union.VectorReg]* %30 to i8*
  %55 = add i64 %53, add (i64 ptrtoint (%G_0xbcdde__rip__type* @G_0xbcdde__rip_ to i64), i64 10)
  %56 = add i64 %53, 18
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = bitcast [32 x %union.VectorReg]* %30 to i32*
  store i32 %58, i32* %59, align 1
  %60 = getelementptr inbounds i8, i8* %54, i64 4
  %61 = bitcast i8* %60 to float*
  store float 0.000000e+00, float* %61, align 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %63 = bitcast i64* %62 to float*
  store float 0.000000e+00, float* %63, align 1
  %64 = getelementptr inbounds i8, i8* %54, i64 12
  %65 = bitcast i8* %64 to float*
  store float 0.000000e+00, float* %65, align 1
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RDX.i379, align 8
  %RSI.i687 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  store i64 0, i64* %RSI.i687, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 1444, i64* %RAX.i103, align 8
  %RCX.i875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 1444, i64* %RCX.i875, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -64
  %68 = add i64 %53, 41
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i64*
  store i64 ptrtoint (%G__0x7ae448_type* @G__0x7ae448 to i64), i64* %69, align 8
  %70 = load i64, i64* %RDX.i379, align 8
  %71 = load i64, i64* %3, align 8
  store i64 %70, i64* %RDI.i152, align 8
  %72 = load i64, i64* %RCX.i875, align 8
  store i64 %72, i64* %RDX.i379, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -68
  %75 = add i64 %71, 11
  store i64 %75, i64* %3, align 8
  %76 = load <2 x float>, <2 x float>* %35, align 1
  %77 = extractelement <2 x float> %76, i32 0
  %78 = inttoptr i64 %74 to float*
  store float %77, float* %78, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, -152280
  %81 = add i64 %79, 5
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %6, align 8
  store i64 %80, i64* %3, align 8
  %85 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %call2_42630f)
  %86 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0xb4a000_type* @G_0xb4a000 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb4a004_type* @G_0xb4a004 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb4a008_type* @G_0xb4a008 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb4a00c_type* @G_0xb4a00c to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb4a010_type* @G_0xb4a010 to i32*), align 8
  store i32 0, i32* bitcast (%G_0xb4a014_type* @G_0xb4a014 to i32*), align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -16
  %89 = add i64 %86, 70
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RCX.i875, align 8
  %92 = add i64 %86, 76
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  store i32 0, i32* %93, align 4
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -68
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 5
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i32*
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %100 = add i64 %94, -36
  %101 = add i64 %96, 10
  store i64 %101, i64* %3, align 8
  %102 = load <2 x float>, <2 x float>* %35, align 1
  %103 = extractelement <2 x float> %102, i32 0
  %104 = inttoptr i64 %100 to float*
  store float %103, float* %104, align 4
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -64
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 4
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %106 to i64*
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %RDI.i152, align 8
  %111 = add i64 %107, 4429
  %112 = add i64 %107, 9
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  %call2_4263a7 = tail call %struct.Memory* @sub_4274f0.get_level(%struct.State* %0, i64 %111, %struct.Memory* %85)
  %116 = load i32, i32* %EAX.i102, align 4
  %117 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %118 = and i32 %116, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %123 = icmp eq i32 %116, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %15, align 1
  %125 = lshr i32 %116, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v190 = select i1 %123, i64 44, i64 9
  %127 = add i64 %117, %.v190
  store i64 %127, i64* %3, align 8
  br i1 %123, label %block_.L_4263d8, label %block_4263b5

block_4263b5:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x57c05a_type* @G__0x57c05a to i64), i64* %RSI.i687, align 8
  %128 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %128, i64* %RDI.i152, align 8
  %129 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RDX.i379, align 8
  %AL.i1678 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i1678, align 1
  %131 = add i64 %127, -152293
  %132 = add i64 %127, 32
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  store i64 %134, i64* %6, align 8
  store i64 %131, i64* %3, align 8
  %136 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4263a7)
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -72
  %139 = load i32, i32* %EAX.i102, align 4
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 3
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %142, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4263d8

block_.L_4263d8:                                  ; preds = %block_4263b5, %entry
  %143 = phi i64 [ %127, %entry ], [ %.pre, %block_4263b5 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4263a7, %entry ], [ %136, %block_4263b5 ]
  %144 = add i64 %143, -2056
  %145 = add i64 %143, 5
  %146 = load i64, i64* %6, align 8
  %147 = add i64 %146, -8
  %148 = inttoptr i64 %147 to i64*
  store i64 %145, i64* %148, align 8
  store i64 %147, i64* %6, align 8
  store i64 %144, i64* %3, align 8
  %call2_4263d8 = tail call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* nonnull %0, i64 %144, %struct.Memory* %MEMORY.0)
  %149 = load i64, i64* %3, align 8
  %150 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX.i103, align 8
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -44
  %154 = add i64 %149, 10
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 %150, i32* %155, align 4
  %156 = load i64, i64* %3, align 8
  %157 = load i32, i32* bitcast (%G_0xab0fd8_type* @G_0xab0fd8 to i32*), align 8
  store i8 0, i8* %12, align 1
  %158 = and i32 %157, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %163 = icmp eq i32 %157, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %15, align 1
  %165 = lshr i32 %157, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v191 = select i1 %163, i64 129, i64 14
  %167 = add i64 %156, %.v191
  store i64 %167, i64* %3, align 8
  br i1 %163, label %block_.L_426468, label %block_4263f5

block_4263f5:                                     ; preds = %block_.L_4263d8
  %168 = add i64 %167, 8
  %169 = load i32, i32* bitcast (%G_0x7ae458_type* @G_0x7ae458 to i32*), align 8
  store i8 0, i8* %12, align 1
  %170 = and i32 %169, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %175 = icmp eq i32 %169, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %15, align 1
  %177 = lshr i32 %169, 31
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %179 = icmp ne i8 %178, 0
  %.v = select i1 %179, i64 29, i64 6
  %180 = add i64 %168, %.v
  store i64 %180, i64* %3, align 8
  br i1 %179, label %block_.L_42641a, label %block_426403

block_426403:                                     ; preds = %block_4263f5
  store i64 3, i64* %RDI.i152, align 8
  %181 = add i64 %180, -66963
  %182 = add i64 %180, 10
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185, align 8
  store i64 %184, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  %call2_426408 = tail call %struct.Memory* @sub_415e70.stones_on_board(%struct.State* nonnull %0, i64 %181, %struct.Memory* %call2_4263d8)
  %186 = load i32, i32* %EAX.i102, align 4
  %187 = load i64, i64* %3, align 8
  %188 = load i32, i32* bitcast (%G_0x7ae458_type* @G_0x7ae458 to i32*), align 8
  %189 = sub i32 %186, %188
  %190 = icmp ult i32 %186, %188
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %12, align 1
  %192 = and i32 %189, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %13, align 1
  %197 = xor i32 %188, %186
  %198 = xor i32 %197, %189
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %14, align 1
  %202 = icmp eq i32 %189, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %15, align 1
  %204 = lshr i32 %189, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %16, align 1
  %206 = lshr i32 %186, 31
  %207 = lshr i32 %188, 31
  %208 = xor i32 %207, %206
  %209 = xor i32 %204, %206
  %210 = add nuw nsw i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %17, align 1
  %213 = icmp ne i8 %205, 0
  %214 = xor i1 %213, %211
  %.demorgan = or i1 %202, %214
  %.v192 = select i1 %.demorgan, i64 13, i64 91
  %215 = add i64 %187, %.v192
  store i64 %215, i64* %3, align 8
  br i1 %.demorgan, label %block_.L_42641a, label %block_.L_426468

block_.L_42641a:                                  ; preds = %block_426403, %block_4263f5
  %216 = phi i64 [ %180, %block_4263f5 ], [ %215, %block_426403 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4263d8, %block_4263f5 ], [ %call2_426408, %block_426403 ]
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -16
  %219 = add i64 %216, 4
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RDI.i152, align 8
  %222 = add i64 %217, -20
  %223 = add i64 %216, 7
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RSI.i687, align 8
  %227 = add i64 %216, 4502
  %228 = add i64 %216, 12
  %229 = load i64, i64* %6, align 8
  %230 = add i64 %229, -8
  %231 = inttoptr i64 %230 to i64*
  store i64 %228, i64* %231, align 8
  store i64 %230, i64* %6, align 8
  store i64 %227, i64* %3, align 8
  %call2_426421 = tail call %struct.Memory* @sub_4275b0.find_mirror_move(%struct.State* nonnull %0, i64 %227, %struct.Memory* %MEMORY.1)
  %232 = load i32, i32* %EAX.i102, align 4
  %233 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %234 = and i32 %232, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %239 = icmp eq i32 %232, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %15, align 1
  %241 = lshr i32 %232, 31
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v250 = select i1 %239, i64 66, i64 9
  %243 = add i64 %233, %.v250
  store i64 %243, i64* %3, align 8
  br i1 %239, label %block_.L_426468, label %block_42642f

block_42642f:                                     ; preds = %block_.L_42641a
  %244 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %245 = and i32 %244, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %250 = icmp eq i32 %244, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %15, align 1
  %252 = lshr i32 %244, 31
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v251 = select i1 %250, i64 14, i64 19
  %254 = add i64 %243, %.v251
  store i64 %254, i64* %3, align 8
  br i1 %250, label %block_42643d, label %block_.L_426442

block_42643d:                                     ; preds = %block_42642f
  %255 = add i64 %254, 31
  store i64 %255, i64* %3, align 8
  br label %block_.L_42645c

block_.L_426442:                                  ; preds = %block_42642f
  store i64 ptrtoint (%G__0x57c066_type* @G__0x57c066 to i64), i64* %RDI.i152, align 8
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -16
  %258 = add i64 %254, 14
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %RAX.i103, align 8
  %261 = add i64 %254, 16
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RSI.i687, align 8
  %AL.i1632 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i1632, align 1
  %265 = add i64 %254, 178542
  %266 = add i64 %254, 23
  %267 = load i64, i64* %6, align 8
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %266, i64* %269, align 8
  store i64 %268, i64* %6, align 8
  store i64 %265, i64* %3, align 8
  %call2_426454 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %265, %struct.Memory* %call2_426421)
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -76
  %272 = load i32, i32* %EAX.i102, align 4
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 3
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %271 to i32*
  store i32 %272, i32* %275, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_42645c

block_.L_42645c:                                  ; preds = %block_.L_426442, %block_42643d
  %276 = phi i64 [ %.pre84, %block_.L_426442 ], [ %255, %block_42643d ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_426454, %block_.L_426442 ], [ %call2_426421, %block_42643d ]
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -4
  %279 = add i64 %276, 7
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  store i32 1, i32* %280, align 4
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 4222
  store i64 %282, i64* %3, align 8
  br label %block_.L_4274e1

block_.L_426468:                                  ; preds = %block_426403, %block_.L_42641a, %block_.L_4263d8
  %283 = phi i64 [ %167, %block_.L_4263d8 ], [ %243, %block_.L_42641a ], [ %215, %block_426403 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_4263d8, %block_.L_4263d8 ], [ %call2_426421, %block_.L_42641a ], [ %call2_426408, %block_426403 ]
  store i64 1, i64* %RDI.i152, align 8
  %284 = add i64 %283, 351976
  %285 = add i64 %283, 10
  %286 = load i64, i64* %6, align 8
  %287 = add i64 %286, -8
  %288 = inttoptr i64 %287 to i64*
  store i64 %285, i64* %288, align 8
  store i64 %287, i64* %6, align 8
  store i64 %284, i64* %3, align 8
  %call2_42646d = tail call %struct.Memory* @sub_47c350.start_timer(%struct.State* nonnull %0, i64 %284, %struct.Memory* %MEMORY.3)
  %289 = load i64, i64* %3, align 8
  store i64 99, i64* %RSI.i687, align 8
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -20
  %292 = add i64 %289, 8
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RDI.i152, align 8
  %296 = add i64 %289, -2066
  %297 = add i64 %289, 13
  %298 = load i64, i64* %6, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %6, align 8
  store i64 %296, i64* %3, align 8
  %call2_42647a = tail call %struct.Memory* @sub_425c60.examine_position(%struct.State* nonnull %0, i64 %296, %struct.Memory* %call2_42646d)
  %301 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c08f_type* @G__0x57c08f to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %302 = add i64 %301, add (i64 ptrtoint (%G_0xbcac8__rip__type* @G_0xbcac8__rip_ to i64), i64 17)
  %303 = add i64 %301, 25
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  %306 = bitcast [32 x %union.VectorReg]* %30 to double*
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %305, i64* %307, align 1
  %308 = bitcast i64* %62 to double*
  store double 0.000000e+00, double* %308, align 1
  %309 = add i64 %301, 352081
  %310 = add i64 %301, 30
  %311 = load i64, i64* %6, align 8
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*
  store i64 %310, i64* %313, align 8
  store i64 %312, i64* %6, align 8
  store i64 %309, i64* %3, align 8
  %call2_426498 = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %309, %struct.Memory* %call2_42647a)
  %314 = load i64, i64* %3, align 8
  %315 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %316 = add i32 %315, -8
  %317 = icmp ult i32 %315, 8
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %12, align 1
  %319 = and i32 %316, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %13, align 1
  %324 = xor i32 %316, %315
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %14, align 1
  %328 = icmp eq i32 %316, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %15, align 1
  %330 = lshr i32 %316, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %16, align 1
  %332 = lshr i32 %315, 31
  %333 = xor i32 %330, %332
  %334 = add nuw nsw i32 %333, %332
  %335 = icmp eq i32 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %17, align 1
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -88
  %339 = add i64 %314, 13
  store i64 %339, i64* %3, align 8
  %340 = load i64, i64* %307, align 1
  %341 = inttoptr i64 %338 to i64*
  store i64 %340, i64* %341, align 8
  %342 = load i64, i64* %3, align 8
  %343 = load i8, i8* %16, align 1
  %344 = icmp ne i8 %343, 0
  %345 = load i8, i8* %17, align 1
  %346 = icmp ne i8 %345, 0
  %347 = xor i1 %344, %346
  %.v252 = select i1 %347, i64 633, i64 6
  %348 = add i64 %342, %.v252
  store i64 %348, i64* %3, align 8
  br i1 %347, label %block_.L_426723, label %block_4264b0

block_4264b0:                                     ; preds = %block_.L_426468
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI.i687, align 8
  %349 = add i64 %348, 293904
  %350 = add i64 %348, 25
  %351 = load i64, i64* %6, align 8
  %352 = add i64 %351, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %350, i64* %353, align 8
  store i64 %352, i64* %6, align 8
  store i64 %349, i64* %3, align 8
  %call2_4264c4 = tail call %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* nonnull %0, i64 %349, %struct.Memory* %call2_426498)
  %354 = load i64, i64* %3, align 8
  %355 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %356 = and i32 %355, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %361 = icmp eq i32 %355, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %15, align 1
  %363 = lshr i32 %355, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -92
  %367 = add i64 %354, 13
  store i64 %367, i64* %3, align 8
  %368 = load <2 x float>, <2 x float>* %35, align 1
  %369 = extractelement <2 x float> %368, i32 0
  %370 = inttoptr i64 %366 to float*
  store float %369, float* %370, align 4
  %371 = load i64, i64* %3, align 8
  %372 = add i64 %371, 20
  %373 = add i64 %371, 6
  %374 = load i8, i8* %15, align 1
  %375 = icmp eq i8 %374, 0
  %376 = select i1 %375, i64 %372, i64 %373
  store i64 %376, i64* %3, align 8
  br i1 %375, label %block_.L_4264ea, label %block_4264dc

block_4264dc:                                     ; preds = %block_4264b0
  %377 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*), align 8
  store i8 0, i8* %12, align 1
  %378 = and i32 %377, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %383 = icmp eq i32 %377, 0
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %15, align 1
  %385 = lshr i32 %377, 31
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v193 = select i1 %383, i64 489, i64 14
  %387 = add i64 %376, %.v193
  store i64 %387, i64* %3, align 8
  br i1 %383, label %block_.L_4266c5, label %block_.L_4264ea

block_.L_4264ea:                                  ; preds = %block_4264dc, %block_4264b0
  %388 = phi i8 [ %384, %block_4264dc ], [ 0, %block_4264b0 ]
  %389 = phi i64 [ %387, %block_4264dc ], [ %372, %block_4264b0 ]
  %390 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  store i32 %390, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %391 = add i64 %389, 17
  store i64 %391, i64* %3, align 8
  %392 = load <2 x float>, <2 x float>* %35, align 1
  %393 = extractelement <2 x float> %392, i32 0
  %394 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %395 = fcmp uno float %393, %394
  br i1 %395, label %396, label %406

; <label>:396:                                    ; preds = %block_.L_4264ea
  %397 = fadd float %393, %394
  %398 = bitcast float %397 to i32
  %399 = and i32 %398, 2143289344
  %400 = icmp eq i32 %399, 2139095040
  %401 = and i32 %398, 4194303
  %402 = icmp ne i32 %401, 0
  %403 = and i1 %400, %402
  br i1 %403, label %404, label %412

; <label>:404:                                    ; preds = %396
  %405 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %391, %struct.Memory* %call2_4264c4)
  %.pre85 = load i64, i64* %3, align 8
  %.pre86 = load i8, i8* %15, align 1
  br label %routine_ucomiss_0xab0f1c___xmm0.exit

; <label>:406:                                    ; preds = %block_.L_4264ea
  %407 = fcmp ogt float %393, %394
  br i1 %407, label %412, label %408

; <label>:408:                                    ; preds = %406
  %409 = fcmp olt float %393, %394
  br i1 %409, label %412, label %410

; <label>:410:                                    ; preds = %408
  %411 = fcmp oeq float %393, %394
  br i1 %411, label %412, label %416

; <label>:412:                                    ; preds = %410, %408, %406, %396
  %413 = phi i8 [ 0, %406 ], [ 0, %408 ], [ 1, %410 ], [ 1, %396 ]
  %414 = phi i8 [ 0, %406 ], [ 0, %408 ], [ 0, %410 ], [ 1, %396 ]
  %415 = phi i8 [ 0, %406 ], [ 1, %408 ], [ 0, %410 ], [ 1, %396 ]
  store i8 %413, i8* %15, align 1
  store i8 %414, i8* %13, align 1
  store i8 %415, i8* %12, align 1
  br label %416

; <label>:416:                                    ; preds = %412, %410
  %417 = phi i8 [ %413, %412 ], [ %388, %410 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_0xab0f1c___xmm0.exit

routine_ucomiss_0xab0f1c___xmm0.exit:             ; preds = %416, %404
  %418 = phi i8 [ %.pre86, %404 ], [ %417, %416 ]
  %419 = phi i64 [ %.pre85, %404 ], [ %391, %416 ]
  %420 = phi %struct.Memory* [ %405, %404 ], [ %call2_4264c4, %416 ]
  %421 = icmp eq i8 %418, 0
  %.v194 = select i1 %421, i64 153, i64 6
  %422 = add i64 %419, %.v194
  store i64 %422, i64* %3, align 8
  br i1 %421, label %block_.L_426594, label %block_426501

block_426501:                                     ; preds = %routine_ucomiss_0xab0f1c___xmm0.exit
  %423 = load i8, i8* %13, align 1
  %424 = icmp ne i8 %423, 0
  %.v253 = select i1 %424, i64 147, i64 6
  %425 = add i64 %422, %.v253
  store i64 %425, i64* %3, align 8
  %cmpBr_426501 = icmp eq i8 %423, 1
  br i1 %cmpBr_426501, label %block_.L_426594, label %block_426507

block_426507:                                     ; preds = %block_426501
  %426 = bitcast i8* %60 to i32*
  %427 = bitcast i64* %62 to i32*
  %428 = bitcast i8* %64 to i32*
  %429 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %429, align 1
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i103, align 8
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i875, align 8
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %431 = bitcast %union.VectorReg* %430 to i8*
  %432 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %433 = bitcast %union.VectorReg* %430 to i32*
  store i32 %432, i32* %433, align 1
  %434 = getelementptr inbounds i8, i8* %431, i64 4
  %435 = bitcast i8* %434 to float*
  store float 0.000000e+00, float* %435, align 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %437 = bitcast i64* %436 to float*
  store float 0.000000e+00, float* %437, align 1
  %438 = getelementptr inbounds i8, i8* %431, i64 12
  %439 = bitcast i8* %438 to float*
  store float 0.000000e+00, float* %439, align 1
  %440 = add i64 %425, 35
  store i64 %440, i64* %3, align 8
  %441 = bitcast %union.VectorReg* %430 to <2 x float>*
  %442 = load <2 x float>, <2 x float>* %441, align 1
  %443 = extractelement <2 x float> %442, i32 0
  %444 = load <2 x float>, <2 x float>* %35, align 1
  %445 = extractelement <2 x float> %444, i32 0
  %446 = fcmp uno float %443, %445
  %447 = bitcast i32 %432 to float
  br i1 %446, label %448, label %459

; <label>:448:                                    ; preds = %block_426507
  %449 = fadd float %443, %445
  %450 = bitcast float %449 to i32
  %451 = and i32 %450, 2143289344
  %452 = icmp eq i32 %451, 2139095040
  %453 = and i32 %450, 4194303
  %454 = icmp ne i32 %453, 0
  %455 = and i1 %452, %454
  br i1 %455, label %456, label %465

; <label>:456:                                    ; preds = %448
  %457 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %440, %struct.Memory* %420)
  %.pre87 = load i64, i64* %RCX.i875, align 8
  %.pre88 = load i64, i64* %3, align 8
  %.pre89 = load i8, i8* %15, align 1
  %.pre90 = load i64, i64* %RAX.i103, align 8
  %.pre91 = load <2 x float>, <2 x float>* %35, align 1
  %.pre92 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*), align 8
  %458 = bitcast float %.pre92 to i32
  br label %routine_ucomiss__xmm0___xmm1.exit1567

; <label>:459:                                    ; preds = %block_426507
  %460 = fcmp ogt float %443, %445
  br i1 %460, label %465, label %461

; <label>:461:                                    ; preds = %459
  %462 = fcmp olt float %443, %445
  br i1 %462, label %465, label %463

; <label>:463:                                    ; preds = %461
  %464 = fcmp oeq float %443, %445
  br i1 %464, label %465, label %469

; <label>:465:                                    ; preds = %463, %461, %459, %448
  %466 = phi i8 [ 0, %459 ], [ 0, %461 ], [ 1, %463 ], [ 1, %448 ]
  %467 = phi i8 [ 0, %459 ], [ 0, %461 ], [ 0, %463 ], [ 1, %448 ]
  %468 = phi i8 [ 0, %459 ], [ 1, %461 ], [ 0, %463 ], [ 1, %448 ]
  store i8 %466, i8* %15, align 1
  store i8 %467, i8* %13, align 1
  store i8 %468, i8* %12, align 1
  br label %469

; <label>:469:                                    ; preds = %465, %463
  %470 = phi i8 [ %466, %465 ], [ %418, %463 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1567

routine_ucomiss__xmm0___xmm1.exit1567:            ; preds = %469, %456
  %471 = phi i32 [ %458, %456 ], [ %432, %469 ]
  %472 = phi float [ %.pre92, %456 ], [ %447, %469 ]
  %473 = phi <2 x float> [ %.pre91, %456 ], [ %444, %469 ]
  %474 = phi i64 [ %.pre90, %456 ], [ ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), %469 ]
  %475 = phi i8 [ %.pre89, %456 ], [ %470, %469 ]
  %476 = phi i64 [ %.pre88, %456 ], [ %440, %469 ]
  %477 = phi i64 [ %.pre87, %456 ], [ ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), %469 ]
  %478 = phi %struct.Memory* [ %457, %456 ], [ %420, %469 ]
  %479 = load i8, i8* %12, align 1
  %480 = or i8 %475, %479
  %481 = icmp eq i8 %480, 0
  %482 = select i1 %481, i64 %477, i64 %474
  store i64 %482, i64* %RAX.i103, align 8
  %483 = add i64 %476, 12
  store i64 %483, i64* %3, align 8
  %484 = extractelement <2 x float> %473, i32 0
  %485 = fcmp uno float %484, %472
  br i1 %485, label %486, label %496

; <label>:486:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit1567
  %487 = fadd float %484, %472
  %488 = bitcast float %487 to i32
  %489 = and i32 %488, 2143289344
  %490 = icmp eq i32 %489, 2139095040
  %491 = and i32 %488, 4194303
  %492 = icmp ne i32 %491, 0
  %493 = and i1 %490, %492
  br i1 %493, label %494, label %502

; <label>:494:                                    ; preds = %486
  %495 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %483, %struct.Memory* %478)
  %.pre93 = load i64, i64* %RAX.i103, align 8
  %.pre94 = load i64, i64* %3, align 8
  %.pre95 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  br label %routine_ucomiss_0xab0f18___xmm0.exit1557

; <label>:496:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit1567
  %497 = fcmp ogt float %484, %472
  br i1 %497, label %502, label %498

; <label>:498:                                    ; preds = %496
  %499 = fcmp olt float %484, %472
  br i1 %499, label %502, label %500

; <label>:500:                                    ; preds = %498
  %501 = fcmp oeq float %484, %472
  br i1 %501, label %502, label %506

; <label>:502:                                    ; preds = %500, %498, %496, %486
  %503 = phi i8 [ 0, %496 ], [ 0, %498 ], [ 1, %500 ], [ 1, %486 ]
  %504 = phi i8 [ 0, %496 ], [ 0, %498 ], [ 0, %500 ], [ 1, %486 ]
  %505 = phi i8 [ 0, %496 ], [ 1, %498 ], [ 0, %500 ], [ 1, %486 ]
  store i8 %503, i8* %15, align 1
  store i8 %504, i8* %13, align 1
  store i8 %505, i8* %12, align 1
  br label %506

; <label>:506:                                    ; preds = %502, %500
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_0xab0f18___xmm0.exit1557

routine_ucomiss_0xab0f18___xmm0.exit1557:         ; preds = %506, %494
  %507 = phi i32 [ %.pre95, %494 ], [ %471, %506 ]
  %508 = phi i64 [ %.pre94, %494 ], [ %483, %506 ]
  %509 = phi i64 [ %.pre93, %494 ], [ %482, %506 ]
  %510 = phi %struct.Memory* [ %495, %494 ], [ %478, %506 ]
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -104
  %513 = add i64 %508, 4
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i64*
  store i64 %509, i64* %514, align 8
  %515 = load i64, i64* %3, align 8
  %516 = load i8, i8* %12, align 1
  %517 = load i8, i8* %15, align 1
  %518 = or i8 %517, %516
  %519 = icmp ne i8 %518, 0
  %.v254 = select i1 %519, i64 38, i64 6
  %520 = add i64 %515, %.v254
  %521 = add i64 %520, 9
  store i64 %521, i64* %3, align 8
  store i32 %507, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  br i1 %519, label %block_.L_426560, label %block_426540

block_426540:                                     ; preds = %routine_ucomiss_0xab0f18___xmm0.exit1557
  %522 = load i64, i64* %307, align 1
  %523 = trunc i64 %522 to i32
  %524 = bitcast %union.anon* %18 to [2 x i32]*
  store i32 %523, i32* %EAX.i102, align 1
  %525 = getelementptr inbounds [2 x i32], [2 x i32]* %524, i64 0, i64 1
  store i32 0, i32* %525, align 1
  %526 = load i64, i64* %RAX.i103, align 8
  %527 = xor i64 %526, -2147483648
  %528 = trunc i64 %527 to i32
  %529 = and i64 %527, 4294967295
  store i64 %529, i64* %RAX.i103, align 8
  store i8 0, i8* %12, align 1
  %530 = and i32 %528, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %13, align 1
  %535 = icmp eq i32 %528, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %15, align 1
  %537 = lshr i32 %528, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %539 = trunc i64 %527 to i32
  store i32 %539, i32* %59, align 1
  store i32 0, i32* %426, align 1
  store i32 0, i32* %427, align 1
  store i32 0, i32* %428, align 1
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -108
  %542 = add i64 %520, 27
  store i64 %542, i64* %3, align 8
  %543 = load <2 x float>, <2 x float>* %35, align 1
  %544 = extractelement <2 x float> %543, i32 0
  %545 = inttoptr i64 %541 to float*
  store float %544, float* %545, align 4
  %546 = load i64, i64* %3, align 8
  %547 = add i64 %546, 19
  store i64 %547, i64* %3, align 8
  br label %block_.L_42656e

block_.L_426560:                                  ; preds = %routine_ucomiss_0xab0f18___xmm0.exit1557
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -108
  %550 = add i64 %520, 14
  store i64 %550, i64* %3, align 8
  %551 = load <2 x float>, <2 x float>* %35, align 1
  %552 = extractelement <2 x float> %551, i32 0
  %553 = inttoptr i64 %549 to float*
  store float %552, float* %553, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_42656e

block_.L_42656e:                                  ; preds = %block_.L_426560, %block_426540
  %554 = phi i64 [ %.pre96, %block_.L_426560 ], [ %547, %block_426540 ]
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -108
  %557 = add i64 %554, 5
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  store i32 %559, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  store i64 ptrtoint (%G__0x57a0c7_type* @G__0x57a0c7 to i64), i64* %RDI.i152, align 8
  %560 = load <2 x float>, <2 x float>* %35, align 1
  %561 = extractelement <2 x float> %560, i32 0
  %562 = fpext float %561 to double
  store double %562, double* %306, align 1
  %563 = add i64 %555, -104
  %564 = add i64 %554, 23
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i64*
  %566 = load i64, i64* %565, align 8
  store i64 %566, i64* %RSI.i687, align 8
  %AL.i1520 = bitcast %union.anon* %18 to i8*
  store i8 1, i8* %AL.i1520, align 1
  %567 = add i64 %554, 178242
  %568 = add i64 %554, 30
  %569 = load i64, i64* %6, align 8
  %570 = add i64 %569, -8
  %571 = inttoptr i64 %570 to i64*
  store i64 %568, i64* %571, align 8
  store i64 %570, i64* %6, align 8
  store i64 %567, i64* %3, align 8
  %call2_426587 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %567, %struct.Memory* %510)
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -112
  %574 = load i32, i32* %EAX.i102, align 4
  %575 = load i64, i64* %3, align 8
  %576 = add i64 %575, 3
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %573 to i32*
  store i32 %574, i32* %577, align 4
  %578 = load i64, i64* %3, align 8
  %579 = add i64 %578, 291
  store i64 %579, i64* %3, align 8
  br label %block_.L_4266b2

block_.L_426594:                                  ; preds = %block_426501, %routine_ucomiss_0xab0f1c___xmm0.exit
  %580 = phi i64 [ %425, %block_426501 ], [ %422, %routine_ucomiss_0xab0f1c___xmm0.exit ]
  %581 = bitcast i8* %60 to i32*
  %582 = bitcast i64* %62 to i32*
  %583 = bitcast i8* %64 to i32*
  %584 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %584, align 1
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i103, align 8
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i875, align 8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %586 = bitcast %union.VectorReg* %585 to i8*
  %587 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %588 = bitcast %union.VectorReg* %585 to i32*
  store i32 %587, i32* %588, align 1
  %589 = getelementptr inbounds i8, i8* %586, i64 4
  %590 = bitcast i8* %589 to float*
  store float 0.000000e+00, float* %590, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %592 = bitcast i64* %591 to float*
  store float 0.000000e+00, float* %592, align 1
  %593 = getelementptr inbounds i8, i8* %586, i64 12
  %594 = bitcast i8* %593 to float*
  store float 0.000000e+00, float* %594, align 1
  %595 = add i64 %580, 35
  store i64 %595, i64* %3, align 8
  %596 = bitcast %union.VectorReg* %585 to <2 x float>*
  %597 = load <2 x float>, <2 x float>* %596, align 1
  %598 = extractelement <2 x float> %597, i32 0
  %599 = load <2 x float>, <2 x float>* %35, align 1
  %600 = extractelement <2 x float> %599, i32 0
  %601 = fcmp uno float %598, %600
  %602 = bitcast i32 %587 to float
  br i1 %601, label %603, label %614

; <label>:603:                                    ; preds = %block_.L_426594
  %604 = fadd float %598, %600
  %605 = bitcast float %604 to i32
  %606 = and i32 %605, 2143289344
  %607 = icmp eq i32 %606, 2139095040
  %608 = and i32 %605, 4194303
  %609 = icmp ne i32 %608, 0
  %610 = and i1 %607, %609
  br i1 %610, label %611, label %620

; <label>:611:                                    ; preds = %603
  %612 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %595, %struct.Memory* %420)
  %.pre97 = load i64, i64* %RCX.i875, align 8
  %.pre98 = load i64, i64* %3, align 8
  %.pre99 = load i8, i8* %15, align 1
  %.pre100 = load i64, i64* %RAX.i103, align 8
  %.pre101 = load <2 x float>, <2 x float>* %35, align 1
  %.pre102 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*), align 8
  %613 = bitcast float %.pre102 to i32
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:614:                                    ; preds = %block_.L_426594
  %615 = fcmp ogt float %598, %600
  br i1 %615, label %620, label %616

; <label>:616:                                    ; preds = %614
  %617 = fcmp olt float %598, %600
  br i1 %617, label %620, label %618

; <label>:618:                                    ; preds = %616
  %619 = fcmp oeq float %598, %600
  br i1 %619, label %620, label %624

; <label>:620:                                    ; preds = %618, %616, %614, %603
  %621 = phi i8 [ 0, %614 ], [ 0, %616 ], [ 1, %618 ], [ 1, %603 ]
  %622 = phi i8 [ 0, %614 ], [ 0, %616 ], [ 0, %618 ], [ 1, %603 ]
  %623 = phi i8 [ 0, %614 ], [ 1, %616 ], [ 0, %618 ], [ 1, %603 ]
  store i8 %621, i8* %15, align 1
  store i8 %622, i8* %13, align 1
  store i8 %623, i8* %12, align 1
  br label %624

; <label>:624:                                    ; preds = %620, %618
  %625 = phi i8 [ %621, %620 ], [ %418, %618 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %624, %611
  %626 = phi i32 [ %613, %611 ], [ %587, %624 ]
  %627 = phi float [ %.pre102, %611 ], [ %602, %624 ]
  %628 = phi <2 x float> [ %.pre101, %611 ], [ %599, %624 ]
  %629 = phi i64 [ %.pre100, %611 ], [ ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), %624 ]
  %630 = phi i8 [ %.pre99, %611 ], [ %625, %624 ]
  %631 = phi i64 [ %.pre98, %611 ], [ %595, %624 ]
  %632 = phi i64 [ %.pre97, %611 ], [ ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), %624 ]
  %633 = phi %struct.Memory* [ %612, %611 ], [ %420, %624 ]
  %634 = load i8, i8* %12, align 1
  %635 = or i8 %630, %634
  %636 = icmp eq i8 %635, 0
  %637 = select i1 %636, i64 %632, i64 %629
  store i64 %637, i64* %RAX.i103, align 8
  %638 = add i64 %631, 12
  store i64 %638, i64* %3, align 8
  %639 = extractelement <2 x float> %628, i32 0
  %640 = fcmp uno float %639, %627
  br i1 %640, label %641, label %651

; <label>:641:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %642 = fadd float %639, %627
  %643 = bitcast float %642 to i32
  %644 = and i32 %643, 2143289344
  %645 = icmp eq i32 %644, 2139095040
  %646 = and i32 %643, 4194303
  %647 = icmp ne i32 %646, 0
  %648 = and i1 %645, %647
  br i1 %648, label %649, label %657

; <label>:649:                                    ; preds = %641
  %650 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %638, %struct.Memory* %633)
  %.pre103 = load i64, i64* %RAX.i103, align 8
  %.pre104 = load i64, i64* %3, align 8
  %.pre105 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  br label %routine_ucomiss_0xab0f18___xmm0.exit

; <label>:651:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %652 = fcmp ogt float %639, %627
  br i1 %652, label %657, label %653

; <label>:653:                                    ; preds = %651
  %654 = fcmp olt float %639, %627
  br i1 %654, label %657, label %655

; <label>:655:                                    ; preds = %653
  %656 = fcmp oeq float %639, %627
  br i1 %656, label %657, label %661

; <label>:657:                                    ; preds = %655, %653, %651, %641
  %658 = phi i8 [ 0, %651 ], [ 0, %653 ], [ 1, %655 ], [ 1, %641 ]
  %659 = phi i8 [ 0, %651 ], [ 0, %653 ], [ 0, %655 ], [ 1, %641 ]
  %660 = phi i8 [ 0, %651 ], [ 1, %653 ], [ 0, %655 ], [ 1, %641 ]
  store i8 %658, i8* %15, align 1
  store i8 %659, i8* %13, align 1
  store i8 %660, i8* %12, align 1
  br label %661

; <label>:661:                                    ; preds = %657, %655
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_0xab0f18___xmm0.exit

routine_ucomiss_0xab0f18___xmm0.exit:             ; preds = %661, %649
  %662 = phi i32 [ %.pre105, %649 ], [ %626, %661 ]
  %663 = phi i64 [ %.pre104, %649 ], [ %638, %661 ]
  %664 = phi i64 [ %.pre103, %649 ], [ %637, %661 ]
  %665 = phi %struct.Memory* [ %650, %649 ], [ %633, %661 ]
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -120
  %668 = add i64 %663, 4
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i64*
  store i64 %664, i64* %669, align 8
  %670 = load i64, i64* %3, align 8
  %671 = load i8, i8* %12, align 1
  %672 = load i8, i8* %15, align 1
  %673 = or i8 %672, %671
  %674 = icmp ne i8 %673, 0
  %.v260 = select i1 %674, i64 38, i64 6
  %675 = add i64 %670, %.v260
  %676 = add i64 %675, 9
  store i64 %676, i64* %3, align 8
  store i32 %662, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  br i1 %674, label %block_.L_4265ed, label %block_4265cd

block_4265cd:                                     ; preds = %routine_ucomiss_0xab0f18___xmm0.exit
  %677 = load i64, i64* %307, align 1
  %678 = trunc i64 %677 to i32
  %679 = bitcast %union.anon* %18 to [2 x i32]*
  store i32 %678, i32* %EAX.i102, align 1
  %680 = getelementptr inbounds [2 x i32], [2 x i32]* %679, i64 0, i64 1
  store i32 0, i32* %680, align 1
  %681 = load i64, i64* %RAX.i103, align 8
  %682 = xor i64 %681, -2147483648
  %683 = trunc i64 %682 to i32
  %684 = and i64 %682, 4294967295
  store i64 %684, i64* %RAX.i103, align 8
  store i8 0, i8* %12, align 1
  %685 = and i32 %683, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %13, align 1
  %690 = icmp eq i32 %683, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %15, align 1
  %692 = lshr i32 %683, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %694 = trunc i64 %682 to i32
  store i32 %694, i32* %59, align 1
  store i32 0, i32* %581, align 1
  store i32 0, i32* %582, align 1
  store i32 0, i32* %583, align 1
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -124
  %697 = add i64 %675, 27
  store i64 %697, i64* %3, align 8
  %698 = load <2 x float>, <2 x float>* %35, align 1
  %699 = extractelement <2 x float> %698, i32 0
  %700 = inttoptr i64 %696 to float*
  store float %699, float* %700, align 4
  %701 = load i64, i64* %3, align 8
  %702 = add i64 %701, 19
  store i64 %702, i64* %3, align 8
  br label %block_.L_4265fb

block_.L_4265ed:                                  ; preds = %routine_ucomiss_0xab0f18___xmm0.exit
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -124
  %705 = add i64 %675, 14
  store i64 %705, i64* %3, align 8
  %706 = load <2 x float>, <2 x float>* %35, align 1
  %707 = extractelement <2 x float> %706, i32 0
  %708 = inttoptr i64 %704 to float*
  store float %707, float* %708, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_4265fb

block_.L_4265fb:                                  ; preds = %block_.L_4265ed, %block_4265cd
  %709 = phi i64 [ %.pre106, %block_.L_4265ed ], [ %702, %block_4265cd ]
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -124
  %712 = add i64 %709, 5
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  store i32 %714, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %715 = bitcast %union.VectorReg* %585 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %715, align 1
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i103, align 8
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i875, align 8
  %716 = load <2 x float>, <2 x float>* %35, align 1
  %717 = extractelement <2 x float> %716, i32 0
  %718 = fpext float %717 to double
  store double %718, double* %306, align 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %720 = bitcast %union.VectorReg* %719 to i8*
  %721 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  %722 = bitcast %union.VectorReg* %719 to i32*
  store i32 %721, i32* %722, align 1
  %723 = getelementptr inbounds i8, i8* %720, i64 4
  %724 = bitcast i8* %723 to float*
  store float 0.000000e+00, float* %724, align 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %726 = bitcast i64* %725 to float*
  store float 0.000000e+00, float* %726, align 1
  %727 = getelementptr inbounds i8, i8* %720, i64 12
  %728 = bitcast i8* %727 to float*
  store float 0.000000e+00, float* %728, align 1
  %729 = add i64 %709, 44
  store i64 %729, i64* %3, align 8
  %730 = bitcast %union.VectorReg* %719 to <2 x float>*
  %731 = load <2 x float>, <2 x float>* %730, align 1
  %732 = extractelement <2 x float> %731, i32 0
  %733 = load <2 x float>, <2 x float>* %596, align 1
  %734 = extractelement <2 x float> %733, i32 0
  %735 = fcmp uno float %732, %734
  %736 = bitcast i32 %721 to float
  br i1 %735, label %737, label %748

; <label>:737:                                    ; preds = %block_.L_4265fb
  %738 = fadd float %732, %734
  %739 = bitcast float %738 to i32
  %740 = and i32 %739, 2143289344
  %741 = icmp eq i32 %740, 2139095040
  %742 = and i32 %739, 4194303
  %743 = icmp ne i32 %742, 0
  %744 = and i1 %741, %743
  br i1 %744, label %745, label %754

; <label>:745:                                    ; preds = %737
  %746 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %729, %struct.Memory* %665)
  %.pre107 = load i64, i64* %RCX.i875, align 8
  %.pre108 = load i64, i64* %3, align 8
  %.pre109 = load i64, i64* %RAX.i103, align 8
  %.pre110 = load <2 x float>, <2 x float>* %596, align 1
  %.pre111 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %747 = bitcast float %.pre111 to i32
  br label %routine_ucomiss__xmm1___xmm2.exit

; <label>:748:                                    ; preds = %block_.L_4265fb
  %749 = fcmp ogt float %732, %734
  br i1 %749, label %754, label %750

; <label>:750:                                    ; preds = %748
  %751 = fcmp olt float %732, %734
  br i1 %751, label %754, label %752

; <label>:752:                                    ; preds = %750
  %753 = fcmp oeq float %732, %734
  br i1 %753, label %754, label %758

; <label>:754:                                    ; preds = %752, %750, %748, %737
  %755 = phi i8 [ 0, %748 ], [ 0, %750 ], [ 1, %752 ], [ 1, %737 ]
  %756 = phi i8 [ 0, %748 ], [ 0, %750 ], [ 0, %752 ], [ 1, %737 ]
  %757 = phi i8 [ 0, %748 ], [ 1, %750 ], [ 0, %752 ], [ 1, %737 ]
  store i8 %755, i8* %15, align 1
  store i8 %756, i8* %13, align 1
  store i8 %757, i8* %12, align 1
  br label %758

; <label>:758:                                    ; preds = %754, %752
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm1___xmm2.exit

routine_ucomiss__xmm1___xmm2.exit:                ; preds = %758, %745
  %759 = phi i32 [ %747, %745 ], [ %721, %758 ]
  %760 = phi float [ %.pre111, %745 ], [ %736, %758 ]
  %761 = phi <2 x float> [ %.pre110, %745 ], [ %733, %758 ]
  %762 = phi i64 [ %.pre109, %745 ], [ ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), %758 ]
  %763 = phi i64 [ %.pre108, %745 ], [ %729, %758 ]
  %764 = phi i64 [ %.pre107, %745 ], [ ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), %758 ]
  %765 = phi %struct.Memory* [ %746, %745 ], [ %665, %758 ]
  %766 = load i8, i8* %12, align 1
  %767 = load i8, i8* %15, align 1
  %768 = or i8 %767, %766
  %769 = icmp eq i8 %768, 0
  %770 = select i1 %769, i64 %764, i64 %762
  store i64 %770, i64* %RAX.i103, align 8
  %771 = add i64 %763, 12
  store i64 %771, i64* %3, align 8
  %772 = extractelement <2 x float> %761, i32 0
  %773 = fcmp uno float %772, %760
  br i1 %773, label %774, label %784

; <label>:774:                                    ; preds = %routine_ucomiss__xmm1___xmm2.exit
  %775 = fadd float %772, %760
  %776 = bitcast float %775 to i32
  %777 = and i32 %776, 2143289344
  %778 = icmp eq i32 %777, 2139095040
  %779 = and i32 %776, 4194303
  %780 = icmp ne i32 %779, 0
  %781 = and i1 %778, %780
  br i1 %781, label %782, label %790

; <label>:782:                                    ; preds = %774
  %783 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %771, %struct.Memory* %765)
  %.pre112 = load i64, i64* %RAX.i103, align 8
  %.pre113 = load i64, i64* %3, align 8
  %.pre114 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  br label %routine_ucomiss_0xab0f1c___xmm1.exit

; <label>:784:                                    ; preds = %routine_ucomiss__xmm1___xmm2.exit
  %785 = fcmp ogt float %772, %760
  br i1 %785, label %790, label %786

; <label>:786:                                    ; preds = %784
  %787 = fcmp olt float %772, %760
  br i1 %787, label %790, label %788

; <label>:788:                                    ; preds = %786
  %789 = fcmp oeq float %772, %760
  br i1 %789, label %790, label %794

; <label>:790:                                    ; preds = %788, %786, %784, %774
  %791 = phi i8 [ 0, %784 ], [ 0, %786 ], [ 1, %788 ], [ 1, %774 ]
  %792 = phi i8 [ 0, %784 ], [ 0, %786 ], [ 0, %788 ], [ 1, %774 ]
  %793 = phi i8 [ 0, %784 ], [ 1, %786 ], [ 0, %788 ], [ 1, %774 ]
  store i8 %791, i8* %15, align 1
  store i8 %792, i8* %13, align 1
  store i8 %793, i8* %12, align 1
  br label %794

; <label>:794:                                    ; preds = %790, %788
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss_0xab0f1c___xmm1.exit

routine_ucomiss_0xab0f1c___xmm1.exit:             ; preds = %794, %782
  %795 = phi i32 [ %.pre114, %782 ], [ %759, %794 ]
  %796 = phi i64 [ %.pre113, %782 ], [ %771, %794 ]
  %797 = phi i64 [ %.pre112, %782 ], [ %770, %794 ]
  %798 = phi %struct.Memory* [ %783, %782 ], [ %765, %794 ]
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -136
  %801 = add i64 %796, 7
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i64*
  store i64 %797, i64* %802, align 8
  %803 = load i64, i64* %RBP.i, align 8
  %804 = add i64 %803, -144
  %805 = load i64, i64* %3, align 8
  %806 = add i64 %805, 8
  store i64 %806, i64* %3, align 8
  %807 = load i64, i64* %307, align 1
  %808 = inttoptr i64 %804 to i64*
  store i64 %807, i64* %808, align 8
  %809 = load i64, i64* %3, align 8
  %810 = load i8, i8* %12, align 1
  %811 = load i8, i8* %15, align 1
  %812 = or i8 %811, %810
  %813 = icmp ne i8 %812, 0
  %.v261 = select i1 %813, i64 41, i64 6
  %814 = add i64 %809, %.v261
  %815 = add i64 %814, 9
  store i64 %815, i64* %3, align 8
  store i32 %795, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  br i1 %813, label %block_.L_42666b, label %block_426648

block_426648:                                     ; preds = %routine_ucomiss_0xab0f1c___xmm1.exit
  %816 = load i64, i64* %307, align 1
  %817 = trunc i64 %816 to i32
  %818 = bitcast %union.anon* %18 to [2 x i32]*
  store i32 %817, i32* %EAX.i102, align 1
  %819 = getelementptr inbounds [2 x i32], [2 x i32]* %818, i64 0, i64 1
  store i32 0, i32* %819, align 1
  %820 = load i64, i64* %RAX.i103, align 8
  %821 = xor i64 %820, -2147483648
  %822 = trunc i64 %821 to i32
  %823 = and i64 %821, 4294967295
  store i64 %823, i64* %RAX.i103, align 8
  store i8 0, i8* %12, align 1
  %824 = and i32 %822, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %13, align 1
  %829 = icmp eq i32 %822, 0
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %15, align 1
  %831 = lshr i32 %822, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %833 = trunc i64 %821 to i32
  store i32 %833, i32* %59, align 1
  store i32 0, i32* %581, align 1
  store i32 0, i32* %582, align 1
  store i32 0, i32* %583, align 1
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -148
  %836 = add i64 %814, 30
  store i64 %836, i64* %3, align 8
  %837 = load <2 x float>, <2 x float>* %35, align 1
  %838 = extractelement <2 x float> %837, i32 0
  %839 = inttoptr i64 %835 to float*
  store float %838, float* %839, align 4
  %840 = load i64, i64* %3, align 8
  %841 = add i64 %840, 22
  store i64 %841, i64* %3, align 8
  br label %block_.L_42667c

block_.L_42666b:                                  ; preds = %routine_ucomiss_0xab0f1c___xmm1.exit
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -148
  %844 = add i64 %814, 17
  store i64 %844, i64* %3, align 8
  %845 = load <2 x float>, <2 x float>* %35, align 1
  %846 = extractelement <2 x float> %845, i32 0
  %847 = inttoptr i64 %843 to float*
  store float %846, float* %847, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_42667c

block_.L_42667c:                                  ; preds = %block_.L_42666b, %block_426648
  %848 = phi i64 [ %.pre115, %block_.L_42666b ], [ %841, %block_426648 ]
  %849 = load i64, i64* %RBP.i, align 8
  %850 = add i64 %849, -148
  %851 = add i64 %848, 8
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  store i32 %853, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  store i64 ptrtoint (%G__0x57a0df_type* @G__0x57a0df to i64), i64* %RDI.i152, align 8
  %854 = load <2 x float>, <2 x float>* %35, align 1
  %855 = extractelement <2 x float> %854, i32 0
  %856 = fpext float %855 to double
  %857 = bitcast %union.VectorReg* %585 to double*
  store double %856, double* %857, align 1
  %858 = add i64 %849, -120
  %859 = add i64 %848, 26
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860, align 8
  store i64 %861, i64* %RSI.i687, align 8
  %862 = add i64 %849, -144
  %863 = add i64 %848, 34
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i64*
  %865 = load i64, i64* %864, align 8
  store i64 %865, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %866 = add i64 %849, -136
  %867 = add i64 %848, 41
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RDX.i379, align 8
  %AL.i1403 = bitcast %union.anon* %18 to i8*
  store i8 2, i8* %AL.i1403, align 1
  %870 = add i64 %848, 177972
  %871 = add i64 %848, 48
  %872 = load i64, i64* %6, align 8
  %873 = add i64 %872, -8
  %874 = inttoptr i64 %873 to i64*
  store i64 %871, i64* %874, align 8
  store i64 %873, i64* %6, align 8
  store i64 %870, i64* %3, align 8
  %call2_4266a7 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %870, %struct.Memory* %798)
  %875 = load i64, i64* %RBP.i, align 8
  %876 = add i64 %875, -152
  %877 = load i32, i32* %EAX.i102, align 4
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, 6
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %876 to i32*
  store i32 %877, i32* %880, align 4
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_4266b2

block_.L_4266b2:                                  ; preds = %block_.L_42667c, %block_.L_42656e
  %881 = phi i64 [ %.pre116, %block_.L_42667c ], [ %579, %block_.L_42656e ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_4266a7, %block_.L_42667c ], [ %call2_426587, %block_.L_42656e ]
  %882 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %882, i64* %RDI.i152, align 8
  %883 = add i64 %881, -152978
  %884 = add i64 %881, 13
  %885 = load i64, i64* %6, align 8
  %886 = add i64 %885, -8
  %887 = inttoptr i64 %886 to i64*
  store i64 %884, i64* %887, align 8
  store i64 %886, i64* %6, align 8
  store i64 %883, i64* %3, align 8
  %888 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %MEMORY.9)
  %889 = load i64, i64* %RBP.i, align 8
  %890 = add i64 %889, -156
  %891 = load i32, i32* %EAX.i102, align 4
  %892 = load i64, i64* %3, align 8
  %893 = add i64 %892, 6
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %890 to i32*
  store i32 %891, i32* %894, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_4266c5

block_.L_4266c5:                                  ; preds = %block_.L_4266b2, %block_4264dc
  %895 = phi i64 [ %.pre117, %block_.L_4266b2 ], [ %387, %block_4264dc ]
  %MEMORY.10 = phi %struct.Memory* [ %888, %block_.L_4266b2 ], [ %call2_4264c4, %block_4264dc ]
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c0a0_type* @G__0x57c0a0 to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %896 = add i64 %895, add (i64 ptrtoint (%G_0xbc882__rip__type* @G_0xbc882__rip_ to i64), i64 17)
  %897 = add i64 %895, 25
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i64*
  %899 = load i64, i64* %898, align 8
  store i64 %899, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %900 = add i64 %895, 351499
  %901 = add i64 %895, 30
  %902 = load i64, i64* %6, align 8
  %903 = add i64 %902, -8
  %904 = inttoptr i64 %903 to i64*
  store i64 %901, i64* %904, align 8
  store i64 %903, i64* %6, align 8
  store i64 %900, i64* %3, align 8
  %call2_4266de = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %900, %struct.Memory* %MEMORY.10)
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -20
  %907 = load i64, i64* %3, align 8
  %908 = add i64 %907, 4
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %906 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = add i32 %910, -1
  %912 = icmp eq i32 %910, 0
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %12, align 1
  %914 = and i32 %911, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %13, align 1
  %919 = xor i32 %911, %910
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %14, align 1
  %923 = icmp eq i32 %911, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %15, align 1
  %925 = lshr i32 %911, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %16, align 1
  %927 = lshr i32 %910, 31
  %928 = xor i32 %925, %927
  %929 = add nuw nsw i32 %928, %927
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %17, align 1
  %932 = add i64 %905, -168
  %933 = add i64 %907, 12
  store i64 %933, i64* %3, align 8
  %934 = load i64, i64* %307, align 1
  %935 = inttoptr i64 %932 to i64*
  store i64 %934, i64* %935, align 8
  %936 = load i64, i64* %3, align 8
  %937 = load i8, i8* %15, align 1
  %938 = icmp eq i8 %937, 0
  %.v255 = select i1 %938, i64 29, i64 6
  %939 = add i64 %936, %.v255
  %940 = add i64 %939, 9
  store i64 %940, i64* %3, align 8
  br i1 %938, label %block_.L_42670c, label %block_4266f5

block_4266f5:                                     ; preds = %block_.L_4266c5
  %941 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  store i32 %941, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %942 = load <2 x float>, <2 x float>* %35, align 1
  %943 = extractelement <2 x float> %942, i32 0
  store float %943, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %944 = add i64 %939, 41
  store i64 %944, i64* %3, align 8
  br label %block_.L_42671e

block_.L_42670c:                                  ; preds = %block_.L_4266c5
  %945 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  store i32 %945, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %946 = add i64 %939, 18
  store i64 %946, i64* %3, align 8
  %947 = load <2 x float>, <2 x float>* %35, align 1
  %948 = extractelement <2 x float> %947, i32 0
  store float %948, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  br label %block_.L_42671e

block_.L_42671e:                                  ; preds = %block_.L_42670c, %block_4266f5
  %949 = phi i64 [ %946, %block_.L_42670c ], [ %944, %block_4266f5 ]
  %950 = add i64 %949, 17
  store i64 %950, i64* %3, align 8
  br label %block_.L_42672f

block_.L_426723:                                  ; preds = %block_.L_426468
  %951 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %951, align 1
  %952 = add i64 %348, 12
  store i64 %952, i64* %3, align 8
  %953 = load <2 x float>, <2 x float>* %35, align 1
  %954 = extractelement <2 x float> %953, i32 0
  store float %954, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  br label %block_.L_42672f

block_.L_42672f:                                  ; preds = %block_.L_426723, %block_.L_42671e
  %955 = phi i64 [ %952, %block_.L_426723 ], [ %950, %block_.L_42671e ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_426498, %block_.L_426723 ], [ %call2_4266de, %block_.L_42671e ]
  %956 = load i32, i32* bitcast (%G_0xab0ee4_type* @G_0xab0ee4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %957 = and i32 %956, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %962 = icmp eq i32 %956, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %15, align 1
  %964 = lshr i32 %956, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v195 = select i1 %962, i64 19, i64 14
  %966 = add i64 %955, %.v195
  store i64 %966, i64* %3, align 8
  br i1 %962, label %block_.L_426742, label %block_42673d

block_42673d:                                     ; preds = %block_.L_42672f
  %967 = add i64 %966, 287955
  %968 = add i64 %966, 5
  %969 = load i64, i64* %6, align 8
  %970 = add i64 %969, -8
  %971 = inttoptr i64 %970 to i64*
  store i64 %968, i64* %971, align 8
  store i64 %970, i64* %6, align 8
  store i64 %967, i64* %3, align 8
  %call2_42673d = tail call %struct.Memory* @sub_46cc10.print_moyo(%struct.State* nonnull %0, i64 %967, %struct.Memory* %MEMORY.12)
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_426742

block_.L_426742:                                  ; preds = %block_42673d, %block_.L_42672f
  %972 = phi i64 [ %966, %block_.L_42672f ], [ %.pre118, %block_42673d ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_.L_42672f ], [ %call2_42673d, %block_42673d ]
  %973 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
  store i8 0, i8* %12, align 1
  %974 = and i32 %973, 255
  %975 = tail call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  store i8 %978, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %979 = icmp eq i32 %973, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %15, align 1
  %981 = lshr i32 %973, 31
  %982 = trunc i32 %981 to i8
  store i8 %982, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v196 = select i1 %979, i64 217, i64 14
  %983 = add i64 %972, %.v196
  store i64 %983, i64* %3, align 8
  br i1 %979, label %block_.L_42681b, label %block_426750

block_426750:                                     ; preds = %block_.L_426742
  %984 = add i32 %973, -1
  store i8 0, i8* %12, align 1
  %985 = and i32 %984, 255
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  store i8 %989, i8* %13, align 1
  %990 = xor i32 %984, %973
  %991 = lshr i32 %990, 4
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %14, align 1
  %994 = icmp eq i32 %984, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %15, align 1
  %996 = lshr i32 %984, 31
  %997 = trunc i32 %996 to i8
  store i8 %997, i8* %16, align 1
  %998 = xor i32 %996, %981
  %999 = add nuw nsw i32 %998, %981
  %1000 = icmp eq i32 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %17, align 1
  %.v197 = select i1 %994, i64 14, i64 45
  %1002 = add i64 %983, %.v197
  store i64 %1002, i64* %3, align 8
  br i1 %994, label %block_42675e, label %block_.L_42677d

block_42675e:                                     ; preds = %block_426750
  store i64 ptrtoint (%G__0x57c0af_type* @G__0x57c0af to i64), i64* %RSI.i687, align 8
  %1003 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1003, i64* %RDI.i152, align 8
  %AL.i1348 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i1348, align 1
  %1004 = add i64 %1002, -153230
  %1005 = add i64 %1002, 25
  %1006 = load i64, i64* %6, align 8
  %1007 = add i64 %1006, -8
  %1008 = inttoptr i64 %1007 to i64*
  store i64 %1005, i64* %1008, align 8
  store i64 %1007, i64* %6, align 8
  store i64 %1004, i64* %3, align 8
  %1009 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.13)
  %1010 = load i64, i64* %RBP.i, align 8
  %1011 = add i64 %1010, -172
  %1012 = load i32, i32* %EAX.i102, align 4
  %1013 = load i64, i64* %3, align 8
  %1014 = add i64 %1013, 6
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1011 to i32*
  store i32 %1012, i32* %1015, align 4
  %.pre119 = load i64, i64* %3, align 8
  %.pre120 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
  br label %block_.L_42677d

block_.L_42677d:                                  ; preds = %block_426750, %block_42675e
  %1016 = phi i32 [ %973, %block_426750 ], [ %.pre120, %block_42675e ]
  %1017 = phi i64 [ %1002, %block_426750 ], [ %.pre119, %block_42675e ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_426750 ], [ %1009, %block_42675e ]
  %1018 = add i32 %1016, -2
  %1019 = icmp ult i32 %1016, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %12, align 1
  %1021 = and i32 %1018, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %13, align 1
  %1026 = xor i32 %1018, %1016
  %1027 = lshr i32 %1026, 4
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  store i8 %1029, i8* %14, align 1
  %1030 = icmp eq i32 %1018, 0
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %15, align 1
  %1032 = lshr i32 %1018, 31
  %1033 = trunc i32 %1032 to i8
  store i8 %1033, i8* %16, align 1
  %1034 = lshr i32 %1016, 31
  %1035 = xor i32 %1032, %1034
  %1036 = add nuw nsw i32 %1035, %1034
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %17, align 1
  %.v198 = select i1 %1030, i64 14, i64 45
  %1039 = add i64 %1017, %.v198
  store i64 %1039, i64* %3, align 8
  br i1 %1030, label %block_42678b, label %block_.L_4267aa

block_42678b:                                     ; preds = %block_.L_42677d
  store i64 ptrtoint (%G__0x57c0d3_type* @G__0x57c0d3 to i64), i64* %RSI.i687, align 8
  %1040 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1040, i64* %RDI.i152, align 8
  %AL.i1335 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i1335, align 1
  %1041 = add i64 %1039, -153275
  %1042 = add i64 %1039, 25
  %1043 = load i64, i64* %6, align 8
  %1044 = add i64 %1043, -8
  %1045 = inttoptr i64 %1044 to i64*
  store i64 %1042, i64* %1045, align 8
  store i64 %1044, i64* %6, align 8
  store i64 %1041, i64* %3, align 8
  %1046 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.14)
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -176
  %1049 = load i32, i32* %EAX.i102, align 4
  %1050 = load i64, i64* %3, align 8
  %1051 = add i64 %1050, 6
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1048 to i32*
  store i32 %1049, i32* %1052, align 4
  %.pre121 = load i64, i64* %3, align 8
  %.pre122 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
  br label %block_.L_4267aa

block_.L_4267aa:                                  ; preds = %block_.L_42677d, %block_42678b
  %1053 = phi i32 [ %1016, %block_.L_42677d ], [ %.pre122, %block_42678b ]
  %1054 = phi i64 [ %1039, %block_.L_42677d ], [ %.pre121, %block_42678b ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_.L_42677d ], [ %1046, %block_42678b ]
  %1055 = zext i32 %1053 to i64
  store i64 %1055, i64* %RDI.i152, align 8
  %1056 = add i64 %1054, 321110
  %1057 = add i64 %1054, 12
  %1058 = load i64, i64* %6, align 8
  %1059 = add i64 %1058, -8
  %1060 = inttoptr i64 %1059 to i64*
  store i64 %1057, i64* %1060, align 8
  store i64 %1059, i64* %6, align 8
  store i64 %1056, i64* %3, align 8
  %call2_4267b1 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %1056, %struct.Memory* %MEMORY.15)
  %1061 = load i64, i64* %3, align 8
  %1062 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
  %1063 = add i32 %1062, -1
  %1064 = icmp eq i32 %1062, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %12, align 1
  %1066 = and i32 %1063, 255
  %1067 = tail call i32 @llvm.ctpop.i32(i32 %1066)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  store i8 %1070, i8* %13, align 1
  %1071 = xor i32 %1063, %1062
  %1072 = lshr i32 %1071, 4
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  store i8 %1074, i8* %14, align 1
  %1075 = icmp eq i32 %1063, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %15, align 1
  %1077 = lshr i32 %1063, 31
  %1078 = trunc i32 %1077 to i8
  store i8 %1078, i8* %16, align 1
  %1079 = lshr i32 %1062, 31
  %1080 = xor i32 %1077, %1079
  %1081 = add nuw nsw i32 %1080, %1079
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %17, align 1
  %.v199 = select i1 %1075, i64 14, i64 96
  %1084 = add i64 %1061, %.v199
  store i64 %1084, i64* %3, align 8
  br i1 %1075, label %block_4267c4, label %block_.L_426816

block_4267c4:                                     ; preds = %block_.L_4267aa
  store i64 ptrtoint (%G__0x57c0ed_type* @G__0x57c0ed to i64), i64* %RSI.i687, align 8
  %1085 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1085, i64* %RDI.i152, align 8
  %AL.i1319 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i1319, align 1
  %1086 = add i64 %1084, -153332
  %1087 = add i64 %1084, 25
  %1088 = load i64, i64* %6, align 8
  %1089 = add i64 %1088, -8
  %1090 = inttoptr i64 %1089 to i64*
  store i64 %1087, i64* %1090, align 8
  store i64 %1089, i64* %6, align 8
  store i64 %1086, i64* %3, align 8
  %1091 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4267b1)
  %1092 = load i64, i64* %3, align 8
  store i64 3, i64* %RDI.i152, align 8
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -180
  %1095 = load i32, i32* %EAX.i102, align 4
  %1096 = add i64 %1092, 11
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1094 to i32*
  store i32 %1095, i32* %1097, align 4
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 321048
  %1100 = add i64 %1098, 5
  %1101 = load i64, i64* %6, align 8
  %1102 = add i64 %1101, -8
  %1103 = inttoptr i64 %1102 to i64*
  store i64 %1100, i64* %1103, align 8
  store i64 %1102, i64* %6, align 8
  store i64 %1099, i64* %3, align 8
  %call2_4267e8 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %1099, %struct.Memory* %1091)
  %1104 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c10f_type* @G__0x57c10f to i64), i64* %RSI.i687, align 8
  %1105 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1105, i64* %RDI.i152, align 8
  store i8 0, i8* %AL.i1319, align 1
  %1106 = add i64 %1104, -153373
  %1107 = add i64 %1104, 25
  %1108 = load i64, i64* %6, align 8
  %1109 = add i64 %1108, -8
  %1110 = inttoptr i64 %1109 to i64*
  store i64 %1107, i64* %1110, align 8
  store i64 %1109, i64* %6, align 8
  store i64 %1106, i64* %3, align 8
  %1111 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4267e8)
  %1112 = load i64, i64* %3, align 8
  store i64 4, i64* %RDI.i152, align 8
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -184
  %1115 = load i32, i32* %EAX.i102, align 4
  %1116 = add i64 %1112, 11
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1114 to i32*
  store i32 %1115, i32* %1117, align 4
  %1118 = load i64, i64* %3, align 8
  %1119 = add i64 %1118, 321007
  %1120 = add i64 %1118, 5
  %1121 = load i64, i64* %6, align 8
  %1122 = add i64 %1121, -8
  %1123 = inttoptr i64 %1122 to i64*
  store i64 %1120, i64* %1123, align 8
  store i64 %1122, i64* %6, align 8
  store i64 %1119, i64* %3, align 8
  %call2_426811 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %1119, %struct.Memory* %1111)
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_426816

block_.L_426816:                                  ; preds = %block_.L_4267aa, %block_4267c4
  %1124 = phi i64 [ %1084, %block_.L_4267aa ], [ %.pre123, %block_4267c4 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_4267b1, %block_.L_4267aa ], [ %call2_426811, %block_4267c4 ]
  %1125 = add i64 %1124, 5
  store i64 %1125, i64* %3, align 8
  br label %block_.L_42681b

block_.L_42681b:                                  ; preds = %block_.L_426816, %block_.L_426742
  %1126 = phi i64 [ %983, %block_.L_426742 ], [ %1125, %block_.L_426816 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.13, %block_.L_426742 ], [ %MEMORY.16, %block_.L_426816 ]
  %1127 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1128 = and i32 %1127, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1133 = icmp eq i32 %1127, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %15, align 1
  %1135 = lshr i32 %1127, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v200 = select i1 %1133, i64 14, i64 19
  %1137 = add i64 %1126, %.v200
  store i64 %1137, i64* %3, align 8
  br i1 %1133, label %block_426829, label %block_.L_42682e

block_426829:                                     ; preds = %block_.L_42681b
  %1138 = add i64 %1137, 45
  store i64 %1138, i64* %3, align 8
  br label %block_.L_426856

block_.L_42682e:                                  ; preds = %block_.L_42681b
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 386, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %1139, align 8
  %1140 = add i64 %1137, 178274
  %1141 = add i64 %1137, 40
  %1142 = load i64, i64* %6, align 8
  %1143 = add i64 %1142, -8
  %1144 = inttoptr i64 %1143 to i64*
  store i64 %1141, i64* %1144, align 8
  store i64 %1143, i64* %6, align 8
  store i64 %1140, i64* %3, align 8
  %call2_426851 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1140, %struct.Memory* %MEMORY.17)
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_426856

block_.L_426856:                                  ; preds = %block_.L_42682e, %block_426829
  %1145 = phi i64 [ %.pre124, %block_.L_42682e ], [ %1138, %block_426829 ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_426851, %block_.L_42682e ], [ %MEMORY.17, %block_426829 ]
  %1146 = load i64, i64* %RBP.i, align 8
  %1147 = add i64 %1146, -20
  %1148 = add i64 %1145, 3
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  %1150 = load i32, i32* %1149, align 4
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RDI.i152, align 8
  %1152 = add i64 %1145, 409402
  %1153 = add i64 %1145, 8
  %1154 = load i64, i64* %6, align 8
  %1155 = add i64 %1154, -8
  %1156 = inttoptr i64 %1155 to i64*
  store i64 %1153, i64* %1156, align 8
  store i64 %1155, i64* %6, align 8
  store i64 %1152, i64* %3, align 8
  %call2_426859 = tail call %struct.Memory* @sub_48a790.worm_reasons(%struct.State* nonnull %0, i64 %1152, %struct.Memory* %MEMORY.18)
  %1157 = load i64, i64* %3, align 8
  %1158 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RDI.i152, align 8
  %1160 = load i64, i64* %RBP.i, align 8
  %1161 = add i64 %1160, -40
  %1162 = add i64 %1157, 10
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  store i32 %1158, i32* %1163, align 4
  %1164 = load i64, i64* %3, align 8
  %1165 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1166 = and i32 %1165, 255
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1171 = icmp eq i32 %1165, 0
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %15, align 1
  %1173 = lshr i32 %1165, 31
  %1174 = trunc i32 %1173 to i8
  store i8 %1174, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1175 = icmp ne i8 %1174, 0
  %1176 = or i1 %1171, %1175
  %.v201 = select i1 %1176, i64 31, i64 14
  %1177 = add i64 %1164, %.v201
  store i64 %1177, i64* %3, align 8
  br i1 %1176, label %block_.L_426887, label %block_426876

block_426876:                                     ; preds = %block_.L_426856
  %1178 = add i32 %1165, -1
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RAX.i103, align 8
  store i8 1, i8* %12, align 1
  %1180 = and i32 %1178, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %13, align 1
  %1185 = xor i32 %1165, 16
  %1186 = xor i32 %1185, %1178
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %14, align 1
  %1190 = icmp eq i32 %1178, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %15, align 1
  %1192 = lshr i32 %1178, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %16, align 1
  %1194 = xor i32 %1192, %1173
  %1195 = xor i32 %1192, 1
  %1196 = add nuw nsw i32 %1194, %1195
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %17, align 1
  %1199 = add i64 %1177, 17
  store i64 %1199, i64* %3, align 8
  store i32 %1178, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  br label %block_.L_426887

block_.L_426887:                                  ; preds = %block_426876, %block_.L_426856
  %1200 = phi i64 [ %1199, %block_426876 ], [ %1177, %block_.L_426856 ]
  %1201 = load i64, i64* %RBP.i, align 8
  %1202 = add i64 %1201, -20
  %1203 = add i64 %1200, 3
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RDI.i152, align 8
  %1207 = add i64 %1200, 150569
  %1208 = add i64 %1200, 8
  %1209 = load i64, i64* %6, align 8
  %1210 = add i64 %1209, -8
  %1211 = inttoptr i64 %1210 to i64*
  store i64 %1208, i64* %1211, align 8
  store i64 %1210, i64* %6, align 8
  store i64 %1207, i64* %3, align 8
  %call2_42688a = tail call %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* nonnull %0, i64 %1207, %struct.Memory* %call2_426859)
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -40
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1213 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RDI.i152, align 8
  store i32 %1217, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %1219 = add i64 %1212, -20
  %1220 = add i64 %1214, 13
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = zext i32 %1222 to i64
  store i64 %1223, i64* %RDI.i152, align 8
  %1224 = add i64 %1214, -6495
  %1225 = add i64 %1214, 18
  %1226 = load i64, i64* %6, align 8
  %1227 = add i64 %1226, -8
  %1228 = inttoptr i64 %1227 to i64*
  store i64 %1225, i64* %1228, align 8
  store i64 %1227, i64* %6, align 8
  store i64 %1224, i64* %3, align 8
  %call2_42689c = tail call %struct.Memory* @sub_424f30.fuseki(%struct.State* nonnull %0, i64 %1224, %struct.Memory* %call2_42688a)
  %1229 = load i64, i64* %3, align 8
  %1230 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1231 = and i32 %1230, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1236 = icmp eq i32 %1230, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %15, align 1
  %1238 = lshr i32 %1230, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v202 = select i1 %1236, i64 14, i64 19
  %1240 = add i64 %1229, %.v202
  store i64 %1240, i64* %3, align 8
  br i1 %1236, label %block_4268af, label %block_.L_4268b4

block_4268af:                                     ; preds = %block_.L_426887
  %1241 = add i64 %1240, 45
  store i64 %1241, i64* %3, align 8
  br label %block_.L_4268dc

block_.L_4268b4:                                  ; preds = %block_.L_426887
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 404, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %1242, align 8
  %1243 = add i64 %1240, 178140
  %1244 = add i64 %1240, 40
  %1245 = load i64, i64* %6, align 8
  %1246 = add i64 %1245, -8
  %1247 = inttoptr i64 %1246 to i64*
  store i64 %1244, i64* %1247, align 8
  store i64 %1246, i64* %6, align 8
  store i64 %1243, i64* %3, align 8
  %call2_4268d7 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1243, %struct.Memory* %call2_42689c)
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_4268dc

block_.L_4268dc:                                  ; preds = %block_.L_4268b4, %block_4268af
  %1248 = phi i64 [ %.pre125, %block_.L_4268b4 ], [ %1241, %block_4268af ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_4268d7, %block_.L_4268b4 ], [ %call2_42689c, %block_4268af ]
  store i64 1, i64* %RDI.i152, align 8
  %1249 = add i64 %1248, 350836
  %1250 = add i64 %1248, 10
  %1251 = load i64, i64* %6, align 8
  %1252 = add i64 %1251, -8
  %1253 = inttoptr i64 %1252 to i64*
  store i64 %1250, i64* %1253, align 8
  store i64 %1252, i64* %6, align 8
  store i64 %1249, i64* %3, align 8
  %call2_4268e1 = tail call %struct.Memory* @sub_47c350.start_timer(%struct.State* nonnull %0, i64 %1249, %struct.Memory* %MEMORY.20)
  %1254 = load i64, i64* %RBP.i, align 8
  %1255 = add i64 %1254, -20
  %1256 = load i64, i64* %3, align 8
  %1257 = add i64 %1256, 3
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1255 to i32*
  %1259 = load i32, i32* %1258, align 4
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RDI.i152, align 8
  %1261 = add i64 %1256, 313018
  %1262 = add i64 %1256, 8
  %1263 = load i64, i64* %6, align 8
  %1264 = add i64 %1263, -8
  %1265 = inttoptr i64 %1264 to i64*
  store i64 %1262, i64* %1265, align 8
  store i64 %1264, i64* %6, align 8
  store i64 %1261, i64* %3, align 8
  %call2_4268e9 = tail call %struct.Memory* @sub_472fa0.shapes(%struct.State* nonnull %0, i64 %1261, %struct.Memory* %call2_4268e1)
  %1266 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c135_type* @G__0x57c135 to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1267 = add i64 %1266, add (i64 ptrtoint (%G_0xbc659__rip__type* @G_0xbc659__rip_ to i64), i64 17)
  %1268 = add i64 %1266, 25
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %1271 = add i64 %1266, 350946
  %1272 = add i64 %1266, 30
  %1273 = load i64, i64* %6, align 8
  %1274 = add i64 %1273, -8
  %1275 = inttoptr i64 %1274 to i64*
  store i64 %1272, i64* %1275, align 8
  store i64 %1274, i64* %6, align 8
  store i64 %1271, i64* %3, align 8
  %call2_426907 = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %1271, %struct.Memory* %call2_4268e9)
  %1276 = load i64, i64* %3, align 8
  %1277 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1278 = and i32 %1277, 255
  %1279 = tail call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1283 = icmp eq i32 %1277, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %15, align 1
  %1285 = lshr i32 %1277, 31
  %1286 = trunc i32 %1285 to i8
  store i8 %1286, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1287 = load i64, i64* %RBP.i, align 8
  %1288 = add i64 %1287, -192
  %1289 = add i64 %1276, 16
  store i64 %1289, i64* %3, align 8
  %1290 = load i64, i64* %307, align 1
  %1291 = inttoptr i64 %1288 to i64*
  store i64 %1290, i64* %1291, align 8
  %1292 = load i64, i64* %3, align 8
  %1293 = load i8, i8* %15, align 1
  %1294 = icmp eq i8 %1293, 0
  %.v256 = select i1 %1294, i64 11, i64 6
  %1295 = add i64 %1292, %.v256
  store i64 %1295, i64* %3, align 8
  br i1 %1294, label %block_.L_426927, label %block_426922

block_426922:                                     ; preds = %block_.L_4268dc
  %1296 = add i64 %1295, 45
  store i64 %1296, i64* %3, align 8
  br label %block_.L_42694f

block_.L_426927:                                  ; preds = %block_.L_4268dc
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 410, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %1297, align 8
  %1298 = add i64 %1295, 178025
  %1299 = add i64 %1295, 40
  %1300 = load i64, i64* %6, align 8
  %1301 = add i64 %1300, -8
  %1302 = inttoptr i64 %1301 to i64*
  store i64 %1299, i64* %1302, align 8
  store i64 %1301, i64* %6, align 8
  store i64 %1298, i64* %3, align 8
  %call2_42694a = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1298, %struct.Memory* %call2_426907)
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_42694f

block_.L_42694f:                                  ; preds = %block_.L_426927, %block_426922
  %1303 = phi i64 [ %.pre126, %block_.L_426927 ], [ %1296, %block_426922 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_42694a, %block_.L_426927 ], [ %call2_426907, %block_426922 ]
  %1304 = load i64, i64* %RBP.i, align 8
  %1305 = add i64 %1304, -20
  %1306 = add i64 %1303, 3
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RDI.i152, align 8
  %1310 = add i64 %1303, -57935
  %1311 = add i64 %1303, 8
  %1312 = load i64, i64* %6, align 8
  %1313 = add i64 %1312, -8
  %1314 = inttoptr i64 %1313 to i64*
  store i64 %1311, i64* %1314, align 8
  store i64 %1313, i64* %6, align 8
  store i64 %1310, i64* %3, align 8
  %call2_426952 = tail call %struct.Memory* @sub_418700.combinations(%struct.State* nonnull %0, i64 %1310, %struct.Memory* %MEMORY.21)
  %1315 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c13c_type* @G__0x57c13c to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1316 = add i64 %1315, add (i64 ptrtoint (%G_0xbc5f0__rip__type* @G_0xbc5f0__rip_ to i64), i64 17)
  %1317 = add i64 %1315, 25
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i64*
  %1319 = load i64, i64* %1318, align 8
  store i64 %1319, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %1320 = add i64 %1315, 350841
  %1321 = add i64 %1315, 30
  %1322 = load i64, i64* %6, align 8
  %1323 = add i64 %1322, -8
  %1324 = inttoptr i64 %1323 to i64*
  store i64 %1321, i64* %1324, align 8
  store i64 %1323, i64* %6, align 8
  store i64 %1320, i64* %3, align 8
  %call2_426970 = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %1320, %struct.Memory* %call2_426952)
  %1325 = load i64, i64* %3, align 8
  %1326 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1327 = and i32 %1326, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1332 = icmp eq i32 %1326, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %15, align 1
  %1334 = lshr i32 %1326, 31
  %1335 = trunc i32 %1334 to i8
  store i8 %1335, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1336 = load i64, i64* %RBP.i, align 8
  %1337 = add i64 %1336, -200
  %1338 = add i64 %1325, 16
  store i64 %1338, i64* %3, align 8
  %1339 = load i64, i64* %307, align 1
  %1340 = inttoptr i64 %1337 to i64*
  store i64 %1339, i64* %1340, align 8
  %1341 = load i64, i64* %3, align 8
  %1342 = load i8, i8* %15, align 1
  %1343 = icmp eq i8 %1342, 0
  %.v257 = select i1 %1343, i64 11, i64 6
  %1344 = add i64 %1341, %.v257
  store i64 %1344, i64* %3, align 8
  br i1 %1343, label %block_.L_426990, label %block_42698b

block_42698b:                                     ; preds = %block_.L_42694f
  %1345 = add i64 %1344, 45
  store i64 %1345, i64* %3, align 8
  br label %block_.L_4269b8

block_.L_426990:                                  ; preds = %block_.L_42694f
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 415, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %1346, align 8
  %1347 = add i64 %1344, 177920
  %1348 = add i64 %1344, 40
  %1349 = load i64, i64* %6, align 8
  %1350 = add i64 %1349, -8
  %1351 = inttoptr i64 %1350 to i64*
  store i64 %1348, i64* %1351, align 8
  store i64 %1350, i64* %6, align 8
  store i64 %1347, i64* %3, align 8
  %call2_4269b3 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1347, %struct.Memory* %call2_426970)
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_4269b8

block_.L_4269b8:                                  ; preds = %block_.L_426990, %block_42698b
  %1352 = phi i64 [ %.pre127, %block_.L_426990 ], [ %1345, %block_42698b ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_4269b3, %block_.L_426990 ], [ %call2_426970, %block_42698b ]
  %1353 = load i64, i64* %RBP.i, align 8
  %1354 = add i64 %1353, -36
  store i64 %1354, i64* %RSI.i687, align 8
  %1355 = add i64 %1353, -16
  %1356 = add i64 %1352, 8
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i64*
  %1358 = load i64, i64* %1357, align 8
  store i64 %1358, i64* %RDI.i152, align 8
  %1359 = add i64 %1353, -20
  %1360 = add i64 %1352, 11
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RDX.i379, align 8
  %1364 = add i64 %1353, -24
  %1365 = add i64 %1352, 16
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  store i32 %1367, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1369 = bitcast %union.VectorReg* %1368 to i8*
  %1370 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %1371 = bitcast %union.VectorReg* %1368 to i32*
  store i32 %1370, i32* %1371, align 1
  %1372 = getelementptr inbounds i8, i8* %1369, i64 4
  %1373 = bitcast i8* %1372 to float*
  store float 0.000000e+00, float* %1373, align 1
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1375 = bitcast i64* %1374 to float*
  store float 0.000000e+00, float* %1375, align 1
  %1376 = getelementptr inbounds i8, i8* %1369, i64 12
  %1377 = bitcast i8* %1376 to float*
  store float 0.000000e+00, float* %1377, align 1
  %1378 = add i64 %1353, -32
  %1379 = add i64 %1352, 29
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %RCX.i875, align 8
  %1382 = add i64 %1352, 351448
  %1383 = add i64 %1352, 34
  %1384 = load i64, i64* %6, align 8
  %1385 = add i64 %1384, -8
  %1386 = inttoptr i64 %1385 to i64*
  store i64 %1383, i64* %1386, align 8
  store i64 %1385, i64* %6, align 8
  store i64 %1382, i64* %3, align 8
  %call2_4269d5 = tail call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* nonnull %0, i64 %1382, %struct.Memory* %MEMORY.22)
  %1387 = load i32, i32* %EAX.i102, align 4
  %1388 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1389 = and i32 %1387, 255
  %1390 = tail call i32 @llvm.ctpop.i32(i32 %1389)
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  store i8 %1393, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1394 = icmp eq i32 %1387, 0
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %15, align 1
  %1396 = lshr i32 %1387, 31
  %1397 = trunc i32 %1396 to i8
  store i8 %1397, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v203 = select i1 %1394, i64 67, i64 9
  %1398 = add i64 %1388, %.v203
  store i64 %1398, i64* %3, align 8
  br i1 %1394, label %block_.L_426a1d, label %block_4269e3

block_4269e3:                                     ; preds = %block_.L_4269b8
  %1399 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1400 = and i32 %1399, 255
  %1401 = tail call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  store i8 %1404, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1405 = icmp eq i32 %1399, 0
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %15, align 1
  %1407 = lshr i32 %1399, 31
  %1408 = trunc i32 %1407 to i8
  store i8 %1408, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v204 = select i1 %1405, i64 14, i64 19
  %1409 = add i64 %1398, %.v204
  store i64 %1409, i64* %3, align 8
  br i1 %1405, label %block_4269f1, label %block_.L_4269f6

block_4269f1:                                     ; preds = %block_4269e3
  %1410 = add i64 %1409, 39
  store i64 %1410, i64* %3, align 8
  br label %block_.L_426a18

block_.L_4269f6:                                  ; preds = %block_4269e3
  store i64 ptrtoint (%G__0x57a10c_type* @G__0x57a10c to i64), i64* %RDI.i152, align 8
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -16
  %1413 = add i64 %1409, 14
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %RAX.i103, align 8
  %1416 = add i64 %1409, 16
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  %1419 = zext i32 %1418 to i64
  store i64 %1419, i64* %RSI.i687, align 8
  %1420 = add i64 %1411, -36
  %1421 = add i64 %1409, 21
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to float*
  %1423 = load float, float* %1422, align 4
  %1424 = fpext float %1423 to double
  store double %1424, double* %306, align 1
  %AL.i1116 = bitcast %union.anon* %18 to i8*
  store i8 1, i8* %AL.i1116, align 1
  %1425 = add i64 %1409, 177082
  %1426 = add i64 %1409, 28
  %1427 = load i64, i64* %6, align 8
  %1428 = add i64 %1427, -8
  %1429 = inttoptr i64 %1428 to i64*
  store i64 %1426, i64* %1429, align 8
  store i64 %1428, i64* %6, align 8
  store i64 %1425, i64* %3, align 8
  %call2_426a0d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1425, %struct.Memory* %call2_4269d5)
  %1430 = load i64, i64* %RBP.i, align 8
  %1431 = add i64 %1430, -204
  %1432 = load i32, i32* %EAX.i102, align 4
  %1433 = load i64, i64* %3, align 8
  %1434 = add i64 %1433, 6
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1431 to i32*
  store i32 %1432, i32* %1435, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_426a18

block_.L_426a18:                                  ; preds = %block_.L_4269f6, %block_4269f1
  %1436 = phi i64 [ %.pre128, %block_.L_4269f6 ], [ %1410, %block_4269f1 ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_426a0d, %block_.L_4269f6 ], [ %call2_4269d5, %block_4269f1 ]
  %1437 = add i64 %1436, 5
  store i64 %1437, i64* %3, align 8
  br label %block_.L_426a1d

block_.L_426a1d:                                  ; preds = %block_.L_426a18, %block_.L_4269b8
  %1438 = phi i64 [ %1398, %block_.L_4269b8 ], [ %1437, %block_.L_426a18 ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_4269d5, %block_.L_4269b8 ], [ %MEMORY.23, %block_.L_426a18 ]
  %1439 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1440 = and i32 %1439, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1445 = icmp eq i32 %1439, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %15, align 1
  %1447 = lshr i32 %1439, 31
  %1448 = trunc i32 %1447 to i8
  store i8 %1448, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v205 = select i1 %1445, i64 14, i64 19
  %1449 = add i64 %1438, %.v205
  store i64 %1449, i64* %3, align 8
  br i1 %1445, label %block_426a2b, label %block_.L_426a30

block_426a2b:                                     ; preds = %block_.L_426a1d
  %1450 = add i64 %1449, 45
  store i64 %1450, i64* %3, align 8
  br label %block_.L_426a58

block_.L_426a30:                                  ; preds = %block_.L_426a1d
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 421, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %1451, align 8
  %1452 = add i64 %1449, 177760
  %1453 = add i64 %1449, 40
  %1454 = load i64, i64* %6, align 8
  %1455 = add i64 %1454, -8
  %1456 = inttoptr i64 %1455 to i64*
  store i64 %1453, i64* %1456, align 8
  store i64 %1455, i64* %6, align 8
  store i64 %1452, i64* %3, align 8
  %call2_426a53 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1452, %struct.Memory* %MEMORY.24)
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_426a58

block_.L_426a58:                                  ; preds = %block_.L_426a30, %block_426a2b
  %1457 = phi i64 [ %.pre129, %block_.L_426a30 ], [ %1450, %block_426a2b ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_426a53, %block_.L_426a30 ], [ %MEMORY.24, %block_426a2b ]
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c149_type* @G__0x57c149 to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1458 = add i64 %1457, add (i64 ptrtoint (%G_0xbc4ef__rip__type* @G_0xbc4ef__rip_ to i64), i64 17)
  %1459 = add i64 %1457, 25
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i64*
  %1461 = load i64, i64* %1460, align 8
  store i64 %1461, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %1462 = add i64 %1457, 350584
  %1463 = add i64 %1457, 30
  %1464 = load i64, i64* %6, align 8
  %1465 = add i64 %1464, -8
  %1466 = inttoptr i64 %1465 to i64*
  store i64 %1463, i64* %1466, align 8
  store i64 %1465, i64* %6, align 8
  store i64 %1462, i64* %3, align 8
  %call2_426a71 = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %1462, %struct.Memory* %MEMORY.25)
  %1467 = load i64, i64* %3, align 8
  %1468 = add i64 %1467, ptrtoint (%G_0xbc542__rip__type* @G_0xbc542__rip_ to i64)
  %1469 = add i64 %1467, 8
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i64*
  %1471 = load i64, i64* %1470, align 8
  %1472 = bitcast %union.VectorReg* %1368 to double*
  %1473 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1368, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1471, i64* %1473, align 1
  %1474 = bitcast i64* %1374 to double*
  store double 0.000000e+00, double* %1474, align 1
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -36
  %1478 = add i64 %1467, 13
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to float*
  %1480 = load float, float* %1479, align 4
  %1481 = fpext float %1480 to double
  %1482 = bitcast %union.VectorReg* %1475 to double*
  store double %1481, double* %1482, align 1
  %1483 = add i64 %1467, 17
  store i64 %1483, i64* %3, align 8
  %1484 = bitcast i64 %1471 to double
  %1485 = fcmp uno double %1484, %1481
  br i1 %1485, label %1486, label %1496

; <label>:1486:                                   ; preds = %block_.L_426a58
  %1487 = fadd double %1481, %1484
  %1488 = bitcast double %1487 to i64
  %1489 = and i64 %1488, 9221120237041090560
  %1490 = icmp eq i64 %1489, 9218868437227405312
  %1491 = and i64 %1488, 2251799813685247
  %1492 = icmp ne i64 %1491, 0
  %1493 = and i1 %1490, %1492
  br i1 %1493, label %1494, label %1502

; <label>:1494:                                   ; preds = %1486
  %1495 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1483, %struct.Memory* %call2_426a71)
  %.pre130 = load i64, i64* %RBP.i, align 8
  %.pre131 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm2___xmm1.exit

; <label>:1496:                                   ; preds = %block_.L_426a58
  %1497 = fcmp ogt double %1484, %1481
  br i1 %1497, label %1502, label %1498

; <label>:1498:                                   ; preds = %1496
  %1499 = fcmp olt double %1484, %1481
  br i1 %1499, label %1502, label %1500

; <label>:1500:                                   ; preds = %1498
  %1501 = fcmp oeq double %1484, %1481
  br i1 %1501, label %1502, label %1506

; <label>:1502:                                   ; preds = %1500, %1498, %1496, %1486
  %1503 = phi i8 [ 0, %1496 ], [ 0, %1498 ], [ 1, %1500 ], [ 1, %1486 ]
  %1504 = phi i8 [ 0, %1496 ], [ 0, %1498 ], [ 0, %1500 ], [ 1, %1486 ]
  %1505 = phi i8 [ 0, %1496 ], [ 1, %1498 ], [ 0, %1500 ], [ 1, %1486 ]
  store i8 %1503, i8* %15, align 1
  store i8 %1504, i8* %13, align 1
  store i8 %1505, i8* %12, align 1
  br label %1506

; <label>:1506:                                   ; preds = %1502, %1500
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm2___xmm1.exit

routine_ucomisd__xmm2___xmm1.exit:                ; preds = %1506, %1494
  %1507 = phi i64 [ %.pre131, %1494 ], [ %1483, %1506 ]
  %1508 = phi i64 [ %.pre130, %1494 ], [ %1476, %1506 ]
  %1509 = phi %struct.Memory* [ %1495, %1494 ], [ %call2_426a71, %1506 ]
  %1510 = add i64 %1508, -216
  %1511 = add i64 %1507, 8
  store i64 %1511, i64* %3, align 8
  %1512 = load i64, i64* %307, align 1
  %1513 = inttoptr i64 %1510 to i64*
  store i64 %1512, i64* %1513, align 8
  %1514 = load i64, i64* %3, align 8
  %1515 = add i64 %1514, 219
  %1516 = add i64 %1514, 6
  %1517 = load i8, i8* %12, align 1
  %1518 = load i8, i8* %15, align 1
  %1519 = or i8 %1518, %1517
  %1520 = icmp ne i8 %1519, 0
  %1521 = select i1 %1520, i64 %1515, i64 %1516
  store i64 %1521, i64* %3, align 8
  br i1 %1520, label %block_.L_426b6a, label %block_426a95

block_426a95:                                     ; preds = %routine_ucomisd__xmm2___xmm1.exit
  %1522 = load i32, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  store i8 0, i8* %12, align 1
  %1523 = and i32 %1522, 255
  %1524 = tail call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  store i8 %1527, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1528 = icmp eq i32 %1522, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %15, align 1
  %1530 = lshr i32 %1522, 31
  %1531 = trunc i32 %1530 to i8
  store i8 %1531, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v206 = select i1 %1528, i64 14, i64 213
  %1532 = add i64 %1521, %.v206
  store i64 %1532, i64* %3, align 8
  br i1 %1528, label %block_426aa3, label %block_.L_426b6a

block_426aa3:                                     ; preds = %block_426a95
  %1533 = add i64 %1532, ptrtoint (%G_0xbc66d__rip__type* @G_0xbc66d__rip_ to i64)
  %1534 = add i64 %1532, 8
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  store i32 %1536, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %1537 = load i64, i64* %RBP.i, align 8
  %1538 = add i64 %1537, -20
  %1539 = add i64 %1532, 11
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RDI.i152, align 8
  %1543 = add i64 %1532, 3117
  %1544 = add i64 %1532, 16
  %1545 = load i64, i64* %6, align 8
  %1546 = add i64 %1545, -8
  %1547 = inttoptr i64 %1546 to i64*
  store i64 %1544, i64* %1547, align 8
  store i64 %1546, i64* %6, align 8
  store i64 %1543, i64* %3, align 8
  %call2_426aae = tail call %struct.Memory* @sub_4276d0.revise_thrashing_dragon(%struct.State* nonnull %0, i64 %1543, %struct.Memory* %1509)
  %1548 = load i32, i32* %EAX.i102, align 4
  %1549 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1550 = and i32 %1548, 255
  %1551 = tail call i32 @llvm.ctpop.i32(i32 %1550)
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  store i8 %1554, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1555 = icmp eq i32 %1548, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %15, align 1
  %1557 = lshr i32 %1548, 31
  %1558 = trunc i32 %1557 to i8
  store i8 %1558, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v246 = select i1 %1555, i64 145, i64 9
  %1559 = add i64 %1549, %.v246
  store i64 %1559, i64* %3, align 8
  br i1 %1555, label %block_.L_426b44, label %block_426abc

block_426abc:                                     ; preds = %block_426aa3
  %1560 = load i64, i64* %RBP.i, align 8
  %1561 = add i64 %1560, -20
  %1562 = add i64 %1559, 3
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  %1564 = load i32, i32* %1563, align 4
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RDI.i152, align 8
  %1566 = add i64 %1559, 312548
  %1567 = add i64 %1559, 8
  %1568 = load i64, i64* %6, align 8
  %1569 = add i64 %1568, -8
  %1570 = inttoptr i64 %1569 to i64*
  store i64 %1567, i64* %1570, align 8
  store i64 %1569, i64* %6, align 8
  store i64 %1566, i64* %3, align 8
  %call2_426abf = tail call %struct.Memory* @sub_472fa0.shapes(%struct.State* nonnull %0, i64 %1566, %struct.Memory* %call2_426aae)
  %1571 = load i64, i64* %3, align 8
  %1572 = load i32, i32* bitcast (%G_0xab0fb8_type* @G_0xab0fb8 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1573 = and i32 %1572, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573)
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1578 = icmp eq i32 %1572, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %15, align 1
  %1580 = lshr i32 %1572, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v247 = select i1 %1578, i64 14, i64 22
  %1582 = add i64 %1571, %.v247
  store i64 %1582, i64* %3, align 8
  br i1 %1578, label %block_426ad2, label %block_.L_426ada

block_426ad2:                                     ; preds = %block_426abc
  %1583 = load i64, i64* %RBP.i, align 8
  %1584 = add i64 %1583, -20
  %1585 = add i64 %1582, 3
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = zext i32 %1587 to i64
  store i64 %1588, i64* %RDI.i152, align 8
  %1589 = add i64 %1582, 319022
  %1590 = add i64 %1582, 8
  %1591 = load i64, i64* %6, align 8
  %1592 = add i64 %1591, -8
  %1593 = inttoptr i64 %1592 to i64*
  store i64 %1590, i64* %1593, align 8
  store i64 %1592, i64* %6, align 8
  store i64 %1589, i64* %3, align 8
  %call2_426ad5 = tail call %struct.Memory* @sub_474900.endgame_shapes(%struct.State* nonnull %0, i64 %1589, %struct.Memory* %call2_426abf)
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_426ada

block_.L_426ada:                                  ; preds = %block_426abc, %block_426ad2
  %1594 = phi i64 [ %1582, %block_426abc ], [ %.pre132, %block_426ad2 ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_426abf, %block_426abc ], [ %call2_426ad5, %block_426ad2 ]
  %1595 = load i64, i64* %RBP.i, align 8
  %1596 = add i64 %1595, -36
  store i64 %1596, i64* %RSI.i687, align 8
  %1597 = add i64 %1595, -16
  %1598 = add i64 %1594, 8
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i64*
  %1600 = load i64, i64* %1599, align 8
  store i64 %1600, i64* %RDI.i152, align 8
  %1601 = add i64 %1595, -20
  %1602 = add i64 %1594, 11
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RDX.i379, align 8
  %1606 = add i64 %1595, -24
  %1607 = add i64 %1594, 16
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  store i32 %1609, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %1610 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  store i32 %1610, i32* %1371, align 1
  store float 0.000000e+00, float* %1373, align 1
  store float 0.000000e+00, float* %1375, align 1
  store float 0.000000e+00, float* %1377, align 1
  %1611 = add i64 %1595, -32
  %1612 = add i64 %1594, 29
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i64*
  %1614 = load i64, i64* %1613, align 8
  store i64 %1614, i64* %RCX.i875, align 8
  %1615 = add i64 %1594, 351158
  %1616 = add i64 %1594, 34
  %1617 = load i64, i64* %6, align 8
  %1618 = add i64 %1617, -8
  %1619 = inttoptr i64 %1618 to i64*
  store i64 %1616, i64* %1619, align 8
  store i64 %1618, i64* %6, align 8
  store i64 %1615, i64* %3, align 8
  %call2_426af7 = tail call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* nonnull %0, i64 %1615, %struct.Memory* %MEMORY.26)
  %1620 = load i32, i32* %EAX.i102, align 4
  %1621 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1622 = and i32 %1620, 255
  %1623 = tail call i32 @llvm.ctpop.i32(i32 %1622)
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = xor i8 %1625, 1
  store i8 %1626, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1627 = icmp eq i32 %1620, 0
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %15, align 1
  %1629 = lshr i32 %1620, 31
  %1630 = trunc i32 %1629 to i8
  store i8 %1630, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v248 = select i1 %1627, i64 67, i64 9
  %1631 = add i64 %1621, %.v248
  store i64 %1631, i64* %3, align 8
  br i1 %1627, label %block_.L_426b3f, label %block_426b05

block_426b05:                                     ; preds = %block_.L_426ada
  %1632 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1633 = and i32 %1632, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1638 = icmp eq i32 %1632, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %15, align 1
  %1640 = lshr i32 %1632, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v249 = select i1 %1638, i64 14, i64 19
  %1642 = add i64 %1631, %.v249
  store i64 %1642, i64* %3, align 8
  br i1 %1638, label %block_426b13, label %block_.L_426b18

block_426b13:                                     ; preds = %block_426b05
  %1643 = add i64 %1642, 39
  store i64 %1643, i64* %3, align 8
  br label %block_.L_426b3a

block_.L_426b18:                                  ; preds = %block_426b05
  store i64 ptrtoint (%G__0x57c15d_type* @G__0x57c15d to i64), i64* %RDI.i152, align 8
  %1644 = load i64, i64* %RBP.i, align 8
  %1645 = add i64 %1644, -16
  %1646 = add i64 %1642, 14
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i64*
  %1648 = load i64, i64* %1647, align 8
  store i64 %1648, i64* %RAX.i103, align 8
  %1649 = add i64 %1642, 16
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i32*
  %1651 = load i32, i32* %1650, align 4
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RSI.i687, align 8
  %1653 = add i64 %1644, -36
  %1654 = add i64 %1642, 21
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to float*
  %1656 = load float, float* %1655, align 4
  %1657 = fpext float %1656 to double
  store double %1657, double* %306, align 1
  %AL.i1012 = bitcast %union.anon* %18 to i8*
  store i8 1, i8* %AL.i1012, align 1
  %1658 = add i64 %1642, 176792
  %1659 = add i64 %1642, 28
  %1660 = load i64, i64* %6, align 8
  %1661 = add i64 %1660, -8
  %1662 = inttoptr i64 %1661 to i64*
  store i64 %1659, i64* %1662, align 8
  store i64 %1661, i64* %6, align 8
  store i64 %1658, i64* %3, align 8
  %call2_426b2f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1658, %struct.Memory* %call2_426af7)
  %1663 = load i64, i64* %RBP.i, align 8
  %1664 = add i64 %1663, -220
  %1665 = load i32, i32* %EAX.i102, align 4
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, 6
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1664 to i32*
  store i32 %1665, i32* %1668, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_426b3a

block_.L_426b3a:                                  ; preds = %block_.L_426b18, %block_426b13
  %1669 = phi i64 [ %.pre133, %block_.L_426b18 ], [ %1643, %block_426b13 ]
  %MEMORY.27 = phi %struct.Memory* [ %call2_426b2f, %block_.L_426b18 ], [ %call2_426af7, %block_426b13 ]
  %1670 = add i64 %1669, 5
  store i64 %1670, i64* %3, align 8
  br label %block_.L_426b3f

block_.L_426b3f:                                  ; preds = %block_.L_426b3a, %block_.L_426ada
  %1671 = phi i64 [ %1631, %block_.L_426ada ], [ %1670, %block_.L_426b3a ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_426af7, %block_.L_426ada ], [ %MEMORY.27, %block_.L_426b3a ]
  %1672 = add i64 %1671, 5
  store i64 %1672, i64* %3, align 8
  br label %block_.L_426b44

block_.L_426b44:                                  ; preds = %block_.L_426b3f, %block_426aa3
  %1673 = phi i64 [ %1559, %block_426aa3 ], [ %1672, %block_.L_426b3f ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_426aae, %block_426aa3 ], [ %MEMORY.28, %block_.L_426b3f ]
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c19b_type* @G__0x57c19b to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1674 = add i64 %1673, add (i64 ptrtoint (%G_0xbc403__rip__type* @G_0xbc403__rip_ to i64), i64 17)
  %1675 = add i64 %1673, 25
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %1678 = add i64 %1673, 350348
  %1679 = add i64 %1673, 30
  %1680 = load i64, i64* %6, align 8
  %1681 = add i64 %1680, -8
  %1682 = inttoptr i64 %1681 to i64*
  store i64 %1679, i64* %1682, align 8
  store i64 %1681, i64* %6, align 8
  store i64 %1678, i64* %3, align 8
  %call2_426b5d = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %1678, %struct.Memory* %MEMORY.29)
  %1683 = load i64, i64* %RBP.i, align 8
  %1684 = add i64 %1683, -232
  %1685 = load i64, i64* %3, align 8
  %1686 = add i64 %1685, 8
  store i64 %1686, i64* %3, align 8
  %1687 = load i64, i64* %307, align 1
  %1688 = inttoptr i64 %1684 to i64*
  store i64 %1687, i64* %1688, align 8
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_426b6a

block_.L_426b6a:                                  ; preds = %block_426a95, %block_.L_426b44, %routine_ucomisd__xmm2___xmm1.exit
  %1689 = phi i64 [ %1515, %routine_ucomisd__xmm2___xmm1.exit ], [ %1532, %block_426a95 ], [ %.pre134, %block_.L_426b44 ]
  %MEMORY.30 = phi %struct.Memory* [ %1509, %routine_ucomisd__xmm2___xmm1.exit ], [ %1509, %block_426a95 ], [ %call2_426b5d, %block_.L_426b44 ]
  %1690 = add i64 %1689, ptrtoint (%G_0xbc456__rip__type* @G_0xbc456__rip_ to i64)
  %1691 = add i64 %1689, 8
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i64*
  %1693 = load i64, i64* %1692, align 8
  store i64 %1693, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %1694 = load i64, i64* %RBP.i, align 8
  %1695 = add i64 %1694, -36
  %1696 = add i64 %1689, 13
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to float*
  %1698 = load float, float* %1697, align 4
  %1699 = fpext float %1698 to double
  store double %1699, double* %1472, align 1
  %1700 = add i64 %1689, 17
  store i64 %1700, i64* %3, align 8
  %1701 = bitcast i64 %1693 to double
  %1702 = fcmp uno double %1701, %1699
  br i1 %1702, label %1703, label %1713

; <label>:1703:                                   ; preds = %block_.L_426b6a
  %1704 = fadd double %1699, %1701
  %1705 = bitcast double %1704 to i64
  %1706 = and i64 %1705, 9221120237041090560
  %1707 = icmp eq i64 %1706, 9218868437227405312
  %1708 = and i64 %1705, 2251799813685247
  %1709 = icmp ne i64 %1708, 0
  %1710 = and i1 %1707, %1709
  br i1 %1710, label %1711, label %1719

; <label>:1711:                                   ; preds = %1703
  %1712 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1700, %struct.Memory* %MEMORY.30)
  %.pre135 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit983

; <label>:1713:                                   ; preds = %block_.L_426b6a
  %1714 = fcmp ogt double %1701, %1699
  br i1 %1714, label %1719, label %1715

; <label>:1715:                                   ; preds = %1713
  %1716 = fcmp olt double %1701, %1699
  br i1 %1716, label %1719, label %1717

; <label>:1717:                                   ; preds = %1715
  %1718 = fcmp oeq double %1701, %1699
  br i1 %1718, label %1719, label %1723

; <label>:1719:                                   ; preds = %1717, %1715, %1713, %1703
  %1720 = phi i8 [ 0, %1713 ], [ 0, %1715 ], [ 1, %1717 ], [ 1, %1703 ]
  %1721 = phi i8 [ 0, %1713 ], [ 0, %1715 ], [ 0, %1717 ], [ 1, %1703 ]
  %1722 = phi i8 [ 0, %1713 ], [ 1, %1715 ], [ 0, %1717 ], [ 1, %1703 ]
  store i8 %1720, i8* %15, align 1
  store i8 %1721, i8* %13, align 1
  store i8 %1722, i8* %12, align 1
  br label %1723

; <label>:1723:                                   ; preds = %1719, %1717
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit983

routine_ucomisd__xmm1___xmm0.exit983:             ; preds = %1723, %1711
  %1724 = phi i64 [ %.pre135, %1711 ], [ %1700, %1723 ]
  %1725 = phi %struct.Memory* [ %1712, %1711 ], [ %MEMORY.30, %1723 ]
  %1726 = load i8, i8* %12, align 1
  %1727 = icmp ne i8 %1726, 0
  %.v258 = select i1 %1727, i64 285, i64 6
  %1728 = add i64 %1724, %.v258
  store i64 %1728, i64* %3, align 8
  %cmpBr_426b7b = icmp eq i8 %1726, 1
  br i1 %cmpBr_426b7b, label %block_.L_426c98, label %block_426b81

block_426b81:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit983
  %1729 = load i32, i32* bitcast (%G_0xab0fb8_type* @G_0xab0fb8 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1730 = and i32 %1729, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1735 = icmp eq i32 %1729, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %15, align 1
  %1737 = lshr i32 %1729, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v207 = select i1 %1735, i64 14, i64 279
  %1739 = add i64 %1728, %.v207
  store i64 %1739, i64* %3, align 8
  br i1 %1735, label %block_426b8f, label %block_.L_426c98

block_426b8f:                                     ; preds = %block_426b81
  %1740 = load i64, i64* %RBP.i, align 8
  %1741 = add i64 %1740, -20
  %1742 = add i64 %1739, 3
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RDI.i152, align 8
  %1746 = add i64 %1739, 318833
  %1747 = add i64 %1739, 8
  %1748 = load i64, i64* %6, align 8
  %1749 = add i64 %1748, -8
  %1750 = inttoptr i64 %1749 to i64*
  store i64 %1747, i64* %1750, align 8
  store i64 %1749, i64* %6, align 8
  store i64 %1746, i64* %3, align 8
  %call2_426b92 = tail call %struct.Memory* @sub_474900.endgame_shapes(%struct.State* nonnull %0, i64 %1746, %struct.Memory* %1725)
  %1751 = load i64, i64* %3, align 8
  %1752 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1753 = and i32 %1752, 255
  %1754 = tail call i32 @llvm.ctpop.i32(i32 %1753)
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = xor i8 %1756, 1
  store i8 %1757, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1758 = icmp eq i32 %1752, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %15, align 1
  %1760 = lshr i32 %1752, 31
  %1761 = trunc i32 %1760 to i8
  store i8 %1761, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v242 = select i1 %1758, i64 14, i64 19
  %1762 = add i64 %1751, %.v242
  store i64 %1762, i64* %3, align 8
  br i1 %1758, label %block_426ba5, label %block_.L_426baa

block_426ba5:                                     ; preds = %block_426b8f
  %1763 = add i64 %1762, 45
  store i64 %1763, i64* %3, align 8
  br label %block_.L_426bd2

block_.L_426baa:                                  ; preds = %block_426b8f
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 445, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %1764, align 8
  %1765 = add i64 %1762, 177382
  %1766 = add i64 %1762, 40
  %1767 = load i64, i64* %6, align 8
  %1768 = add i64 %1767, -8
  %1769 = inttoptr i64 %1768 to i64*
  store i64 %1766, i64* %1769, align 8
  store i64 %1768, i64* %6, align 8
  store i64 %1765, i64* %3, align 8
  %call2_426bcd = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1765, %struct.Memory* %call2_426b92)
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_426bd2

block_.L_426bd2:                                  ; preds = %block_.L_426baa, %block_426ba5
  %1770 = phi i64 [ %.pre136, %block_.L_426baa ], [ %1763, %block_426ba5 ]
  %MEMORY.31 = phi %struct.Memory* [ %call2_426bcd, %block_.L_426baa ], [ %call2_426b92, %block_426ba5 ]
  %1771 = load i64, i64* %RBP.i, align 8
  %1772 = add i64 %1771, -36
  store i64 %1772, i64* %RSI.i687, align 8
  %1773 = add i64 %1771, -16
  %1774 = add i64 %1770, 8
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i64*
  %1776 = load i64, i64* %1775, align 8
  store i64 %1776, i64* %RDI.i152, align 8
  %1777 = add i64 %1771, -20
  %1778 = add i64 %1770, 11
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RDX.i379, align 8
  %1782 = add i64 %1771, -24
  %1783 = add i64 %1770, 16
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  store i32 %1785, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %1786 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  store i32 %1786, i32* %1371, align 1
  store float 0.000000e+00, float* %1373, align 1
  store float 0.000000e+00, float* %1375, align 1
  store float 0.000000e+00, float* %1377, align 1
  %1787 = add i64 %1771, -32
  %1788 = add i64 %1770, 29
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i64*
  %1790 = load i64, i64* %1789, align 8
  store i64 %1790, i64* %RCX.i875, align 8
  %1791 = add i64 %1770, 350910
  %1792 = add i64 %1770, 34
  %1793 = load i64, i64* %6, align 8
  %1794 = add i64 %1793, -8
  %1795 = inttoptr i64 %1794 to i64*
  store i64 %1792, i64* %1795, align 8
  store i64 %1794, i64* %6, align 8
  store i64 %1791, i64* %3, align 8
  %call2_426bef = tail call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* nonnull %0, i64 %1791, %struct.Memory* %MEMORY.31)
  %1796 = load i32, i32* %EAX.i102, align 4
  %1797 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1798 = and i32 %1796, 255
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1803 = icmp eq i32 %1796, 0
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %15, align 1
  %1805 = lshr i32 %1796, 31
  %1806 = trunc i32 %1805 to i8
  store i8 %1806, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v243 = select i1 %1803, i64 67, i64 9
  %1807 = add i64 %1797, %.v243
  store i64 %1807, i64* %3, align 8
  br i1 %1803, label %block_.L_426c37, label %block_426bfd

block_426bfd:                                     ; preds = %block_.L_426bd2
  %1808 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1809 = and i32 %1808, 255
  %1810 = tail call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  store i8 %1813, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1814 = icmp eq i32 %1808, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %15, align 1
  %1816 = lshr i32 %1808, 31
  %1817 = trunc i32 %1816 to i8
  store i8 %1817, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v244 = select i1 %1814, i64 14, i64 19
  %1818 = add i64 %1807, %.v244
  store i64 %1818, i64* %3, align 8
  br i1 %1814, label %block_426c0b, label %block_.L_426c10

block_426c0b:                                     ; preds = %block_426bfd
  %1819 = add i64 %1818, 39
  store i64 %1819, i64* %3, align 8
  br label %block_.L_426c32

block_.L_426c10:                                  ; preds = %block_426bfd
  store i64 ptrtoint (%G__0x57a10c_type* @G__0x57a10c to i64), i64* %RDI.i152, align 8
  %1820 = load i64, i64* %RBP.i, align 8
  %1821 = add i64 %1820, -16
  %1822 = add i64 %1818, 14
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i64*
  %1824 = load i64, i64* %1823, align 8
  store i64 %1824, i64* %RAX.i103, align 8
  %1825 = add i64 %1818, 16
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  %1828 = zext i32 %1827 to i64
  store i64 %1828, i64* %RSI.i687, align 8
  %1829 = add i64 %1820, -36
  %1830 = add i64 %1818, 21
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to float*
  %1832 = load float, float* %1831, align 4
  %1833 = fpext float %1832 to double
  store double %1833, double* %306, align 1
  %AL.i919 = bitcast %union.anon* %18 to i8*
  store i8 1, i8* %AL.i919, align 1
  %1834 = add i64 %1818, 176544
  %1835 = add i64 %1818, 28
  %1836 = load i64, i64* %6, align 8
  %1837 = add i64 %1836, -8
  %1838 = inttoptr i64 %1837 to i64*
  store i64 %1835, i64* %1838, align 8
  store i64 %1837, i64* %6, align 8
  store i64 %1834, i64* %3, align 8
  %call2_426c27 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1834, %struct.Memory* %call2_426bef)
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -236
  %1841 = load i32, i32* %EAX.i102, align 4
  %1842 = load i64, i64* %3, align 8
  %1843 = add i64 %1842, 6
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1840 to i32*
  store i32 %1841, i32* %1844, align 4
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_426c32

block_.L_426c32:                                  ; preds = %block_.L_426c10, %block_426c0b
  %1845 = phi i64 [ %.pre137, %block_.L_426c10 ], [ %1819, %block_426c0b ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_426c27, %block_.L_426c10 ], [ %call2_426bef, %block_426c0b ]
  %1846 = add i64 %1845, 5
  store i64 %1846, i64* %3, align 8
  br label %block_.L_426c37

block_.L_426c37:                                  ; preds = %block_.L_426c32, %block_.L_426bd2
  %1847 = phi i64 [ %1807, %block_.L_426bd2 ], [ %1846, %block_.L_426c32 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_426bef, %block_.L_426bd2 ], [ %MEMORY.32, %block_.L_426c32 ]
  %1848 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1849 = and i32 %1848, 255
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849)
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1854 = icmp eq i32 %1848, 0
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %15, align 1
  %1856 = lshr i32 %1848, 31
  %1857 = trunc i32 %1856 to i8
  store i8 %1857, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v245 = select i1 %1854, i64 14, i64 19
  %1858 = add i64 %1847, %.v245
  store i64 %1858, i64* %3, align 8
  br i1 %1854, label %block_426c45, label %block_.L_426c4a

block_426c45:                                     ; preds = %block_.L_426c37
  %1859 = add i64 %1858, 45
  store i64 %1859, i64* %3, align 8
  br label %block_.L_426c72

block_.L_426c4a:                                  ; preds = %block_.L_426c37
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 449, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %1860, align 8
  %1861 = add i64 %1858, 177222
  %1862 = add i64 %1858, 40
  %1863 = load i64, i64* %6, align 8
  %1864 = add i64 %1863, -8
  %1865 = inttoptr i64 %1864 to i64*
  store i64 %1862, i64* %1865, align 8
  store i64 %1864, i64* %6, align 8
  store i64 %1861, i64* %3, align 8
  %call2_426c6d = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1861, %struct.Memory* %MEMORY.33)
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_426c72

block_.L_426c72:                                  ; preds = %block_.L_426c4a, %block_426c45
  %1866 = phi i64 [ %.pre138, %block_.L_426c4a ], [ %1859, %block_426c45 ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_426c6d, %block_.L_426c4a ], [ %MEMORY.33, %block_426c45 ]
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c1c3_type* @G__0x57c1c3 to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1867 = add i64 %1866, add (i64 ptrtoint (%G_0xbc2d5__rip__type* @G_0xbc2d5__rip_ to i64), i64 17)
  %1868 = add i64 %1866, 25
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %1871 = add i64 %1866, 350046
  %1872 = add i64 %1866, 30
  %1873 = load i64, i64* %6, align 8
  %1874 = add i64 %1873, -8
  %1875 = inttoptr i64 %1874 to i64*
  store i64 %1872, i64* %1875, align 8
  store i64 %1874, i64* %6, align 8
  store i64 %1871, i64* %3, align 8
  %call2_426c8b = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %1871, %struct.Memory* %MEMORY.34)
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -248
  %1878 = load i64, i64* %3, align 8
  %1879 = add i64 %1878, 8
  store i64 %1879, i64* %3, align 8
  %1880 = load i64, i64* %307, align 1
  %1881 = inttoptr i64 %1877 to i64*
  store i64 %1880, i64* %1881, align 8
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_426c98

block_.L_426c98:                                  ; preds = %block_426b81, %block_.L_426c72, %routine_ucomisd__xmm1___xmm0.exit983
  %1882 = phi i64 [ %1728, %routine_ucomisd__xmm1___xmm0.exit983 ], [ %1739, %block_426b81 ], [ %.pre139, %block_.L_426c72 ]
  %MEMORY.35 = phi %struct.Memory* [ %1725, %routine_ucomisd__xmm1___xmm0.exit983 ], [ %1725, %block_426b81 ], [ %call2_426c8b, %block_.L_426c72 ]
  %1883 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1883, align 1
  %1884 = load i64, i64* %RBP.i, align 8
  %1885 = add i64 %1884, -36
  %1886 = add i64 %1882, 8
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to float*
  %1888 = load float, float* %1887, align 4
  %1889 = fpext float %1888 to double
  store double %1889, double* %1472, align 1
  %1890 = add i64 %1882, 12
  store i64 %1890, i64* %3, align 8
  %1891 = load double, double* %306, align 1
  %1892 = fcmp uno double %1891, %1889
  br i1 %1892, label %1893, label %1903

; <label>:1893:                                   ; preds = %block_.L_426c98
  %1894 = fadd double %1889, %1891
  %1895 = bitcast double %1894 to i64
  %1896 = and i64 %1895, 9221120237041090560
  %1897 = icmp eq i64 %1896, 9218868437227405312
  %1898 = and i64 %1895, 2251799813685247
  %1899 = icmp ne i64 %1898, 0
  %1900 = and i1 %1897, %1899
  br i1 %1900, label %1901, label %1909

; <label>:1901:                                   ; preds = %1893
  %1902 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1890, %struct.Memory* %MEMORY.35)
  %.pre140 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit872

; <label>:1903:                                   ; preds = %block_.L_426c98
  %1904 = fcmp ogt double %1891, %1889
  br i1 %1904, label %1909, label %1905

; <label>:1905:                                   ; preds = %1903
  %1906 = fcmp olt double %1891, %1889
  br i1 %1906, label %1909, label %1907

; <label>:1907:                                   ; preds = %1905
  %1908 = fcmp oeq double %1891, %1889
  br i1 %1908, label %1909, label %1913

; <label>:1909:                                   ; preds = %1907, %1905, %1903, %1893
  %1910 = phi i8 [ 0, %1903 ], [ 0, %1905 ], [ 1, %1907 ], [ 1, %1893 ]
  %1911 = phi i8 [ 0, %1903 ], [ 0, %1905 ], [ 0, %1907 ], [ 1, %1893 ]
  %1912 = phi i8 [ 0, %1903 ], [ 1, %1905 ], [ 0, %1907 ], [ 1, %1893 ]
  store i8 %1910, i8* %15, align 1
  store i8 %1911, i8* %13, align 1
  store i8 %1912, i8* %12, align 1
  br label %1913

; <label>:1913:                                   ; preds = %1909, %1907
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit872

routine_ucomisd__xmm1___xmm0.exit872:             ; preds = %1913, %1901
  %1914 = phi i64 [ %.pre140, %1901 ], [ %1890, %1913 ]
  %1915 = phi %struct.Memory* [ %1902, %1901 ], [ %MEMORY.35, %1913 ]
  %1916 = add i64 %1914, 203
  %1917 = add i64 %1914, 6
  %1918 = load i8, i8* %12, align 1
  %1919 = load i8, i8* %15, align 1
  %1920 = or i8 %1919, %1918
  %1921 = icmp ne i8 %1920, 0
  %1922 = select i1 %1921, i64 %1916, i64 %1917
  store i64 %1922, i64* %3, align 8
  br i1 %1921, label %block_.L_426d6f, label %block_426caa

block_426caa:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit872
  %1923 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1923, align 1
  %1924 = load i64, i64* %RBP.i, align 8
  %1925 = add i64 %1924, -20
  %1926 = add i64 %1922, 6
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i32*
  %1928 = load i32, i32* %1927, align 4
  %1929 = zext i32 %1928 to i64
  store i64 %1929, i64* %RDI.i152, align 8
  %1930 = add i64 %1922, 2598
  %1931 = add i64 %1922, 11
  %1932 = load i64, i64* %6, align 8
  %1933 = add i64 %1932, -8
  %1934 = inttoptr i64 %1933 to i64*
  store i64 %1931, i64* %1934, align 8
  store i64 %1933, i64* %6, align 8
  store i64 %1930, i64* %3, align 8
  %call2_426cb0 = tail call %struct.Memory* @sub_4276d0.revise_thrashing_dragon(%struct.State* nonnull %0, i64 %1930, %struct.Memory* %1915)
  %1935 = load i32, i32* %EAX.i102, align 4
  %1936 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1937 = and i32 %1935, 255
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1942 = icmp eq i32 %1935, 0
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %15, align 1
  %1944 = lshr i32 %1935, 31
  %1945 = trunc i32 %1944 to i8
  store i8 %1945, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v208 = select i1 %1942, i64 9, i64 26
  %1946 = add i64 %1936, %.v208
  store i64 %1946, i64* %3, align 8
  br i1 %1942, label %block_426cbe, label %block_.L_426ccf

block_426cbe:                                     ; preds = %block_426caa
  %1947 = load i64, i64* %RBP.i, align 8
  %1948 = add i64 %1947, -20
  %1949 = add i64 %1946, 3
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = zext i32 %1951 to i64
  store i64 %1952, i64* %RDI.i152, align 8
  %1953 = add i64 %1946, 3122
  %1954 = add i64 %1946, 8
  %1955 = load i64, i64* %6, align 8
  %1956 = add i64 %1955, -8
  %1957 = inttoptr i64 %1956 to i64*
  store i64 %1954, i64* %1957, align 8
  store i64 %1956, i64* %6, align 8
  store i64 %1953, i64* %3, align 8
  %call2_426cc1 = tail call %struct.Memory* @sub_4278f0.revise_semeai(%struct.State* nonnull %0, i64 %1953, %struct.Memory* %call2_426cb0)
  %1958 = load i32, i32* %EAX.i102, align 4
  %1959 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1960 = and i32 %1958, 255
  %1961 = tail call i32 @llvm.ctpop.i32(i32 %1960)
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  %1964 = xor i8 %1963, 1
  store i8 %1964, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1965 = icmp eq i32 %1958, 0
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %15, align 1
  %1967 = lshr i32 %1958, 31
  %1968 = trunc i32 %1967 to i8
  store i8 %1968, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v241 = select i1 %1965, i64 131, i64 9
  %1969 = add i64 %1959, %.v241
  store i64 %1969, i64* %3, align 8
  br i1 %1965, label %block_.L_426d49, label %block_.L_426ccf

block_.L_426ccf:                                  ; preds = %block_426caa, %block_426cbe
  %1970 = phi i64 [ %1946, %block_426caa ], [ %1969, %block_426cbe ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_426cb0, %block_426caa ], [ %call2_426cc1, %block_426cbe ]
  %1971 = load i64, i64* %RBP.i, align 8
  %1972 = add i64 %1971, -20
  %1973 = add i64 %1970, 3
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = zext i32 %1975 to i64
  store i64 %1976, i64* %RDI.i152, align 8
  %1977 = add i64 %1970, 312017
  %1978 = add i64 %1970, 8
  %1979 = load i64, i64* %6, align 8
  %1980 = add i64 %1979, -8
  %1981 = inttoptr i64 %1980 to i64*
  store i64 %1978, i64* %1981, align 8
  store i64 %1980, i64* %6, align 8
  store i64 %1977, i64* %3, align 8
  %call2_426cd2 = tail call %struct.Memory* @sub_472fa0.shapes(%struct.State* nonnull %0, i64 %1977, %struct.Memory* %MEMORY.36)
  %1982 = load i64, i64* %RBP.i, align 8
  %1983 = add i64 %1982, -20
  %1984 = load i64, i64* %3, align 8
  %1985 = add i64 %1984, 3
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1983 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = zext i32 %1987 to i64
  store i64 %1988, i64* %RDI.i152, align 8
  %1989 = add i64 %1984, 318505
  %1990 = add i64 %1984, 8
  %1991 = load i64, i64* %6, align 8
  %1992 = add i64 %1991, -8
  %1993 = inttoptr i64 %1992 to i64*
  store i64 %1990, i64* %1993, align 8
  store i64 %1992, i64* %6, align 8
  store i64 %1989, i64* %3, align 8
  %call2_426cda = tail call %struct.Memory* @sub_474900.endgame_shapes(%struct.State* nonnull %0, i64 %1989, %struct.Memory* %call2_426cd2)
  %1994 = load i64, i64* %RBP.i, align 8
  %1995 = add i64 %1994, -36
  %1996 = load i64, i64* %3, align 8
  store i64 %1995, i64* %RSI.i687, align 8
  %1997 = add i64 %1994, -16
  %1998 = add i64 %1996, 8
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i64*
  %2000 = load i64, i64* %1999, align 8
  store i64 %2000, i64* %RDI.i152, align 8
  %2001 = add i64 %1994, -20
  %2002 = add i64 %1996, 11
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  %2004 = load i32, i32* %2003, align 4
  %2005 = zext i32 %2004 to i64
  store i64 %2005, i64* %RDX.i379, align 8
  %2006 = add i64 %1994, -24
  %2007 = add i64 %1996, 16
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i32*
  %2009 = load i32, i32* %2008, align 4
  store i32 %2009, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %2010 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  store i32 %2010, i32* %1371, align 1
  store float 0.000000e+00, float* %1373, align 1
  store float 0.000000e+00, float* %1375, align 1
  store float 0.000000e+00, float* %1377, align 1
  %2011 = add i64 %1994, -32
  %2012 = add i64 %1996, 29
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i64*
  %2014 = load i64, i64* %2013, align 8
  store i64 %2014, i64* %RCX.i875, align 8
  %2015 = add i64 %1996, 350641
  %2016 = add i64 %1996, 34
  %2017 = load i64, i64* %6, align 8
  %2018 = add i64 %2017, -8
  %2019 = inttoptr i64 %2018 to i64*
  store i64 %2016, i64* %2019, align 8
  store i64 %2018, i64* %6, align 8
  store i64 %2015, i64* %3, align 8
  %call2_426cfc = tail call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* nonnull %0, i64 %2015, %struct.Memory* %call2_426cda)
  %2020 = load i32, i32* %EAX.i102, align 4
  %2021 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2022 = and i32 %2020, 255
  %2023 = tail call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  store i8 %2026, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2027 = icmp eq i32 %2020, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %15, align 1
  %2029 = lshr i32 %2020, 31
  %2030 = trunc i32 %2029 to i8
  store i8 %2030, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v209 = select i1 %2027, i64 67, i64 9
  %2031 = add i64 %2021, %.v209
  store i64 %2031, i64* %3, align 8
  br i1 %2027, label %block_.L_426d44, label %block_426d0a

block_426d0a:                                     ; preds = %block_.L_426ccf
  %2032 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2033 = and i32 %2032, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033)
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2038 = icmp eq i32 %2032, 0
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %15, align 1
  %2040 = lshr i32 %2032, 31
  %2041 = trunc i32 %2040 to i8
  store i8 %2041, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v210 = select i1 %2038, i64 14, i64 19
  %2042 = add i64 %2031, %.v210
  store i64 %2042, i64* %3, align 8
  br i1 %2038, label %block_426d18, label %block_.L_426d1d

block_426d18:                                     ; preds = %block_426d0a
  %2043 = add i64 %2042, 39
  store i64 %2043, i64* %3, align 8
  br label %block_.L_426d3f

block_.L_426d1d:                                  ; preds = %block_426d0a
  store i64 ptrtoint (%G__0x57c15d_type* @G__0x57c15d to i64), i64* %RDI.i152, align 8
  %2044 = load i64, i64* %RBP.i, align 8
  %2045 = add i64 %2044, -16
  %2046 = add i64 %2042, 14
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i64*
  %2048 = load i64, i64* %2047, align 8
  store i64 %2048, i64* %RAX.i103, align 8
  %2049 = add i64 %2042, 16
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RSI.i687, align 8
  %2053 = add i64 %2044, -36
  %2054 = add i64 %2042, 21
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to float*
  %2056 = load float, float* %2055, align 4
  %2057 = fpext float %2056 to double
  store double %2057, double* %306, align 1
  %AL.i807 = bitcast %union.anon* %18 to i8*
  store i8 1, i8* %AL.i807, align 1
  %2058 = add i64 %2042, 176275
  %2059 = add i64 %2042, 28
  %2060 = load i64, i64* %6, align 8
  %2061 = add i64 %2060, -8
  %2062 = inttoptr i64 %2061 to i64*
  store i64 %2059, i64* %2062, align 8
  store i64 %2061, i64* %6, align 8
  store i64 %2058, i64* %3, align 8
  %call2_426d34 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2058, %struct.Memory* %call2_426cfc)
  %2063 = load i64, i64* %RBP.i, align 8
  %2064 = add i64 %2063, -252
  %2065 = load i32, i32* %EAX.i102, align 4
  %2066 = load i64, i64* %3, align 8
  %2067 = add i64 %2066, 6
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2064 to i32*
  store i32 %2065, i32* %2068, align 4
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_426d3f

block_.L_426d3f:                                  ; preds = %block_.L_426d1d, %block_426d18
  %2069 = phi i64 [ %.pre141, %block_.L_426d1d ], [ %2043, %block_426d18 ]
  %MEMORY.37 = phi %struct.Memory* [ %call2_426d34, %block_.L_426d1d ], [ %call2_426cfc, %block_426d18 ]
  %2070 = add i64 %2069, 5
  store i64 %2070, i64* %3, align 8
  br label %block_.L_426d44

block_.L_426d44:                                  ; preds = %block_.L_426d3f, %block_.L_426ccf
  %2071 = phi i64 [ %2031, %block_.L_426ccf ], [ %2070, %block_.L_426d3f ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_426cfc, %block_.L_426ccf ], [ %MEMORY.37, %block_.L_426d3f ]
  %2072 = add i64 %2071, 5
  store i64 %2072, i64* %3, align 8
  br label %block_.L_426d49

block_.L_426d49:                                  ; preds = %block_.L_426d44, %block_426cbe
  %2073 = phi i64 [ %2072, %block_.L_426d44 ], [ %1969, %block_426cbe ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.38, %block_.L_426d44 ], [ %call2_426cc1, %block_426cbe ]
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c19b_type* @G__0x57c19b to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2074 = add i64 %2073, add (i64 ptrtoint (%G_0xbc1fe__rip__type* @G_0xbc1fe__rip_ to i64), i64 17)
  %2075 = add i64 %2073, 25
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2074 to i64*
  %2077 = load i64, i64* %2076, align 8
  store i64 %2077, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %2078 = add i64 %2073, 349831
  %2079 = add i64 %2073, 30
  %2080 = load i64, i64* %6, align 8
  %2081 = add i64 %2080, -8
  %2082 = inttoptr i64 %2081 to i64*
  store i64 %2079, i64* %2082, align 8
  store i64 %2081, i64* %6, align 8
  store i64 %2078, i64* %3, align 8
  %call2_426d62 = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %2078, %struct.Memory* %MEMORY.39)
  %2083 = load i64, i64* %RBP.i, align 8
  %2084 = add i64 %2083, -264
  %2085 = load i64, i64* %3, align 8
  %2086 = add i64 %2085, 8
  store i64 %2086, i64* %3, align 8
  %2087 = load i64, i64* %307, align 1
  %2088 = inttoptr i64 %2084 to i64*
  store i64 %2087, i64* %2088, align 8
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_426d6f

block_.L_426d6f:                                  ; preds = %block_.L_426d49, %routine_ucomisd__xmm1___xmm0.exit872
  %2089 = phi i64 [ %1916, %routine_ucomisd__xmm1___xmm0.exit872 ], [ %.pre142, %block_.L_426d49 ]
  %MEMORY.40 = phi %struct.Memory* [ %1915, %routine_ucomisd__xmm1___xmm0.exit872 ], [ %call2_426d62, %block_.L_426d49 ]
  %2090 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2090, align 1
  %2091 = load i64, i64* %RBP.i, align 8
  %2092 = add i64 %2091, -36
  %2093 = add i64 %2089, 8
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to float*
  %2095 = load float, float* %2094, align 4
  %2096 = fpext float %2095 to double
  store double %2096, double* %1472, align 1
  %2097 = add i64 %2089, 12
  store i64 %2097, i64* %3, align 8
  %2098 = load double, double* %306, align 1
  %2099 = fcmp uno double %2098, %2096
  br i1 %2099, label %2100, label %2110

; <label>:2100:                                   ; preds = %block_.L_426d6f
  %2101 = fadd double %2096, %2098
  %2102 = bitcast double %2101 to i64
  %2103 = and i64 %2102, 9221120237041090560
  %2104 = icmp eq i64 %2103, 9218868437227405312
  %2105 = and i64 %2102, 2251799813685247
  %2106 = icmp ne i64 %2105, 0
  %2107 = and i1 %2104, %2106
  br i1 %2107, label %2108, label %2116

; <label>:2108:                                   ; preds = %2100
  %2109 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2097, %struct.Memory* %MEMORY.40)
  %.pre143 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit778

; <label>:2110:                                   ; preds = %block_.L_426d6f
  %2111 = fcmp ogt double %2098, %2096
  br i1 %2111, label %2116, label %2112

; <label>:2112:                                   ; preds = %2110
  %2113 = fcmp olt double %2098, %2096
  br i1 %2113, label %2116, label %2114

; <label>:2114:                                   ; preds = %2112
  %2115 = fcmp oeq double %2098, %2096
  br i1 %2115, label %2116, label %2120

; <label>:2116:                                   ; preds = %2114, %2112, %2110, %2100
  %2117 = phi i8 [ 0, %2110 ], [ 0, %2112 ], [ 1, %2114 ], [ 1, %2100 ]
  %2118 = phi i8 [ 0, %2110 ], [ 0, %2112 ], [ 0, %2114 ], [ 1, %2100 ]
  %2119 = phi i8 [ 0, %2110 ], [ 1, %2112 ], [ 0, %2114 ], [ 1, %2100 ]
  store i8 %2117, i8* %15, align 1
  store i8 %2118, i8* %13, align 1
  store i8 %2119, i8* %12, align 1
  br label %2120

; <label>:2120:                                   ; preds = %2116, %2114
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit778

routine_ucomisd__xmm1___xmm0.exit778:             ; preds = %2120, %2108
  %2121 = phi i64 [ %.pre143, %2108 ], [ %2097, %2120 ]
  %2122 = phi %struct.Memory* [ %2109, %2108 ], [ %MEMORY.40, %2120 ]
  %2123 = add i64 %2121, 190
  %2124 = add i64 %2121, 6
  %2125 = load i8, i8* %12, align 1
  %2126 = load i8, i8* %15, align 1
  %2127 = or i8 %2126, %2125
  %2128 = icmp ne i8 %2127, 0
  %2129 = select i1 %2128, i64 %2123, i64 %2124
  store i64 %2129, i64* %3, align 8
  br i1 %2128, label %block_.L_426e39, label %block_426d81

block_426d81:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit778
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -16
  %2132 = add i64 %2129, 4
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i64*
  %2134 = load i64, i64* %2133, align 8
  store i64 %2134, i64* %RDI.i152, align 8
  %2135 = add i64 %2130, -20
  %2136 = add i64 %2129, 7
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i32*
  %2138 = load i32, i32* %2137, align 4
  %2139 = zext i32 %2138 to i64
  store i64 %2139, i64* %RSI.i687, align 8
  %2140 = add i64 %2129, -13393
  %2141 = add i64 %2129, 12
  %2142 = load i64, i64* %6, align 8
  %2143 = add i64 %2142, -8
  %2144 = inttoptr i64 %2143 to i64*
  store i64 %2141, i64* %2144, align 8
  store i64 %2143, i64* %6, align 8
  store i64 %2140, i64* %3, align 8
  %call2_426d88 = tail call %struct.Memory* @sub_423930.fill_liberty(%struct.State* nonnull %0, i64 %2140, %struct.Memory* %2122)
  %2145 = load i32, i32* %EAX.i102, align 4
  %2146 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2147 = and i32 %2145, 255
  %2148 = tail call i32 @llvm.ctpop.i32(i32 %2147)
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2152 = icmp eq i32 %2145, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %15, align 1
  %2154 = lshr i32 %2145, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v211 = select i1 %2152, i64 172, i64 9
  %2156 = add i64 %2146, %.v211
  store i64 %2156, i64* %3, align 8
  br i1 %2152, label %block_.L_426e39, label %block_426d96

block_426d96:                                     ; preds = %block_426d81
  %2157 = load i64, i64* %RBP.i, align 8
  %2158 = add i64 %2157, -32
  %2159 = add i64 %2156, 5
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i64*
  %2161 = load i64, i64* %2160, align 8
  store i8 0, i8* %12, align 1
  %2162 = trunc i64 %2161 to i32
  %2163 = and i32 %2162, 255
  %2164 = tail call i32 @llvm.ctpop.i32(i32 %2163)
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = xor i8 %2166, 1
  store i8 %2167, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2168 = icmp eq i64 %2161, 0
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %15, align 1
  %2170 = lshr i64 %2161, 63
  %2171 = trunc i64 %2170 to i8
  store i8 %2171, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v212 = select i1 %2168, i64 32, i64 11
  %2172 = add i64 %2156, %.v212
  store i64 %2172, i64* %3, align 8
  br i1 %2168, label %block_.L_426db6, label %block_426da1

block_426da1:                                     ; preds = %block_426d96
  %2173 = add i64 %2172, 4
  store i64 %2173, i64* %3, align 8
  %2174 = load i64, i64* %2160, align 8
  store i64 %2174, i64* %RAX.i103, align 8
  %2175 = add i64 %2157, -16
  %2176 = add i64 %2172, 8
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i64*
  %2178 = load i64, i64* %2177, align 8
  store i64 %2178, i64* %RCX.i875, align 8
  %2179 = add i64 %2172, 11
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = sext i32 %2181 to i64
  store i64 %2182, i64* %RCX.i875, align 8
  %2183 = shl nsw i64 %2182, 2
  %2184 = add i64 %2183, %2174
  %2185 = add i64 %2172, 15
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  %2187 = load i32, i32* %2186, align 4
  store i8 0, i8* %12, align 1
  %2188 = and i32 %2187, 255
  %2189 = tail call i32 @llvm.ctpop.i32(i32 %2188)
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  store i8 %2192, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2193 = icmp eq i32 %2187, 0
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %15, align 1
  %2195 = lshr i32 %2187, 31
  %2196 = trunc i32 %2195 to i8
  store i8 %2196, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v213 = select i1 %2193, i64 152, i64 21
  %2197 = add i64 %2172, %.v213
  store i64 %2197, i64* %3, align 8
  br i1 %2193, label %block_.L_426e39, label %block_.L_426db6

block_.L_426db6:                                  ; preds = %block_426da1, %block_426d96
  %2198 = phi i64 [ %2197, %block_426da1 ], [ %2172, %block_426d96 ]
  %2199 = add i64 %2198, ptrtoint (%G_0xbc34e__rip__type* @G_0xbc34e__rip_ to i64)
  %2200 = add i64 %2198, 8
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i32*
  %2202 = load i32, i32* %2201, align 4
  store i32 %2202, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %2203 = add i64 %2157, -36
  %2204 = add i64 %2198, 13
  store i64 %2204, i64* %3, align 8
  %2205 = load <2 x float>, <2 x float>* %35, align 1
  %2206 = extractelement <2 x float> %2205, i32 0
  %2207 = inttoptr i64 %2203 to float*
  store float %2206, float* %2207, align 4
  %2208 = load i64, i64* %3, align 8
  %2209 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2210 = and i32 %2209, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2215 = icmp eq i32 %2209, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %15, align 1
  %2217 = lshr i32 %2209, 31
  %2218 = trunc i32 %2217 to i8
  store i8 %2218, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v214 = select i1 %2215, i64 14, i64 19
  %2219 = add i64 %2208, %.v214
  store i64 %2219, i64* %3, align 8
  br i1 %2215, label %block_426dd1, label %block_.L_426dd6

block_426dd1:                                     ; preds = %block_.L_426db6
  %2220 = add i64 %2219, 34
  store i64 %2220, i64* %3, align 8
  br label %block_.L_426df3

block_.L_426dd6:                                  ; preds = %block_.L_426db6
  store i64 ptrtoint (%G__0x57c1cb_type* @G__0x57c1cb to i64), i64* %RDI.i152, align 8
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -16
  %2223 = add i64 %2219, 14
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i64*
  %2225 = load i64, i64* %2224, align 8
  store i64 %2225, i64* %RAX.i103, align 8
  %2226 = add i64 %2219, 16
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = zext i32 %2228 to i64
  store i64 %2229, i64* %RSI.i687, align 8
  %AL.i732 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i732, align 1
  %2230 = add i64 %2219, 176090
  %2231 = add i64 %2219, 23
  %2232 = load i64, i64* %6, align 8
  %2233 = add i64 %2232, -8
  %2234 = inttoptr i64 %2233 to i64*
  store i64 %2231, i64* %2234, align 8
  store i64 %2233, i64* %6, align 8
  store i64 %2230, i64* %3, align 8
  %call2_426de8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2230, %struct.Memory* %call2_426d88)
  %2235 = load i64, i64* %RBP.i, align 8
  %2236 = add i64 %2235, -268
  %2237 = load i32, i32* %EAX.i102, align 4
  %2238 = load i64, i64* %3, align 8
  %2239 = add i64 %2238, 6
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2236 to i32*
  store i32 %2237, i32* %2240, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_426df3

block_.L_426df3:                                  ; preds = %block_.L_426dd6, %block_426dd1
  %2241 = phi i64 [ %.pre144, %block_.L_426dd6 ], [ %2220, %block_426dd1 ]
  %MEMORY.42 = phi %struct.Memory* [ %call2_426de8, %block_.L_426dd6 ], [ %call2_426d88, %block_426dd1 ]
  %2242 = load i64, i64* %RBP.i, align 8
  %2243 = add i64 %2242, -16
  %2244 = add i64 %2241, 4
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i64*
  %2246 = load i64, i64* %2245, align 8
  store i64 %2246, i64* %RAX.i103, align 8
  %2247 = add i64 %2241, 6
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = zext i32 %2249 to i64
  store i64 %2250, i64* %RDI.i152, align 8
  %2251 = add i64 %2242, -36
  %2252 = add i64 %2241, 11
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  store i32 %2254, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %2255 = add i64 %2241, 350013
  %2256 = add i64 %2241, 16
  %2257 = load i64, i64* %6, align 8
  %2258 = add i64 %2257, -8
  %2259 = inttoptr i64 %2258 to i64*
  store i64 %2256, i64* %2259, align 8
  store i64 %2258, i64* %6, align 8
  store i64 %2255, i64* %3, align 8
  %call2_426dfe = tail call %struct.Memory* @sub_47c530.record_top_move(%struct.State* nonnull %0, i64 %2255, %struct.Memory* %MEMORY.42)
  %2260 = load i64, i64* %RBP.i, align 8
  %2261 = add i64 %2260, -16
  %2262 = load i64, i64* %3, align 8
  %2263 = add i64 %2262, 4
  store i64 %2263, i64* %3, align 8
  %2264 = inttoptr i64 %2261 to i64*
  %2265 = load i64, i64* %2264, align 8
  store i64 %2265, i64* %RAX.i103, align 8
  %2266 = add i64 %2262, 6
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RDI.i152, align 8
  %2270 = add i64 %2260, -36
  %2271 = add i64 %2262, 11
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i32*
  %2273 = load i32, i32* %2272, align 4
  store i32 %2273, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %2274 = add i64 %2262, 3181
  %2275 = add i64 %2262, 16
  %2276 = load i64, i64* %6, align 8
  %2277 = add i64 %2276, -8
  %2278 = inttoptr i64 %2277 to i64*
  store i64 %2275, i64* %2278, align 8
  store i64 %2277, i64* %6, align 8
  store i64 %2274, i64* %3, align 8
  %call2_426e0e = tail call %struct.Memory* @sub_427a70.move_considered(%struct.State* nonnull %0, i64 %2274, %struct.Memory* %call2_426dfe)
  %2279 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c1e5_type* @G__0x57c1e5 to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2280 = add i64 %2279, add (i64 ptrtoint (%G_0xbc134__rip__type* @G_0xbc134__rip_ to i64), i64 17)
  %2281 = add i64 %2279, 25
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i64*
  %2283 = load i64, i64* %2282, align 8
  store i64 %2283, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %2284 = add i64 %2279, 349629
  %2285 = add i64 %2279, 30
  %2286 = load i64, i64* %6, align 8
  %2287 = add i64 %2286, -8
  %2288 = inttoptr i64 %2287 to i64*
  store i64 %2285, i64* %2288, align 8
  store i64 %2287, i64* %6, align 8
  store i64 %2284, i64* %3, align 8
  %call2_426e2c = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %2284, %struct.Memory* %call2_426e0e)
  %2289 = load i64, i64* %RBP.i, align 8
  %2290 = add i64 %2289, -280
  %2291 = load i64, i64* %3, align 8
  %2292 = add i64 %2291, 8
  store i64 %2292, i64* %3, align 8
  %2293 = load i64, i64* %307, align 1
  %2294 = inttoptr i64 %2290 to i64*
  store i64 %2293, i64* %2294, align 8
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_426e39

block_.L_426e39:                                  ; preds = %block_.L_426df3, %block_426da1, %block_426d81, %routine_ucomisd__xmm1___xmm0.exit778
  %2295 = phi i64 [ %2123, %routine_ucomisd__xmm1___xmm0.exit778 ], [ %2156, %block_426d81 ], [ %.pre145, %block_.L_426df3 ], [ %2197, %block_426da1 ]
  %MEMORY.43 = phi %struct.Memory* [ %2122, %routine_ucomisd__xmm1___xmm0.exit778 ], [ %call2_426d88, %block_426d81 ], [ %call2_426e2c, %block_.L_426df3 ], [ %call2_426d88, %block_426da1 ]
  %2296 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2296, align 1
  %2297 = load i64, i64* %RBP.i, align 8
  %2298 = add i64 %2297, -36
  %2299 = add i64 %2295, 8
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to float*
  %2301 = load float, float* %2300, align 4
  %2302 = fpext float %2301 to double
  store double %2302, double* %1472, align 1
  %2303 = add i64 %2295, 12
  store i64 %2303, i64* %3, align 8
  %2304 = load double, double* %306, align 1
  %2305 = fcmp uno double %2304, %2302
  br i1 %2305, label %2306, label %2316

; <label>:2306:                                   ; preds = %block_.L_426e39
  %2307 = fadd double %2302, %2304
  %2308 = bitcast double %2307 to i64
  %2309 = and i64 %2308, 9221120237041090560
  %2310 = icmp eq i64 %2309, 9218868437227405312
  %2311 = and i64 %2308, 2251799813685247
  %2312 = icmp ne i64 %2311, 0
  %2313 = and i1 %2310, %2312
  br i1 %2313, label %2314, label %2322

; <label>:2314:                                   ; preds = %2306
  %2315 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2303, %struct.Memory* %MEMORY.43)
  %.pre146 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit684

; <label>:2316:                                   ; preds = %block_.L_426e39
  %2317 = fcmp ogt double %2304, %2302
  br i1 %2317, label %2322, label %2318

; <label>:2318:                                   ; preds = %2316
  %2319 = fcmp olt double %2304, %2302
  br i1 %2319, label %2322, label %2320

; <label>:2320:                                   ; preds = %2318
  %2321 = fcmp oeq double %2304, %2302
  br i1 %2321, label %2322, label %2326

; <label>:2322:                                   ; preds = %2320, %2318, %2316, %2306
  %2323 = phi i8 [ 0, %2316 ], [ 0, %2318 ], [ 1, %2320 ], [ 1, %2306 ]
  %2324 = phi i8 [ 0, %2316 ], [ 0, %2318 ], [ 0, %2320 ], [ 1, %2306 ]
  %2325 = phi i8 [ 0, %2316 ], [ 1, %2318 ], [ 0, %2320 ], [ 1, %2306 ]
  store i8 %2323, i8* %15, align 1
  store i8 %2324, i8* %13, align 1
  store i8 %2325, i8* %12, align 1
  br label %2326

; <label>:2326:                                   ; preds = %2322, %2320
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit684

routine_ucomisd__xmm1___xmm0.exit684:             ; preds = %2326, %2314
  %2327 = phi i64 [ %.pre146, %2314 ], [ %2303, %2326 ]
  %2328 = phi %struct.Memory* [ %2315, %2314 ], [ %MEMORY.43, %2326 ]
  %2329 = add i64 %2327, 478
  %2330 = add i64 %2327, 6
  %2331 = load i8, i8* %12, align 1
  %2332 = load i8, i8* %15, align 1
  %2333 = or i8 %2332, %2331
  %2334 = icmp ne i8 %2333, 0
  %2335 = select i1 %2334, i64 %2329, i64 %2330
  store i64 %2335, i64* %3, align 8
  br i1 %2334, label %block_.L_427023, label %block_426e4b

block_426e4b:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit684
  %2336 = load i32, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  store i8 0, i8* %12, align 1
  %2337 = and i32 %2336, 255
  %2338 = tail call i32 @llvm.ctpop.i32(i32 %2337)
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  store i8 %2341, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2342 = icmp eq i32 %2336, 0
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %15, align 1
  %2344 = lshr i32 %2336, 31
  %2345 = trunc i32 %2344 to i8
  store i8 %2345, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v215 = select i1 %2342, i64 14, i64 472
  %2346 = add i64 %2335, %.v215
  store i64 %2346, i64* %3, align 8
  br i1 %2342, label %block_426e59, label %block_.L_427023

block_426e59:                                     ; preds = %block_426e4b
  %2347 = load i32, i32* bitcast (%G_0xab0fd4_type* @G_0xab0fd4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2348 = and i32 %2347, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2353 = icmp eq i32 %2347, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %15, align 1
  %2355 = lshr i32 %2347, 31
  %2356 = trunc i32 %2355 to i8
  store i8 %2356, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v229 = select i1 %2353, i64 14, i64 116
  %2357 = add i64 %2346, %.v229
  store i64 %2357, i64* %3, align 8
  br i1 %2353, label %block_426e67, label %block_.L_426ecd

block_426e67:                                     ; preds = %block_426e59
  %2358 = load i32, i32* bitcast (%G_0xab0fd0_type* @G_0xab0fd0 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2359 = and i32 %2358, 255
  %2360 = tail call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  store i8 %2363, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2364 = icmp eq i32 %2358, 0
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %15, align 1
  %2366 = lshr i32 %2358, 31
  %2367 = trunc i32 %2366 to i8
  store i8 %2367, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v235 = select i1 %2364, i64 14, i64 102
  %2368 = add i64 %2357, %.v235
  store i64 %2368, i64* %3, align 8
  br i1 %2364, label %block_426e75, label %block_.L_426ecd

block_426e75:                                     ; preds = %block_426e67
  %2369 = load i32, i32* bitcast (%G_0xab0ed0_type* @G_0xab0ed0 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2370 = and i32 %2369, 255
  %2371 = tail call i32 @llvm.ctpop.i32(i32 %2370)
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  %2374 = xor i8 %2373, 1
  store i8 %2374, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2375 = icmp eq i32 %2369, 0
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %15, align 1
  %2377 = lshr i32 %2369, 31
  %2378 = trunc i32 %2377 to i8
  store i8 %2378, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v236 = select i1 %2375, i64 430, i64 14
  %2379 = add i64 %2368, %.v236
  store i64 %2379, i64* %3, align 8
  br i1 %2375, label %block_.L_427023, label %block_426e83

block_426e83:                                     ; preds = %block_426e75
  %2380 = load i64, i64* %RBP.i, align 8
  %2381 = add i64 %2380, -20
  %2382 = add i64 %2379, 4
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i32*
  %2384 = load i32, i32* %2383, align 4
  %2385 = add i32 %2384, -2
  %2386 = icmp ult i32 %2384, 2
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %12, align 1
  %2388 = and i32 %2385, 255
  %2389 = tail call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  store i8 %2392, i8* %13, align 1
  %2393 = xor i32 %2385, %2384
  %2394 = lshr i32 %2393, 4
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  store i8 %2396, i8* %14, align 1
  %2397 = icmp eq i32 %2385, 0
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %15, align 1
  %2399 = lshr i32 %2385, 31
  %2400 = trunc i32 %2399 to i8
  store i8 %2400, i8* %16, align 1
  %2401 = lshr i32 %2384, 31
  %2402 = xor i32 %2399, %2401
  %2403 = add nuw nsw i32 %2402, %2401
  %2404 = icmp eq i32 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %17, align 1
  %.v237 = select i1 %2397, i64 10, i64 37
  %2406 = add i64 %2379, %.v237
  store i64 %2406, i64* %3, align 8
  br i1 %2397, label %block_426e8d, label %block_.L_426ea8

block_426e8d:                                     ; preds = %block_426e83
  %2407 = add i64 %2406, ptrtoint (%G_0xbc13b__rip__type* @G_0xbc13b__rip_ to i64)
  %2408 = add i64 %2406, 8
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i64*
  %2410 = load i64, i64* %2409, align 8
  store i64 %2410, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %2411 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %2412 = fpext float %2411 to double
  store double %2412, double* %1472, align 1
  %2413 = add i64 %2406, 21
  store i64 %2413, i64* %3, align 8
  %2414 = bitcast i64 %2410 to double
  %2415 = fcmp uno double %2414, %2412
  br i1 %2415, label %2416, label %2426

; <label>:2416:                                   ; preds = %block_426e8d
  %2417 = fadd double %2412, %2414
  %2418 = bitcast double %2417 to i64
  %2419 = and i64 %2418, 9221120237041090560
  %2420 = icmp eq i64 %2419, 9218868437227405312
  %2421 = and i64 %2418, 2251799813685247
  %2422 = icmp ne i64 %2421, 0
  %2423 = and i1 %2420, %2422
  br i1 %2423, label %2424, label %2432

; <label>:2424:                                   ; preds = %2416
  %2425 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2413, %struct.Memory* %2328)
  %.pre147 = load i64, i64* %3, align 8
  %.pre148 = load i8, i8* %12, align 1
  %.pre149 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit662

; <label>:2426:                                   ; preds = %block_426e8d
  %2427 = fcmp ogt double %2414, %2412
  br i1 %2427, label %2432, label %2428

; <label>:2428:                                   ; preds = %2426
  %2429 = fcmp olt double %2414, %2412
  br i1 %2429, label %2432, label %2430

; <label>:2430:                                   ; preds = %2428
  %2431 = fcmp oeq double %2414, %2412
  br i1 %2431, label %2432, label %2436

; <label>:2432:                                   ; preds = %2430, %2428, %2426, %2416
  %2433 = phi i8 [ 0, %2426 ], [ 0, %2428 ], [ 1, %2430 ], [ 1, %2416 ]
  %2434 = phi i8 [ 0, %2426 ], [ 0, %2428 ], [ 0, %2430 ], [ 1, %2416 ]
  %2435 = phi i8 [ 0, %2426 ], [ 1, %2428 ], [ 0, %2430 ], [ 1, %2416 ]
  store i8 %2433, i8* %15, align 1
  store i8 %2434, i8* %13, align 1
  store i8 %2435, i8* %12, align 1
  br label %2436

; <label>:2436:                                   ; preds = %2432, %2430
  %2437 = phi i8 [ %2433, %2432 ], [ %2398, %2430 ]
  %2438 = phi i8 [ %2435, %2432 ], [ %2387, %2430 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit662

routine_ucomisd__xmm1___xmm0.exit662:             ; preds = %2436, %2424
  %2439 = phi i8 [ %.pre149, %2424 ], [ %2437, %2436 ]
  %2440 = phi i8 [ %.pre148, %2424 ], [ %2438, %2436 ]
  %2441 = phi i64 [ %.pre147, %2424 ], [ %2413, %2436 ]
  %2442 = phi %struct.Memory* [ %2425, %2424 ], [ %2328, %2436 ]
  %2443 = or i8 %2439, %2440
  %2444 = icmp eq i8 %2443, 0
  %.v240 = select i1 %2444, i64 43, i64 6
  %2445 = add i64 %2441, %.v240
  store i64 %2445, i64* %3, align 8
  br i1 %2444, label %block_.L_426ecd, label %routine_ucomisd__xmm1___xmm0.exit662.block_.L_426ea8_crit_edge

routine_ucomisd__xmm1___xmm0.exit662.block_.L_426ea8_crit_edge: ; preds = %routine_ucomisd__xmm1___xmm0.exit662
  %.pre150 = load i64, i64* %RBP.i, align 8
  br label %block_.L_426ea8

block_.L_426ea8:                                  ; preds = %block_426e83, %routine_ucomisd__xmm1___xmm0.exit662.block_.L_426ea8_crit_edge
  %2446 = phi i64 [ %2406, %block_426e83 ], [ %2445, %routine_ucomisd__xmm1___xmm0.exit662.block_.L_426ea8_crit_edge ]
  %2447 = phi i64 [ %2380, %block_426e83 ], [ %.pre150, %routine_ucomisd__xmm1___xmm0.exit662.block_.L_426ea8_crit_edge ]
  %MEMORY.44 = phi %struct.Memory* [ %2328, %block_426e83 ], [ %2442, %routine_ucomisd__xmm1___xmm0.exit662.block_.L_426ea8_crit_edge ]
  %2448 = add i64 %2447, -20
  %2449 = add i64 %2446, 4
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = add i32 %2451, -1
  %2453 = icmp eq i32 %2451, 0
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %12, align 1
  %2455 = and i32 %2452, 255
  %2456 = tail call i32 @llvm.ctpop.i32(i32 %2455)
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  store i8 %2459, i8* %13, align 1
  %2460 = xor i32 %2452, %2451
  %2461 = lshr i32 %2460, 4
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %14, align 1
  %2464 = icmp eq i32 %2452, 0
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %15, align 1
  %2466 = lshr i32 %2452, 31
  %2467 = trunc i32 %2466 to i8
  store i8 %2467, i8* %16, align 1
  %2468 = lshr i32 %2451, 31
  %2469 = xor i32 %2466, %2468
  %2470 = add nuw nsw i32 %2469, %2468
  %2471 = icmp eq i32 %2470, 2
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %17, align 1
  %.v238 = select i1 %2464, i64 10, i64 379
  %2473 = add i64 %2446, %.v238
  store i64 %2473, i64* %3, align 8
  br i1 %2464, label %block_426eb2, label %block_.L_427023

block_426eb2:                                     ; preds = %block_.L_426ea8
  %2474 = add i64 %2473, ptrtoint (%G_0xbc11e__rip__type* @G_0xbc11e__rip_ to i64)
  %2475 = add i64 %2473, 8
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i64*
  %2477 = load i64, i64* %2476, align 8
  store i64 %2477, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %2478 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %2479 = fpext float %2478 to double
  store double %2479, double* %1472, align 1
  %2480 = add i64 %2473, 21
  store i64 %2480, i64* %3, align 8
  %2481 = bitcast i64 %2477 to double
  %2482 = fcmp uno double %2479, %2481
  br i1 %2482, label %2483, label %2493

; <label>:2483:                                   ; preds = %block_426eb2
  %2484 = fadd double %2479, %2481
  %2485 = bitcast double %2484 to i64
  %2486 = and i64 %2485, 9221120237041090560
  %2487 = icmp eq i64 %2486, 9218868437227405312
  %2488 = and i64 %2485, 2251799813685247
  %2489 = icmp ne i64 %2488, 0
  %2490 = and i1 %2487, %2489
  br i1 %2490, label %2491, label %2499

; <label>:2491:                                   ; preds = %2483
  %2492 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2480, %struct.Memory* %MEMORY.44)
  %.pre151 = load i64, i64* %3, align 8
  %.pre152 = load i8, i8* %12, align 1
  %.pre153 = load i8, i8* %15, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2493:                                   ; preds = %block_426eb2
  %2494 = fcmp ogt double %2479, %2481
  br i1 %2494, label %2499, label %2495

; <label>:2495:                                   ; preds = %2493
  %2496 = fcmp olt double %2479, %2481
  br i1 %2496, label %2499, label %2497

; <label>:2497:                                   ; preds = %2495
  %2498 = fcmp oeq double %2479, %2481
  br i1 %2498, label %2499, label %2503

; <label>:2499:                                   ; preds = %2497, %2495, %2493, %2483
  %2500 = phi i8 [ 0, %2493 ], [ 0, %2495 ], [ 1, %2497 ], [ 1, %2483 ]
  %2501 = phi i8 [ 0, %2493 ], [ 0, %2495 ], [ 0, %2497 ], [ 1, %2483 ]
  %2502 = phi i8 [ 0, %2493 ], [ 1, %2495 ], [ 0, %2497 ], [ 1, %2483 ]
  store i8 %2500, i8* %15, align 1
  store i8 %2501, i8* %13, align 1
  store i8 %2502, i8* %12, align 1
  br label %2503

; <label>:2503:                                   ; preds = %2499, %2497
  %2504 = phi i8 [ %2500, %2499 ], [ %2465, %2497 ]
  %2505 = phi i8 [ %2502, %2499 ], [ %2454, %2497 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2503, %2491
  %2506 = phi i8 [ %.pre153, %2491 ], [ %2504, %2503 ]
  %2507 = phi i8 [ %.pre152, %2491 ], [ %2505, %2503 ]
  %2508 = phi i64 [ %.pre151, %2491 ], [ %2480, %2503 ]
  %2509 = phi %struct.Memory* [ %2492, %2491 ], [ %MEMORY.44, %2503 ]
  %2510 = or i8 %2506, %2507
  %2511 = icmp ne i8 %2510, 0
  %.v239 = select i1 %2511, i64 348, i64 6
  %2512 = add i64 %2508, %.v239
  store i64 %2512, i64* %3, align 8
  br i1 %2511, label %block_.L_427023, label %block_.L_426ecd

block_.L_426ecd:                                  ; preds = %block_426e67, %block_426e59, %routine_ucomisd__xmm0___xmm1.exit, %routine_ucomisd__xmm1___xmm0.exit662
  %2513 = phi i64 [ %2357, %block_426e59 ], [ %2368, %block_426e67 ], [ %2512, %routine_ucomisd__xmm0___xmm1.exit ], [ %2445, %routine_ucomisd__xmm1___xmm0.exit662 ]
  %MEMORY.45 = phi %struct.Memory* [ %2328, %block_426e59 ], [ %2328, %block_426e67 ], [ %2509, %routine_ucomisd__xmm0___xmm1.exit ], [ %2442, %routine_ucomisd__xmm1___xmm0.exit662 ]
  store i64 0, i64* %RAX.i103, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i64 0, i64* %RCX.i875, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2514 = load i64, i64* %RBP.i, align 8
  %2515 = add i64 %2514, -16
  %2516 = add i64 %2513, 10
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i64*
  %2518 = load i64, i64* %2517, align 8
  store i64 %2518, i64* %RDI.i152, align 8
  %2519 = add i64 %2514, -20
  %2520 = add i64 %2513, 13
  store i64 %2520, i64* %3, align 8
  %2521 = inttoptr i64 %2519 to i32*
  %2522 = load i32, i32* %2521, align 4
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RSI.i687, align 8
  %2524 = add i64 %2513, -140573
  %2525 = add i64 %2513, 18
  %2526 = load i64, i64* %6, align 8
  %2527 = add i64 %2526, -8
  %2528 = inttoptr i64 %2527 to i64*
  store i64 %2525, i64* %2528, align 8
  store i64 %2527, i64* %6, align 8
  store i64 %2524, i64* %3, align 8
  %call2_426eda = tail call %struct.Memory* @sub_4049b0.aftermath_genmove(%struct.State* nonnull %0, i64 %2524, %struct.Memory* %MEMORY.45)
  %2529 = load i32, i32* %EAX.i102, align 4
  %2530 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2531 = and i32 %2529, 255
  %2532 = tail call i32 @llvm.ctpop.i32(i32 %2531)
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = xor i8 %2534, 1
  store i8 %2535, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2536 = icmp eq i32 %2529, 0
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %15, align 1
  %2538 = lshr i32 %2529, 31
  %2539 = trunc i32 %2538 to i8
  store i8 %2539, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2540 = icmp ne i8 %2539, 0
  %2541 = or i1 %2536, %2540
  %.v230 = select i1 %2541, i64 324, i64 9
  %2542 = add i64 %2530, %.v230
  store i64 %2542, i64* %3, align 8
  br i1 %2541, label %block_.L_427023, label %block_426ee8

block_426ee8:                                     ; preds = %block_.L_426ecd
  %2543 = load i64, i64* %RBP.i, align 8
  %2544 = add i64 %2543, -32
  %2545 = add i64 %2542, 5
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i64*
  %2547 = load i64, i64* %2546, align 8
  store i8 0, i8* %12, align 1
  %2548 = trunc i64 %2547 to i32
  %2549 = and i32 %2548, 255
  %2550 = tail call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  store i8 %2553, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2554 = icmp eq i64 %2547, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %15, align 1
  %2556 = lshr i64 %2547, 63
  %2557 = trunc i64 %2556 to i8
  store i8 %2557, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v231 = select i1 %2554, i64 32, i64 11
  %2558 = add i64 %2542, %.v231
  store i64 %2558, i64* %3, align 8
  br i1 %2554, label %block_426ee8.block_.L_426f08_crit_edge, label %block_426ef3

block_426ee8.block_.L_426f08_crit_edge:           ; preds = %block_426ee8
  %.pre186 = add i64 %2543, -16
  %.pre188 = inttoptr i64 %.pre186 to i64*
  br label %block_.L_426f08

block_426ef3:                                     ; preds = %block_426ee8
  %2559 = add i64 %2558, 4
  store i64 %2559, i64* %3, align 8
  %2560 = load i64, i64* %2546, align 8
  store i64 %2560, i64* %RAX.i103, align 8
  %2561 = add i64 %2543, -16
  %2562 = add i64 %2558, 8
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2561 to i64*
  %2564 = load i64, i64* %2563, align 8
  store i64 %2564, i64* %RCX.i875, align 8
  %2565 = add i64 %2558, 11
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = sext i32 %2567 to i64
  store i64 %2568, i64* %RCX.i875, align 8
  %2569 = shl nsw i64 %2568, 2
  %2570 = add i64 %2569, %2560
  %2571 = add i64 %2558, 15
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  store i8 0, i8* %12, align 1
  %2574 = and i32 %2573, 255
  %2575 = tail call i32 @llvm.ctpop.i32(i32 %2574)
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  %2578 = xor i8 %2577, 1
  store i8 %2578, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2579 = icmp eq i32 %2573, 0
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %15, align 1
  %2581 = lshr i32 %2573, 31
  %2582 = trunc i32 %2581 to i8
  store i8 %2582, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v232 = select i1 %2579, i64 304, i64 21
  %2583 = add i64 %2558, %.v232
  store i64 %2583, i64* %3, align 8
  br i1 %2579, label %block_.L_427023, label %block_.L_426f08

block_.L_426f08:                                  ; preds = %block_426ee8.block_.L_426f08_crit_edge, %block_426ef3
  %.pre-phi189 = phi i64* [ %.pre188, %block_426ee8.block_.L_426f08_crit_edge ], [ %2563, %block_426ef3 ]
  %2584 = phi i64 [ %2558, %block_426ee8.block_.L_426f08_crit_edge ], [ %2583, %block_426ef3 ]
  %2585 = add i64 %2584, 4
  store i64 %2585, i64* %3, align 8
  %2586 = load i64, i64* %.pre-phi189, align 8
  store i64 %2586, i64* %RAX.i103, align 8
  %2587 = add i64 %2584, 6
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i32*
  %2589 = load i32, i32* %2588, align 4
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RDI.i152, align 8
  %2591 = add i64 %2543, -20
  %2592 = add i64 %2584, 9
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RSI.i687, align 8
  %2596 = add i64 %2584, -99384
  %2597 = add i64 %2584, 14
  %2598 = load i64, i64* %6, align 8
  %2599 = add i64 %2598, -8
  %2600 = inttoptr i64 %2599 to i64*
  store i64 %2597, i64* %2600, align 8
  store i64 %2599, i64* %6, align 8
  store i64 %2596, i64* %3, align 8
  %call2_426f11 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2596, %struct.Memory* %call2_426eda)
  %2601 = load i32, i32* %EAX.i102, align 4
  %2602 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2603 = and i32 %2601, 255
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  store i8 %2607, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2608 = icmp eq i32 %2601, 0
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %15, align 1
  %2610 = lshr i32 %2601, 31
  %2611 = trunc i32 %2610 to i8
  store i8 %2611, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v233 = select i1 %2608, i64 14, i64 9
  %2612 = add i64 %2602, %.v233
  store i64 %2612, i64* %3, align 8
  br i1 %2608, label %block_.L_426f24, label %block_426f1f

block_426f1f:                                     ; preds = %block_.L_426f08
  %2613 = add i64 %2612, 129
  store i64 %2613, i64* %3, align 8
  br label %block_.L_426fa0

block_.L_426f24:                                  ; preds = %block_.L_426f08
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 498, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57c1f2_type* @G__0x57c1f2 to i64), i64* %RDX.i379, align 8
  store i64 20, i64* %RAX.i103, align 8
  %2614 = load i64, i64* %RBP.i, align 8
  %2615 = add i64 %2614, -16
  %2616 = add i64 %2612, 34
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i64*
  %2618 = load i64, i64* %2617, align 8
  store i64 %2618, i64* %RCX.i875, align 8
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i584 = bitcast %union.anon* %2619 to i32*
  %2620 = getelementptr inbounds %union.anon, %union.anon* %2619, i64 0, i32 0
  %2621 = add i64 %2612, 37
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2618 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %2620, align 8
  %2625 = add i64 %2614, -284
  %2626 = add i64 %2612, 43
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i32*
  store i32 20, i32* %2627, align 4
  %2628 = load i32, i32* %R8D.i584, align 4
  %2629 = zext i32 %2628 to i64
  %2630 = load i64, i64* %3, align 8
  store i64 %2629, i64* %RAX.i103, align 8
  %2631 = load i64, i64* %RBP.i, align 8
  %2632 = add i64 %2631, -296
  %2633 = load i64, i64* %RDX.i379, align 8
  %2634 = add i64 %2630, 10
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2632 to i64*
  store i64 %2633, i64* %2635, align 8
  %2636 = load i64, i64* %3, align 8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2638 = load i32, i32* %EAX.i102, align 8
  %2639 = sext i32 %2638 to i64
  %2640 = lshr i64 %2639, 32
  store i64 %2640, i64* %2637, align 8
  %2641 = load i64, i64* %RBP.i, align 8
  %2642 = add i64 %2641, -284
  %2643 = add i64 %2636, 8
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i32*
  %2645 = load i32, i32* %2644, align 4
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %2620, align 8
  %2647 = add i64 %2636, 11
  store i64 %2647, i64* %3, align 8
  %2648 = zext i32 %2638 to i64
  %2649 = sext i32 %2645 to i64
  %2650 = shl nuw i64 %2640, 32
  %2651 = or i64 %2650, %2648
  %2652 = sdiv i64 %2651, %2649
  %2653 = shl i64 %2652, 32
  %2654 = ashr exact i64 %2653, 32
  %2655 = icmp eq i64 %2652, %2654
  br i1 %2655, label %2658, label %2656

; <label>:2656:                                   ; preds = %block_.L_426f24
  %2657 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2647, %struct.Memory* %call2_426f11)
  %.pre154 = load i64, i64* %RAX.i103, align 8
  %.pre155 = load i64, i64* %3, align 8
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit567

; <label>:2658:                                   ; preds = %block_.L_426f24
  %2659 = srem i64 %2651, %2649
  %2660 = and i64 %2652, 4294967295
  store i64 %2660, i64* %RAX.i103, align 8
  %2661 = and i64 %2659, 4294967295
  store i64 %2661, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__r8d.exit567

routine_idivl__r8d.exit567:                       ; preds = %2658, %2656
  %2662 = phi i64 [ %.pre156, %2656 ], [ %2641, %2658 ]
  %2663 = phi i64 [ %.pre155, %2656 ], [ %2647, %2658 ]
  %2664 = phi i64 [ %.pre154, %2656 ], [ %2660, %2658 ]
  %2665 = phi %struct.Memory* [ %2657, %2656 ], [ %call2_426f11, %2658 ]
  %2666 = trunc i64 %2664 to i32
  %2667 = add i32 %2666, -1
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RAX.i103, align 8
  %2669 = icmp eq i32 %2666, 0
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %12, align 1
  %2671 = and i32 %2667, 255
  %2672 = tail call i32 @llvm.ctpop.i32(i32 %2671)
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  store i8 %2675, i8* %13, align 1
  %2676 = xor i32 %2667, %2666
  %2677 = lshr i32 %2676, 4
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  store i8 %2679, i8* %14, align 1
  %2680 = icmp eq i32 %2667, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %15, align 1
  %2682 = lshr i32 %2667, 31
  %2683 = trunc i32 %2682 to i8
  store i8 %2683, i8* %16, align 1
  %2684 = lshr i32 %2666, 31
  %2685 = xor i32 %2682, %2684
  %2686 = add nuw nsw i32 %2685, %2684
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %17, align 1
  %2689 = add i64 %2662, -16
  %2690 = add i64 %2663, 7
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2689 to i64*
  %2692 = load i64, i64* %2691, align 8
  store i64 %2692, i64* %RCX.i875, align 8
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i558 = bitcast %union.anon* %2693 to i32*
  %2694 = getelementptr inbounds %union.anon, %union.anon* %2693, i64 0, i32 0
  %2695 = add i64 %2663, 10
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2692 to i32*
  %2697 = load i32, i32* %2696, align 4
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %2694, align 8
  %2699 = add i64 %2662, -300
  %2700 = add i64 %2663, 16
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2699 to i32*
  store i32 %2667, i32* %2701, align 4
  %2702 = load i32, i32* %R9D.i558, align 4
  %2703 = zext i32 %2702 to i64
  %2704 = load i64, i64* %3, align 8
  store i64 %2703, i64* %RAX.i103, align 8
  %2705 = sext i32 %2702 to i64
  %2706 = lshr i64 %2705, 32
  store i64 %2706, i64* %2637, align 8
  %2707 = load i32, i32* %R8D.i584, align 4
  %2708 = add i64 %2704, 7
  store i64 %2708, i64* %3, align 8
  %2709 = sext i32 %2707 to i64
  %2710 = shl nuw i64 %2706, 32
  %2711 = or i64 %2710, %2703
  %2712 = sdiv i64 %2711, %2709
  %2713 = shl i64 %2712, 32
  %2714 = ashr exact i64 %2713, 32
  %2715 = icmp eq i64 %2712, %2714
  br i1 %2715, label %2718, label %2716

; <label>:2716:                                   ; preds = %routine_idivl__r8d.exit567
  %2717 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2708, %struct.Memory* %2665)
  %.pre157 = load i64, i64* %RDX.i379, align 8
  %.pre158 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit548

; <label>:2718:                                   ; preds = %routine_idivl__r8d.exit567
  %2719 = srem i64 %2711, %2709
  %2720 = and i64 %2712, 4294967295
  store i64 %2720, i64* %RAX.i103, align 8
  %2721 = and i64 %2719, 4294967295
  store i64 %2721, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__r8d.exit548

routine_idivl__r8d.exit548:                       ; preds = %2718, %2716
  %2722 = phi i64 [ %.pre158, %2716 ], [ %2708, %2718 ]
  %2723 = phi i64 [ %.pre157, %2716 ], [ %2721, %2718 ]
  %2724 = phi %struct.Memory* [ %2717, %2716 ], [ %2665, %2718 ]
  %2725 = trunc i64 %2723 to i32
  %2726 = add i32 %2725, -1
  %2727 = zext i32 %2726 to i64
  store i64 %2727, i64* %RDX.i379, align 8
  %2728 = icmp eq i32 %2725, 0
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %12, align 1
  %2730 = and i32 %2726, 255
  %2731 = tail call i32 @llvm.ctpop.i32(i32 %2730)
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = xor i8 %2733, 1
  store i8 %2734, i8* %13, align 1
  %2735 = xor i32 %2726, %2725
  %2736 = lshr i32 %2735, 4
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  store i8 %2738, i8* %14, align 1
  %2739 = icmp eq i32 %2726, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %15, align 1
  %2741 = lshr i32 %2726, 31
  %2742 = trunc i32 %2741 to i8
  store i8 %2742, i8* %16, align 1
  %2743 = lshr i32 %2725, 31
  %2744 = xor i32 %2741, %2743
  %2745 = add nuw nsw i32 %2744, %2743
  %2746 = icmp eq i32 %2745, 2
  %2747 = zext i1 %2746 to i8
  store i8 %2747, i8* %17, align 1
  %2748 = load i64, i64* %RBP.i, align 8
  %2749 = add i64 %2748, -296
  %2750 = add i64 %2722, 10
  store i64 %2750, i64* %3, align 8
  %2751 = inttoptr i64 %2749 to i64*
  %2752 = load i64, i64* %2751, align 8
  store i64 %2752, i64* %RCX.i875, align 8
  %2753 = add i64 %2748, -304
  %2754 = add i64 %2722, 16
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i32*
  store i32 %2726, i32* %2755, align 4
  %2756 = load i64, i64* %RCX.i875, align 8
  %2757 = load i64, i64* %3, align 8
  store i64 %2756, i64* %RDX.i379, align 8
  %2758 = load i64, i64* %RBP.i, align 8
  %2759 = add i64 %2758, -300
  %2760 = add i64 %2757, 9
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = zext i32 %2762 to i64
  store i64 %2763, i64* %RCX.i875, align 8
  %2764 = add i64 %2758, -304
  %2765 = add i64 %2757, 16
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %2620, align 8
  %2769 = add i64 %2757, 176389
  %2770 = add i64 %2757, 21
  %2771 = load i64, i64* %6, align 8
  %2772 = add i64 %2771, -8
  %2773 = inttoptr i64 %2772 to i64*
  store i64 %2770, i64* %2773, align 8
  store i64 %2772, i64* %6, align 8
  store i64 %2769, i64* %3, align 8
  %call2_426f9b = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %2769, %struct.Memory* %2724)
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_426fa0

block_.L_426fa0:                                  ; preds = %routine_idivl__r8d.exit548, %block_426f1f
  %2774 = phi i64 [ %.pre159, %routine_idivl__r8d.exit548 ], [ %2613, %block_426f1f ]
  %MEMORY.47 = phi %struct.Memory* [ %call2_426f9b, %routine_idivl__r8d.exit548 ], [ %call2_426f11, %block_426f1f ]
  %2775 = add i64 %2774, ptrtoint (%G_0xbc164__rip__type* @G_0xbc164__rip_ to i64)
  %2776 = add i64 %2774, 8
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  store i32 %2778, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %2779 = load i64, i64* %RBP.i, align 8
  %2780 = add i64 %2779, -36
  %2781 = add i64 %2774, 13
  store i64 %2781, i64* %3, align 8
  %2782 = load <2 x float>, <2 x float>* %35, align 1
  %2783 = extractelement <2 x float> %2782, i32 0
  %2784 = inttoptr i64 %2780 to float*
  store float %2783, float* %2784, align 4
  %2785 = load i64, i64* %3, align 8
  %2786 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2787 = and i32 %2786, 255
  %2788 = tail call i32 @llvm.ctpop.i32(i32 %2787)
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  store i8 %2791, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2792 = icmp eq i32 %2786, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %15, align 1
  %2794 = lshr i32 %2786, 31
  %2795 = trunc i32 %2794 to i8
  store i8 %2795, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v234 = select i1 %2792, i64 14, i64 19
  %2796 = add i64 %2785, %.v234
  store i64 %2796, i64* %3, align 8
  br i1 %2792, label %block_426fbb, label %block_.L_426fc0

block_426fbb:                                     ; preds = %block_.L_426fa0
  %2797 = add i64 %2796, 34
  store i64 %2797, i64* %3, align 8
  br label %block_.L_426fdd

block_.L_426fc0:                                  ; preds = %block_.L_426fa0
  store i64 ptrtoint (%G__0x57c209_type* @G__0x57c209 to i64), i64* %RDI.i152, align 8
  %2798 = load i64, i64* %RBP.i, align 8
  %2799 = add i64 %2798, -16
  %2800 = add i64 %2796, 14
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2799 to i64*
  %2802 = load i64, i64* %2801, align 8
  store i64 %2802, i64* %RAX.i103, align 8
  %2803 = add i64 %2796, 16
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = zext i32 %2805 to i64
  store i64 %2806, i64* %RSI.i687, align 8
  %AL.i511 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i511, align 1
  %2807 = add i64 %2796, 175600
  %2808 = add i64 %2796, 23
  %2809 = load i64, i64* %6, align 8
  %2810 = add i64 %2809, -8
  %2811 = inttoptr i64 %2810 to i64*
  store i64 %2808, i64* %2811, align 8
  store i64 %2810, i64* %6, align 8
  store i64 %2807, i64* %3, align 8
  %call2_426fd2 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2807, %struct.Memory* %MEMORY.47)
  %2812 = load i64, i64* %RBP.i, align 8
  %2813 = add i64 %2812, -308
  %2814 = load i32, i32* %EAX.i102, align 4
  %2815 = load i64, i64* %3, align 8
  %2816 = add i64 %2815, 6
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2813 to i32*
  store i32 %2814, i32* %2817, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_426fdd

block_.L_426fdd:                                  ; preds = %block_.L_426fc0, %block_426fbb
  %2818 = phi i64 [ %.pre160, %block_.L_426fc0 ], [ %2797, %block_426fbb ]
  %MEMORY.48 = phi %struct.Memory* [ %call2_426fd2, %block_.L_426fc0 ], [ %MEMORY.47, %block_426fbb ]
  %2819 = load i64, i64* %RBP.i, align 8
  %2820 = add i64 %2819, -16
  %2821 = add i64 %2818, 4
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i64*
  %2823 = load i64, i64* %2822, align 8
  store i64 %2823, i64* %RAX.i103, align 8
  %2824 = add i64 %2818, 6
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i32*
  %2826 = load i32, i32* %2825, align 4
  %2827 = zext i32 %2826 to i64
  store i64 %2827, i64* %RDI.i152, align 8
  %2828 = add i64 %2819, -36
  %2829 = add i64 %2818, 11
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  store i32 %2831, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %2832 = add i64 %2818, 349523
  %2833 = add i64 %2818, 16
  %2834 = load i64, i64* %6, align 8
  %2835 = add i64 %2834, -8
  %2836 = inttoptr i64 %2835 to i64*
  store i64 %2833, i64* %2836, align 8
  store i64 %2835, i64* %6, align 8
  store i64 %2832, i64* %3, align 8
  %call2_426fe8 = tail call %struct.Memory* @sub_47c530.record_top_move(%struct.State* nonnull %0, i64 %2832, %struct.Memory* %MEMORY.48)
  %2837 = load i64, i64* %RBP.i, align 8
  %2838 = add i64 %2837, -16
  %2839 = load i64, i64* %3, align 8
  %2840 = add i64 %2839, 4
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2838 to i64*
  %2842 = load i64, i64* %2841, align 8
  store i64 %2842, i64* %RAX.i103, align 8
  %2843 = add i64 %2839, 6
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i32*
  %2845 = load i32, i32* %2844, align 4
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RDI.i152, align 8
  %2847 = add i64 %2837, -36
  %2848 = add i64 %2839, 11
  store i64 %2848, i64* %3, align 8
  %2849 = inttoptr i64 %2847 to i32*
  %2850 = load i32, i32* %2849, align 4
  store i32 %2850, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %2851 = add i64 %2839, 2691
  %2852 = add i64 %2839, 16
  %2853 = load i64, i64* %6, align 8
  %2854 = add i64 %2853, -8
  %2855 = inttoptr i64 %2854 to i64*
  store i64 %2852, i64* %2855, align 8
  store i64 %2854, i64* %6, align 8
  store i64 %2851, i64* %3, align 8
  %call2_426ff8 = tail call %struct.Memory* @sub_427a70.move_considered(%struct.State* nonnull %0, i64 %2851, %struct.Memory* %call2_426fe8)
  %2856 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c220_type* @G__0x57c220 to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %2857 = add i64 %2856, add (i64 ptrtoint (%G_0xbbf4a__rip__type* @G_0xbbf4a__rip_ to i64), i64 17)
  %2858 = add i64 %2856, 25
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i64*
  %2860 = load i64, i64* %2859, align 8
  store i64 %2860, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %2861 = add i64 %2856, 349139
  %2862 = add i64 %2856, 30
  %2863 = load i64, i64* %6, align 8
  %2864 = add i64 %2863, -8
  %2865 = inttoptr i64 %2864 to i64*
  store i64 %2862, i64* %2865, align 8
  store i64 %2864, i64* %6, align 8
  store i64 %2861, i64* %3, align 8
  %call2_427016 = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %2861, %struct.Memory* %call2_426ff8)
  %2866 = load i64, i64* %RBP.i, align 8
  %2867 = add i64 %2866, -320
  %2868 = load i64, i64* %3, align 8
  %2869 = add i64 %2868, 8
  store i64 %2869, i64* %3, align 8
  %2870 = load i64, i64* %307, align 1
  %2871 = inttoptr i64 %2867 to i64*
  store i64 %2870, i64* %2871, align 8
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_427023

block_.L_427023:                                  ; preds = %block_.L_426ea8, %block_426e4b, %block_.L_426fdd, %block_426ef3, %block_.L_426ecd, %routine_ucomisd__xmm0___xmm1.exit, %block_426e75, %routine_ucomisd__xmm1___xmm0.exit684
  %2872 = phi i64 [ %2329, %routine_ucomisd__xmm1___xmm0.exit684 ], [ %2346, %block_426e4b ], [ %2542, %block_.L_426ecd ], [ %.pre161, %block_.L_426fdd ], [ %2583, %block_426ef3 ], [ %2379, %block_426e75 ], [ %2473, %block_.L_426ea8 ], [ %2512, %routine_ucomisd__xmm0___xmm1.exit ]
  %MEMORY.49 = phi %struct.Memory* [ %2328, %routine_ucomisd__xmm1___xmm0.exit684 ], [ %2328, %block_426e4b ], [ %call2_426eda, %block_.L_426ecd ], [ %call2_427016, %block_.L_426fdd ], [ %call2_426eda, %block_426ef3 ], [ %2328, %block_426e75 ], [ %MEMORY.44, %block_.L_426ea8 ], [ %2509, %routine_ucomisd__xmm0___xmm1.exit ]
  %2873 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2873, align 1
  %2874 = load i64, i64* %RBP.i, align 8
  %2875 = add i64 %2874, -36
  %2876 = add i64 %2872, 8
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to float*
  %2878 = load float, float* %2877, align 4
  %2879 = fpext float %2878 to double
  store double %2879, double* %1472, align 1
  %2880 = add i64 %2872, 12
  store i64 %2880, i64* %3, align 8
  %2881 = load double, double* %306, align 1
  %2882 = fcmp uno double %2881, %2879
  br i1 %2882, label %2883, label %2893

; <label>:2883:                                   ; preds = %block_.L_427023
  %2884 = fadd double %2879, %2881
  %2885 = bitcast double %2884 to i64
  %2886 = and i64 %2885, 9221120237041090560
  %2887 = icmp eq i64 %2886, 9218868437227405312
  %2888 = and i64 %2885, 2251799813685247
  %2889 = icmp ne i64 %2888, 0
  %2890 = and i1 %2887, %2889
  br i1 %2890, label %2891, label %2899

; <label>:2891:                                   ; preds = %2883
  %2892 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2880, %struct.Memory* %MEMORY.49)
  %.pre162 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit463

; <label>:2893:                                   ; preds = %block_.L_427023
  %2894 = fcmp ogt double %2881, %2879
  br i1 %2894, label %2899, label %2895

; <label>:2895:                                   ; preds = %2893
  %2896 = fcmp olt double %2881, %2879
  br i1 %2896, label %2899, label %2897

; <label>:2897:                                   ; preds = %2895
  %2898 = fcmp oeq double %2881, %2879
  br i1 %2898, label %2899, label %2903

; <label>:2899:                                   ; preds = %2897, %2895, %2893, %2883
  %2900 = phi i8 [ 0, %2893 ], [ 0, %2895 ], [ 1, %2897 ], [ 1, %2883 ]
  %2901 = phi i8 [ 0, %2893 ], [ 0, %2895 ], [ 0, %2897 ], [ 1, %2883 ]
  %2902 = phi i8 [ 0, %2893 ], [ 1, %2895 ], [ 0, %2897 ], [ 1, %2883 ]
  store i8 %2900, i8* %15, align 1
  store i8 %2901, i8* %13, align 1
  store i8 %2902, i8* %12, align 1
  br label %2903

; <label>:2903:                                   ; preds = %2899, %2897
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit463

routine_ucomisd__xmm1___xmm0.exit463:             ; preds = %2903, %2891
  %2904 = phi i64 [ %.pre162, %2891 ], [ %2880, %2903 ]
  %2905 = phi %struct.Memory* [ %2892, %2891 ], [ %MEMORY.49, %2903 ]
  %2906 = add i64 %2904, 363
  %2907 = add i64 %2904, 6
  %2908 = load i8, i8* %12, align 1
  %2909 = load i8, i8* %15, align 1
  %2910 = or i8 %2909, %2908
  %2911 = icmp ne i8 %2910, 0
  %2912 = select i1 %2911, i64 %2906, i64 %2907
  store i64 %2912, i64* %3, align 8
  br i1 %2911, label %block_.L_42719a, label %block_427035

block_427035:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit463
  %2913 = load i32, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
  store i8 0, i8* %12, align 1
  %2914 = and i32 %2913, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2919 = icmp eq i32 %2913, 0
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %15, align 1
  %2921 = lshr i32 %2913, 31
  %2922 = trunc i32 %2921 to i8
  store i8 %2922, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v216 = select i1 %2919, i64 14, i64 357
  %2923 = add i64 %2912, %.v216
  store i64 %2923, i64* %3, align 8
  br i1 %2919, label %block_427043, label %block_.L_42719a

block_427043:                                     ; preds = %block_427035
  %2924 = load i32, i32* bitcast (%G_0xab0fd0_type* @G_0xab0fd0 to i32*), align 8
  store i8 0, i8* %12, align 1
  %2925 = and i32 %2924, 255
  %2926 = tail call i32 @llvm.ctpop.i32(i32 %2925)
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  store i8 %2929, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2930 = icmp eq i32 %2924, 0
  %2931 = zext i1 %2930 to i8
  store i8 %2931, i8* %15, align 1
  %2932 = lshr i32 %2924, 31
  %2933 = trunc i32 %2932 to i8
  store i8 %2933, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v223 = select i1 %2930, i64 343, i64 14
  %2934 = add i64 %2923, %.v223
  store i64 %2934, i64* %3, align 8
  br i1 %2930, label %block_.L_42719a, label %block_427051

block_427051:                                     ; preds = %block_427043
  store i64 0, i64* %RAX.i103, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 0, i64* %RDX.i379, align 8
  store i64 1, i64* %RCX.i875, align 8
  %2935 = load i64, i64* %RBP.i, align 8
  %2936 = add i64 %2935, -16
  %2937 = add i64 %2934, 13
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RDI.i152, align 8
  %2940 = add i64 %2935, -20
  %2941 = add i64 %2934, 16
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RSI.i687, align 8
  %2945 = add i64 %2934, -140961
  %2946 = add i64 %2934, 21
  %2947 = load i64, i64* %6, align 8
  %2948 = add i64 %2947, -8
  %2949 = inttoptr i64 %2948 to i64*
  store i64 %2946, i64* %2949, align 8
  store i64 %2948, i64* %6, align 8
  store i64 %2945, i64* %3, align 8
  %call2_427061 = tail call %struct.Memory* @sub_4049b0.aftermath_genmove(%struct.State* nonnull %0, i64 %2945, %struct.Memory* %2905)
  %2950 = load i32, i32* %EAX.i102, align 4
  %2951 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2952 = and i32 %2950, 255
  %2953 = tail call i32 @llvm.ctpop.i32(i32 %2952)
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = xor i8 %2955, 1
  store i8 %2956, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2957 = icmp eq i32 %2950, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %15, align 1
  %2959 = lshr i32 %2950, 31
  %2960 = trunc i32 %2959 to i8
  store i8 %2960, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2961 = icmp ne i8 %2960, 0
  %2962 = or i1 %2957, %2961
  %.v224 = select i1 %2962, i64 308, i64 9
  %2963 = add i64 %2951, %.v224
  store i64 %2963, i64* %3, align 8
  br i1 %2962, label %block_.L_42719a, label %block_42706f

block_42706f:                                     ; preds = %block_427051
  %2964 = load i64, i64* %RBP.i, align 8
  %2965 = add i64 %2964, -32
  %2966 = add i64 %2963, 5
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i64*
  %2968 = load i64, i64* %2967, align 8
  store i8 0, i8* %12, align 1
  %2969 = trunc i64 %2968 to i32
  %2970 = and i32 %2969, 255
  %2971 = tail call i32 @llvm.ctpop.i32(i32 %2970)
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = xor i8 %2973, 1
  store i8 %2974, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2975 = icmp eq i64 %2968, 0
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %15, align 1
  %2977 = lshr i64 %2968, 63
  %2978 = trunc i64 %2977 to i8
  store i8 %2978, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v225 = select i1 %2975, i64 32, i64 11
  %2979 = add i64 %2963, %.v225
  store i64 %2979, i64* %3, align 8
  br i1 %2975, label %block_42706f.block_.L_42708f_crit_edge, label %block_42707a

block_42706f.block_.L_42708f_crit_edge:           ; preds = %block_42706f
  %.pre183 = add i64 %2964, -16
  %.pre184 = inttoptr i64 %.pre183 to i64*
  br label %block_.L_42708f

block_42707a:                                     ; preds = %block_42706f
  %2980 = add i64 %2979, 4
  store i64 %2980, i64* %3, align 8
  %2981 = load i64, i64* %2967, align 8
  store i64 %2981, i64* %RAX.i103, align 8
  %2982 = add i64 %2964, -16
  %2983 = add i64 %2979, 8
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i64*
  %2985 = load i64, i64* %2984, align 8
  store i64 %2985, i64* %RCX.i875, align 8
  %2986 = add i64 %2979, 11
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i32*
  %2988 = load i32, i32* %2987, align 4
  %2989 = sext i32 %2988 to i64
  store i64 %2989, i64* %RCX.i875, align 8
  %2990 = shl nsw i64 %2989, 2
  %2991 = add i64 %2990, %2981
  %2992 = add i64 %2979, 15
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i32*
  %2994 = load i32, i32* %2993, align 4
  store i8 0, i8* %12, align 1
  %2995 = and i32 %2994, 255
  %2996 = tail call i32 @llvm.ctpop.i32(i32 %2995)
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  %2999 = xor i8 %2998, 1
  store i8 %2999, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3000 = icmp eq i32 %2994, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %15, align 1
  %3002 = lshr i32 %2994, 31
  %3003 = trunc i32 %3002 to i8
  store i8 %3003, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v226 = select i1 %3000, i64 288, i64 21
  %3004 = add i64 %2979, %.v226
  store i64 %3004, i64* %3, align 8
  br i1 %3000, label %block_.L_42719a, label %block_.L_42708f

block_.L_42708f:                                  ; preds = %block_42706f.block_.L_42708f_crit_edge, %block_42707a
  %.pre-phi185 = phi i64* [ %.pre184, %block_42706f.block_.L_42708f_crit_edge ], [ %2984, %block_42707a ]
  %3005 = phi i64 [ %2979, %block_42706f.block_.L_42708f_crit_edge ], [ %3004, %block_42707a ]
  %3006 = add i64 %3005, 4
  store i64 %3006, i64* %3, align 8
  %3007 = load i64, i64* %.pre-phi185, align 8
  store i64 %3007, i64* %RAX.i103, align 8
  %3008 = add i64 %3005, 6
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i32*
  %3010 = load i32, i32* %3009, align 4
  %3011 = zext i32 %3010 to i64
  store i64 %3011, i64* %RDI.i152, align 8
  %3012 = add i64 %2964, -20
  %3013 = add i64 %3005, 9
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i32*
  %3015 = load i32, i32* %3014, align 4
  %3016 = zext i32 %3015 to i64
  store i64 %3016, i64* %RSI.i687, align 8
  %3017 = add i64 %3005, -99775
  %3018 = add i64 %3005, 14
  %3019 = load i64, i64* %6, align 8
  %3020 = add i64 %3019, -8
  %3021 = inttoptr i64 %3020 to i64*
  store i64 %3018, i64* %3021, align 8
  store i64 %3020, i64* %6, align 8
  store i64 %3017, i64* %3, align 8
  %call2_427098 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %3017, %struct.Memory* %call2_427061)
  %3022 = load i32, i32* %EAX.i102, align 4
  %3023 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %3024 = and i32 %3022, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3029 = icmp eq i32 %3022, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %15, align 1
  %3031 = lshr i32 %3022, 31
  %3032 = trunc i32 %3031 to i8
  store i8 %3032, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v227 = select i1 %3029, i64 14, i64 9
  %3033 = add i64 %3023, %.v227
  store i64 %3033, i64* %3, align 8
  br i1 %3029, label %block_.L_4270ab, label %block_4270a6

block_4270a6:                                     ; preds = %block_.L_42708f
  %3034 = add i64 %3033, 129
  store i64 %3034, i64* %3, align 8
  br label %block_.L_427127

block_.L_4270ab:                                  ; preds = %block_.L_42708f
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 514, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57c1f2_type* @G__0x57c1f2 to i64), i64* %RDX.i379, align 8
  store i64 20, i64* %RAX.i103, align 8
  %3035 = load i64, i64* %RBP.i, align 8
  %3036 = add i64 %3035, -16
  %3037 = add i64 %3033, 34
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i64*
  %3039 = load i64, i64* %3038, align 8
  store i64 %3039, i64* %RCX.i875, align 8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i395 = bitcast %union.anon* %3040 to i32*
  %3041 = getelementptr inbounds %union.anon, %union.anon* %3040, i64 0, i32 0
  %3042 = add i64 %3033, 37
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3039 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = zext i32 %3044 to i64
  store i64 %3045, i64* %3041, align 8
  %3046 = add i64 %3035, -324
  %3047 = add i64 %3033, 43
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i32*
  store i32 20, i32* %3048, align 4
  %3049 = load i32, i32* %R8D.i395, align 4
  %3050 = zext i32 %3049 to i64
  %3051 = load i64, i64* %3, align 8
  store i64 %3050, i64* %RAX.i103, align 8
  %3052 = load i64, i64* %RBP.i, align 8
  %3053 = add i64 %3052, -336
  %3054 = load i64, i64* %RDX.i379, align 8
  %3055 = add i64 %3051, 10
  store i64 %3055, i64* %3, align 8
  %3056 = inttoptr i64 %3053 to i64*
  store i64 %3054, i64* %3056, align 8
  %3057 = load i64, i64* %3, align 8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3059 = load i32, i32* %EAX.i102, align 8
  %3060 = sext i32 %3059 to i64
  %3061 = lshr i64 %3060, 32
  store i64 %3061, i64* %3058, align 8
  %3062 = load i64, i64* %RBP.i, align 8
  %3063 = add i64 %3062, -324
  %3064 = add i64 %3057, 8
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = zext i32 %3066 to i64
  store i64 %3067, i64* %3041, align 8
  %3068 = add i64 %3057, 11
  store i64 %3068, i64* %3, align 8
  %3069 = zext i32 %3059 to i64
  %3070 = sext i32 %3066 to i64
  %3071 = shl nuw i64 %3061, 32
  %3072 = or i64 %3071, %3069
  %3073 = sdiv i64 %3072, %3070
  %3074 = shl i64 %3073, 32
  %3075 = ashr exact i64 %3074, 32
  %3076 = icmp eq i64 %3073, %3075
  br i1 %3076, label %3079, label %3077

; <label>:3077:                                   ; preds = %block_.L_4270ab
  %3078 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3068, %struct.Memory* %call2_427098)
  %.pre163 = load i64, i64* %RAX.i103, align 8
  %.pre164 = load i64, i64* %3, align 8
  %.pre165 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit377

; <label>:3079:                                   ; preds = %block_.L_4270ab
  %3080 = srem i64 %3072, %3070
  %3081 = and i64 %3073, 4294967295
  store i64 %3081, i64* %RAX.i103, align 8
  %3082 = and i64 %3080, 4294967295
  store i64 %3082, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__r8d.exit377

routine_idivl__r8d.exit377:                       ; preds = %3079, %3077
  %3083 = phi i64 [ %.pre165, %3077 ], [ %3062, %3079 ]
  %3084 = phi i64 [ %.pre164, %3077 ], [ %3068, %3079 ]
  %3085 = phi i64 [ %.pre163, %3077 ], [ %3081, %3079 ]
  %3086 = phi %struct.Memory* [ %3078, %3077 ], [ %call2_427098, %3079 ]
  %3087 = trunc i64 %3085 to i32
  %3088 = add i32 %3087, -1
  %3089 = zext i32 %3088 to i64
  store i64 %3089, i64* %RAX.i103, align 8
  %3090 = icmp eq i32 %3087, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %12, align 1
  %3092 = and i32 %3088, 255
  %3093 = tail call i32 @llvm.ctpop.i32(i32 %3092)
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = xor i8 %3095, 1
  store i8 %3096, i8* %13, align 1
  %3097 = xor i32 %3088, %3087
  %3098 = lshr i32 %3097, 4
  %3099 = trunc i32 %3098 to i8
  %3100 = and i8 %3099, 1
  store i8 %3100, i8* %14, align 1
  %3101 = icmp eq i32 %3088, 0
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %15, align 1
  %3103 = lshr i32 %3088, 31
  %3104 = trunc i32 %3103 to i8
  store i8 %3104, i8* %16, align 1
  %3105 = lshr i32 %3087, 31
  %3106 = xor i32 %3103, %3105
  %3107 = add nuw nsw i32 %3106, %3105
  %3108 = icmp eq i32 %3107, 2
  %3109 = zext i1 %3108 to i8
  store i8 %3109, i8* %17, align 1
  %3110 = add i64 %3083, -16
  %3111 = add i64 %3084, 7
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i64*
  %3113 = load i64, i64* %3112, align 8
  store i64 %3113, i64* %RCX.i875, align 8
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i368 = bitcast %union.anon* %3114 to i32*
  %3115 = getelementptr inbounds %union.anon, %union.anon* %3114, i64 0, i32 0
  %3116 = add i64 %3084, 10
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3113 to i32*
  %3118 = load i32, i32* %3117, align 4
  %3119 = zext i32 %3118 to i64
  store i64 %3119, i64* %3115, align 8
  %3120 = add i64 %3083, -340
  %3121 = add i64 %3084, 16
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i32*
  store i32 %3088, i32* %3122, align 4
  %3123 = load i32, i32* %R9D.i368, align 4
  %3124 = zext i32 %3123 to i64
  %3125 = load i64, i64* %3, align 8
  store i64 %3124, i64* %RAX.i103, align 8
  %3126 = sext i32 %3123 to i64
  %3127 = lshr i64 %3126, 32
  store i64 %3127, i64* %3058, align 8
  %3128 = load i32, i32* %R8D.i395, align 4
  %3129 = add i64 %3125, 7
  store i64 %3129, i64* %3, align 8
  %3130 = sext i32 %3128 to i64
  %3131 = shl nuw i64 %3127, 32
  %3132 = or i64 %3131, %3124
  %3133 = sdiv i64 %3132, %3130
  %3134 = shl i64 %3133, 32
  %3135 = ashr exact i64 %3134, 32
  %3136 = icmp eq i64 %3133, %3135
  br i1 %3136, label %3139, label %3137

; <label>:3137:                                   ; preds = %routine_idivl__r8d.exit377
  %3138 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3129, %struct.Memory* %3086)
  %.pre166 = load i64, i64* %RDX.i379, align 8
  %.pre167 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:3139:                                   ; preds = %routine_idivl__r8d.exit377
  %3140 = srem i64 %3132, %3130
  %3141 = and i64 %3133, 4294967295
  store i64 %3141, i64* %RAX.i103, align 8
  %3142 = and i64 %3140, 4294967295
  store i64 %3142, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %3139, %3137
  %3143 = phi i64 [ %.pre167, %3137 ], [ %3129, %3139 ]
  %3144 = phi i64 [ %.pre166, %3137 ], [ %3142, %3139 ]
  %3145 = phi %struct.Memory* [ %3138, %3137 ], [ %3086, %3139 ]
  %3146 = trunc i64 %3144 to i32
  %3147 = add i32 %3146, -1
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RDX.i379, align 8
  %3149 = icmp eq i32 %3146, 0
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %12, align 1
  %3151 = and i32 %3147, 255
  %3152 = tail call i32 @llvm.ctpop.i32(i32 %3151)
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = xor i8 %3154, 1
  store i8 %3155, i8* %13, align 1
  %3156 = xor i32 %3147, %3146
  %3157 = lshr i32 %3156, 4
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  store i8 %3159, i8* %14, align 1
  %3160 = icmp eq i32 %3147, 0
  %3161 = zext i1 %3160 to i8
  store i8 %3161, i8* %15, align 1
  %3162 = lshr i32 %3147, 31
  %3163 = trunc i32 %3162 to i8
  store i8 %3163, i8* %16, align 1
  %3164 = lshr i32 %3146, 31
  %3165 = xor i32 %3162, %3164
  %3166 = add nuw nsw i32 %3165, %3164
  %3167 = icmp eq i32 %3166, 2
  %3168 = zext i1 %3167 to i8
  store i8 %3168, i8* %17, align 1
  %3169 = load i64, i64* %RBP.i, align 8
  %3170 = add i64 %3169, -336
  %3171 = add i64 %3143, 10
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i64*
  %3173 = load i64, i64* %3172, align 8
  store i64 %3173, i64* %RCX.i875, align 8
  %3174 = add i64 %3169, -344
  %3175 = add i64 %3143, 16
  store i64 %3175, i64* %3, align 8
  %3176 = inttoptr i64 %3174 to i32*
  store i32 %3147, i32* %3176, align 4
  %3177 = load i64, i64* %RCX.i875, align 8
  %3178 = load i64, i64* %3, align 8
  store i64 %3177, i64* %RDX.i379, align 8
  %3179 = load i64, i64* %RBP.i, align 8
  %3180 = add i64 %3179, -340
  %3181 = add i64 %3178, 9
  store i64 %3181, i64* %3, align 8
  %3182 = inttoptr i64 %3180 to i32*
  %3183 = load i32, i32* %3182, align 4
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RCX.i875, align 8
  %3185 = add i64 %3179, -344
  %3186 = add i64 %3178, 16
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  %3188 = load i32, i32* %3187, align 4
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %3041, align 8
  %3190 = add i64 %3178, 175998
  %3191 = add i64 %3178, 21
  %3192 = load i64, i64* %6, align 8
  %3193 = add i64 %3192, -8
  %3194 = inttoptr i64 %3193 to i64*
  store i64 %3191, i64* %3194, align 8
  store i64 %3193, i64* %6, align 8
  store i64 %3190, i64* %3, align 8
  %call2_427122 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %3190, %struct.Memory* %3145)
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_427127

block_.L_427127:                                  ; preds = %routine_idivl__r8d.exit, %block_4270a6
  %3195 = phi i64 [ %.pre168, %routine_idivl__r8d.exit ], [ %3034, %block_4270a6 ]
  %MEMORY.51 = phi %struct.Memory* [ %call2_427122, %routine_idivl__r8d.exit ], [ %call2_427098, %block_4270a6 ]
  %3196 = add i64 %3195, ptrtoint (%G_0xbbfdd__rip__type* @G_0xbbfdd__rip_ to i64)
  %3197 = add i64 %3195, 8
  store i64 %3197, i64* %3, align 8
  %3198 = inttoptr i64 %3196 to i32*
  %3199 = load i32, i32* %3198, align 4
  store i32 %3199, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %3200 = load i64, i64* %RBP.i, align 8
  %3201 = add i64 %3200, -36
  %3202 = add i64 %3195, 13
  store i64 %3202, i64* %3, align 8
  %3203 = load <2 x float>, <2 x float>* %35, align 1
  %3204 = extractelement <2 x float> %3203, i32 0
  %3205 = inttoptr i64 %3201 to float*
  store float %3204, float* %3205, align 4
  %3206 = load i64, i64* %3, align 8
  %3207 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3208 = and i32 %3207, 255
  %3209 = tail call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  store i8 %3212, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3213 = icmp eq i32 %3207, 0
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %15, align 1
  %3215 = lshr i32 %3207, 31
  %3216 = trunc i32 %3215 to i8
  store i8 %3216, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v228 = select i1 %3213, i64 14, i64 19
  %3217 = add i64 %3206, %.v228
  store i64 %3217, i64* %3, align 8
  br i1 %3213, label %block_427142, label %block_.L_427147

block_427142:                                     ; preds = %block_.L_427127
  %3218 = add i64 %3217, 34
  store i64 %3218, i64* %3, align 8
  br label %block_.L_427164

block_.L_427147:                                  ; preds = %block_.L_427127
  store i64 ptrtoint (%G__0x57c209_type* @G__0x57c209 to i64), i64* %RDI.i152, align 8
  %3219 = load i64, i64* %RBP.i, align 8
  %3220 = add i64 %3219, -16
  %3221 = add i64 %3217, 14
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i64*
  %3223 = load i64, i64* %3222, align 8
  store i64 %3223, i64* %RAX.i103, align 8
  %3224 = add i64 %3217, 16
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RSI.i687, align 8
  %AL.i321 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i321, align 1
  %3228 = add i64 %3217, 175209
  %3229 = add i64 %3217, 23
  %3230 = load i64, i64* %6, align 8
  %3231 = add i64 %3230, -8
  %3232 = inttoptr i64 %3231 to i64*
  store i64 %3229, i64* %3232, align 8
  store i64 %3231, i64* %6, align 8
  store i64 %3228, i64* %3, align 8
  %call2_427159 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3228, %struct.Memory* %MEMORY.51)
  %3233 = load i64, i64* %RBP.i, align 8
  %3234 = add i64 %3233, -348
  %3235 = load i32, i32* %EAX.i102, align 4
  %3236 = load i64, i64* %3, align 8
  %3237 = add i64 %3236, 6
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3234 to i32*
  store i32 %3235, i32* %3238, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_427164

block_.L_427164:                                  ; preds = %block_.L_427147, %block_427142
  %3239 = phi i64 [ %.pre169, %block_.L_427147 ], [ %3218, %block_427142 ]
  %MEMORY.52 = phi %struct.Memory* [ %call2_427159, %block_.L_427147 ], [ %MEMORY.51, %block_427142 ]
  %3240 = load i64, i64* %RBP.i, align 8
  %3241 = add i64 %3240, -16
  %3242 = add i64 %3239, 4
  store i64 %3242, i64* %3, align 8
  %3243 = inttoptr i64 %3241 to i64*
  %3244 = load i64, i64* %3243, align 8
  store i64 %3244, i64* %RAX.i103, align 8
  %3245 = add i64 %3239, 6
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3244 to i32*
  %3247 = load i32, i32* %3246, align 4
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RDI.i152, align 8
  %3249 = add i64 %3240, -36
  %3250 = add i64 %3239, 11
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i32*
  %3252 = load i32, i32* %3251, align 4
  store i32 %3252, i32* %59, align 1
  store float 0.000000e+00, float* %61, align 1
  store float 0.000000e+00, float* %63, align 1
  store float 0.000000e+00, float* %65, align 1
  %3253 = add i64 %3239, 2316
  %3254 = add i64 %3239, 16
  %3255 = load i64, i64* %6, align 8
  %3256 = add i64 %3255, -8
  %3257 = inttoptr i64 %3256 to i64*
  store i64 %3254, i64* %3257, align 8
  store i64 %3256, i64* %6, align 8
  store i64 %3253, i64* %3, align 8
  %call2_42716f = tail call %struct.Memory* @sub_427a70.move_considered(%struct.State* nonnull %0, i64 %3253, %struct.Memory* %MEMORY.52)
  %3258 = load i64, i64* %3, align 8
  store i64 1, i64* %RDI.i152, align 8
  store i64 ptrtoint (%G__0x57c220_type* @G__0x57c220 to i64), i64* %RSI.i687, align 8
  store i64 0, i64* %RDX.i379, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %3259 = add i64 %3258, add (i64 ptrtoint (%G_0xbbdd3__rip__type* @G_0xbbdd3__rip_ to i64), i64 17)
  %3260 = add i64 %3258, 25
  store i64 %3260, i64* %3, align 8
  %3261 = inttoptr i64 %3259 to i64*
  %3262 = load i64, i64* %3261, align 8
  store i64 %3262, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %3263 = add i64 %3258, 348764
  %3264 = add i64 %3258, 30
  %3265 = load i64, i64* %6, align 8
  %3266 = add i64 %3265, -8
  %3267 = inttoptr i64 %3266 to i64*
  store i64 %3264, i64* %3267, align 8
  store i64 %3266, i64* %6, align 8
  store i64 %3263, i64* %3, align 8
  %call2_42718d = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %3263, %struct.Memory* %call2_42716f)
  %3268 = load i64, i64* %RBP.i, align 8
  %3269 = add i64 %3268, -360
  %3270 = load i64, i64* %3, align 8
  %3271 = add i64 %3270, 8
  store i64 %3271, i64* %3, align 8
  %3272 = load i64, i64* %307, align 1
  %3273 = inttoptr i64 %3269 to i64*
  store i64 %3272, i64* %3273, align 8
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_42719a

block_.L_42719a:                                  ; preds = %block_427035, %block_.L_427164, %block_42707a, %block_427051, %block_427043, %routine_ucomisd__xmm1___xmm0.exit463
  %3274 = phi i64 [ %2906, %routine_ucomisd__xmm1___xmm0.exit463 ], [ %2923, %block_427035 ], [ %2934, %block_427043 ], [ %2963, %block_427051 ], [ %.pre170, %block_.L_427164 ], [ %3004, %block_42707a ]
  %MEMORY.53 = phi %struct.Memory* [ %2905, %routine_ucomisd__xmm1___xmm0.exit463 ], [ %2905, %block_427035 ], [ %2905, %block_427043 ], [ %call2_427061, %block_427051 ], [ %call2_42718d, %block_.L_427164 ], [ %call2_427061, %block_42707a ]
  %3275 = bitcast [32 x %union.VectorReg]* %30 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3275, align 1
  %3276 = load i64, i64* %RBP.i, align 8
  %3277 = add i64 %3276, -36
  %3278 = add i64 %3274, 8
  store i64 %3278, i64* %3, align 8
  %3279 = inttoptr i64 %3277 to float*
  %3280 = load float, float* %3279, align 4
  %3281 = fpext float %3280 to double
  store double %3281, double* %1472, align 1
  %3282 = add i64 %3274, 12
  store i64 %3282, i64* %3, align 8
  %3283 = load double, double* %306, align 1
  %3284 = fcmp uno double %3283, %3281
  br i1 %3284, label %3285, label %3295

; <label>:3285:                                   ; preds = %block_.L_42719a
  %3286 = fadd double %3281, %3283
  %3287 = bitcast double %3286 to i64
  %3288 = and i64 %3287, 9221120237041090560
  %3289 = icmp eq i64 %3288, 9218868437227405312
  %3290 = and i64 %3287, 2251799813685247
  %3291 = icmp ne i64 %3290, 0
  %3292 = and i1 %3289, %3291
  br i1 %3292, label %3293, label %3301

; <label>:3293:                                   ; preds = %3285
  %3294 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3282, %struct.Memory* %MEMORY.53)
  %.pre171 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:3295:                                   ; preds = %block_.L_42719a
  %3296 = fcmp ogt double %3283, %3281
  br i1 %3296, label %3301, label %3297

; <label>:3297:                                   ; preds = %3295
  %3298 = fcmp olt double %3283, %3281
  br i1 %3298, label %3301, label %3299

; <label>:3299:                                   ; preds = %3297
  %3300 = fcmp oeq double %3283, %3281
  br i1 %3300, label %3301, label %3305

; <label>:3301:                                   ; preds = %3299, %3297, %3295, %3285
  %3302 = phi i8 [ 0, %3295 ], [ 0, %3297 ], [ 1, %3299 ], [ 1, %3285 ]
  %3303 = phi i8 [ 0, %3295 ], [ 0, %3297 ], [ 0, %3299 ], [ 1, %3285 ]
  %3304 = phi i8 [ 0, %3295 ], [ 1, %3297 ], [ 0, %3299 ], [ 1, %3285 ]
  store i8 %3302, i8* %15, align 1
  store i8 %3303, i8* %13, align 1
  store i8 %3304, i8* %12, align 1
  br label %3305

; <label>:3305:                                   ; preds = %3301, %3299
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %3305, %3293
  %3306 = phi i64 [ %.pre171, %3293 ], [ %3282, %3305 ]
  %3307 = phi %struct.Memory* [ %3294, %3293 ], [ %MEMORY.53, %3305 ]
  %3308 = load i8, i8* %12, align 1
  %3309 = load i8, i8* %15, align 1
  %3310 = or i8 %3309, %3308
  %3311 = icmp ne i8 %3310, 0
  %.v259 = select i1 %3311, i64 63, i64 6
  %3312 = add i64 %3306, %.v259
  %3313 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3314 = and i32 %3313, 255
  %3315 = tail call i32 @llvm.ctpop.i32(i32 %3314)
  %3316 = trunc i32 %3315 to i8
  %3317 = and i8 %3316, 1
  %3318 = xor i8 %3317, 1
  store i8 %3318, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3319 = icmp eq i32 %3313, 0
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %15, align 1
  %3321 = lshr i32 %3313, 31
  %3322 = trunc i32 %3321 to i8
  store i8 %3322, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v217 = select i1 %3319, i64 14, i64 19
  %3323 = add i64 %3312, %.v217
  store i64 %3323, i64* %3, align 8
  br i1 %3311, label %block_.L_4271e5, label %block_4271ac

block_4271ac:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  br i1 %3319, label %block_4271ba, label %block_.L_4271bf

block_4271ba:                                     ; preds = %block_4271ac
  %3324 = add i64 %3323, 28
  store i64 %3324, i64* %3, align 8
  br label %block_.L_4271d6

block_.L_4271bf:                                  ; preds = %block_4271ac
  store i64 ptrtoint (%G__0x57a135_type* @G__0x57a135 to i64), i64* %RDI.i152, align 8
  %AL.i276 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i276, align 1
  %3325 = add i64 %3323, 175089
  %3326 = add i64 %3323, 17
  %3327 = load i64, i64* %6, align 8
  %3328 = add i64 %3327, -8
  %3329 = inttoptr i64 %3328 to i64*
  store i64 %3326, i64* %3329, align 8
  store i64 %3328, i64* %6, align 8
  store i64 %3325, i64* %3, align 8
  %call2_4271cb = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3325, %struct.Memory* %3307)
  %3330 = load i64, i64* %RBP.i, align 8
  %3331 = add i64 %3330, -364
  %3332 = load i32, i32* %EAX.i102, align 4
  %3333 = load i64, i64* %3, align 8
  %3334 = add i64 %3333, 6
  store i64 %3334, i64* %3, align 8
  %3335 = inttoptr i64 %3331 to i32*
  store i32 %3332, i32* %3335, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_4271d6

block_.L_4271d6:                                  ; preds = %block_.L_4271bf, %block_4271ba
  %3336 = phi i64 [ %.pre172, %block_.L_4271bf ], [ %3324, %block_4271ba ]
  %MEMORY.54 = phi %struct.Memory* [ %call2_4271cb, %block_.L_4271bf ], [ %3307, %block_4271ba ]
  %3337 = load i64, i64* %RBP.i, align 8
  %3338 = add i64 %3337, -16
  %3339 = add i64 %3336, 4
  store i64 %3339, i64* %3, align 8
  %3340 = inttoptr i64 %3338 to i64*
  %3341 = load i64, i64* %3340, align 8
  store i64 %3341, i64* %RAX.i103, align 8
  %3342 = add i64 %3336, 10
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  store i32 0, i32* %3343, align 4
  %3344 = load i64, i64* %3, align 8
  %3345 = add i64 %3344, 63
  br label %block_.L_42721f

block_.L_4271e5:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  br i1 %3319, label %block_4271f3, label %block_.L_4271f8

block_4271f3:                                     ; preds = %block_.L_4271e5
  %3346 = add i64 %3323, 39
  store i64 %3346, i64* %3, align 8
  br label %block_.L_42721a

block_.L_4271f8:                                  ; preds = %block_.L_4271e5
  store i64 ptrtoint (%G__0x57a146_type* @G__0x57a146 to i64), i64* %RDI.i152, align 8
  %3347 = load i64, i64* %RBP.i, align 8
  %3348 = add i64 %3347, -16
  %3349 = add i64 %3323, 14
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i64*
  %3351 = load i64, i64* %3350, align 8
  store i64 %3351, i64* %RAX.i103, align 8
  %3352 = add i64 %3323, 16
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = zext i32 %3354 to i64
  store i64 %3355, i64* %RSI.i687, align 8
  %3356 = add i64 %3347, -36
  %3357 = add i64 %3323, 21
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3356 to float*
  %3359 = load float, float* %3358, align 4
  %3360 = fpext float %3359 to double
  store double %3360, double* %306, align 1
  %AL.i250 = bitcast %union.anon* %18 to i8*
  store i8 1, i8* %AL.i250, align 1
  %3361 = add i64 %3323, 175032
  %3362 = add i64 %3323, 28
  %3363 = load i64, i64* %6, align 8
  %3364 = add i64 %3363, -8
  %3365 = inttoptr i64 %3364 to i64*
  store i64 %3362, i64* %3365, align 8
  store i64 %3364, i64* %6, align 8
  store i64 %3361, i64* %3, align 8
  %call2_42720f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3361, %struct.Memory* %3307)
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -368
  %3368 = load i32, i32* %EAX.i102, align 4
  %3369 = load i64, i64* %3, align 8
  %3370 = add i64 %3369, 6
  store i64 %3370, i64* %3, align 8
  %3371 = inttoptr i64 %3367 to i32*
  store i32 %3368, i32* %3371, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_42721a

block_.L_42721a:                                  ; preds = %block_.L_4271f8, %block_4271f3
  %3372 = phi i64 [ %.pre173, %block_.L_4271f8 ], [ %3346, %block_4271f3 ]
  %MEMORY.55 = phi %struct.Memory* [ %call2_42720f, %block_.L_4271f8 ], [ %3307, %block_4271f3 ]
  %3373 = add i64 %3372, 5
  store i64 %3373, i64* %3, align 8
  br label %block_.L_42721f

block_.L_42721f:                                  ; preds = %block_.L_42721a, %block_.L_4271d6
  %storemerge = phi i64 [ %3345, %block_.L_4271d6 ], [ %3373, %block_.L_42721a ]
  %MEMORY.56 = phi %struct.Memory* [ %MEMORY.54, %block_.L_4271d6 ], [ %MEMORY.55, %block_.L_42721a ]
  %3374 = load i32, i32* bitcast (%G_0xab0ed8_type* @G_0xab0ed8 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3375 = and i32 %3374, 255
  %3376 = tail call i32 @llvm.ctpop.i32(i32 %3375)
  %3377 = trunc i32 %3376 to i8
  %3378 = and i8 %3377, 1
  %3379 = xor i8 %3378, 1
  store i8 %3379, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3380 = icmp eq i32 %3374, 0
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %15, align 1
  %3382 = lshr i32 %3374, 31
  %3383 = trunc i32 %3382 to i8
  store i8 %3383, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v218 = select i1 %3380, i64 194, i64 14
  %3384 = add i64 %storemerge, %.v218
  store i64 %3384, i64* %3, align 8
  br i1 %3380, label %block_.L_4272e1, label %block_42722d

block_42722d:                                     ; preds = %block_.L_42721f
  store i64 ptrtoint (%G__0x57c232_type* @G__0x57c232 to i64), i64* %RDI.i152, align 8
  %3385 = load i32, i32* bitcast (%G_0xb4a000_type* @G_0xb4a000 to i32*), align 8
  %3386 = zext i32 %3385 to i64
  store i64 %3386, i64* %RSI.i687, align 8
  %AL.i237 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i237, align 1
  %3387 = add i64 %3384, 174979
  %3388 = add i64 %3384, 24
  %3389 = load i64, i64* %6, align 8
  %3390 = add i64 %3389, -8
  %3391 = inttoptr i64 %3390 to i64*
  store i64 %3388, i64* %3391, align 8
  store i64 %3390, i64* %6, align 8
  store i64 %3387, i64* %3, align 8
  %call2_427240 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3387, %struct.Memory* %MEMORY.56)
  %3392 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c24c_type* @G__0x57c24c to i64), i64* %RDI.i152, align 8
  %3393 = load i32, i32* bitcast (%G_0xb4a004_type* @G_0xb4a004 to i32*), align 8
  %3394 = zext i32 %3393 to i64
  store i64 %3394, i64* %RSI.i687, align 8
  %3395 = load i64, i64* %RBP.i, align 8
  %3396 = add i64 %3395, -372
  %3397 = load i32, i32* %EAX.i102, align 4
  %3398 = add i64 %3392, 23
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3396 to i32*
  store i32 %3397, i32* %3399, align 4
  %3400 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i237, align 1
  %3401 = add i64 %3400, 174932
  %3402 = add i64 %3400, 7
  %3403 = load i64, i64* %6, align 8
  %3404 = add i64 %3403, -8
  %3405 = inttoptr i64 %3404 to i64*
  store i64 %3402, i64* %3405, align 8
  store i64 %3404, i64* %6, align 8
  store i64 %3401, i64* %3, align 8
  %call2_42725e = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3401, %struct.Memory* %call2_427240)
  %3406 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c266_type* @G__0x57c266 to i64), i64* %RDI.i152, align 8
  %3407 = load i32, i32* bitcast (%G_0xb4a008_type* @G_0xb4a008 to i32*), align 8
  %3408 = zext i32 %3407 to i64
  store i64 %3408, i64* %RSI.i687, align 8
  %3409 = load i64, i64* %RBP.i, align 8
  %3410 = add i64 %3409, -376
  %3411 = load i32, i32* %EAX.i102, align 4
  %3412 = add i64 %3406, 23
  store i64 %3412, i64* %3, align 8
  %3413 = inttoptr i64 %3410 to i32*
  store i32 %3411, i32* %3413, align 4
  %3414 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i237, align 1
  %3415 = add i64 %3414, 174902
  %3416 = add i64 %3414, 7
  %3417 = load i64, i64* %6, align 8
  %3418 = add i64 %3417, -8
  %3419 = inttoptr i64 %3418 to i64*
  store i64 %3416, i64* %3419, align 8
  store i64 %3418, i64* %6, align 8
  store i64 %3415, i64* %3, align 8
  %call2_42727c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3415, %struct.Memory* %call2_42725e)
  %3420 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c280_type* @G__0x57c280 to i64), i64* %RDI.i152, align 8
  %3421 = load i32, i32* bitcast (%G_0xb4a00c_type* @G_0xb4a00c to i32*), align 8
  %3422 = zext i32 %3421 to i64
  store i64 %3422, i64* %RSI.i687, align 8
  %3423 = load i64, i64* %RBP.i, align 8
  %3424 = add i64 %3423, -380
  %3425 = load i32, i32* %EAX.i102, align 4
  %3426 = add i64 %3420, 23
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3424 to i32*
  store i32 %3425, i32* %3427, align 4
  %3428 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i237, align 1
  %3429 = add i64 %3428, 174872
  %3430 = add i64 %3428, 7
  %3431 = load i64, i64* %6, align 8
  %3432 = add i64 %3431, -8
  %3433 = inttoptr i64 %3432 to i64*
  store i64 %3430, i64* %3433, align 8
  store i64 %3432, i64* %6, align 8
  store i64 %3429, i64* %3, align 8
  %call2_42729a = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3429, %struct.Memory* %call2_42727c)
  %3434 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c29a_type* @G__0x57c29a to i64), i64* %RDI.i152, align 8
  %3435 = load i32, i32* bitcast (%G_0xb4a010_type* @G_0xb4a010 to i32*), align 8
  %3436 = zext i32 %3435 to i64
  store i64 %3436, i64* %RSI.i687, align 8
  %3437 = load i64, i64* %RBP.i, align 8
  %3438 = add i64 %3437, -384
  %3439 = load i32, i32* %EAX.i102, align 4
  %3440 = add i64 %3434, 23
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3438 to i32*
  store i32 %3439, i32* %3441, align 4
  %3442 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i237, align 1
  %3443 = add i64 %3442, 174842
  %3444 = add i64 %3442, 7
  %3445 = load i64, i64* %6, align 8
  %3446 = add i64 %3445, -8
  %3447 = inttoptr i64 %3446 to i64*
  store i64 %3444, i64* %3447, align 8
  store i64 %3446, i64* %6, align 8
  store i64 %3443, i64* %3, align 8
  %call2_4272b8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3443, %struct.Memory* %call2_42729a)
  %3448 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c2b4_type* @G__0x57c2b4 to i64), i64* %RDI.i152, align 8
  %3449 = load i32, i32* bitcast (%G_0xb4a014_type* @G_0xb4a014 to i32*), align 8
  %3450 = zext i32 %3449 to i64
  store i64 %3450, i64* %RSI.i687, align 8
  %3451 = load i64, i64* %RBP.i, align 8
  %3452 = add i64 %3451, -388
  %3453 = load i32, i32* %EAX.i102, align 4
  %3454 = add i64 %3448, 23
  store i64 %3454, i64* %3, align 8
  %3455 = inttoptr i64 %3452 to i32*
  store i32 %3453, i32* %3455, align 4
  %3456 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i237, align 1
  %3457 = add i64 %3456, 174812
  %3458 = add i64 %3456, 7
  %3459 = load i64, i64* %6, align 8
  %3460 = add i64 %3459, -8
  %3461 = inttoptr i64 %3460 to i64*
  store i64 %3458, i64* %3461, align 8
  store i64 %3460, i64* %6, align 8
  store i64 %3457, i64* %3, align 8
  %call2_4272d6 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3457, %struct.Memory* %call2_4272b8)
  %3462 = load i64, i64* %RBP.i, align 8
  %3463 = add i64 %3462, -392
  %3464 = load i32, i32* %EAX.i102, align 4
  %3465 = load i64, i64* %3, align 8
  %3466 = add i64 %3465, 6
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3463 to i32*
  store i32 %3464, i32* %3467, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_4272e1

block_.L_4272e1:                                  ; preds = %block_42722d, %block_.L_42721f
  %3468 = phi i64 [ %3384, %block_.L_42721f ], [ %.pre174, %block_42722d ]
  %MEMORY.57 = phi %struct.Memory* [ %MEMORY.56, %block_.L_42721f ], [ %call2_4272d6, %block_42722d ]
  %3469 = load i32, i32* bitcast (%G_0xab0f0c_type* @G_0xab0f0c to i32*), align 8
  store i8 0, i8* %12, align 1
  %3470 = and i32 %3469, 255
  %3471 = tail call i32 @llvm.ctpop.i32(i32 %3470)
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  %3474 = xor i8 %3473, 1
  store i8 %3474, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3475 = icmp eq i32 %3469, 0
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %15, align 1
  %3477 = lshr i32 %3469, 31
  %3478 = trunc i32 %3477 to i8
  store i8 %3478, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v219 = select i1 %3475, i64 325, i64 14
  %3479 = add i64 %3468, %.v219
  store i64 %3479, i64* %3, align 8
  br i1 %3475, label %block_.L_427426, label %block_4272ef

block_4272ef:                                     ; preds = %block_.L_4272e1
  store i64 0, i64* %RDI.i152, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 ptrtoint (%G__0x57c2ce_type* @G__0x57c2ce to i64), i64* %RSI.i687, align 8
  %3480 = add i64 %3479, add (i64 ptrtoint (%G_0xbbc5d__rip__type* @G_0xbbc5d__rip_ to i64), i64 12)
  %3481 = add i64 %3479, 20
  store i64 %3481, i64* %3, align 8
  %3482 = inttoptr i64 %3480 to i64*
  %3483 = load i64, i64* %3482, align 8
  store i64 %3483, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %3484 = load i64, i64* %RBP.i, align 8
  %3485 = add i64 %3484, -16
  %3486 = add i64 %3479, 24
  store i64 %3486, i64* %3, align 8
  %3487 = inttoptr i64 %3485 to i64*
  %3488 = load i64, i64* %3487, align 8
  store i64 %3488, i64* %RAX.i103, align 8
  %3489 = add i64 %3479, 26
  store i64 %3489, i64* %3, align 8
  %3490 = inttoptr i64 %3488 to i32*
  %3491 = load i32, i32* %3490, align 4
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RDX.i379, align 8
  %3493 = add i64 %3479, 348385
  %3494 = add i64 %3479, 31
  %3495 = load i64, i64* %6, align 8
  %3496 = add i64 %3495, -8
  %3497 = inttoptr i64 %3496 to i64*
  store i64 %3494, i64* %3497, align 8
  store i64 %3496, i64* %6, align 8
  store i64 %3493, i64* %3, align 8
  %call2_427309 = tail call %struct.Memory* @sub_47c3d0.time_report(%struct.State* nonnull %0, i64 %3493, %struct.Memory* %MEMORY.57)
  %3498 = load i64, i64* %RBP.i, align 8
  %3499 = add i64 %3498, -56
  %3500 = load i64, i64* %3, align 8
  %3501 = add i64 %3500, 5
  store i64 %3501, i64* %3, align 8
  %3502 = load i64, i64* %307, align 1
  %3503 = inttoptr i64 %3499 to i64*
  store i64 %3502, i64* %3503, align 8
  %3504 = load i64, i64* %RBP.i, align 8
  %3505 = add i64 %3504, -56
  %3506 = load i64, i64* %3, align 8
  %3507 = add i64 %3506, 5
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3505 to i64*
  %3509 = inttoptr i64 %3505 to double*
  %3510 = load double, double* %3509, align 8
  %3511 = load double, double* bitcast (%G_0xab0eb8_type* @G_0xab0eb8 to double*), align 8
  %3512 = fadd double %3510, %3511
  store double %3512, double* %306, align 1
  store i64 0, i64* %62, align 1
  store double %3512, double* bitcast (%G_0xab0eb8_type* @G_0xab0eb8 to double*), align 8
  %3513 = add i64 %3506, 28
  store i64 %3513, i64* %3, align 8
  %3514 = load i64, i64* %3508, align 8
  store i64 %3514, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %3515 = add i64 %3506, 37
  store i64 %3515, i64* %3, align 8
  %.cast82 = bitcast i64 %3514 to double
  %3516 = load double, double* bitcast (%G_0xab0ec0_type* @G_0xab0ec0 to double*), align 8
  %3517 = fcmp uno double %.cast82, %3516
  br i1 %3517, label %3518, label %3528

; <label>:3518:                                   ; preds = %block_4272ef
  %3519 = fadd double %.cast82, %3516
  %3520 = bitcast double %3519 to i64
  %3521 = and i64 %3520, 9221120237041090560
  %3522 = icmp eq i64 %3521, 9218868437227405312
  %3523 = and i64 %3520, 2251799813685247
  %3524 = icmp ne i64 %3523, 0
  %3525 = and i1 %3522, %3524
  br i1 %3525, label %3526, label %3534

; <label>:3526:                                   ; preds = %3518
  %3527 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3515, %struct.Memory* %call2_427309)
  %.pre175 = load i64, i64* %3, align 8
  br label %routine_ucomisd_0xab0ec0___xmm0.exit

; <label>:3528:                                   ; preds = %block_4272ef
  %3529 = fcmp ogt double %.cast82, %3516
  br i1 %3529, label %3534, label %3530

; <label>:3530:                                   ; preds = %3528
  %3531 = fcmp olt double %.cast82, %3516
  br i1 %3531, label %3534, label %3532

; <label>:3532:                                   ; preds = %3530
  %3533 = fcmp oeq double %.cast82, %3516
  br i1 %3533, label %3534, label %3538

; <label>:3534:                                   ; preds = %3532, %3530, %3528, %3518
  %3535 = phi i8 [ 0, %3528 ], [ 0, %3530 ], [ 1, %3532 ], [ 1, %3518 ]
  %3536 = phi i8 [ 0, %3528 ], [ 0, %3530 ], [ 0, %3532 ], [ 1, %3518 ]
  %3537 = phi i8 [ 0, %3528 ], [ 1, %3530 ], [ 0, %3532 ], [ 1, %3518 ]
  store i8 %3535, i8* %15, align 1
  store i8 %3536, i8* %13, align 1
  store i8 %3537, i8* %12, align 1
  br label %3538

; <label>:3538:                                   ; preds = %3534, %3532
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_0xab0ec0___xmm0.exit

routine_ucomisd_0xab0ec0___xmm0.exit:             ; preds = %3538, %3526
  %3539 = phi i64 [ %.pre175, %3526 ], [ %3515, %3538 ]
  %3540 = phi %struct.Memory* [ %3527, %3526 ], [ %call2_427309, %3538 ]
  %3541 = add i64 %3539, 50
  %3542 = add i64 %3539, 6
  %3543 = load i8, i8* %12, align 1
  %3544 = load i8, i8* %15, align 1
  %3545 = or i8 %3544, %3543
  %3546 = icmp ne i8 %3545, 0
  %3547 = select i1 %3546, i64 %3541, i64 %3542
  store i64 %3547, i64* %3, align 8
  %.pre176 = load i64, i64* %RBP.i, align 8
  br i1 %3546, label %block_.L_42736a, label %block_42733e

block_42733e:                                     ; preds = %routine_ucomisd_0xab0ec0___xmm0.exit
  %3548 = add i64 %.pre176, -56
  %3549 = add i64 %3547, 5
  store i64 %3549, i64* %3, align 8
  %3550 = inttoptr i64 %3548 to i64*
  %3551 = load i64, i64* %3550, align 8
  store i64 %3551, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  store i64 %3551, i64* bitcast (%G_0xab0ec0_type* @G_0xab0ec0 to i64*), align 8
  %3552 = add i64 %.pre176, -16
  %3553 = add i64 %3547, 18
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3552 to i64*
  %3555 = load i64, i64* %3554, align 8
  store i64 %3555, i64* %RAX.i103, align 8
  %3556 = add i64 %3547, 20
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i32*
  %3558 = load i32, i32* %3557, align 4
  store i32 %3558, i32* bitcast (%G_0xab0ec8_type* @G_0xab0ec8 to i32*), align 8
  %3559 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %3560 = add i32 %3559, 1
  %3561 = zext i32 %3560 to i64
  store i64 %3561, i64* %RCX.i875, align 8
  %3562 = icmp eq i32 %3559, -1
  %3563 = icmp eq i32 %3560, 0
  %3564 = or i1 %3562, %3563
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %12, align 1
  %3566 = and i32 %3560, 255
  %3567 = tail call i32 @llvm.ctpop.i32(i32 %3566)
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = xor i8 %3569, 1
  store i8 %3570, i8* %13, align 1
  %3571 = xor i32 %3560, %3559
  %3572 = lshr i32 %3571, 4
  %3573 = trunc i32 %3572 to i8
  %3574 = and i8 %3573, 1
  store i8 %3574, i8* %14, align 1
  %3575 = zext i1 %3563 to i8
  store i8 %3575, i8* %15, align 1
  %3576 = lshr i32 %3560, 31
  %3577 = trunc i32 %3576 to i8
  store i8 %3577, i8* %16, align 1
  %3578 = lshr i32 %3559, 31
  %3579 = xor i32 %3576, %3578
  %3580 = add nuw nsw i32 %3579, %3576
  %3581 = icmp eq i32 %3580, 2
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %17, align 1
  %3583 = add i64 %3547, 44
  store i64 %3583, i64* %3, align 8
  store i32 %3560, i32* bitcast (%G_0xab0ecc_type* @G_0xab0ecc to i32*), align 8
  br label %block_.L_42736a

block_.L_42736a:                                  ; preds = %routine_ucomisd_0xab0ec0___xmm0.exit, %block_42733e
  %3584 = phi i64 [ %3583, %block_42733e ], [ %3541, %routine_ucomisd_0xab0ec0___xmm0.exit ]
  %3585 = add i64 %.pre176, -16
  %3586 = add i64 %3584, 4
  store i64 %3586, i64* %3, align 8
  %3587 = inttoptr i64 %3585 to i64*
  %3588 = load i64, i64* %3587, align 8
  store i64 %3588, i64* %RAX.i103, align 8
  %3589 = add i64 %3584, 7
  store i64 %3589, i64* %3, align 8
  %3590 = inttoptr i64 %3588 to i32*
  %3591 = load i32, i32* %3590, align 4
  store i8 0, i8* %12, align 1
  %3592 = and i32 %3591, 255
  %3593 = tail call i32 @llvm.ctpop.i32(i32 %3592)
  %3594 = trunc i32 %3593 to i8
  %3595 = and i8 %3594, 1
  %3596 = xor i8 %3595, 1
  store i8 %3596, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3597 = icmp eq i32 %3591, 0
  %3598 = zext i1 %3597 to i8
  store i8 %3598, i8* %15, align 1
  %3599 = lshr i32 %3591, 31
  %3600 = trunc i32 %3599 to i8
  store i8 %3600, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v220 = select i1 %3597, i64 13, i64 183
  %3601 = add i64 %3584, %.v220
  store i64 %3601, i64* %3, align 8
  br i1 %3597, label %block_427377, label %block_.L_427421

block_427377:                                     ; preds = %block_.L_42736a
  store i64 ptrtoint (%G__0x57c2e8_type* @G__0x57c2e8 to i64), i64* %RDI.i152, align 8
  %3602 = load i32, i32* bitcast (%G_0xab0ecc_type* @G_0xab0ecc to i32*), align 8
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RSI.i687, align 8
  %3604 = load i32, i32* bitcast (%G_0xab0ec8_type* @G_0xab0ec8 to i32*), align 8
  %3605 = zext i32 %3604 to i64
  store i64 %3605, i64* %RDX.i379, align 8
  %AL.i118 = bitcast %union.anon* %18 to i8*
  store i8 0, i8* %AL.i118, align 1
  %3606 = add i64 %3601, 174649
  %3607 = add i64 %3601, 31
  %3608 = load i64, i64* %6, align 8
  %3609 = add i64 %3608, -8
  %3610 = inttoptr i64 %3609 to i64*
  store i64 %3607, i64* %3610, align 8
  store i64 %3609, i64* %6, align 8
  store i64 %3606, i64* %3, align 8
  %call2_427391 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3606, %struct.Memory* %3540)
  %3611 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c302_type* @G__0x57c302 to i64), i64* %RSI.i687, align 8
  %3612 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %3612, i64* %RDI.i152, align 8
  %3613 = load i64, i64* bitcast (%G_0xab0ec0_type* @G_0xab0ec0 to i64*), align 8
  store i64 %3613, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %3614 = load i64, i64* %RBP.i, align 8
  %3615 = add i64 %3614, -396
  %3616 = load i32, i32* %EAX.i102, align 4
  %3617 = add i64 %3611, 33
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3615 to i32*
  store i32 %3616, i32* %3618, align 4
  %3619 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i118, align 1
  %3620 = add i64 %3619, -156391
  %3621 = add i64 %3619, 7
  %3622 = load i64, i64* %6, align 8
  %3623 = add i64 %3622, -8
  %3624 = inttoptr i64 %3623 to i64*
  store i64 %3621, i64* %3624, align 8
  store i64 %3623, i64* %6, align 8
  store i64 %3620, i64* %3, align 8
  %3625 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_427391)
  %3626 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c312_type* @G__0x57c312 to i64), i64* %RSI.i687, align 8
  %3627 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %3627, i64* %RDI.i152, align 8
  %3628 = load double, double* bitcast (%G_0xab0eb8_type* @G_0xab0eb8 to double*), align 8
  %3629 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %3630 = sitofp i32 %3629 to double
  store double %3630, double* %1472, align 1
  %3631 = fdiv double %3628, %3630
  store double %3631, double* %306, align 1
  store i64 0, i64* %62, align 1
  %3632 = load i64, i64* %RBP.i, align 8
  %3633 = add i64 %3632, -400
  %3634 = load i32, i32* %EAX.i102, align 4
  %3635 = add i64 %3626, 46
  store i64 %3635, i64* %3, align 8
  %3636 = inttoptr i64 %3633 to i32*
  store i32 %3634, i32* %3636, align 4
  %3637 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i118, align 1
  %3638 = add i64 %3637, -156444
  %3639 = add i64 %3637, 7
  %3640 = load i64, i64* %6, align 8
  %3641 = add i64 %3640, -8
  %3642 = inttoptr i64 %3641 to i64*
  store i64 %3639, i64* %3642, align 8
  store i64 %3641, i64* %6, align 8
  store i64 %3638, i64* %3, align 8
  %3643 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3625)
  %3644 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57c338_type* @G__0x57c338 to i64), i64* %RSI.i687, align 8
  %3645 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %3645, i64* %RDI.i152, align 8
  %3646 = load i64, i64* bitcast (%G_0xab0eb8_type* @G_0xab0eb8 to i64*), align 8
  store i64 %3646, i64* %307, align 1
  store double 0.000000e+00, double* %308, align 1
  %3647 = load i64, i64* %RBP.i, align 8
  %3648 = add i64 %3647, -404
  %3649 = load i32, i32* %EAX.i102, align 4
  %3650 = add i64 %3644, 33
  store i64 %3650, i64* %3, align 8
  %3651 = inttoptr i64 %3648 to i32*
  store i32 %3649, i32* %3651, align 4
  %3652 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i118, align 1
  %3653 = add i64 %3652, -156484
  %3654 = add i64 %3652, 7
  %3655 = load i64, i64* %6, align 8
  %3656 = add i64 %3655, -8
  %3657 = inttoptr i64 %3656 to i64*
  store i64 %3654, i64* %3657, align 8
  store i64 %3656, i64* %6, align 8
  store i64 %3653, i64* %3, align 8
  %3658 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %3643)
  %3659 = load i64, i64* %RBP.i, align 8
  %3660 = add i64 %3659, -408
  %3661 = load i32, i32* %EAX.i102, align 4
  %3662 = load i64, i64* %3, align 8
  %3663 = add i64 %3662, 6
  store i64 %3663, i64* %3, align 8
  %3664 = inttoptr i64 %3660 to i32*
  store i32 %3661, i32* %3664, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_427421

block_.L_427421:                                  ; preds = %block_.L_42736a, %block_427377
  %3665 = phi i64 [ %3601, %block_.L_42736a ], [ %.pre177, %block_427377 ]
  %MEMORY.59 = phi %struct.Memory* [ %3540, %block_.L_42736a ], [ %3658, %block_427377 ]
  %3666 = add i64 %3665, 5
  store i64 %3666, i64* %3, align 8
  br label %block_.L_427426

block_.L_427426:                                  ; preds = %block_.L_427421, %block_.L_4272e1
  %3667 = phi i64 [ %3479, %block_.L_4272e1 ], [ %3666, %block_.L_427421 ]
  %MEMORY.60 = phi %struct.Memory* [ %MEMORY.57, %block_.L_4272e1 ], [ %MEMORY.59, %block_.L_427421 ]
  %3668 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  store i8 0, i8* %12, align 1
  %3669 = and i32 %3668, 255
  %3670 = tail call i32 @llvm.ctpop.i32(i32 %3669)
  %3671 = trunc i32 %3670 to i8
  %3672 = and i8 %3671, 1
  %3673 = xor i8 %3672, 1
  store i8 %3673, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3674 = icmp eq i32 %3668, 0
  %3675 = zext i1 %3674 to i8
  store i8 %3675, i8* %15, align 1
  %3676 = lshr i32 %3668, 31
  %3677 = trunc i32 %3676 to i8
  store i8 %3677, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v221 = select i1 %3674, i64 14, i64 19
  %3678 = add i64 %3667, %.v221
  store i64 %3678, i64* %3, align 8
  br i1 %3674, label %block_427434, label %block_.L_427439

block_427434:                                     ; preds = %block_.L_427426
  %3679 = add i64 %3678, 45
  store i64 %3679, i64* %3, align 8
  br label %block_.L_427461

block_.L_427439:                                  ; preds = %block_.L_427426
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 561, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %3680, align 8
  %3681 = add i64 %3678, 175191
  %3682 = add i64 %3678, 40
  %3683 = load i64, i64* %6, align 8
  %3684 = add i64 %3683, -8
  %3685 = inttoptr i64 %3684 to i64*
  store i64 %3682, i64* %3685, align 8
  store i64 %3684, i64* %6, align 8
  store i64 %3681, i64* %3, align 8
  %call2_42745c = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %3681, %struct.Memory* %MEMORY.60)
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_427461

block_.L_427461:                                  ; preds = %block_.L_427439, %block_427434
  %3686 = phi i64 [ %.pre178, %block_.L_427439 ], [ %3679, %block_427434 ]
  %MEMORY.61 = phi %struct.Memory* [ %call2_42745c, %block_.L_427439 ], [ %MEMORY.60, %block_427434 ]
  %3687 = add i64 %3686, -124721
  %3688 = add i64 %3686, 5
  %3689 = load i64, i64* %6, align 8
  %3690 = add i64 %3689, -8
  %3691 = inttoptr i64 %3690 to i64*
  store i64 %3688, i64* %3691, align 8
  store i64 %3690, i64* %6, align 8
  store i64 %3687, i64* %3, align 8
  %call2_427461 = tail call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* nonnull %0, i64 %3687, %struct.Memory* %MEMORY.61)
  %3692 = load i32, i32* %EAX.i102, align 4
  %3693 = load i64, i64* %3, align 8
  %3694 = add i64 %3693, 3
  store i8 0, i8* %12, align 1
  %3695 = and i32 %3692, 255
  %3696 = tail call i32 @llvm.ctpop.i32(i32 %3695)
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = xor i8 %3698, 1
  store i8 %3699, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %3700 = icmp eq i32 %3692, 0
  %3701 = zext i1 %3700 to i8
  store i8 %3701, i8* %15, align 1
  %3702 = lshr i32 %3692, 31
  %3703 = trunc i32 %3702 to i8
  store i8 %3703, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %3704 = icmp ne i8 %3703, 0
  %.v83 = select i1 %3704, i64 6, i64 11
  %3705 = add i64 %3694, %.v83
  store i64 %3705, i64* %3, align 8
  br i1 %3704, label %block_42746f, label %block_.L_427474

block_42746f:                                     ; preds = %block_.L_427461
  %3706 = add i64 %3705, 45
  store i64 %3706, i64* %3, align 8
  br label %block_.L_42749c

block_.L_427474:                                  ; preds = %block_.L_427461
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 562, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %3707, align 8
  %3708 = add i64 %3705, 175132
  %3709 = add i64 %3705, 40
  %3710 = load i64, i64* %6, align 8
  %3711 = add i64 %3710, -8
  %3712 = inttoptr i64 %3711 to i64*
  store i64 %3709, i64* %3712, align 8
  store i64 %3711, i64* %6, align 8
  store i64 %3708, i64* %3, align 8
  %call2_427497 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %3708, %struct.Memory* %call2_427461)
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_42749c

block_.L_42749c:                                  ; preds = %block_.L_427474, %block_42746f
  %3713 = phi i64 [ %.pre179, %block_.L_427474 ], [ %3706, %block_42746f ]
  %MEMORY.62 = phi %struct.Memory* [ %call2_427497, %block_.L_427474 ], [ %call2_427461, %block_42746f ]
  %3714 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %3715 = zext i32 %3714 to i64
  store i64 %3715, i64* %RAX.i103, align 8
  %3716 = load i64, i64* %RBP.i, align 8
  %3717 = add i64 %3716, -44
  %3718 = add i64 %3713, 10
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3717 to i32*
  %3720 = load i32, i32* %3719, align 4
  %3721 = sub i32 %3714, %3720
  %3722 = icmp ult i32 %3714, %3720
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %12, align 1
  %3724 = and i32 %3721, 255
  %3725 = tail call i32 @llvm.ctpop.i32(i32 %3724)
  %3726 = trunc i32 %3725 to i8
  %3727 = and i8 %3726, 1
  %3728 = xor i8 %3727, 1
  store i8 %3728, i8* %13, align 1
  %3729 = xor i32 %3720, %3714
  %3730 = xor i32 %3729, %3721
  %3731 = lshr i32 %3730, 4
  %3732 = trunc i32 %3731 to i8
  %3733 = and i8 %3732, 1
  store i8 %3733, i8* %14, align 1
  %3734 = icmp eq i32 %3721, 0
  %3735 = zext i1 %3734 to i8
  store i8 %3735, i8* %15, align 1
  %3736 = lshr i32 %3721, 31
  %3737 = trunc i32 %3736 to i8
  store i8 %3737, i8* %16, align 1
  %3738 = lshr i32 %3714, 31
  %3739 = lshr i32 %3720, 31
  %3740 = xor i32 %3739, %3738
  %3741 = xor i32 %3736, %3738
  %3742 = add nuw nsw i32 %3741, %3740
  %3743 = icmp eq i32 %3742, 2
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %17, align 1
  %.v222 = select i1 %3734, i64 16, i64 21
  %3745 = add i64 %3713, %.v222
  store i64 %3745, i64* %3, align 8
  br i1 %3734, label %block_4274ac, label %block_.L_4274b1

block_4274ac:                                     ; preds = %block_.L_42749c
  %3746 = add i64 %3745, 45
  store i64 %3746, i64* %3, align 8
  br label %block_.L_4274d9

block_.L_4274b1:                                  ; preds = %block_.L_42749c
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI.i152, align 8
  store i64 563, i64* %RSI.i687, align 8
  store i64 ptrtoint (%G__0x57c353_type* @G__0x57c353 to i64), i64* %RDX.i379, align 8
  store i64 4294967295, i64* %RAX.i103, align 8
  store i64 4294967295, i64* %RCX.i875, align 8
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %3747, align 8
  %3748 = add i64 %3745, 175071
  %3749 = add i64 %3745, 40
  %3750 = load i64, i64* %6, align 8
  %3751 = add i64 %3750, -8
  %3752 = inttoptr i64 %3751 to i64*
  store i64 %3749, i64* %3752, align 8
  store i64 %3751, i64* %6, align 8
  store i64 %3748, i64* %3, align 8
  %call2_4274d4 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %3748, %struct.Memory* %MEMORY.62)
  %.pre180 = load i64, i64* %RBP.i, align 8
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_4274d9

block_.L_4274d9:                                  ; preds = %block_.L_4274b1, %block_4274ac
  %3753 = phi i64 [ %.pre181, %block_.L_4274b1 ], [ %3746, %block_4274ac ]
  %3754 = phi i64 [ %.pre180, %block_.L_4274b1 ], [ %3716, %block_4274ac ]
  %MEMORY.63 = phi %struct.Memory* [ %call2_4274d4, %block_.L_4274b1 ], [ %MEMORY.62, %block_4274ac ]
  %3755 = add i64 %3754, -36
  %3756 = add i64 %3753, 5
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to float*
  %3758 = load float, float* %3757, align 4
  %3759 = tail call float @llvm.trunc.f32(float %3758)
  %3760 = tail call float @llvm.fabs.f32(float %3759)
  %3761 = fcmp ogt float %3760, 0x41E0000000000000
  %3762 = fptosi float %3759 to i32
  %3763 = zext i32 %3762 to i64
  %3764 = select i1 %3761, i64 2147483648, i64 %3763
  store i64 %3764, i64* %RAX.i103, align 8
  %3765 = add i64 %3754, -4
  %3766 = trunc i64 %3764 to i32
  %3767 = add i64 %3753, 8
  store i64 %3767, i64* %3, align 8
  %3768 = inttoptr i64 %3765 to i32*
  store i32 %3766, i32* %3768, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_4274e1

block_.L_4274e1:                                  ; preds = %block_.L_4274d9, %block_.L_42645c
  %3769 = phi i64 [ %.pre182, %block_.L_4274d9 ], [ %282, %block_.L_42645c ]
  %MEMORY.64 = phi %struct.Memory* [ %MEMORY.63, %block_.L_4274d9 ], [ %MEMORY.2, %block_.L_42645c ]
  %3770 = load i64, i64* %RBP.i, align 8
  %3771 = add i64 %3770, -4
  %3772 = add i64 %3769, 3
  store i64 %3772, i64* %3, align 8
  %3773 = inttoptr i64 %3771 to i32*
  %3774 = load i32, i32* %3773, align 4
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %RAX.i103, align 8
  %3776 = load i64, i64* %6, align 8
  %3777 = add i64 %3776, 416
  store i64 %3777, i64* %6, align 8
  %3778 = icmp ugt i64 %3776, -417
  %3779 = zext i1 %3778 to i8
  store i8 %3779, i8* %12, align 1
  %3780 = trunc i64 %3777 to i32
  %3781 = and i32 %3780, 255
  %3782 = tail call i32 @llvm.ctpop.i32(i32 %3781)
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  %3785 = xor i8 %3784, 1
  store i8 %3785, i8* %13, align 1
  %3786 = xor i64 %3777, %3776
  %3787 = lshr i64 %3786, 4
  %3788 = trunc i64 %3787 to i8
  %3789 = and i8 %3788, 1
  store i8 %3789, i8* %14, align 1
  %3790 = icmp eq i64 %3777, 0
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %15, align 1
  %3792 = lshr i64 %3777, 63
  %3793 = trunc i64 %3792 to i8
  store i8 %3793, i8* %16, align 1
  %3794 = lshr i64 %3776, 63
  %3795 = xor i64 %3792, %3794
  %3796 = add nuw nsw i64 %3795, %3792
  %3797 = icmp eq i64 %3796, 2
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %17, align 1
  %3799 = add i64 %3769, 11
  store i64 %3799, i64* %3, align 8
  %3800 = add i64 %3776, 424
  %3801 = inttoptr i64 %3777 to i64*
  %3802 = load i64, i64* %3801, align 8
  store i64 %3802, i64* %RBP.i, align 8
  store i64 %3800, i64* %6, align 8
  %3803 = add i64 %3769, 12
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3800 to i64*
  %3805 = load i64, i64* %3804, align 8
  store i64 %3805, i64* %3, align 8
  %3806 = add i64 %3776, 432
  store i64 %3806, i64* %6, align 8
  ret %struct.Memory* %MEMORY.64
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
define %struct.Memory* @routine_subq__0x1a0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -416
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 416
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
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.start_timer(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x7ae448___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x7ae448_type* @G__0x7ae448 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xbcdde__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xbcdde__rip__type* @G_0xbcdde__rip_ to i64)
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
define %struct.Memory* @routine_movq__0xb6e920___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb6e920_type* @G__0xb6e920 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x5a4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1444, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
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
define %struct.Memory* @routine_movl__0x0__0xb4a000(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb4a000_type* @G_0xb4a000 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb4a004(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb4a004_type* @G_0xb4a004 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb4a008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb4a008_type* @G_0xb4a008 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb4a00c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb4a00c_type* @G_0xb4a00c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb4a010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb4a010_type* @G_0xb4a010 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb4a014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xb4a014_type* @G_0xb4a014 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movss_MINUS0x44__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
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
define %struct.Memory* @routine_callq_.get_level(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4263d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c05a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c05a_type* @G__0x57c05a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae448___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.reset_engine(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb8b854___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0fd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0fd8_type* @G_0xab0fd8 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_426468(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x7ae458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae458_type* @G_0x7ae458 to i32*), align 8
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
define %struct.Memory* @routine_jl_.L_42641a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.stones_on_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x7ae458___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae458_type* @G_0x7ae458 to i32*), align 8
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
define %struct.Memory* @routine_jg_.L_426468(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.find_mirror_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_426442(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42645c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c066___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c066_type* @G__0x57c066 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4274e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x63___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 99, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.examine_position(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c08f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c08f_type* @G__0x57c08f to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movsd_0xbcac8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbcac8__rip__type* @G_0xbcac8__rip_ to i64)
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
define %struct.Memory* @routine_callq_.time_report(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__0x7ae448(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %6 = add i32 %5, -8
  %7 = icmp ult i32 %5, 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_426723(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xab0f18___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xab0f1c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.estimate_score(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4264ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0f10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_4266c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %10 = fcmp uno float %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %block_400488
  %12 = fadd float %8, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:21:                                     ; preds = %block_400488
  %22 = fcmp ogt float %8, %9
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %21
  %24 = fcmp olt float %8, %9
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp oeq float %8, %9
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25, %23, %21, %11
  %28 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 1, %25 ], [ 1, %11 ]
  %29 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 1, %11 ]
  %30 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 0, %25 ], [ 1, %11 ]
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %27, %25
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %34, %19
  %38 = phi %struct.Memory* [ %20, %19 ], [ %2, %34 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_426594(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_426594(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579da7___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579daa___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xab0f18___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f18_type* @G_0xab0f18 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
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
define %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp eq i8 %10, 0
  %12 = load i64, i64* %RAX, align 8
  %13 = select i1 %11, i64 %3, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_0xab0f18___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*), align 8
  %10 = fcmp uno float %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %block_400488
  %12 = fadd float %8, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:21:                                     ; preds = %block_400488
  %22 = fcmp ogt float %8, %9
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %21
  %24 = fcmp olt float %8, %9
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp oeq float %8, %9
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25, %23, %21, %11
  %28 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 1, %25 ], [ 1, %11 ]
  %29 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 1, %11 ]
  %30 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 0, %25 ], [ 1, %11 ]
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %27, %25
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %34, %19
  %38 = phi %struct.Memory* [ %20, %19 ], [ %2, %34 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_426560(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movd__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RAX to [2 x i32]*
  %9 = bitcast i64* %RAX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movd__eax___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42656e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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
define %struct.Memory* @routine_movq__0x57a0c7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a0c7_type* @G__0x57a0c7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_jmpq_.L_4266b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4265ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4265fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x7c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -124
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xab0f1c___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
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

define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*), align 8
  %10 = fcmp uno float %8, %9
  br i1 %10, label %11, label %21

; <label>:11:                                     ; preds = %block_400488
  %12 = fadd float %8, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %27

; <label>:19:                                     ; preds = %11
  %20 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:21:                                     ; preds = %block_400488
  %22 = fcmp ogt float %8, %9
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %21
  %24 = fcmp olt float %8, %9
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp oeq float %8, %9
  br i1 %26, label %27, label %34

; <label>:27:                                     ; preds = %25, %23, %21, %11
  %28 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 1, %25 ], [ 1, %11 ]
  %29 = phi i8 [ 0, %21 ], [ 0, %23 ], [ 0, %25 ], [ 1, %11 ]
  %30 = phi i8 [ 0, %21 ], [ 1, %23 ], [ 0, %25 ], [ 1, %11 ]
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %27, %25
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %34, %19
  %38 = phi %struct.Memory* [ %20, %19 ], [ %2, %34 ]
  ret %struct.Memory* %38
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_jbe_.L_42666b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xab0f1c___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
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
define %struct.Memory* @routine_jmpq_.L_42667c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -148
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
define %struct.Memory* @routine_movq__0x57a0df___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a0df_type* @G__0x57a0df to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fflush_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c0a0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c0a0_type* @G__0x57c0a0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc882__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc882__rip__type* @G_0xbc882__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_jne_.L_42670c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42671e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42672f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0ee4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ee4_type* @G_0xab0ee4 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_426742(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.print_moyo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0ee8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_42681b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0xab0ee8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_42677d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c0af___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c0af_type* @G__0x57c0af to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0xab0ee8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_4267aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c0d3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c0d3_type* @G__0x57c0d3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0ee8___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ee8_type* @G_0xab0ee8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.showboard(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426816(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c0ed___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c0ed_type* @G__0x57c0ed to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c10f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c10f_type* @G__0x57c10f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42681b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_42682e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426856(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bf39_type* @G__0x57bf39 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x182___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 386, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.worm_reasons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f28___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_426887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %18 = xor i32 %6, 16
  %19 = xor i32 %18, %7
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %7, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %6, 31
  %31 = xor i32 %27, %30
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_reasons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__edi__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fuseki(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4268b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4268dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x194___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 404, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.shapes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c135___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c135_type* @G__0x57c135 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc659__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc659__rip__type* @G_0xbc659__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_jne_.L_426927(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42694f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x19a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 410, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.combinations(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c13c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c13c_type* @G__0x57c13c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc5f0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc5f0__rip__type* @G_0xbc5f0__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_jne_.L_426990(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4269b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x19f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 415, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.review_move_reasons(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426a1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4269f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426a18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a10c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a10c_type* @G__0x57a10c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426a1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_426a30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426a58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1a5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 421, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c149___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c149_type* @G__0x57c149 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc4ef__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc4ef__rip__type* @G_0xbc4ef__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0xbc542__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc542__rip__type* @G_0xbc542__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_jbe_.L_426b6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0fbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_426b6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xbc66d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xbc66d__rip__type* @G_0xbc66d__rip_ to i64)
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
define %struct.Memory* @routine_callq_.revise_thrashing_dragon(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426b44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0fb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0fb8_type* @G_0xab0fb8 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_426ada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.endgame_shapes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xab0f14___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xab0f14_type* @G_0xab0f14 to i32*), align 8
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 %7, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to float*
  store float 0.000000e+00, float* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 12
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_426b3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426b18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426b3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c15d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c15d_type* @G__0x57c15d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426b3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426b44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c19b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c19b_type* @G__0x57c19b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc403__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc403__rip__type* @G_0xbc403__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
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
define %struct.Memory* @routine_movsd_0xbc456__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc456__rip__type* @G_0xbc456__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x24__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
define %struct.Memory* @routine_jb_.L_426c98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426c98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426baa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426bd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1bd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 445, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_426c37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426c10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426c32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_426c37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_426c4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426c72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1c1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 449, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c1c3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c1c3_type* @G__0x57c1c3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc2d5__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc2d5__rip__type* @G_0xbc2d5__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_jbe_.L_426d6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426ccf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.revise_semeai(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426d49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426d44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_426d1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426d3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_426d44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_426d49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc1fe__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc1fe__rip__type* @G_0xbc1fe__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_426e39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.fill_liberty(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426e39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_426db6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xbc34e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xbc34e__rip__type* @G_0xbc34e__rip_ to i64)
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
define %struct.Memory* @routine_jne_.L_426dd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426df3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c1cb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c1cb_type* @G__0x57c1cb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
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
define %struct.Memory* @routine_callq_.record_top_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.move_considered(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c1e5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c1e5_type* @G__0x57c1e5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbc134__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc134__rip__type* @G_0xbc134__rip_ to i64)
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
define %struct.Memory* @routine_jbe_.L_427023(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_427023(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0fd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0fd4_type* @G_0xab0fd4 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_426ecd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xab0fd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0fd0_type* @G_0xab0fd0 to i32*), align 8
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
define %struct.Memory* @routine_cmpl__0x0__0xab0ed0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ed0_type* @G_0xab0ed0 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_427023(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_426ea8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xbc13b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc13b__rip__type* @G_0xbc13b__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_0xab0f14___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_426ecd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xbc11e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbc11e__rip__type* @G_0xbc11e__rip_ to i64)
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
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.aftermath_genmove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_427023(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426f08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.is_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_426f24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426fa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1f2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 498, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c1f2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c1f2_type* @G__0x57c1f2 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_movl___rcx____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x128__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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
define %struct.Memory* @routine_movl_MINUS0x130__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
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
define %struct.Memory* @routine_movss_0xbc164__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xbc164__rip__type* @G_0xbc164__rip_ to i64)
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
define %struct.Memory* @routine_jne_.L_426fc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_426fdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c209___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c209_type* @G__0x57c209 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c220___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c220_type* @G__0x57c220 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbbf4a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbbf4a__rip__type* @G_0xbbf4a__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
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
define %struct.Memory* @routine_jbe_.L_42719a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42719a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42719a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42719a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42708f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4270ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_427127(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x202___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 514, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x144__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
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
define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -340
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x150__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -344
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x154__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -340
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
define %struct.Memory* @routine_movl_MINUS0x158__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -344
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
define %struct.Memory* @routine_movss_0xbbfdd__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xbbfdd__rip__type* @G_0xbbfdd__rip_ to i64)
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
define %struct.Memory* @routine_jne_.L_427147(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_427164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbbdd3__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbbdd3__rip__type* @G_0xbbdd3__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
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
define %struct.Memory* @routine_jbe_.L_4271e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4271bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4271d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a135___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a135_type* @G__0x57a135 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42721f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4271f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42721a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a146___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a146_type* @G__0x57a146 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0ed8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ed8_type* @G_0xab0ed8 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_4272e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c232___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c232_type* @G__0x57c232 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4a000___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a000_type* @G_0xb4a000 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c24c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c24c_type* @G__0x57c24c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4a004___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a004_type* @G_0xb4a004 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x57c266___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c266_type* @G__0x57c266 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4a008___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a008_type* @G_0xb4a008 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movq__0x57c280___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c280_type* @G__0x57c280 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4a00c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a00c_type* @G_0xb4a00c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x57c29a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c29a_type* @G__0x57c29a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4a010___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a010_type* @G_0xb4a010 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__0x57c2b4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c2b4_type* @G__0x57c2b4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4a014___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb4a014_type* @G_0xb4a014 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0f0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f0c_type* @G_0xab0f0c to i32*), align 8
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
define %struct.Memory* @routine_je_.L_427426(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c2ce___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c2ce_type* @G__0x57c2ce to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xbbc5d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xbbc5d__rip__type* @G_0xbbc5d__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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
define %struct.Memory* @routine_addsd_0xab0eb8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0xab0eb8_type* @G_0xab0eb8 to double*), align 8
  %9 = fadd double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0xab0eb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0xab0eb8_type* @G_0xab0eb8 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_0xab0ec0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0xab0ec0_type* @G_0xab0ec0 to double*), align 8
  %9 = fcmp uno double %7, %8
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %block_400488
  %11 = fadd double %7, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %10
  %19 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:20:                                     ; preds = %block_400488
  %21 = fcmp ogt double %7, %8
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %20
  %23 = fcmp olt double %7, %8
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp oeq double %7, %8
  br i1 %25, label %26, label %33

; <label>:26:                                     ; preds = %24, %22, %20, %10
  %27 = phi i8 [ 0, %20 ], [ 0, %22 ], [ 1, %24 ], [ 1, %10 ]
  %28 = phi i8 [ 0, %20 ], [ 0, %22 ], [ 0, %24 ], [ 1, %10 ]
  %29 = phi i8 [ 0, %20 ], [ 1, %22 ], [ 0, %24 ], [ 1, %10 ]
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %32, align 1
  br label %33

; <label>:33:                                     ; preds = %26, %24
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %33, %18
  %37 = phi %struct.Memory* [ %19, %18 ], [ %2, %33 ]
  ret %struct.Memory* %37
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42736a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__0xab0ec0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0xab0ec0_type* @G_0xab0ec0 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xab0ec8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0ec8_type* @G_0xab0ec8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xafdfb0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0xab0ecc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0ecc_type* @G_0xab0ecc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_427421(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57c2e8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c2e8_type* @G__0x57c2e8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0ecc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ecc_type* @G_0xab0ecc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0ec8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0ec8_type* @G_0xab0ec8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c302___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c302_type* @G__0x57c302 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xab0ec0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ec0_type* @G_0xab0ec0 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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
define %struct.Memory* @routine_movq__0x57c312___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c312_type* @G__0x57c312 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0xab0eb8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0eb8_type* @G_0xab0eb8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_0xafdfb0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*), align 8
  %7 = sitofp i32 %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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
define %struct.Memory* @routine_movq__0x57c338___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c338_type* @G__0x57c338 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_427426(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_427439(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_427461(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x231___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 561, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.test_gray_border(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_427474(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42749c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x232___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 562, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bfef_type* @G__0x57bfef to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_jne_.L_4274b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4274d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x233___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 563, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c353___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c353_type* @G__0x57c353 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to float*
  %8 = load float, float* %7, align 4
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_addq__0x1a0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 416
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -417
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

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
