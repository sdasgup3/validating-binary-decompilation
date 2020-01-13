; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1116d__rip__4205771__type = type <{ [16 x i8] }>
%G_0x1149d__rip__4205011__type = type <{ [16 x i8] }>
%G_0x11926__rip__4203802__type = type <{ [16 x i8] }>
%G_0x12faa__rip__4198022__type = type <{ [16 x i8] }>
%G_0x217b76__rip__4203794__type = type <{ [16 x i8] }>
%G_0x217e82__rip__4203014__type = type <{ [16 x i8] }>
%G_0x21817c__rip__4202252__type = type <{ [8 x i8] }>
%G_0x21846b__rip__4201501__type = type <{ [16 x i8] }>
%G_0x2187b3__rip__4200661__type = type <{ [4 x i8] }>
%G_0x218af2__rip__4199830__type = type <{ [4 x i8] }>
%G_0x218e27__rip__4199009__type = type <{ [4 x i8] }>
%G_0x219174__rip__4198164__type = type <{ [4 x i8] }>
%G_0x61a080_type = type <{ [4 x i8] }>
%G_0x61a088_type = type <{ [16 x i8] }>
%G__0x413fda_type = type <{ [4 x i8] }>
%G__0x413fdb_type = type <{ [4 x i8] }>
%G__0x413fef_type = type <{ [4 x i8] }>
%G__0x413ff0_type = type <{ [4 x i8] }>
%G__0x41402b_type = type <{ [4 x i8] }>
%G__0x41402c_type = type <{ [4 x i8] }>
%G__0x414069_type = type <{ [4 x i8] }>
%G__0x41406a_type = type <{ [4 x i8] }>
%G__0x4140ce_type = type <{ [4 x i8] }>
%G__0x4140cf_type = type <{ [4 x i8] }>
%G__0x41414b_type = type <{ [4 x i8] }>
%G__0x41414c_type = type <{ [4 x i8] }>
%G__0x41417e_type = type <{ [4 x i8] }>
%G__0x41417f_type = type <{ [4 x i8] }>
%G__0x4141af_type = type <{ [4 x i8] }>
%G__0x4141b0_type = type <{ [4 x i8] }>
%G__0x4141e2_type = type <{ [4 x i8] }>
%G__0x4141e3_type = type <{ [4 x i8] }>
%G__0x4141f8_type = type <{ [4 x i8] }>
%G__0x4141f9_type = type <{ [4 x i8] }>
%G__0x414236_type = type <{ [4 x i8] }>
%G__0x414237_type = type <{ [4 x i8] }>
%G__0x414276_type = type <{ [4 x i8] }>
%G__0x414277_type = type <{ [4 x i8] }>
%G__0x4142de_type = type <{ [4 x i8] }>
%G__0x4142df_type = type <{ [4 x i8] }>
%G__0x41435f_type = type <{ [4 x i8] }>
%G__0x414360_type = type <{ [4 x i8] }>
%G__0x414394_type = type <{ [4 x i8] }>
%G__0x414395_type = type <{ [4 x i8] }>
%G__0x4143c7_type = type <{ [4 x i8] }>
%G__0x4143c8_type = type <{ [4 x i8] }>
%G__0x4143fc_type = type <{ [4 x i8] }>
%G__0x4143fd_type = type <{ [4 x i8] }>
%G__0x414412_type = type <{ [4 x i8] }>
%G__0x414413_type = type <{ [4 x i8] }>
%G__0x414450_type = type <{ [4 x i8] }>
%G__0x414451_type = type <{ [4 x i8] }>
%G__0x414490_type = type <{ [4 x i8] }>
%G__0x414491_type = type <{ [4 x i8] }>
%G__0x4144f8_type = type <{ [4 x i8] }>
%G__0x4144f9_type = type <{ [4 x i8] }>
%G__0x414579_type = type <{ [4 x i8] }>
%G__0x41457a_type = type <{ [4 x i8] }>
%G__0x4145ae_type = type <{ [4 x i8] }>
%G__0x4145af_type = type <{ [4 x i8] }>
%G__0x4145e1_type = type <{ [4 x i8] }>
%G__0x4145e2_type = type <{ [4 x i8] }>
%G__0x414616_type = type <{ [8 x i8] }>
%G__0x414617_type = type <{ [4 x i8] }>
%G__0x41462c_type = type <{ [8 x i8] }>
%G__0x41462d_type = type <{ [4 x i8] }>
%G__0x41464a_type = type <{ [8 x i8] }>
%G__0x41466a_type = type <{ [8 x i8] }>
%G__0x41466b_type = type <{ [4 x i8] }>
%G__0x414685_type = type <{ [8 x i8] }>
%G__0x4146aa_type = type <{ [8 x i8] }>
%G__0x4146ab_type = type <{ [4 x i8] }>
%G__0x4146c5_type = type <{ [8 x i8] }>
%G__0x4146eb_type = type <{ [8 x i8] }>
%G__0x414712_type = type <{ [8 x i8] }>
%G__0x414713_type = type <{ [4 x i8] }>
%G__0x41472b_type = type <{ [8 x i8] }>
%G__0x41474e_type = type <{ [8 x i8] }>
%G__0x414772_type = type <{ [8 x i8] }>
%G__0x414793_type = type <{ [8 x i8] }>
%G__0x414794_type = type <{ [4 x i8] }>
%G__0x4147a9_type = type <{ [8 x i8] }>
%G__0x4147c8_type = type <{ [8 x i8] }>
%G__0x4147c9_type = type <{ [4 x i8] }>
%G__0x4147dd_type = type <{ [8 x i8] }>
%G__0x4147fb_type = type <{ [8 x i8] }>
%G__0x4147fc_type = type <{ [4 x i8] }>
%G__0x414811_type = type <{ [8 x i8] }>
%G__0x414830_type = type <{ [8 x i8] }>
%G__0x414843_type = type <{ [8 x i8] }>
%G__0x41485e_type = type <{ [8 x i8] }>
%G__0x41487b_type = type <{ [8 x i8] }>
%G__0x414893_type = type <{ [8 x i8] }>
%G__0x4148b5_type = type <{ [8 x i8] }>
%G__0x4148cd_type = type <{ [8 x i8] }>
%G__0x4148f0_type = type <{ [8 x i8] }>
%G__0x414914_type = type <{ [8 x i8] }>
%G__0x41492a_type = type <{ [8 x i8] }>
%G__0x41494a_type = type <{ [8 x i8] }>
%G__0x41496b_type = type <{ [8 x i8] }>
%G__0x414989_type = type <{ [8 x i8] }>
%G__0x41499d_type = type <{ [8 x i8] }>
%G__0x4149b9_type = type <{ [8 x i8] }>
%G__0x4149d7_type = type <{ [8 x i8] }>
%G__0x4149f0_type = type <{ [8 x i8] }>
%G__0x414a13_type = type <{ [8 x i8] }>
%G__0x414a2c_type = type <{ [8 x i8] }>
%G__0x414a50_type = type <{ [8 x i8] }>
%G__0x414a75_type = type <{ [8 x i8] }>
%G__0x414a8c_type = type <{ [8 x i8] }>
%G__0x414aad_type = type <{ [8 x i8] }>
%G__0x414acf_type = type <{ [8 x i8] }>
%G__0x61a0c0_type = type <{ [8 x i8] }>
%G__0x629ac0_type = type <{ [8 x i8] }>
%G__0x6317c0_type = type <{ [8 x i8] }>
%G__0x6411c0_type = type <{ [4 x i8] }>
%G__0x650bc0_type = type <{ [4 x i8] }>
%G__0x6588c0_type = type <{ [4 x i8] }>
%G__0x6605c0_type = type <{ [4 x i8] }>
%G__0x664440_type = type <{ [4 x i8] }>
%G__0x6682c0_type = type <{ [4 x i8] }>
%G__0x66a200_type = type <{ [4 x i8] }>
%G__0x66c140_type = type <{ [4 x i8] }>
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
@G_0x1116d__rip__4205771_ = local_unnamed_addr global %G_0x1116d__rip__4205771__type zeroinitializer
@G_0x1149d__rip__4205011_ = local_unnamed_addr global %G_0x1149d__rip__4205011__type zeroinitializer
@G_0x11926__rip__4203802_ = local_unnamed_addr global %G_0x11926__rip__4203802__type zeroinitializer
@G_0x12faa__rip__4198022_ = local_unnamed_addr global %G_0x12faa__rip__4198022__type zeroinitializer
@G_0x217b76__rip__4203794_ = local_unnamed_addr global %G_0x217b76__rip__4203794__type zeroinitializer
@G_0x217e82__rip__4203014_ = local_unnamed_addr global %G_0x217e82__rip__4203014__type zeroinitializer
@G_0x21817c__rip__4202252_ = local_unnamed_addr global %G_0x21817c__rip__4202252__type zeroinitializer
@G_0x21846b__rip__4201501_ = local_unnamed_addr global %G_0x21846b__rip__4201501__type zeroinitializer
@G_0x2187b3__rip__4200661_ = local_unnamed_addr global %G_0x2187b3__rip__4200661__type zeroinitializer
@G_0x218af2__rip__4199830_ = local_unnamed_addr global %G_0x218af2__rip__4199830__type zeroinitializer
@G_0x218e27__rip__4199009_ = local_unnamed_addr global %G_0x218e27__rip__4199009__type zeroinitializer
@G_0x219174__rip__4198164_ = local_unnamed_addr global %G_0x219174__rip__4198164__type zeroinitializer
@G_0x61a080 = local_unnamed_addr global %G_0x61a080_type zeroinitializer
@G_0x61a088 = local_unnamed_addr global %G_0x61a088_type zeroinitializer
@G__0x413fda = global %G__0x413fda_type zeroinitializer
@G__0x413fdb = global %G__0x413fdb_type zeroinitializer
@G__0x413fef = global %G__0x413fef_type zeroinitializer
@G__0x413ff0 = global %G__0x413ff0_type zeroinitializer
@G__0x41402b = global %G__0x41402b_type zeroinitializer
@G__0x41402c = global %G__0x41402c_type zeroinitializer
@G__0x414069 = global %G__0x414069_type zeroinitializer
@G__0x41406a = global %G__0x41406a_type zeroinitializer
@G__0x4140ce = global %G__0x4140ce_type zeroinitializer
@G__0x4140cf = global %G__0x4140cf_type zeroinitializer
@G__0x41414b = global %G__0x41414b_type zeroinitializer
@G__0x41414c = global %G__0x41414c_type zeroinitializer
@G__0x41417e = global %G__0x41417e_type zeroinitializer
@G__0x41417f = global %G__0x41417f_type zeroinitializer
@G__0x4141af = global %G__0x4141af_type zeroinitializer
@G__0x4141b0 = global %G__0x4141b0_type zeroinitializer
@G__0x4141e2 = global %G__0x4141e2_type zeroinitializer
@G__0x4141e3 = global %G__0x4141e3_type zeroinitializer
@G__0x4141f8 = global %G__0x4141f8_type zeroinitializer
@G__0x4141f9 = global %G__0x4141f9_type zeroinitializer
@G__0x414236 = global %G__0x414236_type zeroinitializer
@G__0x414237 = global %G__0x414237_type zeroinitializer
@G__0x414276 = global %G__0x414276_type zeroinitializer
@G__0x414277 = global %G__0x414277_type zeroinitializer
@G__0x4142de = global %G__0x4142de_type zeroinitializer
@G__0x4142df = global %G__0x4142df_type zeroinitializer
@G__0x41435f = global %G__0x41435f_type zeroinitializer
@G__0x414360 = global %G__0x414360_type zeroinitializer
@G__0x414394 = global %G__0x414394_type zeroinitializer
@G__0x414395 = global %G__0x414395_type zeroinitializer
@G__0x4143c7 = global %G__0x4143c7_type zeroinitializer
@G__0x4143c8 = global %G__0x4143c8_type zeroinitializer
@G__0x4143fc = global %G__0x4143fc_type zeroinitializer
@G__0x4143fd = global %G__0x4143fd_type zeroinitializer
@G__0x414412 = global %G__0x414412_type zeroinitializer
@G__0x414413 = global %G__0x414413_type zeroinitializer
@G__0x414450 = global %G__0x414450_type zeroinitializer
@G__0x414451 = global %G__0x414451_type zeroinitializer
@G__0x414490 = global %G__0x414490_type zeroinitializer
@G__0x414491 = global %G__0x414491_type zeroinitializer
@G__0x4144f8 = global %G__0x4144f8_type zeroinitializer
@G__0x4144f9 = global %G__0x4144f9_type zeroinitializer
@G__0x414579 = global %G__0x414579_type zeroinitializer
@G__0x41457a = global %G__0x41457a_type zeroinitializer
@G__0x4145ae = global %G__0x4145ae_type zeroinitializer
@G__0x4145af = global %G__0x4145af_type zeroinitializer
@G__0x4145e1 = global %G__0x4145e1_type zeroinitializer
@G__0x4145e2 = global %G__0x4145e2_type zeroinitializer
@G__0x414616 = global %G__0x414616_type zeroinitializer
@G__0x414617 = global %G__0x414617_type zeroinitializer
@G__0x41462c = global %G__0x41462c_type zeroinitializer
@G__0x41462d = global %G__0x41462d_type zeroinitializer
@G__0x41464a = global %G__0x41464a_type zeroinitializer
@G__0x41466a = global %G__0x41466a_type zeroinitializer
@G__0x41466b = global %G__0x41466b_type zeroinitializer
@G__0x414685 = global %G__0x414685_type zeroinitializer
@G__0x4146aa = global %G__0x4146aa_type zeroinitializer
@G__0x4146ab = global %G__0x4146ab_type zeroinitializer
@G__0x4146c5 = global %G__0x4146c5_type zeroinitializer
@G__0x4146eb = global %G__0x4146eb_type zeroinitializer
@G__0x414712 = global %G__0x414712_type zeroinitializer
@G__0x414713 = global %G__0x414713_type zeroinitializer
@G__0x41472b = global %G__0x41472b_type zeroinitializer
@G__0x41474e = global %G__0x41474e_type zeroinitializer
@G__0x414772 = global %G__0x414772_type zeroinitializer
@G__0x414793 = global %G__0x414793_type zeroinitializer
@G__0x414794 = global %G__0x414794_type zeroinitializer
@G__0x4147a9 = global %G__0x4147a9_type zeroinitializer
@G__0x4147c8 = global %G__0x4147c8_type zeroinitializer
@G__0x4147c9 = global %G__0x4147c9_type zeroinitializer
@G__0x4147dd = global %G__0x4147dd_type zeroinitializer
@G__0x4147fb = global %G__0x4147fb_type zeroinitializer
@G__0x4147fc = global %G__0x4147fc_type zeroinitializer
@G__0x414811 = global %G__0x414811_type zeroinitializer
@G__0x414830 = global %G__0x414830_type zeroinitializer
@G__0x414843 = global %G__0x414843_type zeroinitializer
@G__0x41485e = global %G__0x41485e_type zeroinitializer
@G__0x41487b = global %G__0x41487b_type zeroinitializer
@G__0x414893 = global %G__0x414893_type zeroinitializer
@G__0x4148b5 = global %G__0x4148b5_type zeroinitializer
@G__0x4148cd = global %G__0x4148cd_type zeroinitializer
@G__0x4148f0 = global %G__0x4148f0_type zeroinitializer
@G__0x414914 = global %G__0x414914_type zeroinitializer
@G__0x41492a = global %G__0x41492a_type zeroinitializer
@G__0x41494a = global %G__0x41494a_type zeroinitializer
@G__0x41496b = global %G__0x41496b_type zeroinitializer
@G__0x414989 = global %G__0x414989_type zeroinitializer
@G__0x41499d = global %G__0x41499d_type zeroinitializer
@G__0x4149b9 = global %G__0x4149b9_type zeroinitializer
@G__0x4149d7 = global %G__0x4149d7_type zeroinitializer
@G__0x4149f0 = global %G__0x4149f0_type zeroinitializer
@G__0x414a13 = global %G__0x414a13_type zeroinitializer
@G__0x414a2c = global %G__0x414a2c_type zeroinitializer
@G__0x414a50 = global %G__0x414a50_type zeroinitializer
@G__0x414a75 = global %G__0x414a75_type zeroinitializer
@G__0x414a8c = global %G__0x414a8c_type zeroinitializer
@G__0x414aad = global %G__0x414aad_type zeroinitializer
@G__0x414acf = global %G__0x414acf_type zeroinitializer
@G__0x61a0c0 = global %G__0x61a0c0_type zeroinitializer
@G__0x629ac0 = global %G__0x629ac0_type zeroinitializer
@G__0x6317c0 = global %G__0x6317c0_type zeroinitializer
@G__0x6411c0 = global %G__0x6411c0_type zeroinitializer
@G__0x650bc0 = global %G__0x650bc0_type zeroinitializer
@G__0x6588c0 = global %G__0x6588c0_type zeroinitializer
@G__0x6605c0 = global %G__0x6605c0_type zeroinitializer
@G__0x664440 = global %G__0x664440_type zeroinitializer
@G__0x6682c0 = global %G__0x6682c0_type zeroinitializer
@G__0x66a200 = global %G__0x66a200_type zeroinitializer
@G__0x66c140 = global %G__0x66c140_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @atof(i64)

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_402f90._Z4fillIPaaEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402fd0._Z14test_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403080._Z22test_hoisted_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403140._Z14test_variable4Ia28custom_add_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403250._Z14test_variable1Ia19custom_sub_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403300._Z14test_variable4Ia28custom_sub_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403410._Z14test_variable1Ia24custom_multiply_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4034c0._Z14test_variable4Ia33custom_multiply_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4035d0._Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4036e0._Z14test_variable1Ia22custom_divide_variableIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403790._Z14test_variable4Ia31custom_divide_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4038a0._Z14test_variable4Ia32custom_divide_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4039b0._Z14test_variable4Ia30custom_mixed_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403ac0._Z14test_variable1Ia19custom_variable_andIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403b70._Z14test_variable4Ia28custom_multiple_variable_andIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403c80._Z14test_variable1Ia18custom_variable_orIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403d30._Z14test_variable4Ia27custom_multiple_variable_orIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403e40._Z14test_variable1Ia19custom_variable_xorIaEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_403ef0._Z14test_variable4Ia28custom_multiple_variable_xorIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404000._Z4fillIPhhEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404040._Z14test_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4040f0._Z22test_hoisted_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4041b0._Z14test_variable4Ih28custom_add_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4042c0._Z14test_variable1Ih19custom_sub_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404370._Z14test_variable4Ih28custom_sub_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404480._Z14test_variable1Ih24custom_multiply_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404530._Z14test_variable4Ih33custom_multiply_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404640._Z14test_variable4Ih34custom_multiply_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404750._Z14test_variable1Ih22custom_divide_variableIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404800._Z14test_variable4Ih31custom_divide_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404910._Z14test_variable4Ih32custom_divide_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404a20._Z14test_variable4Ih30custom_mixed_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404b30._Z14test_variable1Ih19custom_variable_andIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404be0._Z14test_variable4Ih28custom_multiple_variable_andIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404cf0._Z14test_variable1Ih18custom_variable_orIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404da0._Z14test_variable4Ih27custom_multiple_variable_orIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404eb0._Z14test_variable1Ih19custom_variable_xorIhEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404f60._Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405070._Z4fillIPssEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4050b0._Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405170._Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405230._Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405360._Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405420._Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405550._Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405610._Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405740._Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405870._Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405930._Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405a60._Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405b90._Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405cc0._Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405d80._Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405eb0._Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405f70._Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4060a0._Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406160._Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406290._Z4fillIPttEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4062d0._Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406390._Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406450._Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406580._Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406640._Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406770._Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406830._Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406960._Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406a90._Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406b50._Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406c80._Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406db0._Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406ee0._Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406fa0._Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4070d0._Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407190._Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4072c0._Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407380._Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4074b0._Z4fillIPiiEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4074f0._Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407590._Z22test_hoisted_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407640._Z14test_variable4Ii28custom_add_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407710._Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4077b0._Z14test_variable4Ii28custom_sub_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407880._Z14test_variable1Ii24custom_multiply_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407920._Z14test_variable4Ii33custom_multiply_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4079f0._Z14test_variable4Ii34custom_multiply_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407ac0._Z14test_variable1Ii22custom_divide_variableIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407b60._Z14test_variable4Ii31custom_divide_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407c30._Z14test_variable4Ii32custom_divide_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407d00._Z14test_variable4Ii30custom_mixed_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407dd0._Z14test_variable1Ii19custom_variable_andIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e70._Z14test_variable4Ii28custom_multiple_variable_andIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407f40._Z14test_variable1Ii18custom_variable_orIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407fe0._Z14test_variable4Ii27custom_multiple_variable_orIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4080b0._Z14test_variable1Ii19custom_variable_xorIiEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408150._Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408220._Z4fillIPjjEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408260._Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408300._Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4083b0._Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408480._Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408520._Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4085f0._Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408690._Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408760._Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408830._Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4088d0._Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4089a0._Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408a70._Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408b40._Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408be0._Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408cb0._Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408d50._Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e20._Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408ec0._Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408f90._Z4fillIPllEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408fd0._Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409080._Z22test_hoisted_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409130._Z14test_variable4Il28custom_add_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409200._Z14test_variable1Il19custom_sub_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4092b0._Z14test_variable4Il28custom_sub_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409380._Z14test_variable1Il24custom_multiply_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409430._Z14test_variable4Il33custom_multiply_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409500._Z14test_variable4Il34custom_multiply_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4095d0._Z14test_variable1Il22custom_divide_variableIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409680._Z14test_variable4Il31custom_divide_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409750._Z14test_variable4Il32custom_divide_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409820._Z14test_variable4Il30custom_mixed_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4098f0._Z14test_variable1Il19custom_variable_andIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4099a0._Z14test_variable4Il28custom_multiple_variable_andIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409a70._Z14test_variable1Il18custom_variable_orIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409b20._Z14test_variable4Il27custom_multiple_variable_orIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409bf0._Z14test_variable1Il19custom_variable_xorIlEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409ca0._Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409d70._Z4fillIPmmEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409db0._Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409e60._Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409f10._Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409fe0._Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a090._Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a160._Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a210._Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a2e0._Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a3b0._Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a460._Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a530._Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a600._Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a6d0._Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a780._Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a850._Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a900._Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40a9d0._Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40aa80._Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ab50._Z4fillIPffEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ab90._Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ac40._Z22test_hoisted_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ad00._Z14test_variable4If28custom_add_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ade0._Z14test_variable1If19custom_sub_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ae90._Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40af70._Z14test_variable1If24custom_multiply_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b020._Z14test_variable4If33custom_multiply_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b100._Z14test_variable4If34custom_multiply_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b1e0._Z14test_variable1If22custom_divide_variableIfEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b290._Z14test_variable4If31custom_divide_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b370._Z14test_variable4If32custom_divide_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b450._Z14test_variable4If30custom_mixed_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b530._Z4fillIPddEvT_S1_T0_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b570._Z14test_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b620._Z22test_hoisted_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b6e0._Z14test_variable4Id28custom_add_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b7c0._Z14test_variable1Id19custom_sub_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b870._Z14test_variable4Id28custom_sub_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b950._Z14test_variable1Id24custom_multiply_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ba00._Z14test_variable4Id33custom_multiply_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bae0._Z14test_variable4Id34custom_multiply_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bbc0._Z14test_variable1Id22custom_divide_variableIdEEvPT_iS2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bc70._Z14test_variable4Id31custom_divide_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40bd50._Z14test_variable4Id32custom_divide_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40be30._Z14test_variable4Id30custom_mixed_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i837 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R14.i837, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i885 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %RBX.i885, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %7, -392
  store i64 %23, i64* %6, align 8
  %24 = icmp ult i64 %20, 368
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = trunc i64 %23 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i64 %20, 16
  %35 = xor i64 %34, %23
  %36 = lshr i64 %35, 4
  %37 = trunc i64 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i64 %23, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %23, 63
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i64 %20, 63
  %47 = xor i64 %43, %46
  %48 = add nuw nsw i64 %47, %46
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %53 = bitcast [32 x %union.VectorReg]* %52 to i8*
  %54 = load i64, i64* bitcast (%G_0x12faa__rip__4198022__type* @G_0x12faa__rip__4198022_ to i64*), align 8
  %55 = bitcast [32 x %union.VectorReg]* %52 to double*
  %56 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %54, i64* %56, align 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %58 = bitcast i64* %57 to double*
  store double 0.000000e+00, double* %58, align 1
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -20
  %61 = add i64 %22, 22
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  store i32 0, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2585 = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -24
  %66 = load i32, i32* %EDI.i2585, align 4
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 3
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i3042 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -32
  %73 = load i64, i64* %RSI.i3042, align 8
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i64*
  store i64 %73, i64* %76, align 8
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -40
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 5
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %56, align 1
  %82 = inttoptr i64 %78 to i64*
  store i64 %81, i64* %82, align 8
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -24
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = add i32 %88, -1
  %90 = icmp eq i32 %88, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %26, align 1
  %92 = and i32 %89, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %33, align 1
  %97 = xor i32 %88, %89
  %98 = lshr i32 %97, 4
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %39, align 1
  %101 = icmp eq i32 %89, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %42, align 1
  %103 = lshr i32 %89, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %45, align 1
  %105 = lshr i32 %88, 31
  %106 = xor i32 %103, %105
  %107 = add nuw nsw i32 %106, %105
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %51, align 1
  %110 = icmp ne i8 %104, 0
  %111 = xor i1 %110, %108
  %112 = or i1 %101, %111
  %.v = select i1 %112, i64 30, i64 10
  %113 = add i64 %85, %.v
  store i64 %113, i64* %3, align 8
  br i1 %112, label %block_.L_400eb7, label %block_400ea3

block_400ea3:                                     ; preds = %entry
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i4054 = getelementptr inbounds %union.anon, %union.anon* %114, i64 0, i32 0
  %115 = add i64 %83, -32
  %116 = add i64 %113, 4
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RAX.i4054, align 8
  %RDI.i4070 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %119 = add i64 %118, 8
  %120 = add i64 %113, 8
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RDI.i4070, align 8
  %123 = add i64 %113, -2019
  %124 = add i64 %113, 13
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, -8
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127, align 8
  store i64 %126, i64* %6, align 8
  store i64 %123, i64* %3, align 8
  %128 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %2)
  %EAX.i4067 = bitcast %union.anon* %114 to i32*
  %129 = load i32, i32* %EAX.i4067, align 4
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 7
  store i64 %131, i64* %3, align 8
  store i32 %129, i32* bitcast (%G_0x61a080_type* @G_0x61a080 to i32*), align 8
  %.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_400eb7

block_.L_400eb7:                                  ; preds = %block_400ea3, %entry
  %132 = phi i64 [ %113, %entry ], [ %131, %block_400ea3 ]
  %133 = phi i64 [ %83, %entry ], [ %.pre, %block_400ea3 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %128, %block_400ea3 ]
  %134 = add i64 %133, -24
  %135 = add i64 %132, 4
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = add i32 %137, -2
  %139 = icmp ult i32 %137, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %26, align 1
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %33, align 1
  %146 = xor i32 %137, %138
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %39, align 1
  %150 = icmp eq i32 %138, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %42, align 1
  %152 = lshr i32 %138, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %45, align 1
  %154 = lshr i32 %137, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %51, align 1
  %159 = icmp ne i8 %153, 0
  %160 = xor i1 %159, %157
  %161 = or i1 %150, %160
  %.v43 = select i1 %161, i64 32, i64 10
  %162 = add i64 %132, %.v43
  store i64 %162, i64* %3, align 8
  br i1 %161, label %block_.L_400ed7, label %block_400ec1

block_400ec1:                                     ; preds = %block_.L_400eb7
  %RAX.i4061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %163 = add i64 %133, -32
  %164 = add i64 %162, 4
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RAX.i4061, align 8
  %RDI.i4059 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %167 = add i64 %166, 16
  %168 = add i64 %162, 8
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RDI.i4059, align 8
  %171 = add i64 %162, -2161
  %172 = add i64 %162, 13
  %173 = load i64, i64* %6, align 8
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %6, align 8
  store i64 %171, i64* %3, align 8
  %176 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %MEMORY.0)
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, 9
  store i64 %178, i64* %3, align 8
  %179 = load i64, i64* %56, align 1
  store i64 %179, i64* bitcast (%G_0x61a088_type* @G_0x61a088 to i64*), align 8
  %.pre1 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ed7

block_.L_400ed7:                                  ; preds = %block_400ec1, %block_.L_400eb7
  %180 = phi i64 [ %162, %block_.L_400eb7 ], [ %178, %block_400ec1 ]
  %181 = phi i64 [ %133, %block_.L_400eb7 ], [ %.pre1, %block_400ec1 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400eb7 ], [ %176, %block_400ec1 ]
  %182 = add i64 %181, -24
  %183 = add i64 %180, 4
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = add i32 %185, -3
  %187 = icmp ult i32 %185, 3
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %26, align 1
  %189 = and i32 %186, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189)
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %33, align 1
  %194 = xor i32 %185, %186
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %39, align 1
  %198 = icmp eq i32 %186, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %42, align 1
  %200 = lshr i32 %186, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %45, align 1
  %202 = lshr i32 %185, 31
  %203 = xor i32 %200, %202
  %204 = add nuw nsw i32 %203, %202
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %51, align 1
  %207 = icmp ne i8 %201, 0
  %208 = xor i1 %207, %205
  %209 = or i1 %198, %208
  %.v44 = select i1 %209, i64 28, i64 10
  %210 = add i64 %180, %.v44
  store i64 %210, i64* %3, align 8
  br i1 %209, label %block_.L_400ed7.block_.L_400ef3_crit_edge, label %block_400ee1

block_.L_400ed7.block_.L_400ef3_crit_edge:        ; preds = %block_.L_400ed7
  %.pre38 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %.pre40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre42 = getelementptr inbounds %union.anon, %union.anon* %.pre40, i64 0, i32 0
  br label %block_.L_400ef3

block_400ee1:                                     ; preds = %block_.L_400ed7
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i4046 = getelementptr inbounds %union.anon, %union.anon* %211, i64 0, i32 0
  %212 = add i64 %181, -32
  %213 = add i64 %210, 4
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %RAX.i4046, align 8
  %RDI.i4044 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %216 = add i64 %215, 24
  %217 = add i64 %210, 8
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %RDI.i4044, align 8
  %220 = add i64 %210, -2193
  %221 = add i64 %210, 13
  %222 = load i64, i64* %6, align 8
  %223 = add i64 %222, -8
  %224 = inttoptr i64 %223 to i64*
  store i64 %221, i64* %224, align 8
  store i64 %223, i64* %6, align 8
  store i64 %220, i64* %3, align 8
  %225 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atof to i64), %struct.Memory* %MEMORY.1)
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -40
  %228 = load i64, i64* %3, align 8
  %229 = add i64 %228, 5
  store i64 %229, i64* %3, align 8
  %230 = load i64, i64* %56, align 1
  %231 = inttoptr i64 %227 to i64*
  store i64 %230, i64* %231, align 8
  %.pre2 = load i64, i64* %3, align 8
  %.pre3 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ef3

block_.L_400ef3:                                  ; preds = %block_.L_400ed7.block_.L_400ef3_crit_edge, %block_400ee1
  %RAX.i4030.pre-phi = phi i64* [ %.pre42, %block_.L_400ed7.block_.L_400ef3_crit_edge ], [ %RAX.i4046, %block_400ee1 ]
  %.pre-phi41 = phi %union.anon* [ %.pre40, %block_.L_400ed7.block_.L_400ef3_crit_edge ], [ %211, %block_400ee1 ]
  %RDI.i4036.pre-phi = phi i64* [ %.pre38, %block_.L_400ed7.block_.L_400ef3_crit_edge ], [ %RDI.i4044, %block_400ee1 ]
  %232 = phi i64 [ %181, %block_.L_400ed7.block_.L_400ef3_crit_edge ], [ %.pre3, %block_400ee1 ]
  %233 = phi i64 [ %210, %block_.L_400ed7.block_.L_400ef3_crit_edge ], [ %.pre2, %block_400ee1 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_400ed7.block_.L_400ef3_crit_edge ], [ %225, %block_400ee1 ]
  store i64 8000, i64* %RSI.i3042, align 8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i4032 = getelementptr inbounds %union.anon, %union.anon* %234, i64 0, i32 0
  store i64 ptrtoint (%G__0x414616_type* @G__0x414616 to i64), i64* %RCX.i4032, align 8
  %235 = load double, double* bitcast (%G_0x219174__rip__4198164__type* @G_0x219174__rip__4198164_ to double*), align 8
  %236 = tail call double @llvm.trunc.f64(double %235)
  %237 = tail call double @llvm.fabs.f64(double %236)
  %238 = fcmp ogt double %237, 0x41DFFFFFFFC00000
  %239 = fptosi double %236 to i32
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i4028 = getelementptr inbounds %union.anon, %union.anon* %240, i64 0, i32 0
  %EDX.i4025 = bitcast %union.anon* %240 to i32*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i4026 = bitcast %union.anon* %241 to i32*
  %242 = getelementptr inbounds %union.anon, %union.anon* %241, i64 0, i32 0
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x66a200_type* @G__0x66a200 to i64), i64 4294967295) to i32) to i64), i64* %242, align 8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B.i4023 = bitcast %union.anon* %243 to i8*
  %244 = trunc i32 %239 to i8
  %245 = select i1 %238, i8 0, i8 %244
  store i8 %245, i8* %R9B.i4023, align 1
  %246 = sext i8 %245 to i64
  %247 = and i64 %246, 4294967295
  store i64 %247, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x66c140_type* @G__0x66c140 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  %EAX.i4015 = bitcast %union.anon* %.pre-phi41 to i32*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %249 = getelementptr inbounds %union.anon, %union.anon* %248, i64 0, i32 0
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x66c140_type* @G__0x66c140 to i64), i64 4294967295) to i32) to i64), i64* %249, align 8
  %250 = add i64 %232, -216
  %251 = add i64 %233, 63
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %252, align 8
  %253 = load i64, i64* %242, align 8
  %254 = load i64, i64* %3, align 8
  store i64 %253, i64* %RDI.i4036.pre-phi, align 8
  %ESI.i4006 = bitcast %union.anon* %70 to i32*
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -220
  %257 = load i32, i32* %ESI.i4006, align 4
  %258 = add i64 %254, 9
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %259, align 4
  %260 = load i64, i64* %249, align 8
  %261 = load i64, i64* %3, align 8
  store i64 %260, i64* %RSI.i3042, align 8
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -232
  %264 = load i64, i64* %RCX.i4032, align 8
  %265 = add i64 %261, 10
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i64*
  store i64 %264, i64* %266, align 8
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -240
  %269 = load i64, i64* %242, align 8
  %270 = load i64, i64* %3, align 8
  %271 = add i64 %270, 7
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %268 to i64*
  store i64 %269, i64* %272, align 8
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 8260
  %275 = add i64 %273, 5
  %276 = load i64, i64* %6, align 8
  %277 = add i64 %276, -8
  %278 = inttoptr i64 %277 to i64*
  store i64 %275, i64* %278, align 8
  store i64 %277, i64* %6, align 8
  store i64 %274, i64* %3, align 8
  %call2_400f4c = tail call %struct.Memory* @sub_402f90._Z4fillIPaaEvT_S1_T0_(%struct.State* %0, i64 %274, %struct.Memory* %MEMORY.2)
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -40
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 5
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %280 to double*
  %284 = load double, double* %283, align 8
  %285 = tail call double @llvm.trunc.f64(double %284)
  %286 = tail call double @llvm.fabs.f64(double %285)
  %287 = fcmp ogt double %286, 0x41DFFFFFFFC00000
  %288 = fptosi double %285 to i32
  %289 = zext i32 %288 to i64
  %290 = select i1 %287, i64 2147483648, i64 %289
  store i64 %290, i64* %RAX.i4030.pre-phi, align 8
  %291 = trunc i64 %290 to i8
  store i8 %291, i8* %R9B.i4023, align 1
  %292 = add i64 %279, -41
  %293 = add i64 %281, 12
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i8*
  store i8 %291, i8* %294, align 1
  %295 = load i64, i64* %RBP.i, align 8
  %296 = add i64 %295, -41
  %297 = load i64, i64* %3, align 8
  %298 = add i64 %297, 4
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %296 to i8*
  %300 = load i8, i8* %299, align 1
  %301 = shl i8 %300, 1
  store i8 %301, i8* %R9B.i4023, align 1
  %302 = icmp ult i8 %301, %300
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %26, align 1
  %304 = zext i8 %301 to i32
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %33, align 1
  %309 = lshr i8 %300, 3
  %310 = and i8 %309, 1
  store i8 %310, i8* %39, align 1
  %311 = icmp eq i8 %301, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %42, align 1
  %313 = lshr i8 %300, 6
  %314 = and i8 %313, 1
  store i8 %314, i8* %45, align 1
  %315 = lshr i8 %300, 7
  %316 = xor i8 %314, %315
  store i8 %316, i8* %51, align 1
  %317 = add i64 %295, -42
  %318 = add i64 %297, 11
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i8*
  store i8 %301, i8* %319, align 1
  %320 = load i64, i64* %RBP.i, align 8
  %321 = add i64 %320, -41
  %322 = load i64, i64* %3, align 8
  %323 = add i64 %322, 4
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %321 to i8*
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = add nuw nsw i32 %326, 2
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %329 = and i32 %327, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %33, align 1
  %334 = xor i32 %326, %327
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %338 = trunc i32 %327 to i8
  store i8 %338, i8* %R9B.i4023, align 1
  %339 = add i64 %320, -43
  %340 = add i64 %322, 14
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i8*
  store i8 %338, i8* %341, align 1
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -41
  %344 = load i64, i64* %3, align 8
  %345 = add i64 %344, 4
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %343 to i8*
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i64
  store i64 %348, i64* %RAX.i4030.pre-phi, align 8
  %349 = add i64 %342, -42
  %350 = add i64 %344, 8
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i8*
  %352 = load i8, i8* %351, align 1
  %353 = sext i8 %352 to i64
  %354 = and i64 %353, 4294967295
  store i64 %354, i64* %RDX.i4028, align 8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i3960 = bitcast %union.anon* %355 to i32*
  %356 = getelementptr inbounds %union.anon, %union.anon* %355, i64 0, i32 0
  %357 = add i64 %342, -43
  %358 = add i64 %344, 13
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i8*
  %360 = load i8, i8* %359, align 1
  %361 = sext i8 %360 to i64
  %362 = and i64 %361, 4294967295
  store i64 %362, i64* %356, align 8
  %363 = add i64 %342, -244
  %364 = zext i8 %347 to i32
  %365 = add i64 %344, 19
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i32*
  store i32 %364, i32* %366, align 4
  %367 = load i32, i32* %EDX.i4025, align 4
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %3, align 8
  store i64 %368, i64* %RAX.i4030.pre-phi, align 8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %372 = bitcast %union.anon* %371 to i32*
  %373 = sext i32 %367 to i64
  %374 = lshr i64 %373, 32
  store i64 %374, i64* %370, align 8
  %375 = load i32, i32* %R11D.i3960, align 4
  %376 = add i64 %369, 6
  store i64 %376, i64* %3, align 8
  %377 = sext i32 %375 to i64
  %378 = shl nuw i64 %374, 32
  %379 = or i64 %378, %368
  %380 = sdiv i64 %379, %377
  %381 = shl i64 %380, 32
  %382 = ashr exact i64 %381, 32
  %383 = icmp eq i64 %380, %382
  br i1 %383, label %386, label %384

; <label>:384:                                    ; preds = %block_.L_400ef3
  %385 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %376, %struct.Memory* %call2_400f4c)
  %.pre4 = load i64, i64* %3, align 8
  %.pre5 = load i32, i32* %EAX.i4015, align 4
  br label %routine_idivl__r11d.exit

; <label>:386:                                    ; preds = %block_.L_400ef3
  %387 = srem i64 %379, %377
  %388 = getelementptr inbounds %union.anon, %union.anon* %371, i64 0, i32 0
  %389 = and i64 %380, 4294967295
  store i64 %389, i64* %388, align 8
  %390 = and i64 %387, 4294967295
  store i64 %390, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %391 = trunc i64 %380 to i32
  br label %routine_idivl__r11d.exit

routine_idivl__r11d.exit:                         ; preds = %386, %384
  %392 = phi i32 [ %.pre5, %384 ], [ %391, %386 ]
  %393 = phi i64 [ %.pre4, %384 ], [ %376, %386 ]
  %394 = phi %struct.Memory* [ %385, %384 ], [ %call2_400f4c, %386 ]
  %395 = load i64, i64* %RBP.i, align 8
  %396 = add i64 %395, -244
  %397 = add i64 %393, 6
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %392, %399
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RDX.i4028, align 8
  %402 = icmp ult i32 %400, %399
  %403 = icmp ult i32 %400, %392
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %26, align 1
  %406 = and i32 %400, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %33, align 1
  %411 = xor i32 %392, %399
  %412 = xor i32 %411, %400
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %39, align 1
  %416 = icmp eq i32 %400, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %42, align 1
  %418 = lshr i32 %400, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %45, align 1
  %420 = lshr i32 %399, 31
  %421 = lshr i32 %392, 31
  %422 = xor i32 %418, %420
  %423 = xor i32 %418, %421
  %424 = add nuw nsw i32 %422, %423
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %51, align 1
  %427 = trunc i32 %400 to i8
  store i8 %427, i8* %R9B.i4023, align 1
  %428 = add i64 %395, -44
  %429 = add i64 %393, 15
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i8*
  store i8 %427, i8* %430, align 1
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -41
  %433 = load i64, i64* %3, align 8
  %434 = add i64 %433, 4
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %432 to i8*
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i64
  %438 = and i64 %437, 4294967295
  store i64 %438, i64* %RDX.i4028, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413fdb_type* @G__0x413fdb to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  store i64 8000, i64* %RAX.i4030.pre-phi, align 8
  %439 = add i64 %431, -240
  %440 = add i64 %433, 23
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  %443 = add i64 %431, -248
  %444 = add i64 %433, 31
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  store i32 8000, i32* %445, align 4
  %446 = load i64, i64* %3, align 8
  %447 = add i64 %446, 8211
  %448 = add i64 %446, 5
  %449 = load i64, i64* %6, align 8
  %450 = add i64 %449, -8
  %451 = inttoptr i64 %450 to i64*
  store i64 %448, i64* %451, align 8
  store i64 %450, i64* %6, align 8
  store i64 %447, i64* %3, align 8
  %call2_400fbd = tail call %struct.Memory* @sub_402fd0._Z14test_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %447, %struct.Memory* %394)
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -41
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i8*
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i64
  %459 = and i64 %458, 4294967295
  store i64 %459, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x413ff0_type* @G__0x413ff0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413ff0_type* @G__0x413ff0 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %460 = add i64 %452, -240
  %461 = add i64 %454, 18
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RDI.i4036.pre-phi, align 8
  %464 = add i64 %452, -248
  %465 = add i64 %454, 24
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RSI.i3042, align 8
  %469 = add i64 %454, 8382
  %470 = add i64 %454, 29
  %471 = load i64, i64* %6, align 8
  %472 = add i64 %471, -8
  %473 = inttoptr i64 %472 to i64*
  store i64 %470, i64* %473, align 8
  store i64 %472, i64* %6, align 8
  store i64 %469, i64* %3, align 8
  %call2_400fda = tail call %struct.Memory* @sub_403080._Z22test_hoisted_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %469, %struct.Memory* %call2_400fbd)
  %474 = getelementptr inbounds %union.anon, %union.anon* %243, i64 0, i32 0
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -44
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 5
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %476 to i8*
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i64
  %482 = and i64 %481, 4294967295
  store i64 %482, i64* %474, align 8
  %483 = add i64 %475, -43
  %484 = add i64 %477, 10
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i8*
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i64
  %488 = and i64 %487, 4294967295
  store i64 %488, i64* %242, align 8
  %489 = add i64 %475, -42
  %490 = add i64 %477, 14
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i8*
  %492 = load i8, i8* %491, align 1
  %493 = sext i8 %492 to i64
  %494 = and i64 %493, 4294967295
  store i64 %494, i64* %RCX.i4032, align 8
  %495 = add i64 %475, -41
  %496 = add i64 %477, 18
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i8*
  %498 = load i8, i8* %497, align 1
  %499 = sext i8 %498 to i64
  %500 = and i64 %499, 4294967295
  store i64 %500, i64* %RDX.i4028, align 8
  %501 = load i64, i64* %6, align 8
  store i64 %501, i64* %RDI.i4036.pre-phi, align 8
  %502 = add i64 %477, 28
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  store i64 4276237, i64* %503, align 8
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -240
  %506 = load i64, i64* %3, align 8
  %507 = add i64 %506, 7
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %505 to i64*
  %509 = load i64, i64* %508, align 8
  store i64 %509, i64* %RDI.i4036.pre-phi, align 8
  %510 = add i64 %504, -248
  %511 = add i64 %506, 13
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RSI.i3042, align 8
  %515 = add i64 %506, 8517
  %516 = add i64 %506, 18
  %517 = load i64, i64* %6, align 8
  %518 = add i64 %517, -8
  %519 = inttoptr i64 %518 to i64*
  store i64 %516, i64* %519, align 8
  store i64 %518, i64* %6, align 8
  store i64 %515, i64* %3, align 8
  %call2_401008 = tail call %struct.Memory* @sub_403140._Z14test_variable4Ia28custom_add_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %515, %struct.Memory* %call2_400fda)
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -41
  %522 = load i64, i64* %3, align 8
  %523 = add i64 %522, 4
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %521 to i8*
  %525 = load i8, i8* %524, align 1
  %526 = sext i8 %525 to i64
  %527 = and i64 %526, 4294967295
  store i64 %527, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41402c_type* @G__0x41402c to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41402c_type* @G__0x41402c to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %528 = add i64 %520, -240
  %529 = add i64 %522, 18
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RDI.i4036.pre-phi, align 8
  %532 = add i64 %520, -248
  %533 = add i64 %522, 24
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RSI.i3042, align 8
  %537 = add i64 %522, 8771
  %538 = add i64 %522, 29
  %539 = load i64, i64* %6, align 8
  %540 = add i64 %539, -8
  %541 = inttoptr i64 %540 to i64*
  store i64 %538, i64* %541, align 8
  store i64 %540, i64* %6, align 8
  store i64 %537, i64* %3, align 8
  %call2_401025 = tail call %struct.Memory* @sub_403250._Z14test_variable1Ia19custom_sub_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %537, %struct.Memory* %call2_401008)
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -44
  %544 = load i64, i64* %3, align 8
  %545 = add i64 %544, 5
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %543 to i8*
  %547 = load i8, i8* %546, align 1
  %548 = sext i8 %547 to i64
  %549 = and i64 %548, 4294967295
  store i64 %549, i64* %474, align 8
  %550 = add i64 %542, -43
  %551 = add i64 %544, 10
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i8*
  %553 = load i8, i8* %552, align 1
  %554 = sext i8 %553 to i64
  %555 = and i64 %554, 4294967295
  store i64 %555, i64* %242, align 8
  %556 = add i64 %542, -42
  %557 = add i64 %544, 14
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i8*
  %559 = load i8, i8* %558, align 1
  %560 = sext i8 %559 to i64
  %561 = and i64 %560, 4294967295
  store i64 %561, i64* %RCX.i4032, align 8
  %562 = add i64 %542, -41
  %563 = add i64 %544, 18
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i8*
  %565 = load i8, i8* %564, align 1
  %566 = sext i8 %565 to i64
  %567 = and i64 %566, 4294967295
  store i64 %567, i64* %RDX.i4028, align 8
  %568 = load i64, i64* %6, align 8
  store i64 %568, i64* %RDI.i4036.pre-phi, align 8
  %569 = add i64 %544, 28
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i64*
  store i64 4276294, i64* %570, align 8
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -240
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 7
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %572 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RDI.i4036.pre-phi, align 8
  %577 = add i64 %571, -248
  %578 = add i64 %573, 13
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RSI.i3042, align 8
  %582 = add i64 %573, 8890
  %583 = add i64 %573, 18
  %584 = load i64, i64* %6, align 8
  %585 = add i64 %584, -8
  %586 = inttoptr i64 %585 to i64*
  store i64 %583, i64* %586, align 8
  store i64 %585, i64* %6, align 8
  store i64 %582, i64* %3, align 8
  %call2_401053 = tail call %struct.Memory* @sub_403300._Z14test_variable4Ia28custom_sub_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %582, %struct.Memory* %call2_401025)
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -41
  %589 = load i64, i64* %3, align 8
  %590 = add i64 %589, 4
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %588 to i8*
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i64
  %594 = and i64 %593, 4294967295
  store i64 %594, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41406a_type* @G__0x41406a to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41406a_type* @G__0x41406a to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %595 = add i64 %587, -240
  %596 = add i64 %589, 18
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i64*
  %598 = load i64, i64* %597, align 8
  store i64 %598, i64* %RDI.i4036.pre-phi, align 8
  %599 = add i64 %587, -248
  %600 = add i64 %589, 24
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RSI.i3042, align 8
  %604 = add i64 %589, 9144
  %605 = add i64 %589, 29
  %606 = load i64, i64* %6, align 8
  %607 = add i64 %606, -8
  %608 = inttoptr i64 %607 to i64*
  store i64 %605, i64* %608, align 8
  store i64 %607, i64* %6, align 8
  store i64 %604, i64* %3, align 8
  %call2_401070 = tail call %struct.Memory* @sub_403410._Z14test_variable1Ia24custom_multiply_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %604, %struct.Memory* %call2_401053)
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -44
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 5
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %610 to i8*
  %614 = load i8, i8* %613, align 1
  %615 = sext i8 %614 to i64
  %616 = and i64 %615, 4294967295
  store i64 %616, i64* %474, align 8
  %617 = add i64 %609, -43
  %618 = add i64 %611, 10
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i8*
  %620 = load i8, i8* %619, align 1
  %621 = sext i8 %620 to i64
  %622 = and i64 %621, 4294967295
  store i64 %622, i64* %242, align 8
  %623 = add i64 %609, -42
  %624 = add i64 %611, 14
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i8*
  %626 = load i8, i8* %625, align 1
  %627 = sext i8 %626 to i64
  %628 = and i64 %627, 4294967295
  store i64 %628, i64* %RCX.i4032, align 8
  %629 = add i64 %609, -41
  %630 = add i64 %611, 18
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i8*
  %632 = load i8, i8* %631, align 1
  %633 = sext i8 %632 to i64
  %634 = and i64 %633, 4294967295
  store i64 %634, i64* %RDX.i4028, align 8
  %635 = load i64, i64* %6, align 8
  store i64 %635, i64* %RDI.i4036.pre-phi, align 8
  %636 = add i64 %611, 28
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  store i64 4276356, i64* %637, align 8
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -240
  %640 = load i64, i64* %3, align 8
  %641 = add i64 %640, 7
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RDI.i4036.pre-phi, align 8
  %644 = add i64 %638, -248
  %645 = add i64 %640, 13
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RSI.i3042, align 8
  %649 = add i64 %640, 9263
  %650 = add i64 %640, 18
  %651 = load i64, i64* %6, align 8
  %652 = add i64 %651, -8
  %653 = inttoptr i64 %652 to i64*
  store i64 %650, i64* %653, align 8
  store i64 %652, i64* %6, align 8
  store i64 %649, i64* %3, align 8
  %call2_40109e = tail call %struct.Memory* @sub_4034c0._Z14test_variable4Ia33custom_multiply_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %649, %struct.Memory* %call2_401070)
  %654 = load i64, i64* %RBP.i, align 8
  %655 = add i64 %654, -44
  %656 = load i64, i64* %3, align 8
  %657 = add i64 %656, 5
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %655 to i8*
  %659 = load i8, i8* %658, align 1
  %660 = sext i8 %659 to i64
  %661 = and i64 %660, 4294967295
  store i64 %661, i64* %474, align 8
  %662 = add i64 %654, -43
  %663 = add i64 %656, 10
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i8*
  %665 = load i8, i8* %664, align 1
  %666 = sext i8 %665 to i64
  %667 = and i64 %666, 4294967295
  store i64 %667, i64* %242, align 8
  %668 = add i64 %654, -42
  %669 = add i64 %656, 14
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i8*
  %671 = load i8, i8* %670, align 1
  %672 = sext i8 %671 to i64
  %673 = and i64 %672, 4294967295
  store i64 %673, i64* %RCX.i4032, align 8
  %674 = add i64 %654, -41
  %675 = add i64 %656, 18
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i8*
  %677 = load i8, i8* %676, align 1
  %678 = sext i8 %677 to i64
  %679 = and i64 %678, 4294967295
  store i64 %679, i64* %RDX.i4028, align 8
  %680 = load i64, i64* %6, align 8
  store i64 %680, i64* %RDI.i4036.pre-phi, align 8
  %681 = add i64 %656, 28
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  store i64 4276393, i64* %682, align 8
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -240
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 7
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RDI.i4036.pre-phi, align 8
  %689 = add i64 %683, -248
  %690 = add i64 %685, 13
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RSI.i3042, align 8
  %694 = add i64 %685, 9489
  %695 = add i64 %685, 18
  %696 = load i64, i64* %6, align 8
  %697 = add i64 %696, -8
  %698 = inttoptr i64 %697 to i64*
  store i64 %695, i64* %698, align 8
  store i64 %697, i64* %6, align 8
  store i64 %694, i64* %3, align 8
  %call2_4010cc = tail call %struct.Memory* @sub_4035d0._Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %694, %struct.Memory* %call2_40109e)
  %699 = load i64, i64* %RBP.i, align 8
  %700 = add i64 %699, -41
  %701 = load i64, i64* %3, align 8
  %702 = add i64 %701, 4
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %700 to i8*
  %704 = load i8, i8* %703, align 1
  %705 = sext i8 %704 to i64
  %706 = and i64 %705, 4294967295
  store i64 %706, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4140cf_type* @G__0x4140cf to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4140cf_type* @G__0x4140cf to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %707 = add i64 %699, -240
  %708 = add i64 %701, 18
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %RDI.i4036.pre-phi, align 8
  %711 = add i64 %699, -248
  %712 = add i64 %701, 24
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RSI.i3042, align 8
  %716 = add i64 %701, 9743
  %717 = add i64 %701, 29
  %718 = load i64, i64* %6, align 8
  %719 = add i64 %718, -8
  %720 = inttoptr i64 %719 to i64*
  store i64 %717, i64* %720, align 8
  store i64 %719, i64* %6, align 8
  store i64 %716, i64* %3, align 8
  %call2_4010e9 = tail call %struct.Memory* @sub_4036e0._Z14test_variable1Ia22custom_divide_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %716, %struct.Memory* %call2_4010cc)
  %721 = load i64, i64* %RBP.i, align 8
  %722 = add i64 %721, -44
  %723 = load i64, i64* %3, align 8
  %724 = add i64 %723, 5
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %722 to i8*
  %726 = load i8, i8* %725, align 1
  %727 = sext i8 %726 to i64
  %728 = and i64 %727, 4294967295
  store i64 %728, i64* %474, align 8
  %729 = add i64 %721, -43
  %730 = add i64 %723, 10
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i8*
  %732 = load i8, i8* %731, align 1
  %733 = sext i8 %732 to i64
  %734 = and i64 %733, 4294967295
  store i64 %734, i64* %242, align 8
  %735 = add i64 %721, -42
  %736 = add i64 %723, 14
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i8*
  %738 = load i8, i8* %737, align 1
  %739 = sext i8 %738 to i64
  %740 = and i64 %739, 4294967295
  store i64 %740, i64* %RCX.i4032, align 8
  %741 = add i64 %721, -41
  %742 = add i64 %723, 18
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i8*
  %744 = load i8, i8* %743, align 1
  %745 = sext i8 %744 to i64
  %746 = and i64 %745, 4294967295
  store i64 %746, i64* %RDX.i4028, align 8
  %747 = load i64, i64* %6, align 8
  store i64 %747, i64* %RDI.i4036.pre-phi, align 8
  %748 = add i64 %723, 28
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i64*
  store i64 4276455, i64* %749, align 8
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -240
  %752 = load i64, i64* %3, align 8
  %753 = add i64 %752, 7
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %751 to i64*
  %755 = load i64, i64* %754, align 8
  store i64 %755, i64* %RDI.i4036.pre-phi, align 8
  %756 = add i64 %750, -248
  %757 = add i64 %752, 13
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RSI.i3042, align 8
  %761 = add i64 %752, 9862
  %762 = add i64 %752, 18
  %763 = load i64, i64* %6, align 8
  %764 = add i64 %763, -8
  %765 = inttoptr i64 %764 to i64*
  store i64 %762, i64* %765, align 8
  store i64 %764, i64* %6, align 8
  store i64 %761, i64* %3, align 8
  %call2_401117 = tail call %struct.Memory* @sub_403790._Z14test_variable4Ia31custom_divide_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %761, %struct.Memory* %call2_4010e9)
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -44
  %768 = load i64, i64* %3, align 8
  %769 = add i64 %768, 5
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %767 to i8*
  %771 = load i8, i8* %770, align 1
  %772 = sext i8 %771 to i64
  %773 = and i64 %772, 4294967295
  store i64 %773, i64* %474, align 8
  %774 = add i64 %766, -43
  %775 = add i64 %768, 10
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i8*
  %777 = load i8, i8* %776, align 1
  %778 = sext i8 %777 to i64
  %779 = and i64 %778, 4294967295
  store i64 %779, i64* %242, align 8
  %780 = add i64 %766, -42
  %781 = add i64 %768, 14
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i8*
  %783 = load i8, i8* %782, align 1
  %784 = sext i8 %783 to i64
  %785 = and i64 %784, 4294967295
  store i64 %785, i64* %RCX.i4032, align 8
  %786 = add i64 %766, -41
  %787 = add i64 %768, 18
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i8*
  %789 = load i8, i8* %788, align 1
  %790 = sext i8 %789 to i64
  %791 = and i64 %790, 4294967295
  store i64 %791, i64* %RDX.i4028, align 8
  %792 = load i64, i64* %6, align 8
  store i64 %792, i64* %RDI.i4036.pre-phi, align 8
  %793 = add i64 %768, 28
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i64*
  store i64 4276489, i64* %794, align 8
  %795 = load i64, i64* %RBP.i, align 8
  %796 = add i64 %795, -240
  %797 = load i64, i64* %3, align 8
  %798 = add i64 %797, 7
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %796 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RDI.i4036.pre-phi, align 8
  %801 = add i64 %795, -248
  %802 = add i64 %797, 13
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RSI.i3042, align 8
  %806 = add i64 %797, 10088
  %807 = add i64 %797, 18
  %808 = load i64, i64* %6, align 8
  %809 = add i64 %808, -8
  %810 = inttoptr i64 %809 to i64*
  store i64 %807, i64* %810, align 8
  store i64 %809, i64* %6, align 8
  store i64 %806, i64* %3, align 8
  %call2_401145 = tail call %struct.Memory* @sub_4038a0._Z14test_variable4Ia32custom_divide_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %806, %struct.Memory* %call2_401117)
  %811 = load i64, i64* %RBP.i, align 8
  %812 = add i64 %811, -44
  %813 = load i64, i64* %3, align 8
  %814 = add i64 %813, 5
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %812 to i8*
  %816 = load i8, i8* %815, align 1
  %817 = sext i8 %816 to i64
  %818 = and i64 %817, 4294967295
  store i64 %818, i64* %474, align 8
  %819 = add i64 %811, -43
  %820 = add i64 %813, 10
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i8*
  %822 = load i8, i8* %821, align 1
  %823 = sext i8 %822 to i64
  %824 = and i64 %823, 4294967295
  store i64 %824, i64* %242, align 8
  %825 = add i64 %811, -42
  %826 = add i64 %813, 14
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i8*
  %828 = load i8, i8* %827, align 1
  %829 = sext i8 %828 to i64
  %830 = and i64 %829, 4294967295
  store i64 %830, i64* %RCX.i4032, align 8
  %831 = add i64 %811, -41
  %832 = add i64 %813, 18
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i8*
  %834 = load i8, i8* %833, align 1
  %835 = sext i8 %834 to i64
  %836 = and i64 %835, 4294967295
  store i64 %836, i64* %RDX.i4028, align 8
  %837 = load i64, i64* %6, align 8
  store i64 %837, i64* %RDI.i4036.pre-phi, align 8
  %838 = add i64 %813, 28
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i64*
  store i64 4276524, i64* %839, align 8
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -240
  %842 = load i64, i64* %3, align 8
  %843 = add i64 %842, 7
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %841 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RDI.i4036.pre-phi, align 8
  %846 = add i64 %840, -248
  %847 = add i64 %842, 13
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RSI.i3042, align 8
  %851 = add i64 %842, 10314
  %852 = add i64 %842, 18
  %853 = load i64, i64* %6, align 8
  %854 = add i64 %853, -8
  %855 = inttoptr i64 %854 to i64*
  store i64 %852, i64* %855, align 8
  store i64 %854, i64* %6, align 8
  store i64 %851, i64* %3, align 8
  %call2_401173 = tail call %struct.Memory* @sub_4039b0._Z14test_variable4Ia30custom_mixed_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %851, %struct.Memory* %call2_401145)
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -41
  %858 = load i64, i64* %3, align 8
  %859 = add i64 %858, 4
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %857 to i8*
  %861 = load i8, i8* %860, align 1
  %862 = sext i8 %861 to i64
  %863 = and i64 %862, 4294967295
  store i64 %863, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41414c_type* @G__0x41414c to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41414c_type* @G__0x41414c to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %864 = add i64 %856, -240
  %865 = add i64 %858, 18
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %RDI.i4036.pre-phi, align 8
  %868 = add i64 %856, -248
  %869 = add i64 %858, 24
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RSI.i3042, align 8
  %873 = add i64 %858, 10568
  %874 = add i64 %858, 29
  %875 = load i64, i64* %6, align 8
  %876 = add i64 %875, -8
  %877 = inttoptr i64 %876 to i64*
  store i64 %874, i64* %877, align 8
  store i64 %876, i64* %6, align 8
  store i64 %873, i64* %3, align 8
  %call2_401190 = tail call %struct.Memory* @sub_403ac0._Z14test_variable1Ia19custom_variable_andIaEEvPT_iS2_PKc(%struct.State* %0, i64 %873, %struct.Memory* %call2_401173)
  %878 = load i64, i64* %RBP.i, align 8
  %879 = add i64 %878, -44
  %880 = load i64, i64* %3, align 8
  %881 = add i64 %880, 5
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %879 to i8*
  %883 = load i8, i8* %882, align 1
  %884 = sext i8 %883 to i64
  %885 = and i64 %884, 4294967295
  store i64 %885, i64* %474, align 8
  %886 = add i64 %878, -43
  %887 = add i64 %880, 10
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i8*
  %889 = load i8, i8* %888, align 1
  %890 = sext i8 %889 to i64
  %891 = and i64 %890, 4294967295
  store i64 %891, i64* %242, align 8
  %892 = add i64 %878, -42
  %893 = add i64 %880, 14
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i8*
  %895 = load i8, i8* %894, align 1
  %896 = sext i8 %895 to i64
  %897 = and i64 %896, 4294967295
  store i64 %897, i64* %RCX.i4032, align 8
  %898 = add i64 %878, -41
  %899 = add i64 %880, 18
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i8*
  %901 = load i8, i8* %900, align 1
  %902 = sext i8 %901 to i64
  %903 = and i64 %902, 4294967295
  store i64 %903, i64* %RDX.i4028, align 8
  %904 = load i64, i64* %6, align 8
  store i64 %904, i64* %RDI.i4036.pre-phi, align 8
  %905 = add i64 %880, 28
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i64*
  store i64 4276577, i64* %906, align 8
  %907 = load i64, i64* %RBP.i, align 8
  %908 = add i64 %907, -240
  %909 = load i64, i64* %3, align 8
  %910 = add i64 %909, 7
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %908 to i64*
  %912 = load i64, i64* %911, align 8
  store i64 %912, i64* %RDI.i4036.pre-phi, align 8
  %913 = add i64 %907, -248
  %914 = add i64 %909, 13
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RSI.i3042, align 8
  %918 = add i64 %909, 10687
  %919 = add i64 %909, 18
  %920 = load i64, i64* %6, align 8
  %921 = add i64 %920, -8
  %922 = inttoptr i64 %921 to i64*
  store i64 %919, i64* %922, align 8
  store i64 %921, i64* %6, align 8
  store i64 %918, i64* %3, align 8
  %call2_4011be = tail call %struct.Memory* @sub_403b70._Z14test_variable4Ia28custom_multiple_variable_andIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %918, %struct.Memory* %call2_401190)
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -41
  %925 = load i64, i64* %3, align 8
  %926 = add i64 %925, 4
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %924 to i8*
  %928 = load i8, i8* %927, align 1
  %929 = sext i8 %928 to i64
  %930 = and i64 %929, 4294967295
  store i64 %930, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41417f_type* @G__0x41417f to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41417f_type* @G__0x41417f to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %931 = add i64 %923, -240
  %932 = add i64 %925, 18
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RDI.i4036.pre-phi, align 8
  %935 = add i64 %923, -248
  %936 = add i64 %925, 24
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = zext i32 %938 to i64
  store i64 %939, i64* %RSI.i3042, align 8
  %940 = add i64 %925, 10941
  %941 = add i64 %925, 29
  %942 = load i64, i64* %6, align 8
  %943 = add i64 %942, -8
  %944 = inttoptr i64 %943 to i64*
  store i64 %941, i64* %944, align 8
  store i64 %943, i64* %6, align 8
  store i64 %940, i64* %3, align 8
  %call2_4011db = tail call %struct.Memory* @sub_403c80._Z14test_variable1Ia18custom_variable_orIaEEvPT_iS2_PKc(%struct.State* %0, i64 %940, %struct.Memory* %call2_4011be)
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -44
  %947 = load i64, i64* %3, align 8
  %948 = add i64 %947, 5
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %946 to i8*
  %950 = load i8, i8* %949, align 1
  %951 = sext i8 %950 to i64
  %952 = and i64 %951, 4294967295
  store i64 %952, i64* %474, align 8
  %953 = add i64 %945, -43
  %954 = add i64 %947, 10
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i8*
  %956 = load i8, i8* %955, align 1
  %957 = sext i8 %956 to i64
  %958 = and i64 %957, 4294967295
  store i64 %958, i64* %242, align 8
  %959 = add i64 %945, -42
  %960 = add i64 %947, 14
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i8*
  %962 = load i8, i8* %961, align 1
  %963 = sext i8 %962 to i64
  %964 = and i64 %963, 4294967295
  store i64 %964, i64* %RCX.i4032, align 8
  %965 = add i64 %945, -41
  %966 = add i64 %947, 18
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i8*
  %968 = load i8, i8* %967, align 1
  %969 = sext i8 %968 to i64
  %970 = and i64 %969, 4294967295
  store i64 %970, i64* %RDX.i4028, align 8
  %971 = load i64, i64* %6, align 8
  store i64 %971, i64* %RDI.i4036.pre-phi, align 8
  %972 = add i64 %947, 28
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  store i64 4276627, i64* %973, align 8
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -240
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, 7
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %975 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %RDI.i4036.pre-phi, align 8
  %980 = add i64 %974, -248
  %981 = add i64 %976, 13
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RSI.i3042, align 8
  %985 = add i64 %976, 11060
  %986 = add i64 %976, 18
  %987 = load i64, i64* %6, align 8
  %988 = add i64 %987, -8
  %989 = inttoptr i64 %988 to i64*
  store i64 %986, i64* %989, align 8
  store i64 %988, i64* %6, align 8
  store i64 %985, i64* %3, align 8
  %call2_401209 = tail call %struct.Memory* @sub_403d30._Z14test_variable4Ia27custom_multiple_variable_orIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %985, %struct.Memory* %call2_4011db)
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -41
  %992 = load i64, i64* %3, align 8
  %993 = add i64 %992, 4
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %991 to i8*
  %995 = load i8, i8* %994, align 1
  %996 = sext i8 %995 to i64
  %997 = and i64 %996, 4294967295
  store i64 %997, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141b0_type* @G__0x4141b0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141b0_type* @G__0x4141b0 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %998 = add i64 %990, -240
  %999 = add i64 %992, 18
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i64*
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %RDI.i4036.pre-phi, align 8
  %1002 = add i64 %990, -248
  %1003 = add i64 %992, 24
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RSI.i3042, align 8
  %1007 = add i64 %992, 11314
  %1008 = add i64 %992, 29
  %1009 = load i64, i64* %6, align 8
  %1010 = add i64 %1009, -8
  %1011 = inttoptr i64 %1010 to i64*
  store i64 %1008, i64* %1011, align 8
  store i64 %1010, i64* %6, align 8
  store i64 %1007, i64* %3, align 8
  %call2_401226 = tail call %struct.Memory* @sub_403e40._Z14test_variable1Ia19custom_variable_xorIaEEvPT_iS2_PKc(%struct.State* %0, i64 %1007, %struct.Memory* %call2_401209)
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -44
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, 5
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1013 to i8*
  %1017 = load i8, i8* %1016, align 1
  %1018 = sext i8 %1017 to i64
  %1019 = and i64 %1018, 4294967295
  store i64 %1019, i64* %474, align 8
  %1020 = add i64 %1012, -43
  %1021 = add i64 %1014, 10
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i8*
  %1023 = load i8, i8* %1022, align 1
  %1024 = sext i8 %1023 to i64
  %1025 = and i64 %1024, 4294967295
  store i64 %1025, i64* %242, align 8
  %1026 = add i64 %1012, -42
  %1027 = add i64 %1014, 14
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i8*
  %1029 = load i8, i8* %1028, align 1
  %1030 = sext i8 %1029 to i64
  %1031 = and i64 %1030, 4294967295
  store i64 %1031, i64* %RCX.i4032, align 8
  %1032 = add i64 %1012, -41
  %1033 = add i64 %1014, 18
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i8*
  %1035 = load i8, i8* %1034, align 1
  %1036 = sext i8 %1035 to i64
  %1037 = and i64 %1036, 4294967295
  store i64 %1037, i64* %RDX.i4028, align 8
  %1038 = load i64, i64* %6, align 8
  store i64 %1038, i64* %RDI.i4036.pre-phi, align 8
  %1039 = add i64 %1014, 28
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  store i64 4276677, i64* %1040, align 8
  %1041 = load i64, i64* %RBP.i, align 8
  %1042 = add i64 %1041, -240
  %1043 = load i64, i64* %3, align 8
  %1044 = add i64 %1043, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1042 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RDI.i4036.pre-phi, align 8
  %1047 = add i64 %1041, -248
  %1048 = add i64 %1043, 13
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RSI.i3042, align 8
  %1052 = add i64 %1043, 11433
  %1053 = add i64 %1043, 18
  %1054 = load i64, i64* %6, align 8
  %1055 = add i64 %1054, -8
  %1056 = inttoptr i64 %1055 to i64*
  store i64 %1053, i64* %1056, align 8
  store i64 %1055, i64* %6, align 8
  store i64 %1052, i64* %3, align 8
  %call2_401254 = tail call %struct.Memory* @sub_403ef0._Z14test_variable4Ia28custom_multiple_variable_xorIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1052, %struct.Memory* %call2_401226)
  %1057 = load i64, i64* %3, align 8
  %1058 = load double, double* bitcast (%G_0x218e27__rip__4199009__type* @G_0x218e27__rip__4199009_ to double*), align 8
  %1059 = tail call double @llvm.trunc.f64(double %1058)
  %1060 = tail call double @llvm.fabs.f64(double %1059)
  %1061 = fcmp ogt double %1060, 0x41DFFFFFFFC00000
  %1062 = fptosi double %1059 to i32
  store i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  %ECX.i3567 = bitcast %union.anon* %234 to i32*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  %BL.i3565 = bitcast %union.anon* %16 to i8*
  %1063 = trunc i32 %1062 to i8
  %1064 = select i1 %1061, i8 0, i8 %1063
  %1065 = zext i8 %1064 to i64
  store i8 %1064, i8* %BL.i3565, align 1
  store i64 %1065, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x66a200_type* @G__0x66a200 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x66a200_type* @G__0x66a200 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -256
  %1068 = add i64 %1057, 34
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295) to i32) to i64), i64* %1069, align 8
  %1070 = load i64, i64* %3, align 8
  %1071 = add i64 %1070, 11653
  %1072 = add i64 %1070, 5
  %1073 = load i64, i64* %6, align 8
  %1074 = add i64 %1073, -8
  %1075 = inttoptr i64 %1074 to i64*
  store i64 %1072, i64* %1075, align 8
  store i64 %1074, i64* %6, align 8
  store i64 %1071, i64* %3, align 8
  %call2_40127b = tail call %struct.Memory* @sub_404000._Z4fillIPhhEvT_S1_T0_(%struct.State* %0, i64 %1071, %struct.Memory* %call2_401254)
  %1076 = load i64, i64* %RBP.i, align 8
  %1077 = add i64 %1076, -40
  %1078 = load i64, i64* %3, align 8
  %1079 = add i64 %1078, 5
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1077 to double*
  %1081 = load double, double* %1080, align 8
  %1082 = tail call double @llvm.trunc.f64(double %1081)
  %1083 = tail call double @llvm.fabs.f64(double %1082)
  %1084 = fcmp ogt double %1083, 0x41DFFFFFFFC00000
  %1085 = fptosi double %1082 to i32
  %1086 = zext i32 %1085 to i64
  %1087 = select i1 %1084, i64 2147483648, i64 %1086
  store i64 %1087, i64* %RAX.i4030.pre-phi, align 8
  %1088 = trunc i64 %1087 to i8
  store i8 %1088, i8* %BL.i3565, align 1
  %1089 = add i64 %1076, -45
  %1090 = add i64 %1078, 10
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i8*
  store i8 %1088, i8* %1091, align 1
  %1092 = load i64, i64* %RBP.i, align 8
  %1093 = add i64 %1092, -45
  %1094 = load i64, i64* %3, align 8
  %1095 = add i64 %1094, 3
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1093 to i8*
  %1097 = load i8, i8* %1096, align 1
  %1098 = shl i8 %1097, 1
  store i8 %1098, i8* %BL.i3565, align 1
  %1099 = icmp ult i8 %1098, %1097
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %26, align 1
  %1101 = zext i8 %1098 to i32
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %33, align 1
  %1106 = lshr i8 %1097, 3
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %39, align 1
  %1108 = icmp eq i8 %1098, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %42, align 1
  %1110 = lshr i8 %1097, 6
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %45, align 1
  %1112 = lshr i8 %1097, 7
  %1113 = xor i8 %1111, %1112
  store i8 %1113, i8* %51, align 1
  %1114 = add i64 %1092, -46
  %1115 = add i64 %1094, 8
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i8*
  store i8 %1098, i8* %1116, align 1
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -45
  %1119 = load i64, i64* %3, align 8
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1118 to i8*
  %1122 = load i8, i8* %1121, align 1
  %1123 = zext i8 %1122 to i32
  %1124 = add nuw nsw i32 %1123, 2
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %1126 = and i32 %1124, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %33, align 1
  %1131 = xor i32 %1123, %1124
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1135 = trunc i32 %1124 to i8
  store i8 %1135, i8* %BL.i3565, align 1
  %1136 = add i64 %1117, -47
  %1137 = add i64 %1119, 12
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i8*
  store i8 %1135, i8* %1138, align 1
  %1139 = load i64, i64* %RBP.i, align 8
  %1140 = add i64 %1139, -45
  %1141 = load i64, i64* %3, align 8
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1140 to i8*
  %1144 = load i8, i8* %1143, align 1
  %1145 = zext i8 %1144 to i64
  store i64 %1145, i64* %RAX.i4030.pre-phi, align 8
  %1146 = add i64 %1139, -46
  %1147 = add i64 %1141, 8
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i8*
  %1149 = load i8, i8* %1148, align 1
  %1150 = zext i8 %1149 to i64
  store i64 %1150, i64* %RCX.i4032, align 8
  %1151 = add i64 %1139, -47
  %1152 = add i64 %1141, 12
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i8*
  %1154 = load i8, i8* %1153, align 1
  %1155 = zext i8 %1154 to i64
  store i64 %1155, i64* %RDX.i4028, align 8
  store i64 0, i64* %242, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %1156 = add i64 %1139, -260
  %1157 = zext i8 %1144 to i32
  %1158 = add i64 %1141, 21
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1156 to i32*
  store i32 %1157, i32* %1159, align 4
  %1160 = load i32, i32* %ECX.i3567, align 4
  %1161 = zext i32 %1160 to i64
  %1162 = load i64, i64* %3, align 8
  store i64 %1161, i64* %RAX.i4030.pre-phi, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -264
  %1165 = load i32, i32* %EDX.i4025, align 4
  %1166 = add i64 %1162, 8
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i32*
  store i32 %1165, i32* %1167, align 4
  %1168 = load i32, i32* %R8D.i4026, align 4
  %1169 = zext i32 %1168 to i64
  %1170 = load i64, i64* %3, align 8
  store i64 %1169, i64* %RDX.i4028, align 8
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -264
  %1173 = add i64 %1170, 9
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RCX.i4032, align 8
  %1177 = add i64 %1170, 11
  store i64 %1177, i64* %3, align 8
  %1178 = load i32, i32* %372, align 8
  %1179 = zext i32 %1178 to i64
  %1180 = shl nuw i64 %1169, 32
  %1181 = or i64 %1180, %1179
  %1182 = udiv i64 %1181, %1176
  %1183 = and i64 %1182, 4294967295
  %1184 = icmp eq i64 %1182, %1183
  br i1 %1184, label %1187, label %1185

; <label>:1185:                                   ; preds = %routine_idivl__r11d.exit
  %1186 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1177, %struct.Memory* %call2_40127b)
  %.pre6 = load i64, i64* %RBP.i, align 8
  %.pre7 = load i64, i64* %3, align 8
  %.pre8 = load i32, i32* %EAX.i4015, align 4
  br label %routine_divl__ecx.exit

; <label>:1187:                                   ; preds = %routine_idivl__r11d.exit
  %1188 = urem i64 %1181, %1176
  %1189 = getelementptr inbounds %union.anon, %union.anon* %371, i64 0, i32 0
  store i64 %1182, i64* %1189, align 8
  store i64 %1188, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1190 = trunc i64 %1182 to i32
  br label %routine_divl__ecx.exit

routine_divl__ecx.exit:                           ; preds = %1187, %1185
  %1191 = phi i32 [ %.pre8, %1185 ], [ %1190, %1187 ]
  %1192 = phi i64 [ %.pre7, %1185 ], [ %1177, %1187 ]
  %1193 = phi i64 [ %.pre6, %1185 ], [ %1171, %1187 ]
  %1194 = phi %struct.Memory* [ %1186, %1185 ], [ %call2_40127b, %1187 ]
  %1195 = add i64 %1193, -260
  %1196 = add i64 %1192, 6
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = add i32 %1191, %1198
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RCX.i4032, align 8
  %1201 = icmp ult i32 %1199, %1198
  %1202 = icmp ult i32 %1199, %1191
  %1203 = or i1 %1201, %1202
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %26, align 1
  %1205 = and i32 %1199, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %33, align 1
  %1210 = xor i32 %1191, %1198
  %1211 = xor i32 %1210, %1199
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %39, align 1
  %1215 = icmp eq i32 %1199, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %42, align 1
  %1217 = lshr i32 %1199, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %45, align 1
  %1219 = lshr i32 %1198, 31
  %1220 = lshr i32 %1191, 31
  %1221 = xor i32 %1217, %1219
  %1222 = xor i32 %1217, %1220
  %1223 = add nuw nsw i32 %1221, %1222
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %51, align 1
  %1226 = trunc i32 %1199 to i8
  store i8 %1226, i8* %BL.i3565, align 1
  %1227 = add i64 %1193, -48
  %1228 = add i64 %1192, 13
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i8*
  store i8 %1226, i8* %1229, align 1
  %1230 = load i64, i64* %RBP.i, align 8
  %1231 = add i64 %1230, -45
  %1232 = load i64, i64* %3, align 8
  %1233 = add i64 %1232, 4
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1231 to i8*
  %1235 = load i8, i8* %1234, align 1
  %1236 = zext i8 %1235 to i64
  store i64 %1236, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x413fda_type* @G__0x413fda to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413fda_type* @G__0x413fda to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1237 = add i64 %1230, -256
  %1238 = add i64 %1232, 18
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i64*
  %1240 = load i64, i64* %1239, align 8
  store i64 %1240, i64* %RDI.i4036.pre-phi, align 8
  %1241 = add i64 %1230, -248
  %1242 = add i64 %1232, 24
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RSI.i3042, align 8
  %1246 = add i64 %1230, -268
  %1247 = load i32, i32* %R8D.i4026, align 4
  %1248 = add i64 %1232, 31
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1246 to i32*
  store i32 %1247, i32* %1249, align 4
  %1250 = load i64, i64* %3, align 8
  %1251 = add i64 %1250, 11598
  %1252 = add i64 %1250, 5
  %1253 = load i64, i64* %6, align 8
  %1254 = add i64 %1253, -8
  %1255 = inttoptr i64 %1254 to i64*
  store i64 %1252, i64* %1255, align 8
  store i64 %1254, i64* %6, align 8
  store i64 %1251, i64* %3, align 8
  %call2_4012f2 = tail call %struct.Memory* @sub_404040._Z14test_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1251, %struct.Memory* %1194)
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -45
  %1258 = load i64, i64* %3, align 8
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1257 to i8*
  %1261 = load i8, i8* %1260, align 1
  %1262 = zext i8 %1261 to i64
  store i64 %1262, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x413fef_type* @G__0x413fef to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413fef_type* @G__0x413fef to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1263 = add i64 %1256, -256
  %1264 = add i64 %1258, 18
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i64*
  %1266 = load i64, i64* %1265, align 8
  store i64 %1266, i64* %RDI.i4036.pre-phi, align 8
  %1267 = add i64 %1256, -248
  %1268 = add i64 %1258, 24
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = zext i32 %1270 to i64
  store i64 %1271, i64* %RSI.i3042, align 8
  %1272 = add i64 %1258, 11769
  %1273 = add i64 %1258, 29
  %1274 = load i64, i64* %6, align 8
  %1275 = add i64 %1274, -8
  %1276 = inttoptr i64 %1275 to i64*
  store i64 %1273, i64* %1276, align 8
  store i64 %1275, i64* %6, align 8
  store i64 %1272, i64* %3, align 8
  %call2_40130f = tail call %struct.Memory* @sub_4040f0._Z22test_hoisted_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1272, %struct.Memory* %call2_4012f2)
  %1277 = load i64, i64* %RBP.i, align 8
  %1278 = add i64 %1277, -48
  %1279 = load i64, i64* %3, align 8
  %1280 = add i64 %1279, 5
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1278 to i8*
  %1282 = load i8, i8* %1281, align 1
  %1283 = zext i8 %1282 to i64
  store i64 %1283, i64* %474, align 8
  %1284 = add i64 %1277, -47
  %1285 = add i64 %1279, 10
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i8*
  %1287 = load i8, i8* %1286, align 1
  %1288 = zext i8 %1287 to i64
  store i64 %1288, i64* %242, align 8
  %1289 = add i64 %1277, -46
  %1290 = add i64 %1279, 14
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i8*
  %1292 = load i8, i8* %1291, align 1
  %1293 = zext i8 %1292 to i64
  store i64 %1293, i64* %RCX.i4032, align 8
  %1294 = add i64 %1277, -45
  %1295 = add i64 %1279, 18
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i8*
  %1297 = load i8, i8* %1296, align 1
  %1298 = zext i8 %1297 to i64
  store i64 %1298, i64* %RDX.i4028, align 8
  %1299 = load i64, i64* %6, align 8
  store i64 %1299, i64* %RDI.i4036.pre-phi, align 8
  %1300 = add i64 %1279, 28
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i64*
  store i64 4276236, i64* %1301, align 8
  %1302 = load i64, i64* %RBP.i, align 8
  %1303 = add i64 %1302, -256
  %1304 = load i64, i64* %3, align 8
  %1305 = add i64 %1304, 7
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1303 to i64*
  %1307 = load i64, i64* %1306, align 8
  store i64 %1307, i64* %RDI.i4036.pre-phi, align 8
  %1308 = add i64 %1302, -248
  %1309 = add i64 %1304, 13
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RSI.i3042, align 8
  %1313 = add i64 %1304, 11904
  %1314 = add i64 %1304, 18
  %1315 = load i64, i64* %6, align 8
  %1316 = add i64 %1315, -8
  %1317 = inttoptr i64 %1316 to i64*
  store i64 %1314, i64* %1317, align 8
  store i64 %1316, i64* %6, align 8
  store i64 %1313, i64* %3, align 8
  %call2_40133d = tail call %struct.Memory* @sub_4041b0._Z14test_variable4Ih28custom_add_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1313, %struct.Memory* %call2_40130f)
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -45
  %1320 = load i64, i64* %3, align 8
  %1321 = add i64 %1320, 4
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1319 to i8*
  %1323 = load i8, i8* %1322, align 1
  %1324 = zext i8 %1323 to i64
  store i64 %1324, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41402b_type* @G__0x41402b to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41402b_type* @G__0x41402b to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1325 = add i64 %1318, -256
  %1326 = add i64 %1320, 18
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i64*
  %1328 = load i64, i64* %1327, align 8
  store i64 %1328, i64* %RDI.i4036.pre-phi, align 8
  %1329 = add i64 %1318, -248
  %1330 = add i64 %1320, 24
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  %1332 = load i32, i32* %1331, align 4
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RSI.i3042, align 8
  %1334 = add i64 %1320, 12158
  %1335 = add i64 %1320, 29
  %1336 = load i64, i64* %6, align 8
  %1337 = add i64 %1336, -8
  %1338 = inttoptr i64 %1337 to i64*
  store i64 %1335, i64* %1338, align 8
  store i64 %1337, i64* %6, align 8
  store i64 %1334, i64* %3, align 8
  %call2_40135a = tail call %struct.Memory* @sub_4042c0._Z14test_variable1Ih19custom_sub_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1334, %struct.Memory* %call2_40133d)
  %1339 = load i64, i64* %RBP.i, align 8
  %1340 = add i64 %1339, -48
  %1341 = load i64, i64* %3, align 8
  %1342 = add i64 %1341, 5
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1340 to i8*
  %1344 = load i8, i8* %1343, align 1
  %1345 = zext i8 %1344 to i64
  store i64 %1345, i64* %474, align 8
  %1346 = add i64 %1339, -47
  %1347 = add i64 %1341, 10
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i8*
  %1349 = load i8, i8* %1348, align 1
  %1350 = zext i8 %1349 to i64
  store i64 %1350, i64* %242, align 8
  %1351 = add i64 %1339, -46
  %1352 = add i64 %1341, 14
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i8*
  %1354 = load i8, i8* %1353, align 1
  %1355 = zext i8 %1354 to i64
  store i64 %1355, i64* %RCX.i4032, align 8
  %1356 = add i64 %1339, -45
  %1357 = add i64 %1341, 18
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i8*
  %1359 = load i8, i8* %1358, align 1
  %1360 = zext i8 %1359 to i64
  store i64 %1360, i64* %RDX.i4028, align 8
  %1361 = load i64, i64* %6, align 8
  store i64 %1361, i64* %RDI.i4036.pre-phi, align 8
  %1362 = add i64 %1341, 28
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i64*
  store i64 4276293, i64* %1363, align 8
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -256
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 7
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RDI.i4036.pre-phi, align 8
  %1370 = add i64 %1364, -248
  %1371 = add i64 %1366, 13
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RSI.i3042, align 8
  %1375 = add i64 %1366, 12277
  %1376 = add i64 %1366, 18
  %1377 = load i64, i64* %6, align 8
  %1378 = add i64 %1377, -8
  %1379 = inttoptr i64 %1378 to i64*
  store i64 %1376, i64* %1379, align 8
  store i64 %1378, i64* %6, align 8
  store i64 %1375, i64* %3, align 8
  %call2_401388 = tail call %struct.Memory* @sub_404370._Z14test_variable4Ih28custom_sub_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1375, %struct.Memory* %call2_40135a)
  %1380 = load i64, i64* %RBP.i, align 8
  %1381 = add i64 %1380, -45
  %1382 = load i64, i64* %3, align 8
  %1383 = add i64 %1382, 4
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1381 to i8*
  %1385 = load i8, i8* %1384, align 1
  %1386 = zext i8 %1385 to i64
  store i64 %1386, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414069_type* @G__0x414069 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414069_type* @G__0x414069 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1387 = add i64 %1380, -256
  %1388 = add i64 %1382, 18
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RDI.i4036.pre-phi, align 8
  %1391 = add i64 %1380, -248
  %1392 = add i64 %1382, 24
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RSI.i3042, align 8
  %1396 = add i64 %1382, 12531
  %1397 = add i64 %1382, 29
  %1398 = load i64, i64* %6, align 8
  %1399 = add i64 %1398, -8
  %1400 = inttoptr i64 %1399 to i64*
  store i64 %1397, i64* %1400, align 8
  store i64 %1399, i64* %6, align 8
  store i64 %1396, i64* %3, align 8
  %call2_4013a5 = tail call %struct.Memory* @sub_404480._Z14test_variable1Ih24custom_multiply_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1396, %struct.Memory* %call2_401388)
  %1401 = load i64, i64* %RBP.i, align 8
  %1402 = add i64 %1401, -48
  %1403 = load i64, i64* %3, align 8
  %1404 = add i64 %1403, 5
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1402 to i8*
  %1406 = load i8, i8* %1405, align 1
  %1407 = zext i8 %1406 to i64
  store i64 %1407, i64* %474, align 8
  %1408 = add i64 %1401, -47
  %1409 = add i64 %1403, 10
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i8*
  %1411 = load i8, i8* %1410, align 1
  %1412 = zext i8 %1411 to i64
  store i64 %1412, i64* %242, align 8
  %1413 = add i64 %1401, -46
  %1414 = add i64 %1403, 14
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i8*
  %1416 = load i8, i8* %1415, align 1
  %1417 = zext i8 %1416 to i64
  store i64 %1417, i64* %RCX.i4032, align 8
  %1418 = add i64 %1401, -45
  %1419 = add i64 %1403, 18
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i8*
  %1421 = load i8, i8* %1420, align 1
  %1422 = zext i8 %1421 to i64
  store i64 %1422, i64* %RDX.i4028, align 8
  %1423 = load i64, i64* %6, align 8
  store i64 %1423, i64* %RDI.i4036.pre-phi, align 8
  %1424 = add i64 %1403, 28
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i64*
  store i64 4276355, i64* %1425, align 8
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -256
  %1428 = load i64, i64* %3, align 8
  %1429 = add i64 %1428, 7
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1427 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %RDI.i4036.pre-phi, align 8
  %1432 = add i64 %1426, -248
  %1433 = add i64 %1428, 13
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RSI.i3042, align 8
  %1437 = add i64 %1428, 12650
  %1438 = add i64 %1428, 18
  %1439 = load i64, i64* %6, align 8
  %1440 = add i64 %1439, -8
  %1441 = inttoptr i64 %1440 to i64*
  store i64 %1438, i64* %1441, align 8
  store i64 %1440, i64* %6, align 8
  store i64 %1437, i64* %3, align 8
  %call2_4013d3 = tail call %struct.Memory* @sub_404530._Z14test_variable4Ih33custom_multiply_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1437, %struct.Memory* %call2_4013a5)
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -48
  %1444 = load i64, i64* %3, align 8
  %1445 = add i64 %1444, 5
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1443 to i8*
  %1447 = load i8, i8* %1446, align 1
  %1448 = zext i8 %1447 to i64
  store i64 %1448, i64* %474, align 8
  %1449 = add i64 %1442, -47
  %1450 = add i64 %1444, 10
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i8*
  %1452 = load i8, i8* %1451, align 1
  %1453 = zext i8 %1452 to i64
  store i64 %1453, i64* %242, align 8
  %1454 = add i64 %1442, -46
  %1455 = add i64 %1444, 14
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i8*
  %1457 = load i8, i8* %1456, align 1
  %1458 = zext i8 %1457 to i64
  store i64 %1458, i64* %RCX.i4032, align 8
  %1459 = add i64 %1442, -45
  %1460 = add i64 %1444, 18
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i8*
  %1462 = load i8, i8* %1461, align 1
  %1463 = zext i8 %1462 to i64
  store i64 %1463, i64* %RDX.i4028, align 8
  %1464 = load i64, i64* %6, align 8
  store i64 %1464, i64* %RDI.i4036.pre-phi, align 8
  %1465 = add i64 %1444, 28
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i64*
  store i64 4276392, i64* %1466, align 8
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -256
  %1469 = load i64, i64* %3, align 8
  %1470 = add i64 %1469, 7
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1468 to i64*
  %1472 = load i64, i64* %1471, align 8
  store i64 %1472, i64* %RDI.i4036.pre-phi, align 8
  %1473 = add i64 %1467, -248
  %1474 = add i64 %1469, 13
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = zext i32 %1476 to i64
  store i64 %1477, i64* %RSI.i3042, align 8
  %1478 = add i64 %1469, 12876
  %1479 = add i64 %1469, 18
  %1480 = load i64, i64* %6, align 8
  %1481 = add i64 %1480, -8
  %1482 = inttoptr i64 %1481 to i64*
  store i64 %1479, i64* %1482, align 8
  store i64 %1481, i64* %6, align 8
  store i64 %1478, i64* %3, align 8
  %call2_401401 = tail call %struct.Memory* @sub_404640._Z14test_variable4Ih34custom_multiply_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1478, %struct.Memory* %call2_4013d3)
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -45
  %1485 = load i64, i64* %3, align 8
  %1486 = add i64 %1485, 4
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1484 to i8*
  %1488 = load i8, i8* %1487, align 1
  %1489 = zext i8 %1488 to i64
  store i64 %1489, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4140ce_type* @G__0x4140ce to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4140ce_type* @G__0x4140ce to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1490 = add i64 %1483, -256
  %1491 = add i64 %1485, 18
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %RDI.i4036.pre-phi, align 8
  %1494 = add i64 %1483, -248
  %1495 = add i64 %1485, 24
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RSI.i3042, align 8
  %1499 = add i64 %1485, 13130
  %1500 = add i64 %1485, 29
  %1501 = load i64, i64* %6, align 8
  %1502 = add i64 %1501, -8
  %1503 = inttoptr i64 %1502 to i64*
  store i64 %1500, i64* %1503, align 8
  store i64 %1502, i64* %6, align 8
  store i64 %1499, i64* %3, align 8
  %call2_40141e = tail call %struct.Memory* @sub_404750._Z14test_variable1Ih22custom_divide_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1499, %struct.Memory* %call2_401401)
  %1504 = load i64, i64* %RBP.i, align 8
  %1505 = add i64 %1504, -48
  %1506 = load i64, i64* %3, align 8
  %1507 = add i64 %1506, 5
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1505 to i8*
  %1509 = load i8, i8* %1508, align 1
  %1510 = zext i8 %1509 to i64
  store i64 %1510, i64* %474, align 8
  %1511 = add i64 %1504, -47
  %1512 = add i64 %1506, 10
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i8*
  %1514 = load i8, i8* %1513, align 1
  %1515 = zext i8 %1514 to i64
  store i64 %1515, i64* %242, align 8
  %1516 = add i64 %1504, -46
  %1517 = add i64 %1506, 14
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i8*
  %1519 = load i8, i8* %1518, align 1
  %1520 = zext i8 %1519 to i64
  store i64 %1520, i64* %RCX.i4032, align 8
  %1521 = add i64 %1504, -45
  %1522 = add i64 %1506, 18
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i8*
  %1524 = load i8, i8* %1523, align 1
  %1525 = zext i8 %1524 to i64
  store i64 %1525, i64* %RDX.i4028, align 8
  %1526 = load i64, i64* %6, align 8
  store i64 %1526, i64* %RDI.i4036.pre-phi, align 8
  %1527 = add i64 %1506, 28
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i64*
  store i64 4276454, i64* %1528, align 8
  %1529 = load i64, i64* %RBP.i, align 8
  %1530 = add i64 %1529, -256
  %1531 = load i64, i64* %3, align 8
  %1532 = add i64 %1531, 7
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1530 to i64*
  %1534 = load i64, i64* %1533, align 8
  store i64 %1534, i64* %RDI.i4036.pre-phi, align 8
  %1535 = add i64 %1529, -248
  %1536 = add i64 %1531, 13
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RSI.i3042, align 8
  %1540 = add i64 %1531, 13249
  %1541 = add i64 %1531, 18
  %1542 = load i64, i64* %6, align 8
  %1543 = add i64 %1542, -8
  %1544 = inttoptr i64 %1543 to i64*
  store i64 %1541, i64* %1544, align 8
  store i64 %1543, i64* %6, align 8
  store i64 %1540, i64* %3, align 8
  %call2_40144c = tail call %struct.Memory* @sub_404800._Z14test_variable4Ih31custom_divide_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1540, %struct.Memory* %call2_40141e)
  %1545 = load i64, i64* %RBP.i, align 8
  %1546 = add i64 %1545, -48
  %1547 = load i64, i64* %3, align 8
  %1548 = add i64 %1547, 5
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1546 to i8*
  %1550 = load i8, i8* %1549, align 1
  %1551 = zext i8 %1550 to i64
  store i64 %1551, i64* %474, align 8
  %1552 = add i64 %1545, -47
  %1553 = add i64 %1547, 10
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i8*
  %1555 = load i8, i8* %1554, align 1
  %1556 = zext i8 %1555 to i64
  store i64 %1556, i64* %242, align 8
  %1557 = add i64 %1545, -46
  %1558 = add i64 %1547, 14
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i8*
  %1560 = load i8, i8* %1559, align 1
  %1561 = zext i8 %1560 to i64
  store i64 %1561, i64* %RCX.i4032, align 8
  %1562 = add i64 %1545, -45
  %1563 = add i64 %1547, 18
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i8*
  %1565 = load i8, i8* %1564, align 1
  %1566 = zext i8 %1565 to i64
  store i64 %1566, i64* %RDX.i4028, align 8
  %1567 = load i64, i64* %6, align 8
  store i64 %1567, i64* %RDI.i4036.pre-phi, align 8
  %1568 = add i64 %1547, 28
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i64*
  store i64 4276488, i64* %1569, align 8
  %1570 = load i64, i64* %RBP.i, align 8
  %1571 = add i64 %1570, -256
  %1572 = load i64, i64* %3, align 8
  %1573 = add i64 %1572, 7
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1571 to i64*
  %1575 = load i64, i64* %1574, align 8
  store i64 %1575, i64* %RDI.i4036.pre-phi, align 8
  %1576 = add i64 %1570, -248
  %1577 = add i64 %1572, 13
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RSI.i3042, align 8
  %1581 = add i64 %1572, 13475
  %1582 = add i64 %1572, 18
  %1583 = load i64, i64* %6, align 8
  %1584 = add i64 %1583, -8
  %1585 = inttoptr i64 %1584 to i64*
  store i64 %1582, i64* %1585, align 8
  store i64 %1584, i64* %6, align 8
  store i64 %1581, i64* %3, align 8
  %call2_40147a = tail call %struct.Memory* @sub_404910._Z14test_variable4Ih32custom_divide_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1581, %struct.Memory* %call2_40144c)
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -48
  %1588 = load i64, i64* %3, align 8
  %1589 = add i64 %1588, 5
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1587 to i8*
  %1591 = load i8, i8* %1590, align 1
  %1592 = zext i8 %1591 to i64
  store i64 %1592, i64* %474, align 8
  %1593 = add i64 %1586, -47
  %1594 = add i64 %1588, 10
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i8*
  %1596 = load i8, i8* %1595, align 1
  %1597 = zext i8 %1596 to i64
  store i64 %1597, i64* %242, align 8
  %1598 = add i64 %1586, -46
  %1599 = add i64 %1588, 14
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i8*
  %1601 = load i8, i8* %1600, align 1
  %1602 = zext i8 %1601 to i64
  store i64 %1602, i64* %RCX.i4032, align 8
  %1603 = add i64 %1586, -45
  %1604 = add i64 %1588, 18
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i8*
  %1606 = load i8, i8* %1605, align 1
  %1607 = zext i8 %1606 to i64
  store i64 %1607, i64* %RDX.i4028, align 8
  %1608 = load i64, i64* %6, align 8
  store i64 %1608, i64* %RDI.i4036.pre-phi, align 8
  %1609 = add i64 %1588, 28
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i64*
  store i64 4276523, i64* %1610, align 8
  %1611 = load i64, i64* %RBP.i, align 8
  %1612 = add i64 %1611, -256
  %1613 = load i64, i64* %3, align 8
  %1614 = add i64 %1613, 7
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1612 to i64*
  %1616 = load i64, i64* %1615, align 8
  store i64 %1616, i64* %RDI.i4036.pre-phi, align 8
  %1617 = add i64 %1611, -248
  %1618 = add i64 %1613, 13
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = zext i32 %1620 to i64
  store i64 %1621, i64* %RSI.i3042, align 8
  %1622 = add i64 %1613, 13701
  %1623 = add i64 %1613, 18
  %1624 = load i64, i64* %6, align 8
  %1625 = add i64 %1624, -8
  %1626 = inttoptr i64 %1625 to i64*
  store i64 %1623, i64* %1626, align 8
  store i64 %1625, i64* %6, align 8
  store i64 %1622, i64* %3, align 8
  %call2_4014a8 = tail call %struct.Memory* @sub_404a20._Z14test_variable4Ih30custom_mixed_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1622, %struct.Memory* %call2_40147a)
  %1627 = load i64, i64* %RBP.i, align 8
  %1628 = add i64 %1627, -45
  %1629 = load i64, i64* %3, align 8
  %1630 = add i64 %1629, 4
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1628 to i8*
  %1632 = load i8, i8* %1631, align 1
  %1633 = zext i8 %1632 to i64
  store i64 %1633, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41414b_type* @G__0x41414b to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41414b_type* @G__0x41414b to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1634 = add i64 %1627, -256
  %1635 = add i64 %1629, 18
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i64*
  %1637 = load i64, i64* %1636, align 8
  store i64 %1637, i64* %RDI.i4036.pre-phi, align 8
  %1638 = add i64 %1627, -248
  %1639 = add i64 %1629, 24
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = zext i32 %1641 to i64
  store i64 %1642, i64* %RSI.i3042, align 8
  %1643 = add i64 %1629, 13955
  %1644 = add i64 %1629, 29
  %1645 = load i64, i64* %6, align 8
  %1646 = add i64 %1645, -8
  %1647 = inttoptr i64 %1646 to i64*
  store i64 %1644, i64* %1647, align 8
  store i64 %1646, i64* %6, align 8
  store i64 %1643, i64* %3, align 8
  %call2_4014c5 = tail call %struct.Memory* @sub_404b30._Z14test_variable1Ih19custom_variable_andIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1643, %struct.Memory* %call2_4014a8)
  %1648 = load i64, i64* %RBP.i, align 8
  %1649 = add i64 %1648, -48
  %1650 = load i64, i64* %3, align 8
  %1651 = add i64 %1650, 5
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1649 to i8*
  %1653 = load i8, i8* %1652, align 1
  %1654 = zext i8 %1653 to i64
  store i64 %1654, i64* %474, align 8
  %1655 = add i64 %1648, -47
  %1656 = add i64 %1650, 10
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i8*
  %1658 = load i8, i8* %1657, align 1
  %1659 = zext i8 %1658 to i64
  store i64 %1659, i64* %242, align 8
  %1660 = add i64 %1648, -46
  %1661 = add i64 %1650, 14
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i8*
  %1663 = load i8, i8* %1662, align 1
  %1664 = zext i8 %1663 to i64
  store i64 %1664, i64* %RCX.i4032, align 8
  %1665 = add i64 %1648, -45
  %1666 = add i64 %1650, 18
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i8*
  %1668 = load i8, i8* %1667, align 1
  %1669 = zext i8 %1668 to i64
  store i64 %1669, i64* %RDX.i4028, align 8
  %1670 = load i64, i64* %6, align 8
  store i64 %1670, i64* %RDI.i4036.pre-phi, align 8
  %1671 = add i64 %1650, 28
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i64*
  store i64 4276576, i64* %1672, align 8
  %1673 = load i64, i64* %RBP.i, align 8
  %1674 = add i64 %1673, -256
  %1675 = load i64, i64* %3, align 8
  %1676 = add i64 %1675, 7
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1674 to i64*
  %1678 = load i64, i64* %1677, align 8
  store i64 %1678, i64* %RDI.i4036.pre-phi, align 8
  %1679 = add i64 %1673, -248
  %1680 = add i64 %1675, 13
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RSI.i3042, align 8
  %1684 = add i64 %1675, 14074
  %1685 = add i64 %1675, 18
  %1686 = load i64, i64* %6, align 8
  %1687 = add i64 %1686, -8
  %1688 = inttoptr i64 %1687 to i64*
  store i64 %1685, i64* %1688, align 8
  store i64 %1687, i64* %6, align 8
  store i64 %1684, i64* %3, align 8
  %call2_4014f3 = tail call %struct.Memory* @sub_404be0._Z14test_variable4Ih28custom_multiple_variable_andIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1684, %struct.Memory* %call2_4014c5)
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -45
  %1691 = load i64, i64* %3, align 8
  %1692 = add i64 %1691, 4
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1690 to i8*
  %1694 = load i8, i8* %1693, align 1
  %1695 = zext i8 %1694 to i64
  store i64 %1695, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41417e_type* @G__0x41417e to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41417e_type* @G__0x41417e to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1696 = add i64 %1689, -256
  %1697 = add i64 %1691, 18
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i64*
  %1699 = load i64, i64* %1698, align 8
  store i64 %1699, i64* %RDI.i4036.pre-phi, align 8
  %1700 = add i64 %1689, -248
  %1701 = add i64 %1691, 24
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i32*
  %1703 = load i32, i32* %1702, align 4
  %1704 = zext i32 %1703 to i64
  store i64 %1704, i64* %RSI.i3042, align 8
  %1705 = add i64 %1691, 14328
  %1706 = add i64 %1691, 29
  %1707 = load i64, i64* %6, align 8
  %1708 = add i64 %1707, -8
  %1709 = inttoptr i64 %1708 to i64*
  store i64 %1706, i64* %1709, align 8
  store i64 %1708, i64* %6, align 8
  store i64 %1705, i64* %3, align 8
  %call2_401510 = tail call %struct.Memory* @sub_404cf0._Z14test_variable1Ih18custom_variable_orIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1705, %struct.Memory* %call2_4014f3)
  %1710 = load i64, i64* %RBP.i, align 8
  %1711 = add i64 %1710, -48
  %1712 = load i64, i64* %3, align 8
  %1713 = add i64 %1712, 5
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1711 to i8*
  %1715 = load i8, i8* %1714, align 1
  %1716 = zext i8 %1715 to i64
  store i64 %1716, i64* %474, align 8
  %1717 = add i64 %1710, -47
  %1718 = add i64 %1712, 10
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i8*
  %1720 = load i8, i8* %1719, align 1
  %1721 = zext i8 %1720 to i64
  store i64 %1721, i64* %242, align 8
  %1722 = add i64 %1710, -46
  %1723 = add i64 %1712, 14
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i8*
  %1725 = load i8, i8* %1724, align 1
  %1726 = zext i8 %1725 to i64
  store i64 %1726, i64* %RCX.i4032, align 8
  %1727 = add i64 %1710, -45
  %1728 = add i64 %1712, 18
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i8*
  %1730 = load i8, i8* %1729, align 1
  %1731 = zext i8 %1730 to i64
  store i64 %1731, i64* %RDX.i4028, align 8
  %1732 = load i64, i64* %6, align 8
  store i64 %1732, i64* %RDI.i4036.pre-phi, align 8
  %1733 = add i64 %1712, 28
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i64*
  store i64 4276626, i64* %1734, align 8
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -256
  %1737 = load i64, i64* %3, align 8
  %1738 = add i64 %1737, 7
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1736 to i64*
  %1740 = load i64, i64* %1739, align 8
  store i64 %1740, i64* %RDI.i4036.pre-phi, align 8
  %1741 = add i64 %1735, -248
  %1742 = add i64 %1737, 13
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RSI.i3042, align 8
  %1746 = add i64 %1737, 14447
  %1747 = add i64 %1737, 18
  %1748 = load i64, i64* %6, align 8
  %1749 = add i64 %1748, -8
  %1750 = inttoptr i64 %1749 to i64*
  store i64 %1747, i64* %1750, align 8
  store i64 %1749, i64* %6, align 8
  store i64 %1746, i64* %3, align 8
  %call2_40153e = tail call %struct.Memory* @sub_404da0._Z14test_variable4Ih27custom_multiple_variable_orIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1746, %struct.Memory* %call2_401510)
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -45
  %1753 = load i64, i64* %3, align 8
  %1754 = add i64 %1753, 4
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1752 to i8*
  %1756 = load i8, i8* %1755, align 1
  %1757 = zext i8 %1756 to i64
  store i64 %1757, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141af_type* @G__0x4141af to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141af_type* @G__0x4141af to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1758 = add i64 %1751, -256
  %1759 = add i64 %1753, 18
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i64*
  %1761 = load i64, i64* %1760, align 8
  store i64 %1761, i64* %RDI.i4036.pre-phi, align 8
  %1762 = add i64 %1751, -248
  %1763 = add i64 %1753, 24
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i32*
  %1765 = load i32, i32* %1764, align 4
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RSI.i3042, align 8
  %1767 = add i64 %1753, 14701
  %1768 = add i64 %1753, 29
  %1769 = load i64, i64* %6, align 8
  %1770 = add i64 %1769, -8
  %1771 = inttoptr i64 %1770 to i64*
  store i64 %1768, i64* %1771, align 8
  store i64 %1770, i64* %6, align 8
  store i64 %1767, i64* %3, align 8
  %call2_40155b = tail call %struct.Memory* @sub_404eb0._Z14test_variable1Ih19custom_variable_xorIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1767, %struct.Memory* %call2_40153e)
  %1772 = load i64, i64* %RBP.i, align 8
  %1773 = add i64 %1772, -48
  %1774 = load i64, i64* %3, align 8
  %1775 = add i64 %1774, 5
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1773 to i8*
  %1777 = load i8, i8* %1776, align 1
  %1778 = zext i8 %1777 to i64
  store i64 %1778, i64* %474, align 8
  %1779 = add i64 %1772, -47
  %1780 = add i64 %1774, 10
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i8*
  %1782 = load i8, i8* %1781, align 1
  %1783 = zext i8 %1782 to i64
  store i64 %1783, i64* %242, align 8
  %1784 = add i64 %1772, -46
  %1785 = add i64 %1774, 14
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i8*
  %1787 = load i8, i8* %1786, align 1
  %1788 = zext i8 %1787 to i64
  store i64 %1788, i64* %RCX.i4032, align 8
  %1789 = add i64 %1772, -45
  %1790 = add i64 %1774, 18
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i8*
  %1792 = load i8, i8* %1791, align 1
  %1793 = zext i8 %1792 to i64
  store i64 %1793, i64* %RDX.i4028, align 8
  %1794 = load i64, i64* %6, align 8
  store i64 %1794, i64* %RDI.i4036.pre-phi, align 8
  %1795 = add i64 %1774, 28
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i64*
  store i64 4276676, i64* %1796, align 8
  %1797 = load i64, i64* %RBP.i, align 8
  %1798 = add i64 %1797, -256
  %1799 = load i64, i64* %3, align 8
  %1800 = add i64 %1799, 7
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1798 to i64*
  %1802 = load i64, i64* %1801, align 8
  store i64 %1802, i64* %RDI.i4036.pre-phi, align 8
  %1803 = add i64 %1797, -248
  %1804 = add i64 %1799, 13
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RSI.i3042, align 8
  %1808 = add i64 %1799, 14820
  %1809 = add i64 %1799, 18
  %1810 = load i64, i64* %6, align 8
  %1811 = add i64 %1810, -8
  %1812 = inttoptr i64 %1811 to i64*
  store i64 %1809, i64* %1812, align 8
  store i64 %1811, i64* %6, align 8
  store i64 %1808, i64* %3, align 8
  %call2_401589 = tail call %struct.Memory* @sub_404f60._Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1808, %struct.Memory* %call2_40155b)
  %1813 = load i64, i64* %3, align 8
  %1814 = load double, double* bitcast (%G_0x218af2__rip__4199830__type* @G_0x218af2__rip__4199830_ to double*), align 8
  %1815 = tail call double @llvm.trunc.f64(double %1814)
  %1816 = tail call double @llvm.fabs.f64(double %1815)
  %1817 = fcmp ogt double %1816, 0x41DFFFFFFFC00000
  %1818 = fptosi double %1815 to i32
  store i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  %R14W.i3112 = bitcast %union.anon* %11 to i16*
  %1819 = trunc i32 %1818 to i16
  %1820 = select i1 %1817, i16 0, i16 %1819
  store i16 %1820, i16* %R14W.i3112, align 2
  %1821 = sext i16 %1820 to i64
  %1822 = and i64 %1821, 4294967295
  store i64 %1822, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -280
  %1825 = add i64 %1813, 37
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295) to i32) to i64), i64* %1826, align 8
  %1827 = load i64, i64* %3, align 8
  %1828 = add i64 %1827, 15037
  %1829 = add i64 %1827, 5
  %1830 = load i64, i64* %6, align 8
  %1831 = add i64 %1830, -8
  %1832 = inttoptr i64 %1831 to i64*
  store i64 %1829, i64* %1832, align 8
  store i64 %1831, i64* %6, align 8
  store i64 %1828, i64* %3, align 8
  %call2_4015b3 = tail call %struct.Memory* @sub_405070._Z4fillIPssEvT_S1_T0_(%struct.State* %0, i64 %1828, %struct.Memory* %call2_401589)
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -40
  %1835 = load i64, i64* %3, align 8
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1834 to double*
  %1838 = load double, double* %1837, align 8
  %1839 = tail call double @llvm.trunc.f64(double %1838)
  %1840 = tail call double @llvm.fabs.f64(double %1839)
  %1841 = fcmp ogt double %1840, 0x41DFFFFFFFC00000
  %1842 = fptosi double %1839 to i32
  %1843 = zext i32 %1842 to i64
  %1844 = select i1 %1841, i64 2147483648, i64 %1843
  store i64 %1844, i64* %RAX.i4030.pre-phi, align 8
  %1845 = trunc i64 %1844 to i16
  store i16 %1845, i16* %R14W.i3112, align 2
  %1846 = add i64 %1833, -50
  %1847 = add i64 %1835, 14
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i16*
  store i16 %1845, i16* %1848, align 2
  %1849 = load i64, i64* %RBP.i, align 8
  %1850 = add i64 %1849, -50
  %1851 = load i64, i64* %3, align 8
  %1852 = add i64 %1851, 4
  store i64 %1852, i64* %3, align 8
  %1853 = inttoptr i64 %1850 to i16*
  %1854 = load i16, i16* %1853, align 2
  %1855 = zext i16 %1854 to i32
  %1856 = shl nuw nsw i32 %1855, 1
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RAX.i4030.pre-phi, align 8
  %1858 = icmp ult i32 %1856, %1855
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %26, align 1
  %1860 = and i32 %1856, 254
  %1861 = tail call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  store i8 %1864, i8* %33, align 1
  %1865 = lshr i16 %1854, 3
  %1866 = trunc i16 %1865 to i8
  %1867 = and i8 %1866, 1
  store i8 %1867, i8* %39, align 1
  %1868 = icmp eq i16 %1854, 0
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1870 = trunc i32 %1856 to i16
  store i16 %1870, i16* %R14W.i3112, align 2
  %1871 = add i64 %1849, -52
  %1872 = add i64 %1851, 15
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i16*
  store i16 %1870, i16* %1873, align 2
  %1874 = load i64, i64* %RBP.i, align 8
  %1875 = add i64 %1874, -50
  %1876 = load i64, i64* %3, align 8
  %1877 = add i64 %1876, 4
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1875 to i16*
  %1879 = load i16, i16* %1878, align 2
  %1880 = zext i16 %1879 to i32
  %1881 = add nuw nsw i32 %1880, 2
  %1882 = zext i32 %1881 to i64
  store i64 %1882, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %1883 = and i32 %1881, 255
  %1884 = tail call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  store i8 %1887, i8* %33, align 1
  %1888 = xor i32 %1880, %1881
  %1889 = lshr i32 %1888, 4
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  store i8 %1891, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1892 = trunc i32 %1881 to i16
  store i16 %1892, i16* %R14W.i3112, align 2
  %1893 = add i64 %1874, -54
  %1894 = add i64 %1876, 16
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i16*
  store i16 %1892, i16* %1895, align 2
  %1896 = load i64, i64* %RBP.i, align 8
  %1897 = add i64 %1896, -50
  %1898 = load i64, i64* %3, align 8
  %1899 = add i64 %1898, 4
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1897 to i16*
  %1901 = load i16, i16* %1900, align 2
  %1902 = zext i16 %1901 to i64
  store i64 %1902, i64* %RAX.i4030.pre-phi, align 8
  %1903 = add i64 %1896, -52
  %1904 = add i64 %1898, 8
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i16*
  %1906 = load i16, i16* %1905, align 2
  %1907 = sext i16 %1906 to i64
  %1908 = and i64 %1907, 4294967295
  store i64 %1908, i64* %RCX.i4032, align 8
  %1909 = add i64 %1896, -54
  %1910 = add i64 %1898, 12
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i16*
  %1912 = load i16, i16* %1911, align 2
  %1913 = sext i16 %1912 to i64
  %1914 = and i64 %1913, 4294967295
  store i64 %1914, i64* %RDX.i4028, align 8
  %1915 = add i64 %1896, -284
  %1916 = zext i16 %1901 to i32
  %1917 = add i64 %1898, 18
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1915 to i32*
  store i32 %1916, i32* %1918, align 4
  %1919 = load i32, i32* %ECX.i3567, align 4
  %1920 = zext i32 %1919 to i64
  %1921 = load i64, i64* %3, align 8
  store i64 %1920, i64* %RAX.i4030.pre-phi, align 8
  %1922 = load i64, i64* %RBP.i, align 8
  %1923 = add i64 %1922, -288
  %1924 = load i32, i32* %EDX.i4025, align 4
  %1925 = add i64 %1921, 8
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1923 to i32*
  store i32 %1924, i32* %1926, align 4
  %1927 = load i64, i64* %3, align 8
  %1928 = load i32, i32* %372, align 8
  %1929 = sext i32 %1928 to i64
  %1930 = lshr i64 %1929, 32
  store i64 %1930, i64* %370, align 8
  %1931 = load i64, i64* %RBP.i, align 8
  %1932 = add i64 %1931, -288
  %1933 = add i64 %1927, 7
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = zext i32 %1935 to i64
  store i64 %1936, i64* %RCX.i4032, align 8
  %1937 = add i64 %1927, 9
  store i64 %1937, i64* %3, align 8
  %1938 = zext i32 %1928 to i64
  %1939 = sext i32 %1935 to i64
  %1940 = shl nuw i64 %1930, 32
  %1941 = or i64 %1940, %1938
  %1942 = sdiv i64 %1941, %1939
  %1943 = shl i64 %1942, 32
  %1944 = ashr exact i64 %1943, 32
  %1945 = icmp eq i64 %1942, %1944
  br i1 %1945, label %1948, label %1946

; <label>:1946:                                   ; preds = %routine_divl__ecx.exit
  %1947 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1937, %struct.Memory* %call2_4015b3)
  %.pre9 = load i64, i64* %RBP.i, align 8
  %.pre10 = load i64, i64* %3, align 8
  %.pre11 = load i32, i32* %EAX.i4015, align 4
  br label %routine_idivl__ecx.exit3040

; <label>:1948:                                   ; preds = %routine_divl__ecx.exit
  %1949 = srem i64 %1941, %1939
  %1950 = getelementptr inbounds %union.anon, %union.anon* %371, i64 0, i32 0
  %1951 = and i64 %1942, 4294967295
  store i64 %1951, i64* %1950, align 8
  %1952 = and i64 %1949, 4294967295
  store i64 %1952, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1953 = trunc i64 %1942 to i32
  br label %routine_idivl__ecx.exit3040

routine_idivl__ecx.exit3040:                      ; preds = %1948, %1946
  %1954 = phi i32 [ %.pre11, %1946 ], [ %1953, %1948 ]
  %1955 = phi i64 [ %.pre10, %1946 ], [ %1937, %1948 ]
  %1956 = phi i64 [ %.pre9, %1946 ], [ %1931, %1948 ]
  %1957 = phi %struct.Memory* [ %1947, %1946 ], [ %call2_4015b3, %1948 ]
  %1958 = add i64 %1956, -284
  %1959 = add i64 %1955, 6
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i32*
  %1961 = load i32, i32* %1960, align 4
  %1962 = add i32 %1954, %1961
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RCX.i4032, align 8
  %1964 = icmp ult i32 %1962, %1961
  %1965 = icmp ult i32 %1962, %1954
  %1966 = or i1 %1964, %1965
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %26, align 1
  %1968 = and i32 %1962, 255
  %1969 = tail call i32 @llvm.ctpop.i32(i32 %1968)
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  store i8 %1972, i8* %33, align 1
  %1973 = xor i32 %1954, %1961
  %1974 = xor i32 %1973, %1962
  %1975 = lshr i32 %1974, 4
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  store i8 %1977, i8* %39, align 1
  %1978 = icmp eq i32 %1962, 0
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %42, align 1
  %1980 = lshr i32 %1962, 31
  %1981 = trunc i32 %1980 to i8
  store i8 %1981, i8* %45, align 1
  %1982 = lshr i32 %1961, 31
  %1983 = lshr i32 %1954, 31
  %1984 = xor i32 %1980, %1982
  %1985 = xor i32 %1980, %1983
  %1986 = add nuw nsw i32 %1984, %1985
  %1987 = icmp eq i32 %1986, 2
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %51, align 1
  %1989 = trunc i32 %1962 to i16
  store i16 %1989, i16* %R14W.i3112, align 2
  %1990 = add i64 %1956, -56
  %1991 = add i64 %1955, 17
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i16*
  store i16 %1989, i16* %1992, align 2
  %1993 = load i64, i64* %RBP.i, align 8
  %1994 = add i64 %1993, -50
  %1995 = load i64, i64* %3, align 8
  %1996 = add i64 %1995, 4
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1994 to i16*
  %1998 = load i16, i16* %1997, align 2
  %1999 = sext i16 %1998 to i64
  %2000 = and i64 %1999, 4294967295
  store i64 %2000, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141e3_type* @G__0x4141e3 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141e3_type* @G__0x4141e3 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2001 = add i64 %1993, -280
  %2002 = add i64 %1995, 18
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i64*
  %2004 = load i64, i64* %2003, align 8
  store i64 %2004, i64* %RDI.i4036.pre-phi, align 8
  %2005 = add i64 %1993, -248
  %2006 = add i64 %1995, 24
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = zext i32 %2008 to i64
  store i64 %2009, i64* %RSI.i3042, align 8
  %2010 = add i64 %1995, 14999
  %2011 = add i64 %1995, 29
  %2012 = load i64, i64* %6, align 8
  %2013 = add i64 %2012, -8
  %2014 = inttoptr i64 %2013 to i64*
  store i64 %2011, i64* %2014, align 8
  store i64 %2013, i64* %6, align 8
  store i64 %2010, i64* %3, align 8
  %call2_401631 = tail call %struct.Memory* @sub_4050b0._Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2010, %struct.Memory* %1957)
  %2015 = load i64, i64* %RBP.i, align 8
  %2016 = add i64 %2015, -50
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2016 to i16*
  %2020 = load i16, i16* %2019, align 2
  %2021 = sext i16 %2020 to i64
  %2022 = and i64 %2021, 4294967295
  store i64 %2022, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141f9_type* @G__0x4141f9 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141f9_type* @G__0x4141f9 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2023 = add i64 %2015, -280
  %2024 = add i64 %2017, 18
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i64*
  %2026 = load i64, i64* %2025, align 8
  store i64 %2026, i64* %RDI.i4036.pre-phi, align 8
  %2027 = add i64 %2015, -248
  %2028 = add i64 %2017, 24
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RSI.i3042, align 8
  %2032 = add i64 %2017, 15162
  %2033 = add i64 %2017, 29
  %2034 = load i64, i64* %6, align 8
  %2035 = add i64 %2034, -8
  %2036 = inttoptr i64 %2035 to i64*
  store i64 %2033, i64* %2036, align 8
  store i64 %2035, i64* %6, align 8
  store i64 %2032, i64* %3, align 8
  %call2_40164e = tail call %struct.Memory* @sub_405170._Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2032, %struct.Memory* %call2_401631)
  %2037 = load i64, i64* %RBP.i, align 8
  %2038 = add i64 %2037, -56
  %2039 = load i64, i64* %3, align 8
  %2040 = add i64 %2039, 5
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2038 to i16*
  %2042 = load i16, i16* %2041, align 2
  %2043 = sext i16 %2042 to i64
  %2044 = and i64 %2043, 4294967295
  store i64 %2044, i64* %474, align 8
  %2045 = add i64 %2037, -54
  %2046 = add i64 %2039, 10
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i16*
  %2048 = load i16, i16* %2047, align 2
  %2049 = sext i16 %2048 to i64
  %2050 = and i64 %2049, 4294967295
  store i64 %2050, i64* %242, align 8
  %2051 = add i64 %2037, -52
  %2052 = add i64 %2039, 14
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i16*
  %2054 = load i16, i16* %2053, align 2
  %2055 = sext i16 %2054 to i64
  %2056 = and i64 %2055, 4294967295
  store i64 %2056, i64* %RCX.i4032, align 8
  %2057 = add i64 %2037, -50
  %2058 = add i64 %2039, 18
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i16*
  %2060 = load i16, i16* %2059, align 2
  %2061 = sext i16 %2060 to i64
  %2062 = and i64 %2061, 4294967295
  store i64 %2062, i64* %RDX.i4028, align 8
  %2063 = load i64, i64* %6, align 8
  store i64 %2063, i64* %RDI.i4036.pre-phi, align 8
  %2064 = add i64 %2039, 28
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i64*
  store i64 4276759, i64* %2065, align 8
  %2066 = load i64, i64* %RBP.i, align 8
  %2067 = add i64 %2066, -280
  %2068 = load i64, i64* %3, align 8
  %2069 = add i64 %2068, 7
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2067 to i64*
  %2071 = load i64, i64* %2070, align 8
  store i64 %2071, i64* %RDI.i4036.pre-phi, align 8
  %2072 = add i64 %2066, -248
  %2073 = add i64 %2068, 13
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RSI.i3042, align 8
  %2077 = add i64 %2068, 15297
  %2078 = add i64 %2068, 18
  %2079 = load i64, i64* %6, align 8
  %2080 = add i64 %2079, -8
  %2081 = inttoptr i64 %2080 to i64*
  store i64 %2078, i64* %2081, align 8
  store i64 %2080, i64* %6, align 8
  store i64 %2077, i64* %3, align 8
  %call2_40167c = tail call %struct.Memory* @sub_405230._Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2077, %struct.Memory* %call2_40164e)
  %2082 = load i64, i64* %RBP.i, align 8
  %2083 = add i64 %2082, -50
  %2084 = load i64, i64* %3, align 8
  %2085 = add i64 %2084, 4
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2083 to i16*
  %2087 = load i16, i16* %2086, align 2
  %2088 = sext i16 %2087 to i64
  %2089 = and i64 %2088, 4294967295
  store i64 %2089, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414237_type* @G__0x414237 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414237_type* @G__0x414237 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2090 = add i64 %2082, -280
  %2091 = add i64 %2084, 18
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i64*
  %2093 = load i64, i64* %2092, align 8
  store i64 %2093, i64* %RDI.i4036.pre-phi, align 8
  %2094 = add i64 %2082, -248
  %2095 = add i64 %2084, 24
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i32*
  %2097 = load i32, i32* %2096, align 4
  %2098 = zext i32 %2097 to i64
  store i64 %2098, i64* %RSI.i3042, align 8
  %2099 = add i64 %2084, 15583
  %2100 = add i64 %2084, 29
  %2101 = load i64, i64* %6, align 8
  %2102 = add i64 %2101, -8
  %2103 = inttoptr i64 %2102 to i64*
  store i64 %2100, i64* %2103, align 8
  store i64 %2102, i64* %6, align 8
  store i64 %2099, i64* %3, align 8
  %call2_401699 = tail call %struct.Memory* @sub_405360._Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2099, %struct.Memory* %call2_40167c)
  %2104 = load i64, i64* %RBP.i, align 8
  %2105 = add i64 %2104, -56
  %2106 = load i64, i64* %3, align 8
  %2107 = add i64 %2106, 5
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2105 to i16*
  %2109 = load i16, i16* %2108, align 2
  %2110 = sext i16 %2109 to i64
  %2111 = and i64 %2110, 4294967295
  store i64 %2111, i64* %474, align 8
  %2112 = add i64 %2104, -54
  %2113 = add i64 %2106, 10
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i16*
  %2115 = load i16, i16* %2114, align 2
  %2116 = sext i16 %2115 to i64
  %2117 = and i64 %2116, 4294967295
  store i64 %2117, i64* %242, align 8
  %2118 = add i64 %2104, -52
  %2119 = add i64 %2106, 14
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i16*
  %2121 = load i16, i16* %2120, align 2
  %2122 = sext i16 %2121 to i64
  %2123 = and i64 %2122, 4294967295
  store i64 %2123, i64* %RCX.i4032, align 8
  %2124 = add i64 %2104, -50
  %2125 = add i64 %2106, 18
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i16*
  %2127 = load i16, i16* %2126, align 2
  %2128 = sext i16 %2127 to i64
  %2129 = and i64 %2128, 4294967295
  store i64 %2129, i64* %RDX.i4028, align 8
  %2130 = load i64, i64* %6, align 8
  store i64 %2130, i64* %RDI.i4036.pre-phi, align 8
  %2131 = add i64 %2106, 28
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i64*
  store i64 4276818, i64* %2132, align 8
  %2133 = load i64, i64* %RBP.i, align 8
  %2134 = add i64 %2133, -280
  %2135 = load i64, i64* %3, align 8
  %2136 = add i64 %2135, 7
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2134 to i64*
  %2138 = load i64, i64* %2137, align 8
  store i64 %2138, i64* %RDI.i4036.pre-phi, align 8
  %2139 = add i64 %2133, -248
  %2140 = add i64 %2135, 13
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  %2143 = zext i32 %2142 to i64
  store i64 %2143, i64* %RSI.i3042, align 8
  %2144 = add i64 %2135, 15718
  %2145 = add i64 %2135, 18
  %2146 = load i64, i64* %6, align 8
  %2147 = add i64 %2146, -8
  %2148 = inttoptr i64 %2147 to i64*
  store i64 %2145, i64* %2148, align 8
  store i64 %2147, i64* %6, align 8
  store i64 %2144, i64* %3, align 8
  %call2_4016c7 = tail call %struct.Memory* @sub_405420._Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2144, %struct.Memory* %call2_401699)
  %2149 = load i64, i64* %RBP.i, align 8
  %2150 = add i64 %2149, -50
  %2151 = load i64, i64* %3, align 8
  %2152 = add i64 %2151, 4
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2150 to i16*
  %2154 = load i16, i16* %2153, align 2
  %2155 = sext i16 %2154 to i64
  %2156 = and i64 %2155, 4294967295
  store i64 %2156, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414277_type* @G__0x414277 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414277_type* @G__0x414277 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2157 = add i64 %2149, -280
  %2158 = add i64 %2151, 18
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i64*
  %2160 = load i64, i64* %2159, align 8
  store i64 %2160, i64* %RDI.i4036.pre-phi, align 8
  %2161 = add i64 %2149, -248
  %2162 = add i64 %2151, 24
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = zext i32 %2164 to i64
  store i64 %2165, i64* %RSI.i3042, align 8
  %2166 = add i64 %2151, 16004
  %2167 = add i64 %2151, 29
  %2168 = load i64, i64* %6, align 8
  %2169 = add i64 %2168, -8
  %2170 = inttoptr i64 %2169 to i64*
  store i64 %2167, i64* %2170, align 8
  store i64 %2169, i64* %6, align 8
  store i64 %2166, i64* %3, align 8
  %call2_4016e4 = tail call %struct.Memory* @sub_405550._Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2166, %struct.Memory* %call2_4016c7)
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -56
  %2173 = load i64, i64* %3, align 8
  %2174 = add i64 %2173, 5
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2172 to i16*
  %2176 = load i16, i16* %2175, align 2
  %2177 = sext i16 %2176 to i64
  %2178 = and i64 %2177, 4294967295
  store i64 %2178, i64* %474, align 8
  %2179 = add i64 %2171, -54
  %2180 = add i64 %2173, 10
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i16*
  %2182 = load i16, i16* %2181, align 2
  %2183 = sext i16 %2182 to i64
  %2184 = and i64 %2183, 4294967295
  store i64 %2184, i64* %242, align 8
  %2185 = add i64 %2171, -52
  %2186 = add i64 %2173, 14
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i16*
  %2188 = load i16, i16* %2187, align 2
  %2189 = sext i16 %2188 to i64
  %2190 = and i64 %2189, 4294967295
  store i64 %2190, i64* %RCX.i4032, align 8
  %2191 = add i64 %2171, -50
  %2192 = add i64 %2173, 18
  store i64 %2192, i64* %3, align 8
  %2193 = inttoptr i64 %2191 to i16*
  %2194 = load i16, i16* %2193, align 2
  %2195 = sext i16 %2194 to i64
  %2196 = and i64 %2195, 4294967295
  store i64 %2196, i64* %RDX.i4028, align 8
  %2197 = load i64, i64* %6, align 8
  store i64 %2197, i64* %RDI.i4036.pre-phi, align 8
  %2198 = add i64 %2173, 28
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i64*
  store i64 4276882, i64* %2199, align 8
  %2200 = load i64, i64* %RBP.i, align 8
  %2201 = add i64 %2200, -280
  %2202 = load i64, i64* %3, align 8
  %2203 = add i64 %2202, 7
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2201 to i64*
  %2205 = load i64, i64* %2204, align 8
  store i64 %2205, i64* %RDI.i4036.pre-phi, align 8
  %2206 = add i64 %2200, -248
  %2207 = add i64 %2202, 13
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i32*
  %2209 = load i32, i32* %2208, align 4
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RSI.i3042, align 8
  %2211 = add i64 %2202, 16139
  %2212 = add i64 %2202, 18
  %2213 = load i64, i64* %6, align 8
  %2214 = add i64 %2213, -8
  %2215 = inttoptr i64 %2214 to i64*
  store i64 %2212, i64* %2215, align 8
  store i64 %2214, i64* %6, align 8
  store i64 %2211, i64* %3, align 8
  %call2_401712 = tail call %struct.Memory* @sub_405610._Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2211, %struct.Memory* %call2_4016e4)
  %2216 = load i64, i64* %RBP.i, align 8
  %2217 = add i64 %2216, -56
  %2218 = load i64, i64* %3, align 8
  %2219 = add i64 %2218, 5
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2217 to i16*
  %2221 = load i16, i16* %2220, align 2
  %2222 = sext i16 %2221 to i64
  %2223 = and i64 %2222, 4294967295
  store i64 %2223, i64* %474, align 8
  %2224 = add i64 %2216, -54
  %2225 = add i64 %2218, 10
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i16*
  %2227 = load i16, i16* %2226, align 2
  %2228 = sext i16 %2227 to i64
  %2229 = and i64 %2228, 4294967295
  store i64 %2229, i64* %242, align 8
  %2230 = add i64 %2216, -52
  %2231 = add i64 %2218, 14
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i16*
  %2233 = load i16, i16* %2232, align 2
  %2234 = sext i16 %2233 to i64
  %2235 = and i64 %2234, 4294967295
  store i64 %2235, i64* %RCX.i4032, align 8
  %2236 = add i64 %2216, -50
  %2237 = add i64 %2218, 18
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i16*
  %2239 = load i16, i16* %2238, align 2
  %2240 = sext i16 %2239 to i64
  %2241 = and i64 %2240, 4294967295
  store i64 %2241, i64* %RDX.i4028, align 8
  %2242 = load i64, i64* %6, align 8
  store i64 %2242, i64* %RDI.i4036.pre-phi, align 8
  %2243 = add i64 %2218, 28
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2242 to i64*
  store i64 4276920, i64* %2244, align 8
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -280
  %2247 = load i64, i64* %3, align 8
  %2248 = add i64 %2247, 7
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249, align 8
  store i64 %2250, i64* %RDI.i4036.pre-phi, align 8
  %2251 = add i64 %2245, -248
  %2252 = add i64 %2247, 13
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RSI.i3042, align 8
  %2256 = add i64 %2247, 16397
  %2257 = add i64 %2247, 18
  %2258 = load i64, i64* %6, align 8
  %2259 = add i64 %2258, -8
  %2260 = inttoptr i64 %2259 to i64*
  store i64 %2257, i64* %2260, align 8
  store i64 %2259, i64* %6, align 8
  store i64 %2256, i64* %3, align 8
  %call2_401740 = tail call %struct.Memory* @sub_405740._Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2256, %struct.Memory* %call2_401712)
  %2261 = load i64, i64* %RBP.i, align 8
  %2262 = add i64 %2261, -50
  %2263 = load i64, i64* %3, align 8
  %2264 = add i64 %2263, 4
  store i64 %2264, i64* %3, align 8
  %2265 = inttoptr i64 %2262 to i16*
  %2266 = load i16, i16* %2265, align 2
  %2267 = sext i16 %2266 to i64
  %2268 = and i64 %2267, 4294967295
  store i64 %2268, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4142df_type* @G__0x4142df to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4142df_type* @G__0x4142df to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2269 = add i64 %2261, -280
  %2270 = add i64 %2263, 18
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i64*
  %2272 = load i64, i64* %2271, align 8
  store i64 %2272, i64* %RDI.i4036.pre-phi, align 8
  %2273 = add i64 %2261, -248
  %2274 = add i64 %2263, 24
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2273 to i32*
  %2276 = load i32, i32* %2275, align 4
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RSI.i3042, align 8
  %2278 = add i64 %2263, 16683
  %2279 = add i64 %2263, 29
  %2280 = load i64, i64* %6, align 8
  %2281 = add i64 %2280, -8
  %2282 = inttoptr i64 %2281 to i64*
  store i64 %2279, i64* %2282, align 8
  store i64 %2281, i64* %6, align 8
  store i64 %2278, i64* %3, align 8
  %call2_40175d = tail call %struct.Memory* @sub_405870._Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2278, %struct.Memory* %call2_401740)
  %2283 = load i64, i64* %RBP.i, align 8
  %2284 = add i64 %2283, -56
  %2285 = load i64, i64* %3, align 8
  %2286 = add i64 %2285, 5
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2284 to i16*
  %2288 = load i16, i16* %2287, align 2
  %2289 = sext i16 %2288 to i64
  %2290 = and i64 %2289, 4294967295
  store i64 %2290, i64* %474, align 8
  %2291 = add i64 %2283, -54
  %2292 = add i64 %2285, 10
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i16*
  %2294 = load i16, i16* %2293, align 2
  %2295 = sext i16 %2294 to i64
  %2296 = and i64 %2295, 4294967295
  store i64 %2296, i64* %242, align 8
  %2297 = add i64 %2283, -52
  %2298 = add i64 %2285, 14
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i16*
  %2300 = load i16, i16* %2299, align 2
  %2301 = sext i16 %2300 to i64
  %2302 = and i64 %2301, 4294967295
  store i64 %2302, i64* %RCX.i4032, align 8
  %2303 = add i64 %2283, -50
  %2304 = add i64 %2285, 18
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i16*
  %2306 = load i16, i16* %2305, align 2
  %2307 = sext i16 %2306 to i64
  %2308 = and i64 %2307, 4294967295
  store i64 %2308, i64* %RDX.i4028, align 8
  %2309 = load i64, i64* %6, align 8
  store i64 %2309, i64* %RDI.i4036.pre-phi, align 8
  %2310 = add i64 %2285, 28
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i64*
  store i64 4276984, i64* %2311, align 8
  %2312 = load i64, i64* %RBP.i, align 8
  %2313 = add i64 %2312, -280
  %2314 = load i64, i64* %3, align 8
  %2315 = add i64 %2314, 7
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2313 to i64*
  %2317 = load i64, i64* %2316, align 8
  store i64 %2317, i64* %RDI.i4036.pre-phi, align 8
  %2318 = add i64 %2312, -248
  %2319 = add i64 %2314, 13
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2318 to i32*
  %2321 = load i32, i32* %2320, align 4
  %2322 = zext i32 %2321 to i64
  store i64 %2322, i64* %RSI.i3042, align 8
  %2323 = add i64 %2314, 16818
  %2324 = add i64 %2314, 18
  %2325 = load i64, i64* %6, align 8
  %2326 = add i64 %2325, -8
  %2327 = inttoptr i64 %2326 to i64*
  store i64 %2324, i64* %2327, align 8
  store i64 %2326, i64* %6, align 8
  store i64 %2323, i64* %3, align 8
  %call2_40178b = tail call %struct.Memory* @sub_405930._Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2323, %struct.Memory* %call2_40175d)
  %2328 = load i64, i64* %RBP.i, align 8
  %2329 = add i64 %2328, -56
  %2330 = load i64, i64* %3, align 8
  %2331 = add i64 %2330, 5
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2329 to i16*
  %2333 = load i16, i16* %2332, align 2
  %2334 = sext i16 %2333 to i64
  %2335 = and i64 %2334, 4294967295
  store i64 %2335, i64* %474, align 8
  %2336 = add i64 %2328, -54
  %2337 = add i64 %2330, 10
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i16*
  %2339 = load i16, i16* %2338, align 2
  %2340 = sext i16 %2339 to i64
  %2341 = and i64 %2340, 4294967295
  store i64 %2341, i64* %242, align 8
  %2342 = add i64 %2328, -52
  %2343 = add i64 %2330, 14
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i16*
  %2345 = load i16, i16* %2344, align 2
  %2346 = sext i16 %2345 to i64
  %2347 = and i64 %2346, 4294967295
  store i64 %2347, i64* %RCX.i4032, align 8
  %2348 = add i64 %2328, -50
  %2349 = add i64 %2330, 18
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i16*
  %2351 = load i16, i16* %2350, align 2
  %2352 = sext i16 %2351 to i64
  %2353 = and i64 %2352, 4294967295
  store i64 %2353, i64* %RDX.i4028, align 8
  %2354 = load i64, i64* %6, align 8
  store i64 %2354, i64* %RDI.i4036.pre-phi, align 8
  %2355 = add i64 %2330, 28
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i64*
  store i64 4277019, i64* %2356, align 8
  %2357 = load i64, i64* %RBP.i, align 8
  %2358 = add i64 %2357, -280
  %2359 = load i64, i64* %3, align 8
  %2360 = add i64 %2359, 7
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2358 to i64*
  %2362 = load i64, i64* %2361, align 8
  store i64 %2362, i64* %RDI.i4036.pre-phi, align 8
  %2363 = add i64 %2357, -248
  %2364 = add i64 %2359, 13
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2363 to i32*
  %2366 = load i32, i32* %2365, align 4
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %RSI.i3042, align 8
  %2368 = add i64 %2359, 17076
  %2369 = add i64 %2359, 18
  %2370 = load i64, i64* %6, align 8
  %2371 = add i64 %2370, -8
  %2372 = inttoptr i64 %2371 to i64*
  store i64 %2369, i64* %2372, align 8
  store i64 %2371, i64* %6, align 8
  store i64 %2368, i64* %3, align 8
  %call2_4017b9 = tail call %struct.Memory* @sub_405a60._Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2368, %struct.Memory* %call2_40178b)
  %2373 = load i64, i64* %RBP.i, align 8
  %2374 = add i64 %2373, -56
  %2375 = load i64, i64* %3, align 8
  %2376 = add i64 %2375, 5
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2374 to i16*
  %2378 = load i16, i16* %2377, align 2
  %2379 = sext i16 %2378 to i64
  %2380 = and i64 %2379, 4294967295
  store i64 %2380, i64* %474, align 8
  %2381 = add i64 %2373, -54
  %2382 = add i64 %2375, 10
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i16*
  %2384 = load i16, i16* %2383, align 2
  %2385 = sext i16 %2384 to i64
  %2386 = and i64 %2385, 4294967295
  store i64 %2386, i64* %242, align 8
  %2387 = add i64 %2373, -52
  %2388 = add i64 %2375, 14
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i16*
  %2390 = load i16, i16* %2389, align 2
  %2391 = sext i16 %2390 to i64
  %2392 = and i64 %2391, 4294967295
  store i64 %2392, i64* %RCX.i4032, align 8
  %2393 = add i64 %2373, -50
  %2394 = add i64 %2375, 18
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i16*
  %2396 = load i16, i16* %2395, align 2
  %2397 = sext i16 %2396 to i64
  %2398 = and i64 %2397, 4294967295
  store i64 %2398, i64* %RDX.i4028, align 8
  %2399 = load i64, i64* %6, align 8
  store i64 %2399, i64* %RDI.i4036.pre-phi, align 8
  %2400 = add i64 %2375, 28
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i64*
  store i64 4277055, i64* %2401, align 8
  %2402 = load i64, i64* %RBP.i, align 8
  %2403 = add i64 %2402, -280
  %2404 = load i64, i64* %3, align 8
  %2405 = add i64 %2404, 7
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2403 to i64*
  %2407 = load i64, i64* %2406, align 8
  store i64 %2407, i64* %RDI.i4036.pre-phi, align 8
  %2408 = add i64 %2402, -248
  %2409 = add i64 %2404, 13
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i32*
  %2411 = load i32, i32* %2410, align 4
  %2412 = zext i32 %2411 to i64
  store i64 %2412, i64* %RSI.i3042, align 8
  %2413 = add i64 %2404, 17334
  %2414 = add i64 %2404, 18
  %2415 = load i64, i64* %6, align 8
  %2416 = add i64 %2415, -8
  %2417 = inttoptr i64 %2416 to i64*
  store i64 %2414, i64* %2417, align 8
  store i64 %2416, i64* %6, align 8
  store i64 %2413, i64* %3, align 8
  %call2_4017e7 = tail call %struct.Memory* @sub_405b90._Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2413, %struct.Memory* %call2_4017b9)
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -50
  %2420 = load i64, i64* %3, align 8
  %2421 = add i64 %2420, 4
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2419 to i16*
  %2423 = load i16, i16* %2422, align 2
  %2424 = sext i16 %2423 to i64
  %2425 = and i64 %2424, 4294967295
  store i64 %2425, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414360_type* @G__0x414360 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414360_type* @G__0x414360 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2426 = add i64 %2418, -280
  %2427 = add i64 %2420, 18
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i64*
  %2429 = load i64, i64* %2428, align 8
  store i64 %2429, i64* %RDI.i4036.pre-phi, align 8
  %2430 = add i64 %2418, -248
  %2431 = add i64 %2420, 24
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i32*
  %2433 = load i32, i32* %2432, align 4
  %2434 = zext i32 %2433 to i64
  store i64 %2434, i64* %RSI.i3042, align 8
  %2435 = add i64 %2420, 17620
  %2436 = add i64 %2420, 29
  %2437 = load i64, i64* %6, align 8
  %2438 = add i64 %2437, -8
  %2439 = inttoptr i64 %2438 to i64*
  store i64 %2436, i64* %2439, align 8
  store i64 %2438, i64* %6, align 8
  store i64 %2435, i64* %3, align 8
  %call2_401804 = tail call %struct.Memory* @sub_405cc0._Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2435, %struct.Memory* %call2_4017e7)
  %2440 = load i64, i64* %RBP.i, align 8
  %2441 = add i64 %2440, -56
  %2442 = load i64, i64* %3, align 8
  %2443 = add i64 %2442, 5
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2441 to i16*
  %2445 = load i16, i16* %2444, align 2
  %2446 = sext i16 %2445 to i64
  %2447 = and i64 %2446, 4294967295
  store i64 %2447, i64* %474, align 8
  %2448 = add i64 %2440, -54
  %2449 = add i64 %2442, 10
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i16*
  %2451 = load i16, i16* %2450, align 2
  %2452 = sext i16 %2451 to i64
  %2453 = and i64 %2452, 4294967295
  store i64 %2453, i64* %242, align 8
  %2454 = add i64 %2440, -52
  %2455 = add i64 %2442, 14
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i16*
  %2457 = load i16, i16* %2456, align 2
  %2458 = sext i16 %2457 to i64
  %2459 = and i64 %2458, 4294967295
  store i64 %2459, i64* %RCX.i4032, align 8
  %2460 = add i64 %2440, -50
  %2461 = add i64 %2442, 18
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i16*
  %2463 = load i16, i16* %2462, align 2
  %2464 = sext i16 %2463 to i64
  %2465 = and i64 %2464, 4294967295
  store i64 %2465, i64* %RDX.i4028, align 8
  %2466 = load i64, i64* %6, align 8
  store i64 %2466, i64* %RDI.i4036.pre-phi, align 8
  %2467 = add i64 %2442, 28
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i64*
  store i64 4277110, i64* %2468, align 8
  %2469 = load i64, i64* %RBP.i, align 8
  %2470 = add i64 %2469, -280
  %2471 = load i64, i64* %3, align 8
  %2472 = add i64 %2471, 7
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2470 to i64*
  %2474 = load i64, i64* %2473, align 8
  store i64 %2474, i64* %RDI.i4036.pre-phi, align 8
  %2475 = add i64 %2469, -248
  %2476 = add i64 %2471, 13
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  %2478 = load i32, i32* %2477, align 4
  %2479 = zext i32 %2478 to i64
  store i64 %2479, i64* %RSI.i3042, align 8
  %2480 = add i64 %2471, 17755
  %2481 = add i64 %2471, 18
  %2482 = load i64, i64* %6, align 8
  %2483 = add i64 %2482, -8
  %2484 = inttoptr i64 %2483 to i64*
  store i64 %2481, i64* %2484, align 8
  store i64 %2483, i64* %6, align 8
  store i64 %2480, i64* %3, align 8
  %call2_401832 = tail call %struct.Memory* @sub_405d80._Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2480, %struct.Memory* %call2_401804)
  %2485 = load i64, i64* %RBP.i, align 8
  %2486 = add i64 %2485, -50
  %2487 = load i64, i64* %3, align 8
  %2488 = add i64 %2487, 4
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2486 to i16*
  %2490 = load i16, i16* %2489, align 2
  %2491 = sext i16 %2490 to i64
  %2492 = and i64 %2491, 4294967295
  store i64 %2492, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414395_type* @G__0x414395 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414395_type* @G__0x414395 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2493 = add i64 %2485, -280
  %2494 = add i64 %2487, 18
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i64*
  %2496 = load i64, i64* %2495, align 8
  store i64 %2496, i64* %RDI.i4036.pre-phi, align 8
  %2497 = add i64 %2485, -248
  %2498 = add i64 %2487, 24
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  %2500 = load i32, i32* %2499, align 4
  %2501 = zext i32 %2500 to i64
  store i64 %2501, i64* %RSI.i3042, align 8
  %2502 = add i64 %2487, 18041
  %2503 = add i64 %2487, 29
  %2504 = load i64, i64* %6, align 8
  %2505 = add i64 %2504, -8
  %2506 = inttoptr i64 %2505 to i64*
  store i64 %2503, i64* %2506, align 8
  store i64 %2505, i64* %6, align 8
  store i64 %2502, i64* %3, align 8
  %call2_40184f = tail call %struct.Memory* @sub_405eb0._Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2502, %struct.Memory* %call2_401832)
  %2507 = load i64, i64* %RBP.i, align 8
  %2508 = add i64 %2507, -56
  %2509 = load i64, i64* %3, align 8
  %2510 = add i64 %2509, 5
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2508 to i16*
  %2512 = load i16, i16* %2511, align 2
  %2513 = sext i16 %2512 to i64
  %2514 = and i64 %2513, 4294967295
  store i64 %2514, i64* %474, align 8
  %2515 = add i64 %2507, -54
  %2516 = add i64 %2509, 10
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i16*
  %2518 = load i16, i16* %2517, align 2
  %2519 = sext i16 %2518 to i64
  %2520 = and i64 %2519, 4294967295
  store i64 %2520, i64* %242, align 8
  %2521 = add i64 %2507, -52
  %2522 = add i64 %2509, 14
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i16*
  %2524 = load i16, i16* %2523, align 2
  %2525 = sext i16 %2524 to i64
  %2526 = and i64 %2525, 4294967295
  store i64 %2526, i64* %RCX.i4032, align 8
  %2527 = add i64 %2507, -50
  %2528 = add i64 %2509, 18
  store i64 %2528, i64* %3, align 8
  %2529 = inttoptr i64 %2527 to i16*
  %2530 = load i16, i16* %2529, align 2
  %2531 = sext i16 %2530 to i64
  %2532 = and i64 %2531, 4294967295
  store i64 %2532, i64* %RDX.i4028, align 8
  %2533 = load i64, i64* %6, align 8
  store i64 %2533, i64* %RDI.i4036.pre-phi, align 8
  %2534 = add i64 %2509, 28
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2533 to i64*
  store i64 4277162, i64* %2535, align 8
  %2536 = load i64, i64* %RBP.i, align 8
  %2537 = add i64 %2536, -280
  %2538 = load i64, i64* %3, align 8
  %2539 = add i64 %2538, 7
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2537 to i64*
  %2541 = load i64, i64* %2540, align 8
  store i64 %2541, i64* %RDI.i4036.pre-phi, align 8
  %2542 = add i64 %2536, -248
  %2543 = add i64 %2538, 13
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i32*
  %2545 = load i32, i32* %2544, align 4
  %2546 = zext i32 %2545 to i64
  store i64 %2546, i64* %RSI.i3042, align 8
  %2547 = add i64 %2538, 18176
  %2548 = add i64 %2538, 18
  %2549 = load i64, i64* %6, align 8
  %2550 = add i64 %2549, -8
  %2551 = inttoptr i64 %2550 to i64*
  store i64 %2548, i64* %2551, align 8
  store i64 %2550, i64* %6, align 8
  store i64 %2547, i64* %3, align 8
  %call2_40187d = tail call %struct.Memory* @sub_405f70._Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2547, %struct.Memory* %call2_40184f)
  %2552 = load i64, i64* %RBP.i, align 8
  %2553 = add i64 %2552, -50
  %2554 = load i64, i64* %3, align 8
  %2555 = add i64 %2554, 4
  store i64 %2555, i64* %3, align 8
  %2556 = inttoptr i64 %2553 to i16*
  %2557 = load i16, i16* %2556, align 2
  %2558 = sext i16 %2557 to i64
  %2559 = and i64 %2558, 4294967295
  store i64 %2559, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143c8_type* @G__0x4143c8 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143c8_type* @G__0x4143c8 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2560 = add i64 %2552, -280
  %2561 = add i64 %2554, 18
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i64*
  %2563 = load i64, i64* %2562, align 8
  store i64 %2563, i64* %RDI.i4036.pre-phi, align 8
  %2564 = add i64 %2552, -248
  %2565 = add i64 %2554, 24
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = zext i32 %2567 to i64
  store i64 %2568, i64* %RSI.i3042, align 8
  %2569 = add i64 %2554, 18462
  %2570 = add i64 %2554, 29
  %2571 = load i64, i64* %6, align 8
  %2572 = add i64 %2571, -8
  %2573 = inttoptr i64 %2572 to i64*
  store i64 %2570, i64* %2573, align 8
  store i64 %2572, i64* %6, align 8
  store i64 %2569, i64* %3, align 8
  %call2_40189a = tail call %struct.Memory* @sub_4060a0._Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2569, %struct.Memory* %call2_40187d)
  %2574 = load i64, i64* %RBP.i, align 8
  %2575 = add i64 %2574, -56
  %2576 = load i64, i64* %3, align 8
  %2577 = add i64 %2576, 5
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2575 to i16*
  %2579 = load i16, i16* %2578, align 2
  %2580 = sext i16 %2579 to i64
  %2581 = and i64 %2580, 4294967295
  store i64 %2581, i64* %474, align 8
  %2582 = add i64 %2574, -54
  %2583 = add i64 %2576, 10
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i16*
  %2585 = load i16, i16* %2584, align 2
  %2586 = sext i16 %2585 to i64
  %2587 = and i64 %2586, 4294967295
  store i64 %2587, i64* %242, align 8
  %2588 = add i64 %2574, -52
  %2589 = add i64 %2576, 14
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i16*
  %2591 = load i16, i16* %2590, align 2
  %2592 = sext i16 %2591 to i64
  %2593 = and i64 %2592, 4294967295
  store i64 %2593, i64* %RCX.i4032, align 8
  %2594 = add i64 %2574, -50
  %2595 = add i64 %2576, 18
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i16*
  %2597 = load i16, i16* %2596, align 2
  %2598 = sext i16 %2597 to i64
  %2599 = and i64 %2598, 4294967295
  store i64 %2599, i64* %RDX.i4028, align 8
  %2600 = load i64, i64* %6, align 8
  store i64 %2600, i64* %RDI.i4036.pre-phi, align 8
  %2601 = add i64 %2576, 28
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2600 to i64*
  store i64 4277214, i64* %2602, align 8
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -280
  %2605 = load i64, i64* %3, align 8
  %2606 = add i64 %2605, 7
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2604 to i64*
  %2608 = load i64, i64* %2607, align 8
  store i64 %2608, i64* %RDI.i4036.pre-phi, align 8
  %2609 = add i64 %2603, -248
  %2610 = add i64 %2605, 13
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %RSI.i3042, align 8
  %2614 = add i64 %2605, 18597
  %2615 = add i64 %2605, 18
  %2616 = load i64, i64* %6, align 8
  %2617 = add i64 %2616, -8
  %2618 = inttoptr i64 %2617 to i64*
  store i64 %2615, i64* %2618, align 8
  store i64 %2617, i64* %6, align 8
  store i64 %2614, i64* %3, align 8
  %call2_4018c8 = tail call %struct.Memory* @sub_406160._Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2614, %struct.Memory* %call2_40189a)
  %2619 = load i64, i64* %3, align 8
  %2620 = load double, double* bitcast (%G_0x2187b3__rip__4200661__type* @G_0x2187b3__rip__4200661_ to double*), align 8
  %2621 = tail call double @llvm.trunc.f64(double %2620)
  %2622 = tail call double @llvm.fabs.f64(double %2621)
  %2623 = fcmp ogt double %2622, 0x41DFFFFFFFC00000
  %2624 = fptosi double %2621 to i32
  store i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  %2625 = trunc i32 %2624 to i16
  %2626 = select i1 %2623, i16 0, i16 %2625
  %2627 = zext i16 %2626 to i64
  store i16 %2626, i16* %R14W.i3112, align 2
  store i64 %2627, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %2628 = load i64, i64* %RBP.i, align 8
  %2629 = add i64 %2628, -296
  %2630 = add i64 %2619, 37
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295) to i32) to i64), i64* %2631, align 8
  %2632 = load i64, i64* %3, align 8
  %2633 = add i64 %2632, 18846
  %2634 = add i64 %2632, 5
  %2635 = load i64, i64* %6, align 8
  %2636 = add i64 %2635, -8
  %2637 = inttoptr i64 %2636 to i64*
  store i64 %2634, i64* %2637, align 8
  store i64 %2636, i64* %6, align 8
  store i64 %2633, i64* %3, align 8
  %call2_4018f2 = tail call %struct.Memory* @sub_406290._Z4fillIPttEvT_S1_T0_(%struct.State* %0, i64 %2633, %struct.Memory* %call2_4018c8)
  %2638 = load i64, i64* %RBP.i, align 8
  %2639 = add i64 %2638, -40
  %2640 = load i64, i64* %3, align 8
  %2641 = add i64 %2640, 5
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2639 to double*
  %2643 = load double, double* %2642, align 8
  %2644 = tail call double @llvm.trunc.f64(double %2643)
  %2645 = tail call double @llvm.fabs.f64(double %2644)
  %2646 = fcmp ogt double %2645, 0x41DFFFFFFFC00000
  %2647 = fptosi double %2644 to i32
  %2648 = zext i32 %2647 to i64
  %2649 = select i1 %2646, i64 2147483648, i64 %2648
  store i64 %2649, i64* %RAX.i4030.pre-phi, align 8
  %2650 = trunc i64 %2649 to i16
  store i16 %2650, i16* %R14W.i3112, align 2
  %2651 = add i64 %2638, -58
  %2652 = add i64 %2640, 14
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2651 to i16*
  store i16 %2650, i16* %2653, align 2
  %2654 = load i64, i64* %RBP.i, align 8
  %2655 = add i64 %2654, -58
  %2656 = load i64, i64* %3, align 8
  %2657 = add i64 %2656, 4
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2655 to i16*
  %2659 = load i16, i16* %2658, align 2
  %2660 = zext i16 %2659 to i32
  %2661 = shl nuw nsw i32 %2660, 1
  %2662 = zext i32 %2661 to i64
  store i64 %2662, i64* %RAX.i4030.pre-phi, align 8
  %2663 = icmp ult i32 %2661, %2660
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %26, align 1
  %2665 = and i32 %2661, 254
  %2666 = tail call i32 @llvm.ctpop.i32(i32 %2665)
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  store i8 %2669, i8* %33, align 1
  %2670 = lshr i16 %2659, 3
  %2671 = trunc i16 %2670 to i8
  %2672 = and i8 %2671, 1
  store i8 %2672, i8* %39, align 1
  %2673 = icmp eq i16 %2659, 0
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2675 = trunc i32 %2661 to i16
  store i16 %2675, i16* %R14W.i3112, align 2
  %2676 = add i64 %2654, -60
  %2677 = add i64 %2656, 15
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i16*
  store i16 %2675, i16* %2678, align 2
  %2679 = load i64, i64* %RBP.i, align 8
  %2680 = add i64 %2679, -58
  %2681 = load i64, i64* %3, align 8
  %2682 = add i64 %2681, 4
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2680 to i16*
  %2684 = load i16, i16* %2683, align 2
  %2685 = zext i16 %2684 to i32
  %2686 = add nuw nsw i32 %2685, 2
  %2687 = zext i32 %2686 to i64
  store i64 %2687, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %2688 = and i32 %2686, 255
  %2689 = tail call i32 @llvm.ctpop.i32(i32 %2688)
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  %2692 = xor i8 %2691, 1
  store i8 %2692, i8* %33, align 1
  %2693 = xor i32 %2685, %2686
  %2694 = lshr i32 %2693, 4
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  store i8 %2696, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2697 = trunc i32 %2686 to i16
  store i16 %2697, i16* %R14W.i3112, align 2
  %2698 = add i64 %2679, -62
  %2699 = add i64 %2681, 16
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i16*
  store i16 %2697, i16* %2700, align 2
  %2701 = load i64, i64* %RBP.i, align 8
  %2702 = add i64 %2701, -58
  %2703 = load i64, i64* %3, align 8
  %2704 = add i64 %2703, 4
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2702 to i16*
  %2706 = load i16, i16* %2705, align 2
  %2707 = zext i16 %2706 to i64
  store i64 %2707, i64* %RAX.i4030.pre-phi, align 8
  %2708 = add i64 %2701, -60
  %2709 = add i64 %2703, 8
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i16*
  %2711 = load i16, i16* %2710, align 2
  %2712 = zext i16 %2711 to i64
  store i64 %2712, i64* %RCX.i4032, align 8
  %2713 = add i64 %2701, -62
  %2714 = add i64 %2703, 12
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i16*
  %2716 = load i16, i16* %2715, align 2
  %2717 = zext i16 %2716 to i64
  store i64 %2717, i64* %RDX.i4028, align 8
  %2718 = add i64 %2701, -300
  %2719 = zext i16 %2706 to i32
  %2720 = add i64 %2703, 18
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2718 to i32*
  store i32 %2719, i32* %2721, align 4
  %2722 = load i32, i32* %ECX.i3567, align 4
  %2723 = zext i32 %2722 to i64
  %2724 = load i64, i64* %3, align 8
  store i64 %2723, i64* %RAX.i4030.pre-phi, align 8
  %2725 = load i64, i64* %RBP.i, align 8
  %2726 = add i64 %2725, -268
  %2727 = add i64 %2724, 8
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = zext i32 %2729 to i64
  store i64 %2730, i64* %RCX.i4032, align 8
  %2731 = add i64 %2725, -304
  %2732 = load i32, i32* %EDX.i4025, align 4
  %2733 = add i64 %2724, 14
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2731 to i32*
  store i32 %2732, i32* %2734, align 4
  %2735 = load i32, i32* %ECX.i3567, align 4
  %2736 = zext i32 %2735 to i64
  %2737 = load i64, i64* %3, align 8
  store i64 %2736, i64* %RDX.i4028, align 8
  %2738 = load i64, i64* %RBP.i, align 8
  %2739 = add i64 %2738, -304
  %2740 = add i64 %2737, 9
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = zext i32 %2742 to i64
  store i64 %2743, i64* %242, align 8
  %2744 = add i64 %2737, 12
  store i64 %2744, i64* %3, align 8
  %2745 = load i32, i32* %372, align 8
  %2746 = zext i32 %2745 to i64
  %2747 = shl nuw i64 %2736, 32
  %2748 = or i64 %2747, %2746
  %2749 = udiv i64 %2748, %2743
  %2750 = and i64 %2749, 4294967295
  %2751 = icmp eq i64 %2749, %2750
  br i1 %2751, label %2754, label %2752

; <label>:2752:                                   ; preds = %routine_idivl__ecx.exit3040
  %2753 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2744, %struct.Memory* %call2_4018f2)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i64, i64* %3, align 8
  %.pre14 = load i32, i32* %EAX.i4015, align 4
  br label %routine_divl__r8d.exit2583

; <label>:2754:                                   ; preds = %routine_idivl__ecx.exit3040
  %2755 = urem i64 %2748, %2743
  %2756 = getelementptr inbounds %union.anon, %union.anon* %371, i64 0, i32 0
  store i64 %2749, i64* %2756, align 8
  store i64 %2755, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2757 = trunc i64 %2749 to i32
  br label %routine_divl__r8d.exit2583

routine_divl__r8d.exit2583:                       ; preds = %2754, %2752
  %2758 = phi i32 [ %.pre14, %2752 ], [ %2757, %2754 ]
  %2759 = phi i64 [ %.pre13, %2752 ], [ %2744, %2754 ]
  %2760 = phi i64 [ %.pre12, %2752 ], [ %2738, %2754 ]
  %2761 = phi %struct.Memory* [ %2753, %2752 ], [ %call2_4018f2, %2754 ]
  %2762 = add i64 %2760, -300
  %2763 = add i64 %2759, 6
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  %2765 = load i32, i32* %2764, align 4
  %2766 = add i32 %2758, %2765
  %2767 = zext i32 %2766 to i64
  store i64 %2767, i64* %RDX.i4028, align 8
  %2768 = icmp ult i32 %2766, %2765
  %2769 = icmp ult i32 %2766, %2758
  %2770 = or i1 %2768, %2769
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %26, align 1
  %2772 = and i32 %2766, 255
  %2773 = tail call i32 @llvm.ctpop.i32(i32 %2772)
  %2774 = trunc i32 %2773 to i8
  %2775 = and i8 %2774, 1
  %2776 = xor i8 %2775, 1
  store i8 %2776, i8* %33, align 1
  %2777 = xor i32 %2758, %2765
  %2778 = xor i32 %2777, %2766
  %2779 = lshr i32 %2778, 4
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %39, align 1
  %2782 = icmp eq i32 %2766, 0
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %42, align 1
  %2784 = lshr i32 %2766, 31
  %2785 = trunc i32 %2784 to i8
  store i8 %2785, i8* %45, align 1
  %2786 = lshr i32 %2765, 31
  %2787 = lshr i32 %2758, 31
  %2788 = xor i32 %2784, %2786
  %2789 = xor i32 %2784, %2787
  %2790 = add nuw nsw i32 %2788, %2789
  %2791 = icmp eq i32 %2790, 2
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %51, align 1
  %2793 = trunc i32 %2766 to i16
  store i16 %2793, i16* %R14W.i3112, align 2
  %2794 = add i64 %2760, -64
  %2795 = add i64 %2759, 17
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i16*
  store i16 %2793, i16* %2796, align 2
  %2797 = load i64, i64* %RBP.i, align 8
  %2798 = add i64 %2797, -58
  %2799 = load i64, i64* %3, align 8
  %2800 = add i64 %2799, 4
  store i64 %2800, i64* %3, align 8
  %2801 = inttoptr i64 %2798 to i16*
  %2802 = load i16, i16* %2801, align 2
  %2803 = zext i16 %2802 to i64
  store i64 %2803, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141e2_type* @G__0x4141e2 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141e2_type* @G__0x4141e2 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2804 = add i64 %2797, -296
  %2805 = add i64 %2799, 18
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i64*
  %2807 = load i64, i64* %2806, align 8
  store i64 %2807, i64* %RDI.i4036.pre-phi, align 8
  %2808 = add i64 %2797, -248
  %2809 = add i64 %2799, 24
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i32*
  %2811 = load i32, i32* %2810, align 4
  %2812 = zext i32 %2811 to i64
  store i64 %2812, i64* %RSI.i3042, align 8
  %2813 = add i64 %2799, 18799
  %2814 = add i64 %2799, 29
  %2815 = load i64, i64* %6, align 8
  %2816 = add i64 %2815, -8
  %2817 = inttoptr i64 %2816 to i64*
  store i64 %2814, i64* %2817, align 8
  store i64 %2816, i64* %6, align 8
  store i64 %2813, i64* %3, align 8
  %call2_401979 = tail call %struct.Memory* @sub_4062d0._Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2813, %struct.Memory* %2761)
  %2818 = load i64, i64* %RBP.i, align 8
  %2819 = add i64 %2818, -58
  %2820 = load i64, i64* %3, align 8
  %2821 = add i64 %2820, 4
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2819 to i16*
  %2823 = load i16, i16* %2822, align 2
  %2824 = zext i16 %2823 to i64
  store i64 %2824, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141f8_type* @G__0x4141f8 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141f8_type* @G__0x4141f8 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2825 = add i64 %2818, -296
  %2826 = add i64 %2820, 18
  store i64 %2826, i64* %3, align 8
  %2827 = inttoptr i64 %2825 to i64*
  %2828 = load i64, i64* %2827, align 8
  store i64 %2828, i64* %RDI.i4036.pre-phi, align 8
  %2829 = add i64 %2818, -248
  %2830 = add i64 %2820, 24
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2829 to i32*
  %2832 = load i32, i32* %2831, align 4
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %RSI.i3042, align 8
  %2834 = add i64 %2820, 18962
  %2835 = add i64 %2820, 29
  %2836 = load i64, i64* %6, align 8
  %2837 = add i64 %2836, -8
  %2838 = inttoptr i64 %2837 to i64*
  store i64 %2835, i64* %2838, align 8
  store i64 %2837, i64* %6, align 8
  store i64 %2834, i64* %3, align 8
  %call2_401996 = tail call %struct.Memory* @sub_406390._Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2834, %struct.Memory* %call2_401979)
  %2839 = load i64, i64* %RBP.i, align 8
  %2840 = add i64 %2839, -64
  %2841 = load i64, i64* %3, align 8
  %2842 = add i64 %2841, 5
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2840 to i16*
  %2844 = load i16, i16* %2843, align 2
  %2845 = zext i16 %2844 to i64
  store i64 %2845, i64* %474, align 8
  %2846 = add i64 %2839, -62
  %2847 = add i64 %2841, 10
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i16*
  %2849 = load i16, i16* %2848, align 2
  %2850 = zext i16 %2849 to i64
  store i64 %2850, i64* %242, align 8
  %2851 = add i64 %2839, -60
  %2852 = add i64 %2841, 14
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i16*
  %2854 = load i16, i16* %2853, align 2
  %2855 = zext i16 %2854 to i64
  store i64 %2855, i64* %RCX.i4032, align 8
  %2856 = add i64 %2839, -58
  %2857 = add i64 %2841, 18
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i16*
  %2859 = load i16, i16* %2858, align 2
  %2860 = zext i16 %2859 to i64
  store i64 %2860, i64* %RDX.i4028, align 8
  %2861 = load i64, i64* %6, align 8
  store i64 %2861, i64* %RDI.i4036.pre-phi, align 8
  %2862 = add i64 %2841, 28
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2861 to i64*
  store i64 4276758, i64* %2863, align 8
  %2864 = load i64, i64* %RBP.i, align 8
  %2865 = add i64 %2864, -296
  %2866 = load i64, i64* %3, align 8
  %2867 = add i64 %2866, 7
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2865 to i64*
  %2869 = load i64, i64* %2868, align 8
  store i64 %2869, i64* %RDI.i4036.pre-phi, align 8
  %2870 = add i64 %2864, -248
  %2871 = add i64 %2866, 13
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = zext i32 %2873 to i64
  store i64 %2874, i64* %RSI.i3042, align 8
  %2875 = add i64 %2866, 19097
  %2876 = add i64 %2866, 18
  %2877 = load i64, i64* %6, align 8
  %2878 = add i64 %2877, -8
  %2879 = inttoptr i64 %2878 to i64*
  store i64 %2876, i64* %2879, align 8
  store i64 %2878, i64* %6, align 8
  store i64 %2875, i64* %3, align 8
  %call2_4019c4 = tail call %struct.Memory* @sub_406450._Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2875, %struct.Memory* %call2_401996)
  %2880 = load i64, i64* %RBP.i, align 8
  %2881 = add i64 %2880, -58
  %2882 = load i64, i64* %3, align 8
  %2883 = add i64 %2882, 4
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2881 to i16*
  %2885 = load i16, i16* %2884, align 2
  %2886 = zext i16 %2885 to i64
  store i64 %2886, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414236_type* @G__0x414236 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414236_type* @G__0x414236 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2887 = add i64 %2880, -296
  %2888 = add i64 %2882, 18
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2887 to i64*
  %2890 = load i64, i64* %2889, align 8
  store i64 %2890, i64* %RDI.i4036.pre-phi, align 8
  %2891 = add i64 %2880, -248
  %2892 = add i64 %2882, 24
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i32*
  %2894 = load i32, i32* %2893, align 4
  %2895 = zext i32 %2894 to i64
  store i64 %2895, i64* %RSI.i3042, align 8
  %2896 = add i64 %2882, 19383
  %2897 = add i64 %2882, 29
  %2898 = load i64, i64* %6, align 8
  %2899 = add i64 %2898, -8
  %2900 = inttoptr i64 %2899 to i64*
  store i64 %2897, i64* %2900, align 8
  store i64 %2899, i64* %6, align 8
  store i64 %2896, i64* %3, align 8
  %call2_4019e1 = tail call %struct.Memory* @sub_406580._Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2896, %struct.Memory* %call2_4019c4)
  %2901 = load i64, i64* %RBP.i, align 8
  %2902 = add i64 %2901, -64
  %2903 = load i64, i64* %3, align 8
  %2904 = add i64 %2903, 5
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2902 to i16*
  %2906 = load i16, i16* %2905, align 2
  %2907 = zext i16 %2906 to i64
  store i64 %2907, i64* %474, align 8
  %2908 = add i64 %2901, -62
  %2909 = add i64 %2903, 10
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i16*
  %2911 = load i16, i16* %2910, align 2
  %2912 = zext i16 %2911 to i64
  store i64 %2912, i64* %242, align 8
  %2913 = add i64 %2901, -60
  %2914 = add i64 %2903, 14
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %2913 to i16*
  %2916 = load i16, i16* %2915, align 2
  %2917 = zext i16 %2916 to i64
  store i64 %2917, i64* %RCX.i4032, align 8
  %2918 = add i64 %2901, -58
  %2919 = add i64 %2903, 18
  store i64 %2919, i64* %3, align 8
  %2920 = inttoptr i64 %2918 to i16*
  %2921 = load i16, i16* %2920, align 2
  %2922 = zext i16 %2921 to i64
  store i64 %2922, i64* %RDX.i4028, align 8
  %2923 = load i64, i64* %6, align 8
  store i64 %2923, i64* %RDI.i4036.pre-phi, align 8
  %2924 = add i64 %2903, 28
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  store i64 4276817, i64* %2925, align 8
  %2926 = load i64, i64* %RBP.i, align 8
  %2927 = add i64 %2926, -296
  %2928 = load i64, i64* %3, align 8
  %2929 = add i64 %2928, 7
  store i64 %2929, i64* %3, align 8
  %2930 = inttoptr i64 %2927 to i64*
  %2931 = load i64, i64* %2930, align 8
  store i64 %2931, i64* %RDI.i4036.pre-phi, align 8
  %2932 = add i64 %2926, -248
  %2933 = add i64 %2928, 13
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RSI.i3042, align 8
  %2937 = add i64 %2928, 19518
  %2938 = add i64 %2928, 18
  %2939 = load i64, i64* %6, align 8
  %2940 = add i64 %2939, -8
  %2941 = inttoptr i64 %2940 to i64*
  store i64 %2938, i64* %2941, align 8
  store i64 %2940, i64* %6, align 8
  store i64 %2937, i64* %3, align 8
  %call2_401a0f = tail call %struct.Memory* @sub_406640._Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2937, %struct.Memory* %call2_4019e1)
  %2942 = load i64, i64* %RBP.i, align 8
  %2943 = add i64 %2942, -58
  %2944 = load i64, i64* %3, align 8
  %2945 = add i64 %2944, 4
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2943 to i16*
  %2947 = load i16, i16* %2946, align 2
  %2948 = zext i16 %2947 to i64
  store i64 %2948, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414276_type* @G__0x414276 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414276_type* @G__0x414276 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2949 = add i64 %2942, -296
  %2950 = add i64 %2944, 18
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i64*
  %2952 = load i64, i64* %2951, align 8
  store i64 %2952, i64* %RDI.i4036.pre-phi, align 8
  %2953 = add i64 %2942, -248
  %2954 = add i64 %2944, 24
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2953 to i32*
  %2956 = load i32, i32* %2955, align 4
  %2957 = zext i32 %2956 to i64
  store i64 %2957, i64* %RSI.i3042, align 8
  %2958 = add i64 %2944, 19804
  %2959 = add i64 %2944, 29
  %2960 = load i64, i64* %6, align 8
  %2961 = add i64 %2960, -8
  %2962 = inttoptr i64 %2961 to i64*
  store i64 %2959, i64* %2962, align 8
  store i64 %2961, i64* %6, align 8
  store i64 %2958, i64* %3, align 8
  %call2_401a2c = tail call %struct.Memory* @sub_406770._Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2958, %struct.Memory* %call2_401a0f)
  %2963 = load i64, i64* %RBP.i, align 8
  %2964 = add i64 %2963, -64
  %2965 = load i64, i64* %3, align 8
  %2966 = add i64 %2965, 5
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2964 to i16*
  %2968 = load i16, i16* %2967, align 2
  %2969 = zext i16 %2968 to i64
  store i64 %2969, i64* %474, align 8
  %2970 = add i64 %2963, -62
  %2971 = add i64 %2965, 10
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i16*
  %2973 = load i16, i16* %2972, align 2
  %2974 = zext i16 %2973 to i64
  store i64 %2974, i64* %242, align 8
  %2975 = add i64 %2963, -60
  %2976 = add i64 %2965, 14
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2975 to i16*
  %2978 = load i16, i16* %2977, align 2
  %2979 = zext i16 %2978 to i64
  store i64 %2979, i64* %RCX.i4032, align 8
  %2980 = add i64 %2963, -58
  %2981 = add i64 %2965, 18
  store i64 %2981, i64* %3, align 8
  %2982 = inttoptr i64 %2980 to i16*
  %2983 = load i16, i16* %2982, align 2
  %2984 = zext i16 %2983 to i64
  store i64 %2984, i64* %RDX.i4028, align 8
  %2985 = load i64, i64* %6, align 8
  store i64 %2985, i64* %RDI.i4036.pre-phi, align 8
  %2986 = add i64 %2965, 28
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i64*
  store i64 4276881, i64* %2987, align 8
  %2988 = load i64, i64* %RBP.i, align 8
  %2989 = add i64 %2988, -296
  %2990 = load i64, i64* %3, align 8
  %2991 = add i64 %2990, 7
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2989 to i64*
  %2993 = load i64, i64* %2992, align 8
  store i64 %2993, i64* %RDI.i4036.pre-phi, align 8
  %2994 = add i64 %2988, -248
  %2995 = add i64 %2990, 13
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i32*
  %2997 = load i32, i32* %2996, align 4
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RSI.i3042, align 8
  %2999 = add i64 %2990, 19939
  %3000 = add i64 %2990, 18
  %3001 = load i64, i64* %6, align 8
  %3002 = add i64 %3001, -8
  %3003 = inttoptr i64 %3002 to i64*
  store i64 %3000, i64* %3003, align 8
  store i64 %3002, i64* %6, align 8
  store i64 %2999, i64* %3, align 8
  %call2_401a5a = tail call %struct.Memory* @sub_406830._Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2999, %struct.Memory* %call2_401a2c)
  %3004 = load i64, i64* %RBP.i, align 8
  %3005 = add i64 %3004, -64
  %3006 = load i64, i64* %3, align 8
  %3007 = add i64 %3006, 5
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3005 to i16*
  %3009 = load i16, i16* %3008, align 2
  %3010 = zext i16 %3009 to i64
  store i64 %3010, i64* %474, align 8
  %3011 = add i64 %3004, -62
  %3012 = add i64 %3006, 10
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i16*
  %3014 = load i16, i16* %3013, align 2
  %3015 = zext i16 %3014 to i64
  store i64 %3015, i64* %242, align 8
  %3016 = add i64 %3004, -60
  %3017 = add i64 %3006, 14
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i16*
  %3019 = load i16, i16* %3018, align 2
  %3020 = zext i16 %3019 to i64
  store i64 %3020, i64* %RCX.i4032, align 8
  %3021 = add i64 %3004, -58
  %3022 = add i64 %3006, 18
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i16*
  %3024 = load i16, i16* %3023, align 2
  %3025 = zext i16 %3024 to i64
  store i64 %3025, i64* %RDX.i4028, align 8
  %3026 = load i64, i64* %6, align 8
  store i64 %3026, i64* %RDI.i4036.pre-phi, align 8
  %3027 = add i64 %3006, 28
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i64*
  store i64 4276919, i64* %3028, align 8
  %3029 = load i64, i64* %RBP.i, align 8
  %3030 = add i64 %3029, -296
  %3031 = load i64, i64* %3, align 8
  %3032 = add i64 %3031, 7
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3030 to i64*
  %3034 = load i64, i64* %3033, align 8
  store i64 %3034, i64* %RDI.i4036.pre-phi, align 8
  %3035 = add i64 %3029, -248
  %3036 = add i64 %3031, 13
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i32*
  %3038 = load i32, i32* %3037, align 4
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RSI.i3042, align 8
  %3040 = add i64 %3031, 20197
  %3041 = add i64 %3031, 18
  %3042 = load i64, i64* %6, align 8
  %3043 = add i64 %3042, -8
  %3044 = inttoptr i64 %3043 to i64*
  store i64 %3041, i64* %3044, align 8
  store i64 %3043, i64* %6, align 8
  store i64 %3040, i64* %3, align 8
  %call2_401a88 = tail call %struct.Memory* @sub_406960._Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3040, %struct.Memory* %call2_401a5a)
  %3045 = load i64, i64* %RBP.i, align 8
  %3046 = add i64 %3045, -58
  %3047 = load i64, i64* %3, align 8
  %3048 = add i64 %3047, 4
  store i64 %3048, i64* %3, align 8
  %3049 = inttoptr i64 %3046 to i16*
  %3050 = load i16, i16* %3049, align 2
  %3051 = zext i16 %3050 to i64
  store i64 %3051, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4142de_type* @G__0x4142de to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4142de_type* @G__0x4142de to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3052 = add i64 %3045, -296
  %3053 = add i64 %3047, 18
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i64*
  %3055 = load i64, i64* %3054, align 8
  store i64 %3055, i64* %RDI.i4036.pre-phi, align 8
  %3056 = add i64 %3045, -248
  %3057 = add i64 %3047, 24
  store i64 %3057, i64* %3, align 8
  %3058 = inttoptr i64 %3056 to i32*
  %3059 = load i32, i32* %3058, align 4
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RSI.i3042, align 8
  %3061 = add i64 %3047, 20483
  %3062 = add i64 %3047, 29
  %3063 = load i64, i64* %6, align 8
  %3064 = add i64 %3063, -8
  %3065 = inttoptr i64 %3064 to i64*
  store i64 %3062, i64* %3065, align 8
  store i64 %3064, i64* %6, align 8
  store i64 %3061, i64* %3, align 8
  %call2_401aa5 = tail call %struct.Memory* @sub_406a90._Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %3061, %struct.Memory* %call2_401a88)
  %3066 = load i64, i64* %RBP.i, align 8
  %3067 = add i64 %3066, -64
  %3068 = load i64, i64* %3, align 8
  %3069 = add i64 %3068, 5
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3067 to i16*
  %3071 = load i16, i16* %3070, align 2
  %3072 = zext i16 %3071 to i64
  store i64 %3072, i64* %474, align 8
  %3073 = add i64 %3066, -62
  %3074 = add i64 %3068, 10
  store i64 %3074, i64* %3, align 8
  %3075 = inttoptr i64 %3073 to i16*
  %3076 = load i16, i16* %3075, align 2
  %3077 = zext i16 %3076 to i64
  store i64 %3077, i64* %242, align 8
  %3078 = add i64 %3066, -60
  %3079 = add i64 %3068, 14
  store i64 %3079, i64* %3, align 8
  %3080 = inttoptr i64 %3078 to i16*
  %3081 = load i16, i16* %3080, align 2
  %3082 = zext i16 %3081 to i64
  store i64 %3082, i64* %RCX.i4032, align 8
  %3083 = add i64 %3066, -58
  %3084 = add i64 %3068, 18
  store i64 %3084, i64* %3, align 8
  %3085 = inttoptr i64 %3083 to i16*
  %3086 = load i16, i16* %3085, align 2
  %3087 = zext i16 %3086 to i64
  store i64 %3087, i64* %RDX.i4028, align 8
  %3088 = load i64, i64* %6, align 8
  store i64 %3088, i64* %RDI.i4036.pre-phi, align 8
  %3089 = add i64 %3068, 28
  store i64 %3089, i64* %3, align 8
  %3090 = inttoptr i64 %3088 to i64*
  store i64 4276983, i64* %3090, align 8
  %3091 = load i64, i64* %RBP.i, align 8
  %3092 = add i64 %3091, -296
  %3093 = load i64, i64* %3, align 8
  %3094 = add i64 %3093, 7
  store i64 %3094, i64* %3, align 8
  %3095 = inttoptr i64 %3092 to i64*
  %3096 = load i64, i64* %3095, align 8
  store i64 %3096, i64* %RDI.i4036.pre-phi, align 8
  %3097 = add i64 %3091, -248
  %3098 = add i64 %3093, 13
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3097 to i32*
  %3100 = load i32, i32* %3099, align 4
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RSI.i3042, align 8
  %3102 = add i64 %3093, 20618
  %3103 = add i64 %3093, 18
  %3104 = load i64, i64* %6, align 8
  %3105 = add i64 %3104, -8
  %3106 = inttoptr i64 %3105 to i64*
  store i64 %3103, i64* %3106, align 8
  store i64 %3105, i64* %6, align 8
  store i64 %3102, i64* %3, align 8
  %call2_401ad3 = tail call %struct.Memory* @sub_406b50._Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3102, %struct.Memory* %call2_401aa5)
  %3107 = load i64, i64* %RBP.i, align 8
  %3108 = add i64 %3107, -64
  %3109 = load i64, i64* %3, align 8
  %3110 = add i64 %3109, 5
  store i64 %3110, i64* %3, align 8
  %3111 = inttoptr i64 %3108 to i16*
  %3112 = load i16, i16* %3111, align 2
  %3113 = zext i16 %3112 to i64
  store i64 %3113, i64* %474, align 8
  %3114 = add i64 %3107, -62
  %3115 = add i64 %3109, 10
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i16*
  %3117 = load i16, i16* %3116, align 2
  %3118 = zext i16 %3117 to i64
  store i64 %3118, i64* %242, align 8
  %3119 = add i64 %3107, -60
  %3120 = add i64 %3109, 14
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3119 to i16*
  %3122 = load i16, i16* %3121, align 2
  %3123 = zext i16 %3122 to i64
  store i64 %3123, i64* %RCX.i4032, align 8
  %3124 = add i64 %3107, -58
  %3125 = add i64 %3109, 18
  store i64 %3125, i64* %3, align 8
  %3126 = inttoptr i64 %3124 to i16*
  %3127 = load i16, i16* %3126, align 2
  %3128 = zext i16 %3127 to i64
  store i64 %3128, i64* %RDX.i4028, align 8
  %3129 = load i64, i64* %6, align 8
  store i64 %3129, i64* %RDI.i4036.pre-phi, align 8
  %3130 = add i64 %3109, 28
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to i64*
  store i64 4277018, i64* %3131, align 8
  %3132 = load i64, i64* %RBP.i, align 8
  %3133 = add i64 %3132, -296
  %3134 = load i64, i64* %3, align 8
  %3135 = add i64 %3134, 7
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3133 to i64*
  %3137 = load i64, i64* %3136, align 8
  store i64 %3137, i64* %RDI.i4036.pre-phi, align 8
  %3138 = add i64 %3132, -248
  %3139 = add i64 %3134, 13
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RSI.i3042, align 8
  %3143 = add i64 %3134, 20876
  %3144 = add i64 %3134, 18
  %3145 = load i64, i64* %6, align 8
  %3146 = add i64 %3145, -8
  %3147 = inttoptr i64 %3146 to i64*
  store i64 %3144, i64* %3147, align 8
  store i64 %3146, i64* %6, align 8
  store i64 %3143, i64* %3, align 8
  %call2_401b01 = tail call %struct.Memory* @sub_406c80._Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3143, %struct.Memory* %call2_401ad3)
  %3148 = load i64, i64* %RBP.i, align 8
  %3149 = add i64 %3148, -64
  %3150 = load i64, i64* %3, align 8
  %3151 = add i64 %3150, 5
  store i64 %3151, i64* %3, align 8
  %3152 = inttoptr i64 %3149 to i16*
  %3153 = load i16, i16* %3152, align 2
  %3154 = zext i16 %3153 to i64
  store i64 %3154, i64* %474, align 8
  %3155 = add i64 %3148, -62
  %3156 = add i64 %3150, 10
  store i64 %3156, i64* %3, align 8
  %3157 = inttoptr i64 %3155 to i16*
  %3158 = load i16, i16* %3157, align 2
  %3159 = zext i16 %3158 to i64
  store i64 %3159, i64* %242, align 8
  %3160 = add i64 %3148, -60
  %3161 = add i64 %3150, 14
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i16*
  %3163 = load i16, i16* %3162, align 2
  %3164 = zext i16 %3163 to i64
  store i64 %3164, i64* %RCX.i4032, align 8
  %3165 = add i64 %3148, -58
  %3166 = add i64 %3150, 18
  store i64 %3166, i64* %3, align 8
  %3167 = inttoptr i64 %3165 to i16*
  %3168 = load i16, i16* %3167, align 2
  %3169 = zext i16 %3168 to i64
  store i64 %3169, i64* %RDX.i4028, align 8
  %3170 = load i64, i64* %6, align 8
  store i64 %3170, i64* %RDI.i4036.pre-phi, align 8
  %3171 = add i64 %3150, 28
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to i64*
  store i64 4277054, i64* %3172, align 8
  %3173 = load i64, i64* %RBP.i, align 8
  %3174 = add i64 %3173, -296
  %3175 = load i64, i64* %3, align 8
  %3176 = add i64 %3175, 7
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3174 to i64*
  %3178 = load i64, i64* %3177, align 8
  store i64 %3178, i64* %RDI.i4036.pre-phi, align 8
  %3179 = add i64 %3173, -248
  %3180 = add i64 %3175, 13
  store i64 %3180, i64* %3, align 8
  %3181 = inttoptr i64 %3179 to i32*
  %3182 = load i32, i32* %3181, align 4
  %3183 = zext i32 %3182 to i64
  store i64 %3183, i64* %RSI.i3042, align 8
  %3184 = add i64 %3175, 21134
  %3185 = add i64 %3175, 18
  %3186 = load i64, i64* %6, align 8
  %3187 = add i64 %3186, -8
  %3188 = inttoptr i64 %3187 to i64*
  store i64 %3185, i64* %3188, align 8
  store i64 %3187, i64* %6, align 8
  store i64 %3184, i64* %3, align 8
  %call2_401b2f = tail call %struct.Memory* @sub_406db0._Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3184, %struct.Memory* %call2_401b01)
  %3189 = load i64, i64* %RBP.i, align 8
  %3190 = add i64 %3189, -58
  %3191 = load i64, i64* %3, align 8
  %3192 = add i64 %3191, 4
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3190 to i16*
  %3194 = load i16, i16* %3193, align 2
  %3195 = zext i16 %3194 to i64
  store i64 %3195, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41435f_type* @G__0x41435f to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41435f_type* @G__0x41435f to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3196 = add i64 %3189, -296
  %3197 = add i64 %3191, 18
  store i64 %3197, i64* %3, align 8
  %3198 = inttoptr i64 %3196 to i64*
  %3199 = load i64, i64* %3198, align 8
  store i64 %3199, i64* %RDI.i4036.pre-phi, align 8
  %3200 = add i64 %3189, -248
  %3201 = add i64 %3191, 24
  store i64 %3201, i64* %3, align 8
  %3202 = inttoptr i64 %3200 to i32*
  %3203 = load i32, i32* %3202, align 4
  %3204 = zext i32 %3203 to i64
  store i64 %3204, i64* %RSI.i3042, align 8
  %3205 = add i64 %3191, 21420
  %3206 = add i64 %3191, 29
  %3207 = load i64, i64* %6, align 8
  %3208 = add i64 %3207, -8
  %3209 = inttoptr i64 %3208 to i64*
  store i64 %3206, i64* %3209, align 8
  store i64 %3208, i64* %6, align 8
  store i64 %3205, i64* %3, align 8
  %call2_401b4c = tail call %struct.Memory* @sub_406ee0._Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(%struct.State* %0, i64 %3205, %struct.Memory* %call2_401b2f)
  %3210 = load i64, i64* %RBP.i, align 8
  %3211 = add i64 %3210, -64
  %3212 = load i64, i64* %3, align 8
  %3213 = add i64 %3212, 5
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3211 to i16*
  %3215 = load i16, i16* %3214, align 2
  %3216 = zext i16 %3215 to i64
  store i64 %3216, i64* %474, align 8
  %3217 = add i64 %3210, -62
  %3218 = add i64 %3212, 10
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i16*
  %3220 = load i16, i16* %3219, align 2
  %3221 = zext i16 %3220 to i64
  store i64 %3221, i64* %242, align 8
  %3222 = add i64 %3210, -60
  %3223 = add i64 %3212, 14
  store i64 %3223, i64* %3, align 8
  %3224 = inttoptr i64 %3222 to i16*
  %3225 = load i16, i16* %3224, align 2
  %3226 = zext i16 %3225 to i64
  store i64 %3226, i64* %RCX.i4032, align 8
  %3227 = add i64 %3210, -58
  %3228 = add i64 %3212, 18
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to i16*
  %3230 = load i16, i16* %3229, align 2
  %3231 = zext i16 %3230 to i64
  store i64 %3231, i64* %RDX.i4028, align 8
  %3232 = load i64, i64* %6, align 8
  store i64 %3232, i64* %RDI.i4036.pre-phi, align 8
  %3233 = add i64 %3212, 28
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3232 to i64*
  store i64 4277109, i64* %3234, align 8
  %3235 = load i64, i64* %RBP.i, align 8
  %3236 = add i64 %3235, -296
  %3237 = load i64, i64* %3, align 8
  %3238 = add i64 %3237, 7
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3236 to i64*
  %3240 = load i64, i64* %3239, align 8
  store i64 %3240, i64* %RDI.i4036.pre-phi, align 8
  %3241 = add i64 %3235, -248
  %3242 = add i64 %3237, 13
  store i64 %3242, i64* %3, align 8
  %3243 = inttoptr i64 %3241 to i32*
  %3244 = load i32, i32* %3243, align 4
  %3245 = zext i32 %3244 to i64
  store i64 %3245, i64* %RSI.i3042, align 8
  %3246 = add i64 %3237, 21555
  %3247 = add i64 %3237, 18
  %3248 = load i64, i64* %6, align 8
  %3249 = add i64 %3248, -8
  %3250 = inttoptr i64 %3249 to i64*
  store i64 %3247, i64* %3250, align 8
  store i64 %3249, i64* %6, align 8
  store i64 %3246, i64* %3, align 8
  %call2_401b7a = tail call %struct.Memory* @sub_406fa0._Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3246, %struct.Memory* %call2_401b4c)
  %3251 = load i64, i64* %RBP.i, align 8
  %3252 = add i64 %3251, -58
  %3253 = load i64, i64* %3, align 8
  %3254 = add i64 %3253, 4
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3252 to i16*
  %3256 = load i16, i16* %3255, align 2
  %3257 = zext i16 %3256 to i64
  store i64 %3257, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414394_type* @G__0x414394 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414394_type* @G__0x414394 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3258 = add i64 %3251, -296
  %3259 = add i64 %3253, 18
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i64*
  %3261 = load i64, i64* %3260, align 8
  store i64 %3261, i64* %RDI.i4036.pre-phi, align 8
  %3262 = add i64 %3251, -248
  %3263 = add i64 %3253, 24
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RSI.i3042, align 8
  %3267 = add i64 %3253, 21841
  %3268 = add i64 %3253, 29
  %3269 = load i64, i64* %6, align 8
  %3270 = add i64 %3269, -8
  %3271 = inttoptr i64 %3270 to i64*
  store i64 %3268, i64* %3271, align 8
  store i64 %3270, i64* %6, align 8
  store i64 %3267, i64* %3, align 8
  %call2_401b97 = tail call %struct.Memory* @sub_4070d0._Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(%struct.State* %0, i64 %3267, %struct.Memory* %call2_401b7a)
  %3272 = load i64, i64* %RBP.i, align 8
  %3273 = add i64 %3272, -64
  %3274 = load i64, i64* %3, align 8
  %3275 = add i64 %3274, 5
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3273 to i16*
  %3277 = load i16, i16* %3276, align 2
  %3278 = zext i16 %3277 to i64
  store i64 %3278, i64* %474, align 8
  %3279 = add i64 %3272, -62
  %3280 = add i64 %3274, 10
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i16*
  %3282 = load i16, i16* %3281, align 2
  %3283 = zext i16 %3282 to i64
  store i64 %3283, i64* %242, align 8
  %3284 = add i64 %3272, -60
  %3285 = add i64 %3274, 14
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i16*
  %3287 = load i16, i16* %3286, align 2
  %3288 = zext i16 %3287 to i64
  store i64 %3288, i64* %RCX.i4032, align 8
  %3289 = add i64 %3272, -58
  %3290 = add i64 %3274, 18
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to i16*
  %3292 = load i16, i16* %3291, align 2
  %3293 = zext i16 %3292 to i64
  store i64 %3293, i64* %RDX.i4028, align 8
  %3294 = load i64, i64* %6, align 8
  store i64 %3294, i64* %RDI.i4036.pre-phi, align 8
  %3295 = add i64 %3274, 28
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i64*
  store i64 4277161, i64* %3296, align 8
  %3297 = load i64, i64* %RBP.i, align 8
  %3298 = add i64 %3297, -296
  %3299 = load i64, i64* %3, align 8
  %3300 = add i64 %3299, 7
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3298 to i64*
  %3302 = load i64, i64* %3301, align 8
  store i64 %3302, i64* %RDI.i4036.pre-phi, align 8
  %3303 = add i64 %3297, -248
  %3304 = add i64 %3299, 13
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i32*
  %3306 = load i32, i32* %3305, align 4
  %3307 = zext i32 %3306 to i64
  store i64 %3307, i64* %RSI.i3042, align 8
  %3308 = add i64 %3299, 21976
  %3309 = add i64 %3299, 18
  %3310 = load i64, i64* %6, align 8
  %3311 = add i64 %3310, -8
  %3312 = inttoptr i64 %3311 to i64*
  store i64 %3309, i64* %3312, align 8
  store i64 %3311, i64* %6, align 8
  store i64 %3308, i64* %3, align 8
  %call2_401bc5 = tail call %struct.Memory* @sub_407190._Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3308, %struct.Memory* %call2_401b97)
  %3313 = load i64, i64* %RBP.i, align 8
  %3314 = add i64 %3313, -58
  %3315 = load i64, i64* %3, align 8
  %3316 = add i64 %3315, 4
  store i64 %3316, i64* %3, align 8
  %3317 = inttoptr i64 %3314 to i16*
  %3318 = load i16, i16* %3317, align 2
  %3319 = zext i16 %3318 to i64
  store i64 %3319, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143c7_type* @G__0x4143c7 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143c7_type* @G__0x4143c7 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3320 = add i64 %3313, -296
  %3321 = add i64 %3315, 18
  store i64 %3321, i64* %3, align 8
  %3322 = inttoptr i64 %3320 to i64*
  %3323 = load i64, i64* %3322, align 8
  store i64 %3323, i64* %RDI.i4036.pre-phi, align 8
  %3324 = add i64 %3313, -248
  %3325 = add i64 %3315, 24
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3324 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = zext i32 %3327 to i64
  store i64 %3328, i64* %RSI.i3042, align 8
  %3329 = add i64 %3315, 22262
  %3330 = add i64 %3315, 29
  %3331 = load i64, i64* %6, align 8
  %3332 = add i64 %3331, -8
  %3333 = inttoptr i64 %3332 to i64*
  store i64 %3330, i64* %3333, align 8
  store i64 %3332, i64* %6, align 8
  store i64 %3329, i64* %3, align 8
  %call2_401be2 = tail call %struct.Memory* @sub_4072c0._Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(%struct.State* %0, i64 %3329, %struct.Memory* %call2_401bc5)
  %3334 = load i64, i64* %RBP.i, align 8
  %3335 = add i64 %3334, -64
  %3336 = load i64, i64* %3, align 8
  %3337 = add i64 %3336, 5
  store i64 %3337, i64* %3, align 8
  %3338 = inttoptr i64 %3335 to i16*
  %3339 = load i16, i16* %3338, align 2
  %3340 = zext i16 %3339 to i64
  store i64 %3340, i64* %474, align 8
  %3341 = add i64 %3334, -62
  %3342 = add i64 %3336, 10
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i16*
  %3344 = load i16, i16* %3343, align 2
  %3345 = zext i16 %3344 to i64
  store i64 %3345, i64* %242, align 8
  %3346 = add i64 %3334, -60
  %3347 = add i64 %3336, 14
  store i64 %3347, i64* %3, align 8
  %3348 = inttoptr i64 %3346 to i16*
  %3349 = load i16, i16* %3348, align 2
  %3350 = zext i16 %3349 to i64
  store i64 %3350, i64* %RCX.i4032, align 8
  %3351 = add i64 %3334, -58
  %3352 = add i64 %3336, 18
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i16*
  %3354 = load i16, i16* %3353, align 2
  %3355 = zext i16 %3354 to i64
  store i64 %3355, i64* %RDX.i4028, align 8
  %3356 = load i64, i64* %6, align 8
  store i64 %3356, i64* %RDI.i4036.pre-phi, align 8
  %3357 = add i64 %3336, 28
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3356 to i64*
  store i64 4277213, i64* %3358, align 8
  %3359 = load i64, i64* %RBP.i, align 8
  %3360 = add i64 %3359, -296
  %3361 = load i64, i64* %3, align 8
  %3362 = add i64 %3361, 7
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3360 to i64*
  %3364 = load i64, i64* %3363, align 8
  store i64 %3364, i64* %RDI.i4036.pre-phi, align 8
  %3365 = add i64 %3359, -248
  %3366 = add i64 %3361, 13
  store i64 %3366, i64* %3, align 8
  %3367 = inttoptr i64 %3365 to i32*
  %3368 = load i32, i32* %3367, align 4
  %3369 = zext i32 %3368 to i64
  store i64 %3369, i64* %RSI.i3042, align 8
  %3370 = add i64 %3361, 22397
  %3371 = add i64 %3361, 18
  %3372 = load i64, i64* %6, align 8
  %3373 = add i64 %3372, -8
  %3374 = inttoptr i64 %3373 to i64*
  store i64 %3371, i64* %3374, align 8
  store i64 %3373, i64* %6, align 8
  store i64 %3370, i64* %3, align 8
  %call2_401c10 = tail call %struct.Memory* @sub_407380._Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3370, %struct.Memory* %call2_401be2)
  %3375 = load i64, i64* %3, align 8
  %3376 = load double, double* bitcast (%G_0x21846b__rip__4201501__type* @G_0x21846b__rip__4201501_ to double*), align 8
  store double %3376, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %3377 = tail call double @llvm.trunc.f64(double %3376)
  %3378 = tail call double @llvm.fabs.f64(double %3377)
  %3379 = fcmp ogt double %3378, 0x41DFFFFFFFC00000
  %3380 = fptosi double %3377 to i32
  %3381 = zext i32 %3380 to i64
  %3382 = select i1 %3379, i64 2147483648, i64 %3381
  store i64 %3382, i64* %RDX.i4028, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %3383 = load i64, i64* %RBP.i, align 8
  %3384 = add i64 %3383, -312
  %3385 = add i64 %3375, 33
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3384 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295) to i32) to i64), i64* %3386, align 8
  %3387 = load i64, i64* %3, align 8
  %3388 = add i64 %3387, 22650
  %3389 = add i64 %3387, 5
  %3390 = load i64, i64* %6, align 8
  %3391 = add i64 %3390, -8
  %3392 = inttoptr i64 %3391 to i64*
  store i64 %3389, i64* %3392, align 8
  store i64 %3391, i64* %6, align 8
  store i64 %3388, i64* %3, align 8
  %call2_401c36 = tail call %struct.Memory* @sub_4074b0._Z4fillIPiiEvT_S1_T0_(%struct.State* %0, i64 %3388, %struct.Memory* %call2_401c10)
  %3393 = load i64, i64* %RBP.i, align 8
  %3394 = add i64 %3393, -40
  %3395 = load i64, i64* %3, align 8
  %3396 = add i64 %3395, 5
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3394 to double*
  %3398 = load double, double* %3397, align 8
  %3399 = tail call double @llvm.trunc.f64(double %3398)
  %3400 = tail call double @llvm.fabs.f64(double %3399)
  %3401 = fcmp ogt double %3400, 0x41DFFFFFFFC00000
  %3402 = fptosi double %3399 to i32
  %3403 = zext i32 %3402 to i64
  %3404 = select i1 %3401, i64 2147483648, i64 %3403
  store i64 %3404, i64* %RAX.i4030.pre-phi, align 8
  %3405 = add i64 %3393, -68
  %3406 = trunc i64 %3404 to i32
  %3407 = add i64 %3395, 8
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3405 to i32*
  store i32 %3406, i32* %3408, align 4
  %3409 = load i64, i64* %RBP.i, align 8
  %3410 = add i64 %3409, -68
  %3411 = load i64, i64* %3, align 8
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %3, align 8
  %3413 = inttoptr i64 %3410 to i32*
  %3414 = load i32, i32* %3413, align 4
  %3415 = shl i32 %3414, 1
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RAX.i4030.pre-phi, align 8
  %3417 = icmp ult i32 %3415, %3414
  %3418 = zext i1 %3417 to i8
  store i8 %3418, i8* %26, align 1
  %3419 = and i32 %3415, 254
  %3420 = tail call i32 @llvm.ctpop.i32(i32 %3419)
  %3421 = trunc i32 %3420 to i8
  %3422 = and i8 %3421, 1
  %3423 = xor i8 %3422, 1
  store i8 %3423, i8* %33, align 1
  %3424 = lshr i32 %3414, 3
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  store i8 %3426, i8* %39, align 1
  %3427 = icmp eq i32 %3415, 0
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %42, align 1
  %3429 = lshr i32 %3414, 30
  %3430 = and i32 %3429, 1
  %3431 = trunc i32 %3430 to i8
  store i8 %3431, i8* %45, align 1
  %3432 = lshr i32 %3414, 31
  %3433 = xor i32 %3430, %3432
  %3434 = trunc i32 %3433 to i8
  store i8 %3434, i8* %51, align 1
  %3435 = add i64 %3409, -72
  %3436 = add i64 %3411, 8
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3435 to i32*
  store i32 %3415, i32* %3437, align 4
  %3438 = load i64, i64* %RBP.i, align 8
  %3439 = add i64 %3438, -68
  %3440 = load i64, i64* %3, align 8
  %3441 = add i64 %3440, 3
  store i64 %3441, i64* %3, align 8
  %3442 = inttoptr i64 %3439 to i32*
  %3443 = load i32, i32* %3442, align 4
  %3444 = add i32 %3443, 2
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RAX.i4030.pre-phi, align 8
  %3446 = icmp ugt i32 %3443, -3
  %3447 = zext i1 %3446 to i8
  store i8 %3447, i8* %26, align 1
  %3448 = and i32 %3444, 255
  %3449 = tail call i32 @llvm.ctpop.i32(i32 %3448)
  %3450 = trunc i32 %3449 to i8
  %3451 = and i8 %3450, 1
  %3452 = xor i8 %3451, 1
  store i8 %3452, i8* %33, align 1
  %3453 = xor i32 %3443, %3444
  %3454 = lshr i32 %3453, 4
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  store i8 %3456, i8* %39, align 1
  %3457 = icmp eq i32 %3444, 0
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %42, align 1
  %3459 = lshr i32 %3444, 31
  %3460 = trunc i32 %3459 to i8
  store i8 %3460, i8* %45, align 1
  %3461 = lshr i32 %3443, 31
  %3462 = xor i32 %3459, %3461
  %3463 = add nuw nsw i32 %3462, %3459
  %3464 = icmp eq i32 %3463, 2
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %51, align 1
  %3466 = add i64 %3438, -76
  %3467 = add i64 %3440, 9
  store i64 %3467, i64* %3, align 8
  %3468 = inttoptr i64 %3466 to i32*
  store i32 %3444, i32* %3468, align 4
  %3469 = load i64, i64* %RBP.i, align 8
  %3470 = add i64 %3469, -68
  %3471 = load i64, i64* %3, align 8
  %3472 = add i64 %3471, 3
  store i64 %3472, i64* %3, align 8
  %3473 = inttoptr i64 %3470 to i32*
  %3474 = load i32, i32* %3473, align 4
  %3475 = zext i32 %3474 to i64
  store i64 %3475, i64* %RAX.i4030.pre-phi, align 8
  %3476 = add i64 %3469, -72
  %3477 = add i64 %3471, 6
  store i64 %3477, i64* %3, align 8
  %3478 = inttoptr i64 %3476 to i32*
  %3479 = load i32, i32* %3478, align 4
  %3480 = zext i32 %3479 to i64
  store i64 %3480, i64* %RCX.i4032, align 8
  %3481 = add i64 %3469, -76
  %3482 = add i64 %3471, 9
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3481 to i32*
  %3484 = load i32, i32* %3483, align 4
  %3485 = zext i32 %3484 to i64
  store i64 %3485, i64* %RDX.i4028, align 8
  %3486 = add i64 %3469, -316
  %3487 = add i64 %3471, 15
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3486 to i32*
  store i32 %3474, i32* %3488, align 4
  %3489 = load i32, i32* %ECX.i3567, align 4
  %3490 = zext i32 %3489 to i64
  %3491 = load i64, i64* %3, align 8
  store i64 %3490, i64* %RAX.i4030.pre-phi, align 8
  %3492 = load i64, i64* %RBP.i, align 8
  %3493 = add i64 %3492, -320
  %3494 = load i32, i32* %EDX.i4025, align 4
  %3495 = add i64 %3491, 8
  store i64 %3495, i64* %3, align 8
  %3496 = inttoptr i64 %3493 to i32*
  store i32 %3494, i32* %3496, align 4
  %3497 = load i64, i64* %3, align 8
  %3498 = load i32, i32* %372, align 8
  %3499 = sext i32 %3498 to i64
  %3500 = lshr i64 %3499, 32
  store i64 %3500, i64* %370, align 8
  %3501 = load i64, i64* %RBP.i, align 8
  %3502 = add i64 %3501, -320
  %3503 = add i64 %3497, 7
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i32*
  %3505 = load i32, i32* %3504, align 4
  %3506 = zext i32 %3505 to i64
  store i64 %3506, i64* %RCX.i4032, align 8
  %3507 = add i64 %3497, 9
  store i64 %3507, i64* %3, align 8
  %3508 = zext i32 %3498 to i64
  %3509 = sext i32 %3505 to i64
  %3510 = shl nuw i64 %3500, 32
  %3511 = or i64 %3510, %3508
  %3512 = sdiv i64 %3511, %3509
  %3513 = shl i64 %3512, 32
  %3514 = ashr exact i64 %3513, 32
  %3515 = icmp eq i64 %3512, %3514
  br i1 %3515, label %3518, label %3516

; <label>:3516:                                   ; preds = %routine_divl__r8d.exit2583
  %3517 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3507, %struct.Memory* %call2_401c36)
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %3, align 8
  %.pre17 = load i32, i32* %EAX.i4015, align 4
  br label %routine_idivl__ecx.exit

; <label>:3518:                                   ; preds = %routine_divl__r8d.exit2583
  %3519 = srem i64 %3511, %3509
  %3520 = getelementptr inbounds %union.anon, %union.anon* %371, i64 0, i32 0
  %3521 = and i64 %3512, 4294967295
  store i64 %3521, i64* %3520, align 8
  %3522 = and i64 %3519, 4294967295
  store i64 %3522, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3523 = trunc i64 %3512 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3518, %3516
  %3524 = phi i32 [ %.pre17, %3516 ], [ %3523, %3518 ]
  %3525 = phi i64 [ %.pre16, %3516 ], [ %3507, %3518 ]
  %3526 = phi i64 [ %.pre15, %3516 ], [ %3501, %3518 ]
  %3527 = phi %struct.Memory* [ %3517, %3516 ], [ %call2_401c36, %3518 ]
  %3528 = add i64 %3526, -316
  %3529 = add i64 %3525, 6
  store i64 %3529, i64* %3, align 8
  %3530 = inttoptr i64 %3528 to i32*
  %3531 = load i32, i32* %3530, align 4
  %3532 = add i32 %3524, %3531
  %3533 = zext i32 %3532 to i64
  store i64 %3533, i64* %RCX.i4032, align 8
  %3534 = icmp ult i32 %3532, %3531
  %3535 = icmp ult i32 %3532, %3524
  %3536 = or i1 %3534, %3535
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %26, align 1
  %3538 = and i32 %3532, 255
  %3539 = tail call i32 @llvm.ctpop.i32(i32 %3538)
  %3540 = trunc i32 %3539 to i8
  %3541 = and i8 %3540, 1
  %3542 = xor i8 %3541, 1
  store i8 %3542, i8* %33, align 1
  %3543 = xor i32 %3524, %3531
  %3544 = xor i32 %3543, %3532
  %3545 = lshr i32 %3544, 4
  %3546 = trunc i32 %3545 to i8
  %3547 = and i8 %3546, 1
  store i8 %3547, i8* %39, align 1
  %3548 = icmp eq i32 %3532, 0
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %42, align 1
  %3550 = lshr i32 %3532, 31
  %3551 = trunc i32 %3550 to i8
  store i8 %3551, i8* %45, align 1
  %3552 = lshr i32 %3531, 31
  %3553 = lshr i32 %3524, 31
  %3554 = xor i32 %3550, %3552
  %3555 = xor i32 %3550, %3553
  %3556 = add nuw nsw i32 %3554, %3555
  %3557 = icmp eq i32 %3556, 2
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %51, align 1
  %3559 = add i64 %3526, -80
  %3560 = add i64 %3525, 11
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3559 to i32*
  store i32 %3532, i32* %3561, align 4
  %3562 = load i64, i64* %RBP.i, align 8
  %3563 = add i64 %3562, -68
  %3564 = load i64, i64* %3, align 8
  %3565 = add i64 %3564, 3
  store i64 %3565, i64* %3, align 8
  %3566 = inttoptr i64 %3563 to i32*
  %3567 = load i32, i32* %3566, align 4
  %3568 = zext i32 %3567 to i64
  store i64 %3568, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143fd_type* @G__0x4143fd to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143fd_type* @G__0x4143fd to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3569 = add i64 %3562, -312
  %3570 = add i64 %3564, 17
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3569 to i64*
  %3572 = load i64, i64* %3571, align 8
  store i64 %3572, i64* %RDI.i4036.pre-phi, align 8
  %3573 = add i64 %3562, -248
  %3574 = add i64 %3564, 23
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3573 to i32*
  %3576 = load i32, i32* %3575, align 4
  %3577 = zext i32 %3576 to i64
  store i64 %3577, i64* %RSI.i3042, align 8
  %3578 = add i64 %3564, 22641
  %3579 = add i64 %3564, 28
  %3580 = load i64, i64* %6, align 8
  %3581 = add i64 %3580, -8
  %3582 = inttoptr i64 %3581 to i64*
  store i64 %3579, i64* %3582, align 8
  store i64 %3581, i64* %6, align 8
  store i64 %3578, i64* %3, align 8
  %call2_401c96 = tail call %struct.Memory* @sub_4074f0._Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3578, %struct.Memory* %3527)
  %3583 = load i64, i64* %RBP.i, align 8
  %3584 = add i64 %3583, -68
  %3585 = load i64, i64* %3, align 8
  %3586 = add i64 %3585, 3
  store i64 %3586, i64* %3, align 8
  %3587 = inttoptr i64 %3584 to i32*
  %3588 = load i32, i32* %3587, align 4
  %3589 = zext i32 %3588 to i64
  store i64 %3589, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414413_type* @G__0x414413 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414413_type* @G__0x414413 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3590 = add i64 %3583, -312
  %3591 = add i64 %3585, 17
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3590 to i64*
  %3593 = load i64, i64* %3592, align 8
  store i64 %3593, i64* %RDI.i4036.pre-phi, align 8
  %3594 = add i64 %3583, -248
  %3595 = add i64 %3585, 23
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3594 to i32*
  %3597 = load i32, i32* %3596, align 4
  %3598 = zext i32 %3597 to i64
  store i64 %3598, i64* %RSI.i3042, align 8
  %3599 = add i64 %3585, 22773
  %3600 = add i64 %3585, 28
  %3601 = load i64, i64* %6, align 8
  %3602 = add i64 %3601, -8
  %3603 = inttoptr i64 %3602 to i64*
  store i64 %3600, i64* %3603, align 8
  store i64 %3602, i64* %6, align 8
  store i64 %3599, i64* %3, align 8
  %call2_401cb2 = tail call %struct.Memory* @sub_407590._Z22test_hoisted_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3599, %struct.Memory* %call2_401c96)
  %3604 = load i64, i64* %RBP.i, align 8
  %3605 = add i64 %3604, -68
  %3606 = load i64, i64* %3, align 8
  %3607 = add i64 %3606, 3
  store i64 %3607, i64* %3, align 8
  %3608 = inttoptr i64 %3605 to i32*
  %3609 = load i32, i32* %3608, align 4
  %3610 = zext i32 %3609 to i64
  store i64 %3610, i64* %RDX.i4028, align 8
  %3611 = add i64 %3604, -72
  %3612 = add i64 %3606, 6
  store i64 %3612, i64* %3, align 8
  %3613 = inttoptr i64 %3611 to i32*
  %3614 = load i32, i32* %3613, align 4
  %3615 = zext i32 %3614 to i64
  store i64 %3615, i64* %RCX.i4032, align 8
  %3616 = add i64 %3604, -76
  %3617 = add i64 %3606, 10
  store i64 %3617, i64* %3, align 8
  %3618 = inttoptr i64 %3616 to i32*
  %3619 = load i32, i32* %3618, align 4
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %242, align 8
  %3621 = add i64 %3604, -80
  %3622 = add i64 %3606, 14
  store i64 %3622, i64* %3, align 8
  %3623 = inttoptr i64 %3621 to i32*
  %3624 = load i32, i32* %3623, align 4
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %474, align 8
  %3626 = load i64, i64* %6, align 8
  store i64 %3626, i64* %RDI.i4036.pre-phi, align 8
  %3627 = add i64 %3606, 24
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i64*
  store i64 4277297, i64* %3628, align 8
  %3629 = load i64, i64* %RBP.i, align 8
  %3630 = add i64 %3629, -312
  %3631 = load i64, i64* %3, align 8
  %3632 = add i64 %3631, 7
  store i64 %3632, i64* %3, align 8
  %3633 = inttoptr i64 %3630 to i64*
  %3634 = load i64, i64* %3633, align 8
  store i64 %3634, i64* %RDI.i4036.pre-phi, align 8
  %3635 = add i64 %3629, -248
  %3636 = add i64 %3631, 13
  store i64 %3636, i64* %3, align 8
  %3637 = inttoptr i64 %3635 to i32*
  %3638 = load i32, i32* %3637, align 4
  %3639 = zext i32 %3638 to i64
  store i64 %3639, i64* %RSI.i3042, align 8
  %3640 = add i64 %3631, 22897
  %3641 = add i64 %3631, 18
  %3642 = load i64, i64* %6, align 8
  %3643 = add i64 %3642, -8
  %3644 = inttoptr i64 %3643 to i64*
  store i64 %3641, i64* %3644, align 8
  store i64 %3643, i64* %6, align 8
  store i64 %3640, i64* %3, align 8
  %call2_401cdc = tail call %struct.Memory* @sub_407640._Z14test_variable4Ii28custom_add_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3640, %struct.Memory* %call2_401cb2)
  %3645 = load i64, i64* %RBP.i, align 8
  %3646 = add i64 %3645, -68
  %3647 = load i64, i64* %3, align 8
  %3648 = add i64 %3647, 3
  store i64 %3648, i64* %3, align 8
  %3649 = inttoptr i64 %3646 to i32*
  %3650 = load i32, i32* %3649, align 4
  %3651 = zext i32 %3650 to i64
  store i64 %3651, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414451_type* @G__0x414451 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414451_type* @G__0x414451 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3652 = add i64 %3645, -312
  %3653 = add i64 %3647, 17
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i64*
  %3655 = load i64, i64* %3654, align 8
  store i64 %3655, i64* %RDI.i4036.pre-phi, align 8
  %3656 = add i64 %3645, -248
  %3657 = add i64 %3647, 23
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RSI.i3042, align 8
  %3661 = add i64 %3647, 23087
  %3662 = add i64 %3647, 28
  %3663 = load i64, i64* %6, align 8
  %3664 = add i64 %3663, -8
  %3665 = inttoptr i64 %3664 to i64*
  store i64 %3662, i64* %3665, align 8
  store i64 %3664, i64* %6, align 8
  store i64 %3661, i64* %3, align 8
  %call2_401cf8 = tail call %struct.Memory* @sub_407710._Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3661, %struct.Memory* %call2_401cdc)
  %3666 = load i64, i64* %RBP.i, align 8
  %3667 = add i64 %3666, -68
  %3668 = load i64, i64* %3, align 8
  %3669 = add i64 %3668, 3
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3667 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = zext i32 %3671 to i64
  store i64 %3672, i64* %RDX.i4028, align 8
  %3673 = add i64 %3666, -72
  %3674 = add i64 %3668, 6
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = zext i32 %3676 to i64
  store i64 %3677, i64* %RCX.i4032, align 8
  %3678 = add i64 %3666, -76
  %3679 = add i64 %3668, 10
  store i64 %3679, i64* %3, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %242, align 8
  %3683 = add i64 %3666, -80
  %3684 = add i64 %3668, 14
  store i64 %3684, i64* %3, align 8
  %3685 = inttoptr i64 %3683 to i32*
  %3686 = load i32, i32* %3685, align 4
  %3687 = zext i32 %3686 to i64
  store i64 %3687, i64* %474, align 8
  %3688 = load i64, i64* %6, align 8
  store i64 %3688, i64* %RDI.i4036.pre-phi, align 8
  %3689 = add i64 %3668, 24
  store i64 %3689, i64* %3, align 8
  %3690 = inttoptr i64 %3688 to i64*
  store i64 4277356, i64* %3690, align 8
  %3691 = load i64, i64* %RBP.i, align 8
  %3692 = add i64 %3691, -312
  %3693 = load i64, i64* %3, align 8
  %3694 = add i64 %3693, 7
  store i64 %3694, i64* %3, align 8
  %3695 = inttoptr i64 %3692 to i64*
  %3696 = load i64, i64* %3695, align 8
  store i64 %3696, i64* %RDI.i4036.pre-phi, align 8
  %3697 = add i64 %3691, -248
  %3698 = add i64 %3693, 13
  store i64 %3698, i64* %3, align 8
  %3699 = inttoptr i64 %3697 to i32*
  %3700 = load i32, i32* %3699, align 4
  %3701 = zext i32 %3700 to i64
  store i64 %3701, i64* %RSI.i3042, align 8
  %3702 = add i64 %3693, 23195
  %3703 = add i64 %3693, 18
  %3704 = load i64, i64* %6, align 8
  %3705 = add i64 %3704, -8
  %3706 = inttoptr i64 %3705 to i64*
  store i64 %3703, i64* %3706, align 8
  store i64 %3705, i64* %6, align 8
  store i64 %3702, i64* %3, align 8
  %call2_401d22 = tail call %struct.Memory* @sub_4077b0._Z14test_variable4Ii28custom_sub_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3702, %struct.Memory* %call2_401cf8)
  %3707 = load i64, i64* %RBP.i, align 8
  %3708 = add i64 %3707, -68
  %3709 = load i64, i64* %3, align 8
  %3710 = add i64 %3709, 3
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3708 to i32*
  %3712 = load i32, i32* %3711, align 4
  %3713 = zext i32 %3712 to i64
  store i64 %3713, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414491_type* @G__0x414491 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414491_type* @G__0x414491 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3714 = add i64 %3707, -312
  %3715 = add i64 %3709, 17
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3714 to i64*
  %3717 = load i64, i64* %3716, align 8
  store i64 %3717, i64* %RDI.i4036.pre-phi, align 8
  %3718 = add i64 %3707, -248
  %3719 = add i64 %3709, 23
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3718 to i32*
  %3721 = load i32, i32* %3720, align 4
  %3722 = zext i32 %3721 to i64
  store i64 %3722, i64* %RSI.i3042, align 8
  %3723 = add i64 %3709, 23385
  %3724 = add i64 %3709, 28
  %3725 = load i64, i64* %6, align 8
  %3726 = add i64 %3725, -8
  %3727 = inttoptr i64 %3726 to i64*
  store i64 %3724, i64* %3727, align 8
  store i64 %3726, i64* %6, align 8
  store i64 %3723, i64* %3, align 8
  %call2_401d3e = tail call %struct.Memory* @sub_407880._Z14test_variable1Ii24custom_multiply_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3723, %struct.Memory* %call2_401d22)
  %3728 = load i64, i64* %RBP.i, align 8
  %3729 = add i64 %3728, -68
  %3730 = load i64, i64* %3, align 8
  %3731 = add i64 %3730, 3
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3729 to i32*
  %3733 = load i32, i32* %3732, align 4
  %3734 = zext i32 %3733 to i64
  store i64 %3734, i64* %RDX.i4028, align 8
  %3735 = add i64 %3728, -72
  %3736 = add i64 %3730, 6
  store i64 %3736, i64* %3, align 8
  %3737 = inttoptr i64 %3735 to i32*
  %3738 = load i32, i32* %3737, align 4
  %3739 = zext i32 %3738 to i64
  store i64 %3739, i64* %RCX.i4032, align 8
  %3740 = add i64 %3728, -76
  %3741 = add i64 %3730, 10
  store i64 %3741, i64* %3, align 8
  %3742 = inttoptr i64 %3740 to i32*
  %3743 = load i32, i32* %3742, align 4
  %3744 = zext i32 %3743 to i64
  store i64 %3744, i64* %242, align 8
  %3745 = add i64 %3728, -80
  %3746 = add i64 %3730, 14
  store i64 %3746, i64* %3, align 8
  %3747 = inttoptr i64 %3745 to i32*
  %3748 = load i32, i32* %3747, align 4
  %3749 = zext i32 %3748 to i64
  store i64 %3749, i64* %474, align 8
  %3750 = load i64, i64* %6, align 8
  store i64 %3750, i64* %RDI.i4036.pre-phi, align 8
  %3751 = add i64 %3730, 24
  store i64 %3751, i64* %3, align 8
  %3752 = inttoptr i64 %3750 to i64*
  store i64 4277420, i64* %3752, align 8
  %3753 = load i64, i64* %RBP.i, align 8
  %3754 = add i64 %3753, -312
  %3755 = load i64, i64* %3, align 8
  %3756 = add i64 %3755, 7
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3754 to i64*
  %3758 = load i64, i64* %3757, align 8
  store i64 %3758, i64* %RDI.i4036.pre-phi, align 8
  %3759 = add i64 %3753, -248
  %3760 = add i64 %3755, 13
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i32*
  %3762 = load i32, i32* %3761, align 4
  %3763 = zext i32 %3762 to i64
  store i64 %3763, i64* %RSI.i3042, align 8
  %3764 = add i64 %3755, 23493
  %3765 = add i64 %3755, 18
  %3766 = load i64, i64* %6, align 8
  %3767 = add i64 %3766, -8
  %3768 = inttoptr i64 %3767 to i64*
  store i64 %3765, i64* %3768, align 8
  store i64 %3767, i64* %6, align 8
  store i64 %3764, i64* %3, align 8
  %call2_401d68 = tail call %struct.Memory* @sub_407920._Z14test_variable4Ii33custom_multiply_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3764, %struct.Memory* %call2_401d3e)
  %3769 = load i64, i64* %RBP.i, align 8
  %3770 = add i64 %3769, -68
  %3771 = load i64, i64* %3, align 8
  %3772 = add i64 %3771, 3
  store i64 %3772, i64* %3, align 8
  %3773 = inttoptr i64 %3770 to i32*
  %3774 = load i32, i32* %3773, align 4
  %3775 = zext i32 %3774 to i64
  store i64 %3775, i64* %RDX.i4028, align 8
  %3776 = add i64 %3769, -72
  %3777 = add i64 %3771, 6
  store i64 %3777, i64* %3, align 8
  %3778 = inttoptr i64 %3776 to i32*
  %3779 = load i32, i32* %3778, align 4
  %3780 = zext i32 %3779 to i64
  store i64 %3780, i64* %RCX.i4032, align 8
  %3781 = add i64 %3769, -76
  %3782 = add i64 %3771, 10
  store i64 %3782, i64* %3, align 8
  %3783 = inttoptr i64 %3781 to i32*
  %3784 = load i32, i32* %3783, align 4
  %3785 = zext i32 %3784 to i64
  store i64 %3785, i64* %242, align 8
  %3786 = add i64 %3769, -80
  %3787 = add i64 %3771, 14
  store i64 %3787, i64* %3, align 8
  %3788 = inttoptr i64 %3786 to i32*
  %3789 = load i32, i32* %3788, align 4
  %3790 = zext i32 %3789 to i64
  store i64 %3790, i64* %474, align 8
  %3791 = load i64, i64* %6, align 8
  store i64 %3791, i64* %RDI.i4036.pre-phi, align 8
  %3792 = add i64 %3771, 24
  store i64 %3792, i64* %3, align 8
  %3793 = inttoptr i64 %3791 to i64*
  store i64 4277458, i64* %3793, align 8
  %3794 = load i64, i64* %RBP.i, align 8
  %3795 = add i64 %3794, -312
  %3796 = load i64, i64* %3, align 8
  %3797 = add i64 %3796, 7
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3795 to i64*
  %3799 = load i64, i64* %3798, align 8
  store i64 %3799, i64* %RDI.i4036.pre-phi, align 8
  %3800 = add i64 %3794, -248
  %3801 = add i64 %3796, 13
  store i64 %3801, i64* %3, align 8
  %3802 = inttoptr i64 %3800 to i32*
  %3803 = load i32, i32* %3802, align 4
  %3804 = zext i32 %3803 to i64
  store i64 %3804, i64* %RSI.i3042, align 8
  %3805 = add i64 %3796, 23659
  %3806 = add i64 %3796, 18
  %3807 = load i64, i64* %6, align 8
  %3808 = add i64 %3807, -8
  %3809 = inttoptr i64 %3808 to i64*
  store i64 %3806, i64* %3809, align 8
  store i64 %3808, i64* %6, align 8
  store i64 %3805, i64* %3, align 8
  %call2_401d92 = tail call %struct.Memory* @sub_4079f0._Z14test_variable4Ii34custom_multiply_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3805, %struct.Memory* %call2_401d68)
  %3810 = load i64, i64* %RBP.i, align 8
  %3811 = add i64 %3810, -68
  %3812 = load i64, i64* %3, align 8
  %3813 = add i64 %3812, 3
  store i64 %3813, i64* %3, align 8
  %3814 = inttoptr i64 %3811 to i32*
  %3815 = load i32, i32* %3814, align 4
  %3816 = zext i32 %3815 to i64
  store i64 %3816, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4144f9_type* @G__0x4144f9 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4144f9_type* @G__0x4144f9 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3817 = add i64 %3810, -312
  %3818 = add i64 %3812, 17
  store i64 %3818, i64* %3, align 8
  %3819 = inttoptr i64 %3817 to i64*
  %3820 = load i64, i64* %3819, align 8
  store i64 %3820, i64* %RDI.i4036.pre-phi, align 8
  %3821 = add i64 %3810, -248
  %3822 = add i64 %3812, 23
  store i64 %3822, i64* %3, align 8
  %3823 = inttoptr i64 %3821 to i32*
  %3824 = load i32, i32* %3823, align 4
  %3825 = zext i32 %3824 to i64
  store i64 %3825, i64* %RSI.i3042, align 8
  %3826 = add i64 %3812, 23849
  %3827 = add i64 %3812, 28
  %3828 = load i64, i64* %6, align 8
  %3829 = add i64 %3828, -8
  %3830 = inttoptr i64 %3829 to i64*
  store i64 %3827, i64* %3830, align 8
  store i64 %3829, i64* %6, align 8
  store i64 %3826, i64* %3, align 8
  %call2_401dae = tail call %struct.Memory* @sub_407ac0._Z14test_variable1Ii22custom_divide_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3826, %struct.Memory* %call2_401d92)
  %3831 = load i64, i64* %RBP.i, align 8
  %3832 = add i64 %3831, -68
  %3833 = load i64, i64* %3, align 8
  %3834 = add i64 %3833, 3
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3832 to i32*
  %3836 = load i32, i32* %3835, align 4
  %3837 = zext i32 %3836 to i64
  store i64 %3837, i64* %RDX.i4028, align 8
  %3838 = add i64 %3831, -72
  %3839 = add i64 %3833, 6
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3838 to i32*
  %3841 = load i32, i32* %3840, align 4
  %3842 = zext i32 %3841 to i64
  store i64 %3842, i64* %RCX.i4032, align 8
  %3843 = add i64 %3831, -76
  %3844 = add i64 %3833, 10
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3843 to i32*
  %3846 = load i32, i32* %3845, align 4
  %3847 = zext i32 %3846 to i64
  store i64 %3847, i64* %242, align 8
  %3848 = add i64 %3831, -80
  %3849 = add i64 %3833, 14
  store i64 %3849, i64* %3, align 8
  %3850 = inttoptr i64 %3848 to i32*
  %3851 = load i32, i32* %3850, align 4
  %3852 = zext i32 %3851 to i64
  store i64 %3852, i64* %474, align 8
  %3853 = load i64, i64* %6, align 8
  store i64 %3853, i64* %RDI.i4036.pre-phi, align 8
  %3854 = add i64 %3833, 24
  store i64 %3854, i64* %3, align 8
  %3855 = inttoptr i64 %3853 to i64*
  store i64 4277522, i64* %3855, align 8
  %3856 = load i64, i64* %RBP.i, align 8
  %3857 = add i64 %3856, -312
  %3858 = load i64, i64* %3, align 8
  %3859 = add i64 %3858, 7
  store i64 %3859, i64* %3, align 8
  %3860 = inttoptr i64 %3857 to i64*
  %3861 = load i64, i64* %3860, align 8
  store i64 %3861, i64* %RDI.i4036.pre-phi, align 8
  %3862 = add i64 %3856, -248
  %3863 = add i64 %3858, 13
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i32*
  %3865 = load i32, i32* %3864, align 4
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RSI.i3042, align 8
  %3867 = add i64 %3858, 23957
  %3868 = add i64 %3858, 18
  %3869 = load i64, i64* %6, align 8
  %3870 = add i64 %3869, -8
  %3871 = inttoptr i64 %3870 to i64*
  store i64 %3868, i64* %3871, align 8
  store i64 %3870, i64* %6, align 8
  store i64 %3867, i64* %3, align 8
  %call2_401dd8 = tail call %struct.Memory* @sub_407b60._Z14test_variable4Ii31custom_divide_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3867, %struct.Memory* %call2_401dae)
  %3872 = load i64, i64* %RBP.i, align 8
  %3873 = add i64 %3872, -68
  %3874 = load i64, i64* %3, align 8
  %3875 = add i64 %3874, 3
  store i64 %3875, i64* %3, align 8
  %3876 = inttoptr i64 %3873 to i32*
  %3877 = load i32, i32* %3876, align 4
  %3878 = zext i32 %3877 to i64
  store i64 %3878, i64* %RDX.i4028, align 8
  %3879 = add i64 %3872, -72
  %3880 = add i64 %3874, 6
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3879 to i32*
  %3882 = load i32, i32* %3881, align 4
  %3883 = zext i32 %3882 to i64
  store i64 %3883, i64* %RCX.i4032, align 8
  %3884 = add i64 %3872, -76
  %3885 = add i64 %3874, 10
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i32*
  %3887 = load i32, i32* %3886, align 4
  %3888 = zext i32 %3887 to i64
  store i64 %3888, i64* %242, align 8
  %3889 = add i64 %3872, -80
  %3890 = add i64 %3874, 14
  store i64 %3890, i64* %3, align 8
  %3891 = inttoptr i64 %3889 to i32*
  %3892 = load i32, i32* %3891, align 4
  %3893 = zext i32 %3892 to i64
  store i64 %3893, i64* %474, align 8
  %3894 = load i64, i64* %6, align 8
  store i64 %3894, i64* %RDI.i4036.pre-phi, align 8
  %3895 = add i64 %3874, 24
  store i64 %3895, i64* %3, align 8
  %3896 = inttoptr i64 %3894 to i64*
  store i64 4277557, i64* %3896, align 8
  %3897 = load i64, i64* %RBP.i, align 8
  %3898 = add i64 %3897, -312
  %3899 = load i64, i64* %3, align 8
  %3900 = add i64 %3899, 7
  store i64 %3900, i64* %3, align 8
  %3901 = inttoptr i64 %3898 to i64*
  %3902 = load i64, i64* %3901, align 8
  store i64 %3902, i64* %RDI.i4036.pre-phi, align 8
  %3903 = add i64 %3897, -248
  %3904 = add i64 %3899, 13
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i32*
  %3906 = load i32, i32* %3905, align 4
  %3907 = zext i32 %3906 to i64
  store i64 %3907, i64* %RSI.i3042, align 8
  %3908 = add i64 %3899, 24123
  %3909 = add i64 %3899, 18
  %3910 = load i64, i64* %6, align 8
  %3911 = add i64 %3910, -8
  %3912 = inttoptr i64 %3911 to i64*
  store i64 %3909, i64* %3912, align 8
  store i64 %3911, i64* %6, align 8
  store i64 %3908, i64* %3, align 8
  %call2_401e02 = tail call %struct.Memory* @sub_407c30._Z14test_variable4Ii32custom_divide_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3908, %struct.Memory* %call2_401dd8)
  %3913 = load i64, i64* %RBP.i, align 8
  %3914 = add i64 %3913, -68
  %3915 = load i64, i64* %3, align 8
  %3916 = add i64 %3915, 3
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3914 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RDX.i4028, align 8
  %3920 = add i64 %3913, -72
  %3921 = add i64 %3915, 6
  store i64 %3921, i64* %3, align 8
  %3922 = inttoptr i64 %3920 to i32*
  %3923 = load i32, i32* %3922, align 4
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RCX.i4032, align 8
  %3925 = add i64 %3913, -76
  %3926 = add i64 %3915, 10
  store i64 %3926, i64* %3, align 8
  %3927 = inttoptr i64 %3925 to i32*
  %3928 = load i32, i32* %3927, align 4
  %3929 = zext i32 %3928 to i64
  store i64 %3929, i64* %242, align 8
  %3930 = add i64 %3913, -80
  %3931 = add i64 %3915, 14
  store i64 %3931, i64* %3, align 8
  %3932 = inttoptr i64 %3930 to i32*
  %3933 = load i32, i32* %3932, align 4
  %3934 = zext i32 %3933 to i64
  store i64 %3934, i64* %474, align 8
  %3935 = load i64, i64* %6, align 8
  store i64 %3935, i64* %RDI.i4036.pre-phi, align 8
  %3936 = add i64 %3915, 24
  store i64 %3936, i64* %3, align 8
  %3937 = inttoptr i64 %3935 to i64*
  store i64 4277593, i64* %3937, align 8
  %3938 = load i64, i64* %RBP.i, align 8
  %3939 = add i64 %3938, -312
  %3940 = load i64, i64* %3, align 8
  %3941 = add i64 %3940, 7
  store i64 %3941, i64* %3, align 8
  %3942 = inttoptr i64 %3939 to i64*
  %3943 = load i64, i64* %3942, align 8
  store i64 %3943, i64* %RDI.i4036.pre-phi, align 8
  %3944 = add i64 %3938, -248
  %3945 = add i64 %3940, 13
  store i64 %3945, i64* %3, align 8
  %3946 = inttoptr i64 %3944 to i32*
  %3947 = load i32, i32* %3946, align 4
  %3948 = zext i32 %3947 to i64
  store i64 %3948, i64* %RSI.i3042, align 8
  %3949 = add i64 %3940, 24289
  %3950 = add i64 %3940, 18
  %3951 = load i64, i64* %6, align 8
  %3952 = add i64 %3951, -8
  %3953 = inttoptr i64 %3952 to i64*
  store i64 %3950, i64* %3953, align 8
  store i64 %3952, i64* %6, align 8
  store i64 %3949, i64* %3, align 8
  %call2_401e2c = tail call %struct.Memory* @sub_407d00._Z14test_variable4Ii30custom_mixed_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3949, %struct.Memory* %call2_401e02)
  %3954 = load i64, i64* %RBP.i, align 8
  %3955 = add i64 %3954, -68
  %3956 = load i64, i64* %3, align 8
  %3957 = add i64 %3956, 3
  store i64 %3957, i64* %3, align 8
  %3958 = inttoptr i64 %3955 to i32*
  %3959 = load i32, i32* %3958, align 4
  %3960 = zext i32 %3959 to i64
  store i64 %3960, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41457a_type* @G__0x41457a to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41457a_type* @G__0x41457a to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3961 = add i64 %3954, -312
  %3962 = add i64 %3956, 17
  store i64 %3962, i64* %3, align 8
  %3963 = inttoptr i64 %3961 to i64*
  %3964 = load i64, i64* %3963, align 8
  store i64 %3964, i64* %RDI.i4036.pre-phi, align 8
  %3965 = add i64 %3954, -248
  %3966 = add i64 %3956, 23
  store i64 %3966, i64* %3, align 8
  %3967 = inttoptr i64 %3965 to i32*
  %3968 = load i32, i32* %3967, align 4
  %3969 = zext i32 %3968 to i64
  store i64 %3969, i64* %RSI.i3042, align 8
  %3970 = add i64 %3956, 24479
  %3971 = add i64 %3956, 28
  %3972 = load i64, i64* %6, align 8
  %3973 = add i64 %3972, -8
  %3974 = inttoptr i64 %3973 to i64*
  store i64 %3971, i64* %3974, align 8
  store i64 %3973, i64* %6, align 8
  store i64 %3970, i64* %3, align 8
  %call2_401e48 = tail call %struct.Memory* @sub_407dd0._Z14test_variable1Ii19custom_variable_andIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3970, %struct.Memory* %call2_401e2c)
  %3975 = load i64, i64* %RBP.i, align 8
  %3976 = add i64 %3975, -68
  %3977 = load i64, i64* %3, align 8
  %3978 = add i64 %3977, 3
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3976 to i32*
  %3980 = load i32, i32* %3979, align 4
  %3981 = zext i32 %3980 to i64
  store i64 %3981, i64* %RDX.i4028, align 8
  %3982 = add i64 %3975, -72
  %3983 = add i64 %3977, 6
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3982 to i32*
  %3985 = load i32, i32* %3984, align 4
  %3986 = zext i32 %3985 to i64
  store i64 %3986, i64* %RCX.i4032, align 8
  %3987 = add i64 %3975, -76
  %3988 = add i64 %3977, 10
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3987 to i32*
  %3990 = load i32, i32* %3989, align 4
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %242, align 8
  %3992 = add i64 %3975, -80
  %3993 = add i64 %3977, 14
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to i32*
  %3995 = load i32, i32* %3994, align 4
  %3996 = zext i32 %3995 to i64
  store i64 %3996, i64* %474, align 8
  %3997 = load i64, i64* %6, align 8
  store i64 %3997, i64* %RDI.i4036.pre-phi, align 8
  %3998 = add i64 %3977, 24
  store i64 %3998, i64* %3, align 8
  %3999 = inttoptr i64 %3997 to i64*
  store i64 4277648, i64* %3999, align 8
  %4000 = load i64, i64* %RBP.i, align 8
  %4001 = add i64 %4000, -312
  %4002 = load i64, i64* %3, align 8
  %4003 = add i64 %4002, 7
  store i64 %4003, i64* %3, align 8
  %4004 = inttoptr i64 %4001 to i64*
  %4005 = load i64, i64* %4004, align 8
  store i64 %4005, i64* %RDI.i4036.pre-phi, align 8
  %4006 = add i64 %4000, -248
  %4007 = add i64 %4002, 13
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i32*
  %4009 = load i32, i32* %4008, align 4
  %4010 = zext i32 %4009 to i64
  store i64 %4010, i64* %RSI.i3042, align 8
  %4011 = add i64 %4002, 24587
  %4012 = add i64 %4002, 18
  %4013 = load i64, i64* %6, align 8
  %4014 = add i64 %4013, -8
  %4015 = inttoptr i64 %4014 to i64*
  store i64 %4012, i64* %4015, align 8
  store i64 %4014, i64* %6, align 8
  store i64 %4011, i64* %3, align 8
  %call2_401e72 = tail call %struct.Memory* @sub_407e70._Z14test_variable4Ii28custom_multiple_variable_andIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4011, %struct.Memory* %call2_401e48)
  %4016 = load i64, i64* %RBP.i, align 8
  %4017 = add i64 %4016, -68
  %4018 = load i64, i64* %3, align 8
  %4019 = add i64 %4018, 3
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4017 to i32*
  %4021 = load i32, i32* %4020, align 4
  %4022 = zext i32 %4021 to i64
  store i64 %4022, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145af_type* @G__0x4145af to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145af_type* @G__0x4145af to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4023 = add i64 %4016, -312
  %4024 = add i64 %4018, 17
  store i64 %4024, i64* %3, align 8
  %4025 = inttoptr i64 %4023 to i64*
  %4026 = load i64, i64* %4025, align 8
  store i64 %4026, i64* %RDI.i4036.pre-phi, align 8
  %4027 = add i64 %4016, -248
  %4028 = add i64 %4018, 23
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4027 to i32*
  %4030 = load i32, i32* %4029, align 4
  %4031 = zext i32 %4030 to i64
  store i64 %4031, i64* %RSI.i3042, align 8
  %4032 = add i64 %4018, 24777
  %4033 = add i64 %4018, 28
  %4034 = load i64, i64* %6, align 8
  %4035 = add i64 %4034, -8
  %4036 = inttoptr i64 %4035 to i64*
  store i64 %4033, i64* %4036, align 8
  store i64 %4035, i64* %6, align 8
  store i64 %4032, i64* %3, align 8
  %call2_401e8e = tail call %struct.Memory* @sub_407f40._Z14test_variable1Ii18custom_variable_orIiEEvPT_iS2_PKc(%struct.State* %0, i64 %4032, %struct.Memory* %call2_401e72)
  %4037 = load i64, i64* %RBP.i, align 8
  %4038 = add i64 %4037, -68
  %4039 = load i64, i64* %3, align 8
  %4040 = add i64 %4039, 3
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4038 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %RDX.i4028, align 8
  %4044 = add i64 %4037, -72
  %4045 = add i64 %4039, 6
  store i64 %4045, i64* %3, align 8
  %4046 = inttoptr i64 %4044 to i32*
  %4047 = load i32, i32* %4046, align 4
  %4048 = zext i32 %4047 to i64
  store i64 %4048, i64* %RCX.i4032, align 8
  %4049 = add i64 %4037, -76
  %4050 = add i64 %4039, 10
  store i64 %4050, i64* %3, align 8
  %4051 = inttoptr i64 %4049 to i32*
  %4052 = load i32, i32* %4051, align 4
  %4053 = zext i32 %4052 to i64
  store i64 %4053, i64* %242, align 8
  %4054 = add i64 %4037, -80
  %4055 = add i64 %4039, 14
  store i64 %4055, i64* %3, align 8
  %4056 = inttoptr i64 %4054 to i32*
  %4057 = load i32, i32* %4056, align 4
  %4058 = zext i32 %4057 to i64
  store i64 %4058, i64* %474, align 8
  %4059 = load i64, i64* %6, align 8
  store i64 %4059, i64* %RDI.i4036.pre-phi, align 8
  %4060 = add i64 %4039, 24
  store i64 %4060, i64* %3, align 8
  %4061 = inttoptr i64 %4059 to i64*
  store i64 4277700, i64* %4061, align 8
  %4062 = load i64, i64* %RBP.i, align 8
  %4063 = add i64 %4062, -312
  %4064 = load i64, i64* %3, align 8
  %4065 = add i64 %4064, 7
  store i64 %4065, i64* %3, align 8
  %4066 = inttoptr i64 %4063 to i64*
  %4067 = load i64, i64* %4066, align 8
  store i64 %4067, i64* %RDI.i4036.pre-phi, align 8
  %4068 = add i64 %4062, -248
  %4069 = add i64 %4064, 13
  store i64 %4069, i64* %3, align 8
  %4070 = inttoptr i64 %4068 to i32*
  %4071 = load i32, i32* %4070, align 4
  %4072 = zext i32 %4071 to i64
  store i64 %4072, i64* %RSI.i3042, align 8
  %4073 = add i64 %4064, 24885
  %4074 = add i64 %4064, 18
  %4075 = load i64, i64* %6, align 8
  %4076 = add i64 %4075, -8
  %4077 = inttoptr i64 %4076 to i64*
  store i64 %4074, i64* %4077, align 8
  store i64 %4076, i64* %6, align 8
  store i64 %4073, i64* %3, align 8
  %call2_401eb8 = tail call %struct.Memory* @sub_407fe0._Z14test_variable4Ii27custom_multiple_variable_orIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4073, %struct.Memory* %call2_401e8e)
  %4078 = load i64, i64* %RBP.i, align 8
  %4079 = add i64 %4078, -68
  %4080 = load i64, i64* %3, align 8
  %4081 = add i64 %4080, 3
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4079 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145e2_type* @G__0x4145e2 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145e2_type* @G__0x4145e2 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4085 = add i64 %4078, -312
  %4086 = add i64 %4080, 17
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i64*
  %4088 = load i64, i64* %4087, align 8
  store i64 %4088, i64* %RDI.i4036.pre-phi, align 8
  %4089 = add i64 %4078, -248
  %4090 = add i64 %4080, 23
  store i64 %4090, i64* %3, align 8
  %4091 = inttoptr i64 %4089 to i32*
  %4092 = load i32, i32* %4091, align 4
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %RSI.i3042, align 8
  %4094 = add i64 %4080, 25075
  %4095 = add i64 %4080, 28
  %4096 = load i64, i64* %6, align 8
  %4097 = add i64 %4096, -8
  %4098 = inttoptr i64 %4097 to i64*
  store i64 %4095, i64* %4098, align 8
  store i64 %4097, i64* %6, align 8
  store i64 %4094, i64* %3, align 8
  %call2_401ed4 = tail call %struct.Memory* @sub_4080b0._Z14test_variable1Ii19custom_variable_xorIiEEvPT_iS2_PKc(%struct.State* %0, i64 %4094, %struct.Memory* %call2_401eb8)
  %4099 = load i64, i64* %RBP.i, align 8
  %4100 = add i64 %4099, -68
  %4101 = load i64, i64* %3, align 8
  %4102 = add i64 %4101, 3
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4100 to i32*
  %4104 = load i32, i32* %4103, align 4
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RDX.i4028, align 8
  %4106 = add i64 %4099, -72
  %4107 = add i64 %4101, 6
  store i64 %4107, i64* %3, align 8
  %4108 = inttoptr i64 %4106 to i32*
  %4109 = load i32, i32* %4108, align 4
  %4110 = zext i32 %4109 to i64
  store i64 %4110, i64* %RCX.i4032, align 8
  %4111 = add i64 %4099, -76
  %4112 = add i64 %4101, 10
  store i64 %4112, i64* %3, align 8
  %4113 = inttoptr i64 %4111 to i32*
  %4114 = load i32, i32* %4113, align 4
  %4115 = zext i32 %4114 to i64
  store i64 %4115, i64* %242, align 8
  %4116 = add i64 %4099, -80
  %4117 = add i64 %4101, 14
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4116 to i32*
  %4119 = load i32, i32* %4118, align 4
  %4120 = zext i32 %4119 to i64
  store i64 %4120, i64* %474, align 8
  %4121 = load i64, i64* %6, align 8
  store i64 %4121, i64* %RDI.i4036.pre-phi, align 8
  %4122 = add i64 %4101, 24
  store i64 %4122, i64* %3, align 8
  %4123 = inttoptr i64 %4121 to i64*
  store i64 4277752, i64* %4123, align 8
  %4124 = load i64, i64* %RBP.i, align 8
  %4125 = add i64 %4124, -312
  %4126 = load i64, i64* %3, align 8
  %4127 = add i64 %4126, 7
  store i64 %4127, i64* %3, align 8
  %4128 = inttoptr i64 %4125 to i64*
  %4129 = load i64, i64* %4128, align 8
  store i64 %4129, i64* %RDI.i4036.pre-phi, align 8
  %4130 = add i64 %4124, -248
  %4131 = add i64 %4126, 13
  store i64 %4131, i64* %3, align 8
  %4132 = inttoptr i64 %4130 to i32*
  %4133 = load i32, i32* %4132, align 4
  %4134 = zext i32 %4133 to i64
  store i64 %4134, i64* %RSI.i3042, align 8
  %4135 = add i64 %4126, 25183
  %4136 = add i64 %4126, 18
  %4137 = load i64, i64* %6, align 8
  %4138 = add i64 %4137, -8
  %4139 = inttoptr i64 %4138 to i64*
  store i64 %4136, i64* %4139, align 8
  store i64 %4138, i64* %6, align 8
  store i64 %4135, i64* %3, align 8
  %call2_401efe = tail call %struct.Memory* @sub_408150._Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4135, %struct.Memory* %call2_401ed4)
  %4140 = load i64, i64* %3, align 8
  %4141 = load double, double* bitcast (%G_0x21817c__rip__4202252__type* @G_0x21817c__rip__4202252_ to double*), align 8
  %4142 = tail call double @llvm.trunc.f64(double %4141)
  %4143 = tail call double @llvm.fabs.f64(double %4142)
  %4144 = fcmp ogt double %4143, 0x43E0000000000000
  %4145 = fptosi double %4142 to i64
  %4146 = and i64 %4145, 4294967295
  %4147 = select i1 %4144, i64 0, i64 %4146
  store i64 %4147, i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %4148 = load i64, i64* %RBP.i, align 8
  %4149 = add i64 %4148, -328
  %4150 = add i64 %4140, 32
  store i64 %4150, i64* %3, align 8
  %4151 = inttoptr i64 %4149 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295) to i32) to i64), i64* %4151, align 8
  %4152 = load i32, i32* %EAX.i4015, align 4
  %4153 = zext i32 %4152 to i64
  %4154 = load i64, i64* %3, align 8
  store i64 %4153, i64* %RDX.i4028, align 8
  %4155 = add i64 %4154, 25341
  %4156 = add i64 %4154, 7
  %4157 = load i64, i64* %6, align 8
  %4158 = add i64 %4157, -8
  %4159 = inttoptr i64 %4158 to i64*
  store i64 %4156, i64* %4159, align 8
  store i64 %4158, i64* %6, align 8
  store i64 %4155, i64* %3, align 8
  %call2_401f25 = tail call %struct.Memory* @sub_408220._Z4fillIPjjEvT_S1_T0_(%struct.State* %0, i64 %4155, %struct.Memory* %call2_401efe)
  %4160 = load i64, i64* %RBP.i, align 8
  %4161 = add i64 %4160, -40
  %4162 = load i64, i64* %3, align 8
  %4163 = add i64 %4162, 6
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4161 to double*
  %4165 = load double, double* %4164, align 8
  %4166 = tail call double @llvm.trunc.f64(double %4165)
  %4167 = tail call double @llvm.fabs.f64(double %4166)
  %4168 = fcmp ogt double %4167, 0x43E0000000000000
  %4169 = fptosi double %4166 to i64
  %4170 = select i1 %4168, i64 -9223372036854775808, i64 %4169
  store i64 %4170, i64* %RSI.i3042, align 8
  %4171 = and i64 %4170, 4294967295
  store i64 %4171, i64* %RAX.i4030.pre-phi, align 8
  %4172 = add i64 %4160, -84
  %4173 = trunc i64 %4170 to i32
  %4174 = add i64 %4162, 11
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4172 to i32*
  store i32 %4173, i32* %4175, align 4
  %4176 = load i64, i64* %RBP.i, align 8
  %4177 = add i64 %4176, -84
  %4178 = load i64, i64* %3, align 8
  %4179 = add i64 %4178, 3
  store i64 %4179, i64* %3, align 8
  %4180 = inttoptr i64 %4177 to i32*
  %4181 = load i32, i32* %4180, align 4
  %4182 = shl i32 %4181, 1
  %4183 = zext i32 %4182 to i64
  store i64 %4183, i64* %RAX.i4030.pre-phi, align 8
  %4184 = icmp ult i32 %4182, %4181
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %26, align 1
  %4186 = and i32 %4182, 254
  %4187 = tail call i32 @llvm.ctpop.i32(i32 %4186)
  %4188 = trunc i32 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = xor i8 %4189, 1
  store i8 %4190, i8* %33, align 1
  %4191 = lshr i32 %4181, 3
  %4192 = trunc i32 %4191 to i8
  %4193 = and i8 %4192, 1
  store i8 %4193, i8* %39, align 1
  %4194 = icmp eq i32 %4182, 0
  %4195 = zext i1 %4194 to i8
  store i8 %4195, i8* %42, align 1
  %4196 = lshr i32 %4181, 30
  %4197 = and i32 %4196, 1
  %4198 = trunc i32 %4197 to i8
  store i8 %4198, i8* %45, align 1
  %4199 = lshr i32 %4181, 31
  %4200 = xor i32 %4197, %4199
  %4201 = trunc i32 %4200 to i8
  store i8 %4201, i8* %51, align 1
  %4202 = add i64 %4176, -88
  %4203 = add i64 %4178, 8
  store i64 %4203, i64* %3, align 8
  %4204 = inttoptr i64 %4202 to i32*
  store i32 %4182, i32* %4204, align 4
  %4205 = load i64, i64* %RBP.i, align 8
  %4206 = add i64 %4205, -84
  %4207 = load i64, i64* %3, align 8
  %4208 = add i64 %4207, 3
  store i64 %4208, i64* %3, align 8
  %4209 = inttoptr i64 %4206 to i32*
  %4210 = load i32, i32* %4209, align 4
  %4211 = add i32 %4210, 2
  %4212 = zext i32 %4211 to i64
  store i64 %4212, i64* %RAX.i4030.pre-phi, align 8
  %4213 = icmp ugt i32 %4210, -3
  %4214 = zext i1 %4213 to i8
  store i8 %4214, i8* %26, align 1
  %4215 = and i32 %4211, 255
  %4216 = tail call i32 @llvm.ctpop.i32(i32 %4215)
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  %4219 = xor i8 %4218, 1
  store i8 %4219, i8* %33, align 1
  %4220 = xor i32 %4210, %4211
  %4221 = lshr i32 %4220, 4
  %4222 = trunc i32 %4221 to i8
  %4223 = and i8 %4222, 1
  store i8 %4223, i8* %39, align 1
  %4224 = icmp eq i32 %4211, 0
  %4225 = zext i1 %4224 to i8
  store i8 %4225, i8* %42, align 1
  %4226 = lshr i32 %4211, 31
  %4227 = trunc i32 %4226 to i8
  store i8 %4227, i8* %45, align 1
  %4228 = lshr i32 %4210, 31
  %4229 = xor i32 %4226, %4228
  %4230 = add nuw nsw i32 %4229, %4226
  %4231 = icmp eq i32 %4230, 2
  %4232 = zext i1 %4231 to i8
  store i8 %4232, i8* %51, align 1
  %4233 = add i64 %4205, -92
  %4234 = add i64 %4207, 9
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i32*
  store i32 %4211, i32* %4235, align 4
  %4236 = load i64, i64* %RBP.i, align 8
  %4237 = add i64 %4236, -84
  %4238 = load i64, i64* %3, align 8
  %4239 = add i64 %4238, 3
  store i64 %4239, i64* %3, align 8
  %4240 = inttoptr i64 %4237 to i32*
  %4241 = load i32, i32* %4240, align 4
  %4242 = zext i32 %4241 to i64
  store i64 %4242, i64* %RAX.i4030.pre-phi, align 8
  %4243 = add i64 %4236, -88
  %4244 = add i64 %4238, 6
  store i64 %4244, i64* %3, align 8
  %4245 = inttoptr i64 %4243 to i32*
  %4246 = load i32, i32* %4245, align 4
  %4247 = zext i32 %4246 to i64
  store i64 %4247, i64* %RCX.i4032, align 8
  %4248 = add i64 %4236, -92
  %4249 = add i64 %4238, 9
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i32*
  %4251 = load i32, i32* %4250, align 4
  %4252 = zext i32 %4251 to i64
  store i64 %4252, i64* %RDX.i4028, align 8
  %4253 = add i64 %4236, -332
  %4254 = add i64 %4238, 15
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4253 to i32*
  store i32 %4241, i32* %4255, align 4
  %4256 = load i32, i32* %ECX.i3567, align 4
  %4257 = zext i32 %4256 to i64
  %4258 = load i64, i64* %3, align 8
  store i64 %4257, i64* %RAX.i4030.pre-phi, align 8
  %4259 = load i64, i64* %RBP.i, align 8
  %4260 = add i64 %4259, -268
  %4261 = add i64 %4258, 8
  store i64 %4261, i64* %3, align 8
  %4262 = inttoptr i64 %4260 to i32*
  %4263 = load i32, i32* %4262, align 4
  %4264 = zext i32 %4263 to i64
  store i64 %4264, i64* %RCX.i4032, align 8
  %4265 = add i64 %4259, -336
  %4266 = load i32, i32* %EDX.i4025, align 4
  %4267 = add i64 %4258, 14
  store i64 %4267, i64* %3, align 8
  %4268 = inttoptr i64 %4265 to i32*
  store i32 %4266, i32* %4268, align 4
  %4269 = load i32, i32* %ECX.i3567, align 4
  %4270 = zext i32 %4269 to i64
  %4271 = load i64, i64* %3, align 8
  store i64 %4270, i64* %RDX.i4028, align 8
  %4272 = load i64, i64* %RBP.i, align 8
  %4273 = add i64 %4272, -336
  %4274 = add i64 %4271, 9
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i32*
  %4276 = load i32, i32* %4275, align 4
  %4277 = zext i32 %4276 to i64
  store i64 %4277, i64* %242, align 8
  %4278 = add i64 %4271, 12
  store i64 %4278, i64* %3, align 8
  %4279 = load i32, i32* %372, align 8
  %4280 = zext i32 %4279 to i64
  %4281 = shl nuw i64 %4270, 32
  %4282 = or i64 %4281, %4280
  %4283 = udiv i64 %4282, %4277
  %4284 = and i64 %4283, 4294967295
  %4285 = icmp eq i64 %4283, %4284
  br i1 %4285, label %4288, label %4286

; <label>:4286:                                   ; preds = %routine_idivl__ecx.exit
  %4287 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4278, %struct.Memory* %call2_401f25)
  %.pre18 = load i64, i64* %RBP.i, align 8
  %.pre19 = load i64, i64* %3, align 8
  %.pre20 = load i32, i32* %EAX.i4015, align 4
  br label %routine_divl__r8d.exit

; <label>:4288:                                   ; preds = %routine_idivl__ecx.exit
  %4289 = urem i64 %4282, %4277
  %4290 = getelementptr inbounds %union.anon, %union.anon* %371, i64 0, i32 0
  store i64 %4283, i64* %4290, align 8
  store i64 %4289, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4291 = trunc i64 %4283 to i32
  br label %routine_divl__r8d.exit

routine_divl__r8d.exit:                           ; preds = %4288, %4286
  %4292 = phi i32 [ %.pre20, %4286 ], [ %4291, %4288 ]
  %4293 = phi i64 [ %.pre19, %4286 ], [ %4278, %4288 ]
  %4294 = phi i64 [ %.pre18, %4286 ], [ %4272, %4288 ]
  %4295 = phi %struct.Memory* [ %4287, %4286 ], [ %call2_401f25, %4288 ]
  %4296 = add i64 %4294, -332
  %4297 = add i64 %4293, 6
  store i64 %4297, i64* %3, align 8
  %4298 = inttoptr i64 %4296 to i32*
  %4299 = load i32, i32* %4298, align 4
  %4300 = add i32 %4292, %4299
  %4301 = zext i32 %4300 to i64
  store i64 %4301, i64* %RDX.i4028, align 8
  %4302 = icmp ult i32 %4300, %4299
  %4303 = icmp ult i32 %4300, %4292
  %4304 = or i1 %4302, %4303
  %4305 = zext i1 %4304 to i8
  store i8 %4305, i8* %26, align 1
  %4306 = and i32 %4300, 255
  %4307 = tail call i32 @llvm.ctpop.i32(i32 %4306)
  %4308 = trunc i32 %4307 to i8
  %4309 = and i8 %4308, 1
  %4310 = xor i8 %4309, 1
  store i8 %4310, i8* %33, align 1
  %4311 = xor i32 %4292, %4299
  %4312 = xor i32 %4311, %4300
  %4313 = lshr i32 %4312, 4
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  store i8 %4315, i8* %39, align 1
  %4316 = icmp eq i32 %4300, 0
  %4317 = zext i1 %4316 to i8
  store i8 %4317, i8* %42, align 1
  %4318 = lshr i32 %4300, 31
  %4319 = trunc i32 %4318 to i8
  store i8 %4319, i8* %45, align 1
  %4320 = lshr i32 %4299, 31
  %4321 = lshr i32 %4292, 31
  %4322 = xor i32 %4318, %4320
  %4323 = xor i32 %4318, %4321
  %4324 = add nuw nsw i32 %4322, %4323
  %4325 = icmp eq i32 %4324, 2
  %4326 = zext i1 %4325 to i8
  store i8 %4326, i8* %51, align 1
  %4327 = add i64 %4294, -96
  %4328 = add i64 %4293, 11
  store i64 %4328, i64* %3, align 8
  %4329 = inttoptr i64 %4327 to i32*
  store i32 %4300, i32* %4329, align 4
  %4330 = load i64, i64* %RBP.i, align 8
  %4331 = add i64 %4330, -84
  %4332 = load i64, i64* %3, align 8
  %4333 = add i64 %4332, 3
  store i64 %4333, i64* %3, align 8
  %4334 = inttoptr i64 %4331 to i32*
  %4335 = load i32, i32* %4334, align 4
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143fc_type* @G__0x4143fc to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143fc_type* @G__0x4143fc to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4337 = add i64 %4330, -328
  %4338 = add i64 %4332, 17
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i64*
  %4340 = load i64, i64* %4339, align 8
  store i64 %4340, i64* %RDI.i4036.pre-phi, align 8
  %4341 = add i64 %4330, -248
  %4342 = add i64 %4332, 23
  store i64 %4342, i64* %3, align 8
  %4343 = inttoptr i64 %4341 to i32*
  %4344 = load i32, i32* %4343, align 4
  %4345 = zext i32 %4344 to i64
  store i64 %4345, i64* %RSI.i3042, align 8
  %4346 = add i64 %4332, 25318
  %4347 = add i64 %4332, 28
  %4348 = load i64, i64* %6, align 8
  %4349 = add i64 %4348, -8
  %4350 = inttoptr i64 %4349 to i64*
  store i64 %4347, i64* %4350, align 8
  store i64 %4349, i64* %6, align 8
  store i64 %4346, i64* %3, align 8
  %call2_401f91 = tail call %struct.Memory* @sub_408260._Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4346, %struct.Memory* %4295)
  %4351 = load i64, i64* %RBP.i, align 8
  %4352 = add i64 %4351, -84
  %4353 = load i64, i64* %3, align 8
  %4354 = add i64 %4353, 3
  store i64 %4354, i64* %3, align 8
  %4355 = inttoptr i64 %4352 to i32*
  %4356 = load i32, i32* %4355, align 4
  %4357 = zext i32 %4356 to i64
  store i64 %4357, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414412_type* @G__0x414412 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414412_type* @G__0x414412 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4358 = add i64 %4351, -328
  %4359 = add i64 %4353, 17
  store i64 %4359, i64* %3, align 8
  %4360 = inttoptr i64 %4358 to i64*
  %4361 = load i64, i64* %4360, align 8
  store i64 %4361, i64* %RDI.i4036.pre-phi, align 8
  %4362 = add i64 %4351, -248
  %4363 = add i64 %4353, 23
  store i64 %4363, i64* %3, align 8
  %4364 = inttoptr i64 %4362 to i32*
  %4365 = load i32, i32* %4364, align 4
  %4366 = zext i32 %4365 to i64
  store i64 %4366, i64* %RSI.i3042, align 8
  %4367 = add i64 %4353, 25450
  %4368 = add i64 %4353, 28
  %4369 = load i64, i64* %6, align 8
  %4370 = add i64 %4369, -8
  %4371 = inttoptr i64 %4370 to i64*
  store i64 %4368, i64* %4371, align 8
  store i64 %4370, i64* %6, align 8
  store i64 %4367, i64* %3, align 8
  %call2_401fad = tail call %struct.Memory* @sub_408300._Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4367, %struct.Memory* %call2_401f91)
  %4372 = load i64, i64* %RBP.i, align 8
  %4373 = add i64 %4372, -84
  %4374 = load i64, i64* %3, align 8
  %4375 = add i64 %4374, 3
  store i64 %4375, i64* %3, align 8
  %4376 = inttoptr i64 %4373 to i32*
  %4377 = load i32, i32* %4376, align 4
  %4378 = zext i32 %4377 to i64
  store i64 %4378, i64* %RDX.i4028, align 8
  %4379 = add i64 %4372, -88
  %4380 = add i64 %4374, 6
  store i64 %4380, i64* %3, align 8
  %4381 = inttoptr i64 %4379 to i32*
  %4382 = load i32, i32* %4381, align 4
  %4383 = zext i32 %4382 to i64
  store i64 %4383, i64* %RCX.i4032, align 8
  %4384 = add i64 %4372, -92
  %4385 = add i64 %4374, 10
  store i64 %4385, i64* %3, align 8
  %4386 = inttoptr i64 %4384 to i32*
  %4387 = load i32, i32* %4386, align 4
  %4388 = zext i32 %4387 to i64
  store i64 %4388, i64* %242, align 8
  %4389 = add i64 %4372, -96
  %4390 = add i64 %4374, 14
  store i64 %4390, i64* %3, align 8
  %4391 = inttoptr i64 %4389 to i32*
  %4392 = load i32, i32* %4391, align 4
  %4393 = zext i32 %4392 to i64
  store i64 %4393, i64* %474, align 8
  %4394 = load i64, i64* %6, align 8
  store i64 %4394, i64* %RDI.i4036.pre-phi, align 8
  %4395 = add i64 %4374, 24
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i64*
  store i64 4277296, i64* %4396, align 8
  %4397 = load i64, i64* %RBP.i, align 8
  %4398 = add i64 %4397, -328
  %4399 = load i64, i64* %3, align 8
  %4400 = add i64 %4399, 7
  store i64 %4400, i64* %3, align 8
  %4401 = inttoptr i64 %4398 to i64*
  %4402 = load i64, i64* %4401, align 8
  store i64 %4402, i64* %RDI.i4036.pre-phi, align 8
  %4403 = add i64 %4397, -248
  %4404 = add i64 %4399, 13
  store i64 %4404, i64* %3, align 8
  %4405 = inttoptr i64 %4403 to i32*
  %4406 = load i32, i32* %4405, align 4
  %4407 = zext i32 %4406 to i64
  store i64 %4407, i64* %RSI.i3042, align 8
  %4408 = add i64 %4399, 25574
  %4409 = add i64 %4399, 18
  %4410 = load i64, i64* %6, align 8
  %4411 = add i64 %4410, -8
  %4412 = inttoptr i64 %4411 to i64*
  store i64 %4409, i64* %4412, align 8
  store i64 %4411, i64* %6, align 8
  store i64 %4408, i64* %3, align 8
  %call2_401fd7 = tail call %struct.Memory* @sub_4083b0._Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4408, %struct.Memory* %call2_401fad)
  %4413 = load i64, i64* %RBP.i, align 8
  %4414 = add i64 %4413, -84
  %4415 = load i64, i64* %3, align 8
  %4416 = add i64 %4415, 3
  store i64 %4416, i64* %3, align 8
  %4417 = inttoptr i64 %4414 to i32*
  %4418 = load i32, i32* %4417, align 4
  %4419 = zext i32 %4418 to i64
  store i64 %4419, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414450_type* @G__0x414450 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414450_type* @G__0x414450 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4420 = add i64 %4413, -328
  %4421 = add i64 %4415, 17
  store i64 %4421, i64* %3, align 8
  %4422 = inttoptr i64 %4420 to i64*
  %4423 = load i64, i64* %4422, align 8
  store i64 %4423, i64* %RDI.i4036.pre-phi, align 8
  %4424 = add i64 %4413, -248
  %4425 = add i64 %4415, 23
  store i64 %4425, i64* %3, align 8
  %4426 = inttoptr i64 %4424 to i32*
  %4427 = load i32, i32* %4426, align 4
  %4428 = zext i32 %4427 to i64
  store i64 %4428, i64* %RSI.i3042, align 8
  %4429 = add i64 %4415, 25764
  %4430 = add i64 %4415, 28
  %4431 = load i64, i64* %6, align 8
  %4432 = add i64 %4431, -8
  %4433 = inttoptr i64 %4432 to i64*
  store i64 %4430, i64* %4433, align 8
  store i64 %4432, i64* %6, align 8
  store i64 %4429, i64* %3, align 8
  %call2_401ff3 = tail call %struct.Memory* @sub_408480._Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4429, %struct.Memory* %call2_401fd7)
  %4434 = load i64, i64* %RBP.i, align 8
  %4435 = add i64 %4434, -84
  %4436 = load i64, i64* %3, align 8
  %4437 = add i64 %4436, 3
  store i64 %4437, i64* %3, align 8
  %4438 = inttoptr i64 %4435 to i32*
  %4439 = load i32, i32* %4438, align 4
  %4440 = zext i32 %4439 to i64
  store i64 %4440, i64* %RDX.i4028, align 8
  %4441 = add i64 %4434, -88
  %4442 = add i64 %4436, 6
  store i64 %4442, i64* %3, align 8
  %4443 = inttoptr i64 %4441 to i32*
  %4444 = load i32, i32* %4443, align 4
  %4445 = zext i32 %4444 to i64
  store i64 %4445, i64* %RCX.i4032, align 8
  %4446 = add i64 %4434, -92
  %4447 = add i64 %4436, 10
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4446 to i32*
  %4449 = load i32, i32* %4448, align 4
  %4450 = zext i32 %4449 to i64
  store i64 %4450, i64* %242, align 8
  %4451 = add i64 %4434, -96
  %4452 = add i64 %4436, 14
  store i64 %4452, i64* %3, align 8
  %4453 = inttoptr i64 %4451 to i32*
  %4454 = load i32, i32* %4453, align 4
  %4455 = zext i32 %4454 to i64
  store i64 %4455, i64* %474, align 8
  %4456 = load i64, i64* %6, align 8
  store i64 %4456, i64* %RDI.i4036.pre-phi, align 8
  %4457 = add i64 %4436, 24
  store i64 %4457, i64* %3, align 8
  %4458 = inttoptr i64 %4456 to i64*
  store i64 4277355, i64* %4458, align 8
  %4459 = load i64, i64* %RBP.i, align 8
  %4460 = add i64 %4459, -328
  %4461 = load i64, i64* %3, align 8
  %4462 = add i64 %4461, 7
  store i64 %4462, i64* %3, align 8
  %4463 = inttoptr i64 %4460 to i64*
  %4464 = load i64, i64* %4463, align 8
  store i64 %4464, i64* %RDI.i4036.pre-phi, align 8
  %4465 = add i64 %4459, -248
  %4466 = add i64 %4461, 13
  store i64 %4466, i64* %3, align 8
  %4467 = inttoptr i64 %4465 to i32*
  %4468 = load i32, i32* %4467, align 4
  %4469 = zext i32 %4468 to i64
  store i64 %4469, i64* %RSI.i3042, align 8
  %4470 = add i64 %4461, 25872
  %4471 = add i64 %4461, 18
  %4472 = load i64, i64* %6, align 8
  %4473 = add i64 %4472, -8
  %4474 = inttoptr i64 %4473 to i64*
  store i64 %4471, i64* %4474, align 8
  store i64 %4473, i64* %6, align 8
  store i64 %4470, i64* %3, align 8
  %call2_40201d = tail call %struct.Memory* @sub_408520._Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4470, %struct.Memory* %call2_401ff3)
  %4475 = load i64, i64* %RBP.i, align 8
  %4476 = add i64 %4475, -84
  %4477 = load i64, i64* %3, align 8
  %4478 = add i64 %4477, 3
  store i64 %4478, i64* %3, align 8
  %4479 = inttoptr i64 %4476 to i32*
  %4480 = load i32, i32* %4479, align 4
  %4481 = zext i32 %4480 to i64
  store i64 %4481, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414490_type* @G__0x414490 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414490_type* @G__0x414490 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4482 = add i64 %4475, -328
  %4483 = add i64 %4477, 17
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i64*
  %4485 = load i64, i64* %4484, align 8
  store i64 %4485, i64* %RDI.i4036.pre-phi, align 8
  %4486 = add i64 %4475, -248
  %4487 = add i64 %4477, 23
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4486 to i32*
  %4489 = load i32, i32* %4488, align 4
  %4490 = zext i32 %4489 to i64
  store i64 %4490, i64* %RSI.i3042, align 8
  %4491 = add i64 %4477, 26062
  %4492 = add i64 %4477, 28
  %4493 = load i64, i64* %6, align 8
  %4494 = add i64 %4493, -8
  %4495 = inttoptr i64 %4494 to i64*
  store i64 %4492, i64* %4495, align 8
  store i64 %4494, i64* %6, align 8
  store i64 %4491, i64* %3, align 8
  %call2_402039 = tail call %struct.Memory* @sub_4085f0._Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4491, %struct.Memory* %call2_40201d)
  %4496 = load i64, i64* %RBP.i, align 8
  %4497 = add i64 %4496, -84
  %4498 = load i64, i64* %3, align 8
  %4499 = add i64 %4498, 3
  store i64 %4499, i64* %3, align 8
  %4500 = inttoptr i64 %4497 to i32*
  %4501 = load i32, i32* %4500, align 4
  %4502 = zext i32 %4501 to i64
  store i64 %4502, i64* %RDX.i4028, align 8
  %4503 = add i64 %4496, -88
  %4504 = add i64 %4498, 6
  store i64 %4504, i64* %3, align 8
  %4505 = inttoptr i64 %4503 to i32*
  %4506 = load i32, i32* %4505, align 4
  %4507 = zext i32 %4506 to i64
  store i64 %4507, i64* %RCX.i4032, align 8
  %4508 = add i64 %4496, -92
  %4509 = add i64 %4498, 10
  store i64 %4509, i64* %3, align 8
  %4510 = inttoptr i64 %4508 to i32*
  %4511 = load i32, i32* %4510, align 4
  %4512 = zext i32 %4511 to i64
  store i64 %4512, i64* %242, align 8
  %4513 = add i64 %4496, -96
  %4514 = add i64 %4498, 14
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4513 to i32*
  %4516 = load i32, i32* %4515, align 4
  %4517 = zext i32 %4516 to i64
  store i64 %4517, i64* %474, align 8
  %4518 = load i64, i64* %6, align 8
  store i64 %4518, i64* %RDI.i4036.pre-phi, align 8
  %4519 = add i64 %4498, 24
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i64*
  store i64 4277419, i64* %4520, align 8
  %4521 = load i64, i64* %RBP.i, align 8
  %4522 = add i64 %4521, -328
  %4523 = load i64, i64* %3, align 8
  %4524 = add i64 %4523, 7
  store i64 %4524, i64* %3, align 8
  %4525 = inttoptr i64 %4522 to i64*
  %4526 = load i64, i64* %4525, align 8
  store i64 %4526, i64* %RDI.i4036.pre-phi, align 8
  %4527 = add i64 %4521, -248
  %4528 = add i64 %4523, 13
  store i64 %4528, i64* %3, align 8
  %4529 = inttoptr i64 %4527 to i32*
  %4530 = load i32, i32* %4529, align 4
  %4531 = zext i32 %4530 to i64
  store i64 %4531, i64* %RSI.i3042, align 8
  %4532 = add i64 %4523, 26170
  %4533 = add i64 %4523, 18
  %4534 = load i64, i64* %6, align 8
  %4535 = add i64 %4534, -8
  %4536 = inttoptr i64 %4535 to i64*
  store i64 %4533, i64* %4536, align 8
  store i64 %4535, i64* %6, align 8
  store i64 %4532, i64* %3, align 8
  %call2_402063 = tail call %struct.Memory* @sub_408690._Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4532, %struct.Memory* %call2_402039)
  %4537 = load i64, i64* %RBP.i, align 8
  %4538 = add i64 %4537, -84
  %4539 = load i64, i64* %3, align 8
  %4540 = add i64 %4539, 3
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4538 to i32*
  %4542 = load i32, i32* %4541, align 4
  %4543 = zext i32 %4542 to i64
  store i64 %4543, i64* %RDX.i4028, align 8
  %4544 = add i64 %4537, -88
  %4545 = add i64 %4539, 6
  store i64 %4545, i64* %3, align 8
  %4546 = inttoptr i64 %4544 to i32*
  %4547 = load i32, i32* %4546, align 4
  %4548 = zext i32 %4547 to i64
  store i64 %4548, i64* %RCX.i4032, align 8
  %4549 = add i64 %4537, -92
  %4550 = add i64 %4539, 10
  store i64 %4550, i64* %3, align 8
  %4551 = inttoptr i64 %4549 to i32*
  %4552 = load i32, i32* %4551, align 4
  %4553 = zext i32 %4552 to i64
  store i64 %4553, i64* %242, align 8
  %4554 = add i64 %4537, -96
  %4555 = add i64 %4539, 14
  store i64 %4555, i64* %3, align 8
  %4556 = inttoptr i64 %4554 to i32*
  %4557 = load i32, i32* %4556, align 4
  %4558 = zext i32 %4557 to i64
  store i64 %4558, i64* %474, align 8
  %4559 = load i64, i64* %6, align 8
  store i64 %4559, i64* %RDI.i4036.pre-phi, align 8
  %4560 = add i64 %4539, 24
  store i64 %4560, i64* %3, align 8
  %4561 = inttoptr i64 %4559 to i64*
  store i64 4277457, i64* %4561, align 8
  %4562 = load i64, i64* %RBP.i, align 8
  %4563 = add i64 %4562, -328
  %4564 = load i64, i64* %3, align 8
  %4565 = add i64 %4564, 7
  store i64 %4565, i64* %3, align 8
  %4566 = inttoptr i64 %4563 to i64*
  %4567 = load i64, i64* %4566, align 8
  store i64 %4567, i64* %RDI.i4036.pre-phi, align 8
  %4568 = add i64 %4562, -248
  %4569 = add i64 %4564, 13
  store i64 %4569, i64* %3, align 8
  %4570 = inttoptr i64 %4568 to i32*
  %4571 = load i32, i32* %4570, align 4
  %4572 = zext i32 %4571 to i64
  store i64 %4572, i64* %RSI.i3042, align 8
  %4573 = add i64 %4564, 26336
  %4574 = add i64 %4564, 18
  %4575 = load i64, i64* %6, align 8
  %4576 = add i64 %4575, -8
  %4577 = inttoptr i64 %4576 to i64*
  store i64 %4574, i64* %4577, align 8
  store i64 %4576, i64* %6, align 8
  store i64 %4573, i64* %3, align 8
  %call2_40208d = tail call %struct.Memory* @sub_408760._Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4573, %struct.Memory* %call2_402063)
  %4578 = load i64, i64* %RBP.i, align 8
  %4579 = add i64 %4578, -84
  %4580 = load i64, i64* %3, align 8
  %4581 = add i64 %4580, 3
  store i64 %4581, i64* %3, align 8
  %4582 = inttoptr i64 %4579 to i32*
  %4583 = load i32, i32* %4582, align 4
  %4584 = zext i32 %4583 to i64
  store i64 %4584, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4144f8_type* @G__0x4144f8 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4144f8_type* @G__0x4144f8 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4585 = add i64 %4578, -328
  %4586 = add i64 %4580, 17
  store i64 %4586, i64* %3, align 8
  %4587 = inttoptr i64 %4585 to i64*
  %4588 = load i64, i64* %4587, align 8
  store i64 %4588, i64* %RDI.i4036.pre-phi, align 8
  %4589 = add i64 %4578, -248
  %4590 = add i64 %4580, 23
  store i64 %4590, i64* %3, align 8
  %4591 = inttoptr i64 %4589 to i32*
  %4592 = load i32, i32* %4591, align 4
  %4593 = zext i32 %4592 to i64
  store i64 %4593, i64* %RSI.i3042, align 8
  %4594 = add i64 %4580, 26526
  %4595 = add i64 %4580, 28
  %4596 = load i64, i64* %6, align 8
  %4597 = add i64 %4596, -8
  %4598 = inttoptr i64 %4597 to i64*
  store i64 %4595, i64* %4598, align 8
  store i64 %4597, i64* %6, align 8
  store i64 %4594, i64* %3, align 8
  %call2_4020a9 = tail call %struct.Memory* @sub_408830._Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4594, %struct.Memory* %call2_40208d)
  %4599 = load i64, i64* %RBP.i, align 8
  %4600 = add i64 %4599, -84
  %4601 = load i64, i64* %3, align 8
  %4602 = add i64 %4601, 3
  store i64 %4602, i64* %3, align 8
  %4603 = inttoptr i64 %4600 to i32*
  %4604 = load i32, i32* %4603, align 4
  %4605 = zext i32 %4604 to i64
  store i64 %4605, i64* %RDX.i4028, align 8
  %4606 = add i64 %4599, -88
  %4607 = add i64 %4601, 6
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4606 to i32*
  %4609 = load i32, i32* %4608, align 4
  %4610 = zext i32 %4609 to i64
  store i64 %4610, i64* %RCX.i4032, align 8
  %4611 = add i64 %4599, -92
  %4612 = add i64 %4601, 10
  store i64 %4612, i64* %3, align 8
  %4613 = inttoptr i64 %4611 to i32*
  %4614 = load i32, i32* %4613, align 4
  %4615 = zext i32 %4614 to i64
  store i64 %4615, i64* %242, align 8
  %4616 = add i64 %4599, -96
  %4617 = add i64 %4601, 14
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %474, align 8
  %4621 = load i64, i64* %6, align 8
  store i64 %4621, i64* %RDI.i4036.pre-phi, align 8
  %4622 = add i64 %4601, 24
  store i64 %4622, i64* %3, align 8
  %4623 = inttoptr i64 %4621 to i64*
  store i64 4277521, i64* %4623, align 8
  %4624 = load i64, i64* %RBP.i, align 8
  %4625 = add i64 %4624, -328
  %4626 = load i64, i64* %3, align 8
  %4627 = add i64 %4626, 7
  store i64 %4627, i64* %3, align 8
  %4628 = inttoptr i64 %4625 to i64*
  %4629 = load i64, i64* %4628, align 8
  store i64 %4629, i64* %RDI.i4036.pre-phi, align 8
  %4630 = add i64 %4624, -248
  %4631 = add i64 %4626, 13
  store i64 %4631, i64* %3, align 8
  %4632 = inttoptr i64 %4630 to i32*
  %4633 = load i32, i32* %4632, align 4
  %4634 = zext i32 %4633 to i64
  store i64 %4634, i64* %RSI.i3042, align 8
  %4635 = add i64 %4626, 26634
  %4636 = add i64 %4626, 18
  %4637 = load i64, i64* %6, align 8
  %4638 = add i64 %4637, -8
  %4639 = inttoptr i64 %4638 to i64*
  store i64 %4636, i64* %4639, align 8
  store i64 %4638, i64* %6, align 8
  store i64 %4635, i64* %3, align 8
  %call2_4020d3 = tail call %struct.Memory* @sub_4088d0._Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4635, %struct.Memory* %call2_4020a9)
  %4640 = load i64, i64* %RBP.i, align 8
  %4641 = add i64 %4640, -84
  %4642 = load i64, i64* %3, align 8
  %4643 = add i64 %4642, 3
  store i64 %4643, i64* %3, align 8
  %4644 = inttoptr i64 %4641 to i32*
  %4645 = load i32, i32* %4644, align 4
  %4646 = zext i32 %4645 to i64
  store i64 %4646, i64* %RDX.i4028, align 8
  %4647 = add i64 %4640, -88
  %4648 = add i64 %4642, 6
  store i64 %4648, i64* %3, align 8
  %4649 = inttoptr i64 %4647 to i32*
  %4650 = load i32, i32* %4649, align 4
  %4651 = zext i32 %4650 to i64
  store i64 %4651, i64* %RCX.i4032, align 8
  %4652 = add i64 %4640, -92
  %4653 = add i64 %4642, 10
  store i64 %4653, i64* %3, align 8
  %4654 = inttoptr i64 %4652 to i32*
  %4655 = load i32, i32* %4654, align 4
  %4656 = zext i32 %4655 to i64
  store i64 %4656, i64* %242, align 8
  %4657 = add i64 %4640, -96
  %4658 = add i64 %4642, 14
  store i64 %4658, i64* %3, align 8
  %4659 = inttoptr i64 %4657 to i32*
  %4660 = load i32, i32* %4659, align 4
  %4661 = zext i32 %4660 to i64
  store i64 %4661, i64* %474, align 8
  %4662 = load i64, i64* %6, align 8
  store i64 %4662, i64* %RDI.i4036.pre-phi, align 8
  %4663 = add i64 %4642, 24
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4662 to i64*
  store i64 4277556, i64* %4664, align 8
  %4665 = load i64, i64* %RBP.i, align 8
  %4666 = add i64 %4665, -328
  %4667 = load i64, i64* %3, align 8
  %4668 = add i64 %4667, 7
  store i64 %4668, i64* %3, align 8
  %4669 = inttoptr i64 %4666 to i64*
  %4670 = load i64, i64* %4669, align 8
  store i64 %4670, i64* %RDI.i4036.pre-phi, align 8
  %4671 = add i64 %4665, -248
  %4672 = add i64 %4667, 13
  store i64 %4672, i64* %3, align 8
  %4673 = inttoptr i64 %4671 to i32*
  %4674 = load i32, i32* %4673, align 4
  %4675 = zext i32 %4674 to i64
  store i64 %4675, i64* %RSI.i3042, align 8
  %4676 = add i64 %4667, 26800
  %4677 = add i64 %4667, 18
  %4678 = load i64, i64* %6, align 8
  %4679 = add i64 %4678, -8
  %4680 = inttoptr i64 %4679 to i64*
  store i64 %4677, i64* %4680, align 8
  store i64 %4679, i64* %6, align 8
  store i64 %4676, i64* %3, align 8
  %call2_4020fd = tail call %struct.Memory* @sub_4089a0._Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4676, %struct.Memory* %call2_4020d3)
  %4681 = load i64, i64* %RBP.i, align 8
  %4682 = add i64 %4681, -84
  %4683 = load i64, i64* %3, align 8
  %4684 = add i64 %4683, 3
  store i64 %4684, i64* %3, align 8
  %4685 = inttoptr i64 %4682 to i32*
  %4686 = load i32, i32* %4685, align 4
  %4687 = zext i32 %4686 to i64
  store i64 %4687, i64* %RDX.i4028, align 8
  %4688 = add i64 %4681, -88
  %4689 = add i64 %4683, 6
  store i64 %4689, i64* %3, align 8
  %4690 = inttoptr i64 %4688 to i32*
  %4691 = load i32, i32* %4690, align 4
  %4692 = zext i32 %4691 to i64
  store i64 %4692, i64* %RCX.i4032, align 8
  %4693 = add i64 %4681, -92
  %4694 = add i64 %4683, 10
  store i64 %4694, i64* %3, align 8
  %4695 = inttoptr i64 %4693 to i32*
  %4696 = load i32, i32* %4695, align 4
  %4697 = zext i32 %4696 to i64
  store i64 %4697, i64* %242, align 8
  %4698 = add i64 %4681, -96
  %4699 = add i64 %4683, 14
  store i64 %4699, i64* %3, align 8
  %4700 = inttoptr i64 %4698 to i32*
  %4701 = load i32, i32* %4700, align 4
  %4702 = zext i32 %4701 to i64
  store i64 %4702, i64* %474, align 8
  %4703 = load i64, i64* %6, align 8
  store i64 %4703, i64* %RDI.i4036.pre-phi, align 8
  %4704 = add i64 %4683, 24
  store i64 %4704, i64* %3, align 8
  %4705 = inttoptr i64 %4703 to i64*
  store i64 4277592, i64* %4705, align 8
  %4706 = load i64, i64* %RBP.i, align 8
  %4707 = add i64 %4706, -328
  %4708 = load i64, i64* %3, align 8
  %4709 = add i64 %4708, 7
  store i64 %4709, i64* %3, align 8
  %4710 = inttoptr i64 %4707 to i64*
  %4711 = load i64, i64* %4710, align 8
  store i64 %4711, i64* %RDI.i4036.pre-phi, align 8
  %4712 = add i64 %4706, -248
  %4713 = add i64 %4708, 13
  store i64 %4713, i64* %3, align 8
  %4714 = inttoptr i64 %4712 to i32*
  %4715 = load i32, i32* %4714, align 4
  %4716 = zext i32 %4715 to i64
  store i64 %4716, i64* %RSI.i3042, align 8
  %4717 = add i64 %4708, 26966
  %4718 = add i64 %4708, 18
  %4719 = load i64, i64* %6, align 8
  %4720 = add i64 %4719, -8
  %4721 = inttoptr i64 %4720 to i64*
  store i64 %4718, i64* %4721, align 8
  store i64 %4720, i64* %6, align 8
  store i64 %4717, i64* %3, align 8
  %call2_402127 = tail call %struct.Memory* @sub_408a70._Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4717, %struct.Memory* %call2_4020fd)
  %4722 = load i64, i64* %RBP.i, align 8
  %4723 = add i64 %4722, -84
  %4724 = load i64, i64* %3, align 8
  %4725 = add i64 %4724, 3
  store i64 %4725, i64* %3, align 8
  %4726 = inttoptr i64 %4723 to i32*
  %4727 = load i32, i32* %4726, align 4
  %4728 = zext i32 %4727 to i64
  store i64 %4728, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414579_type* @G__0x414579 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414579_type* @G__0x414579 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4729 = add i64 %4722, -328
  %4730 = add i64 %4724, 17
  store i64 %4730, i64* %3, align 8
  %4731 = inttoptr i64 %4729 to i64*
  %4732 = load i64, i64* %4731, align 8
  store i64 %4732, i64* %RDI.i4036.pre-phi, align 8
  %4733 = add i64 %4722, -248
  %4734 = add i64 %4724, 23
  store i64 %4734, i64* %3, align 8
  %4735 = inttoptr i64 %4733 to i32*
  %4736 = load i32, i32* %4735, align 4
  %4737 = zext i32 %4736 to i64
  store i64 %4737, i64* %RSI.i3042, align 8
  %4738 = add i64 %4724, 27156
  %4739 = add i64 %4724, 28
  %4740 = load i64, i64* %6, align 8
  %4741 = add i64 %4740, -8
  %4742 = inttoptr i64 %4741 to i64*
  store i64 %4739, i64* %4742, align 8
  store i64 %4741, i64* %6, align 8
  store i64 %4738, i64* %3, align 8
  %call2_402143 = tail call %struct.Memory* @sub_408b40._Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4738, %struct.Memory* %call2_402127)
  %4743 = load i64, i64* %RBP.i, align 8
  %4744 = add i64 %4743, -84
  %4745 = load i64, i64* %3, align 8
  %4746 = add i64 %4745, 3
  store i64 %4746, i64* %3, align 8
  %4747 = inttoptr i64 %4744 to i32*
  %4748 = load i32, i32* %4747, align 4
  %4749 = zext i32 %4748 to i64
  store i64 %4749, i64* %RDX.i4028, align 8
  %4750 = add i64 %4743, -88
  %4751 = add i64 %4745, 6
  store i64 %4751, i64* %3, align 8
  %4752 = inttoptr i64 %4750 to i32*
  %4753 = load i32, i32* %4752, align 4
  %4754 = zext i32 %4753 to i64
  store i64 %4754, i64* %RCX.i4032, align 8
  %4755 = add i64 %4743, -92
  %4756 = add i64 %4745, 10
  store i64 %4756, i64* %3, align 8
  %4757 = inttoptr i64 %4755 to i32*
  %4758 = load i32, i32* %4757, align 4
  %4759 = zext i32 %4758 to i64
  store i64 %4759, i64* %242, align 8
  %4760 = add i64 %4743, -96
  %4761 = add i64 %4745, 14
  store i64 %4761, i64* %3, align 8
  %4762 = inttoptr i64 %4760 to i32*
  %4763 = load i32, i32* %4762, align 4
  %4764 = zext i32 %4763 to i64
  store i64 %4764, i64* %474, align 8
  %4765 = load i64, i64* %6, align 8
  store i64 %4765, i64* %RDI.i4036.pre-phi, align 8
  %4766 = add i64 %4745, 24
  store i64 %4766, i64* %3, align 8
  %4767 = inttoptr i64 %4765 to i64*
  store i64 4277647, i64* %4767, align 8
  %4768 = load i64, i64* %RBP.i, align 8
  %4769 = add i64 %4768, -328
  %4770 = load i64, i64* %3, align 8
  %4771 = add i64 %4770, 7
  store i64 %4771, i64* %3, align 8
  %4772 = inttoptr i64 %4769 to i64*
  %4773 = load i64, i64* %4772, align 8
  store i64 %4773, i64* %RDI.i4036.pre-phi, align 8
  %4774 = add i64 %4768, -248
  %4775 = add i64 %4770, 13
  store i64 %4775, i64* %3, align 8
  %4776 = inttoptr i64 %4774 to i32*
  %4777 = load i32, i32* %4776, align 4
  %4778 = zext i32 %4777 to i64
  store i64 %4778, i64* %RSI.i3042, align 8
  %4779 = add i64 %4770, 27264
  %4780 = add i64 %4770, 18
  %4781 = load i64, i64* %6, align 8
  %4782 = add i64 %4781, -8
  %4783 = inttoptr i64 %4782 to i64*
  store i64 %4780, i64* %4783, align 8
  store i64 %4782, i64* %6, align 8
  store i64 %4779, i64* %3, align 8
  %call2_40216d = tail call %struct.Memory* @sub_408be0._Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4779, %struct.Memory* %call2_402143)
  %4784 = load i64, i64* %RBP.i, align 8
  %4785 = add i64 %4784, -84
  %4786 = load i64, i64* %3, align 8
  %4787 = add i64 %4786, 3
  store i64 %4787, i64* %3, align 8
  %4788 = inttoptr i64 %4785 to i32*
  %4789 = load i32, i32* %4788, align 4
  %4790 = zext i32 %4789 to i64
  store i64 %4790, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145ae_type* @G__0x4145ae to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145ae_type* @G__0x4145ae to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4791 = add i64 %4784, -328
  %4792 = add i64 %4786, 17
  store i64 %4792, i64* %3, align 8
  %4793 = inttoptr i64 %4791 to i64*
  %4794 = load i64, i64* %4793, align 8
  store i64 %4794, i64* %RDI.i4036.pre-phi, align 8
  %4795 = add i64 %4784, -248
  %4796 = add i64 %4786, 23
  store i64 %4796, i64* %3, align 8
  %4797 = inttoptr i64 %4795 to i32*
  %4798 = load i32, i32* %4797, align 4
  %4799 = zext i32 %4798 to i64
  store i64 %4799, i64* %RSI.i3042, align 8
  %4800 = add i64 %4786, 27454
  %4801 = add i64 %4786, 28
  %4802 = load i64, i64* %6, align 8
  %4803 = add i64 %4802, -8
  %4804 = inttoptr i64 %4803 to i64*
  store i64 %4801, i64* %4804, align 8
  store i64 %4803, i64* %6, align 8
  store i64 %4800, i64* %3, align 8
  %call2_402189 = tail call %struct.Memory* @sub_408cb0._Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4800, %struct.Memory* %call2_40216d)
  %4805 = load i64, i64* %RBP.i, align 8
  %4806 = add i64 %4805, -84
  %4807 = load i64, i64* %3, align 8
  %4808 = add i64 %4807, 3
  store i64 %4808, i64* %3, align 8
  %4809 = inttoptr i64 %4806 to i32*
  %4810 = load i32, i32* %4809, align 4
  %4811 = zext i32 %4810 to i64
  store i64 %4811, i64* %RDX.i4028, align 8
  %4812 = add i64 %4805, -88
  %4813 = add i64 %4807, 6
  store i64 %4813, i64* %3, align 8
  %4814 = inttoptr i64 %4812 to i32*
  %4815 = load i32, i32* %4814, align 4
  %4816 = zext i32 %4815 to i64
  store i64 %4816, i64* %RCX.i4032, align 8
  %4817 = add i64 %4805, -92
  %4818 = add i64 %4807, 10
  store i64 %4818, i64* %3, align 8
  %4819 = inttoptr i64 %4817 to i32*
  %4820 = load i32, i32* %4819, align 4
  %4821 = zext i32 %4820 to i64
  store i64 %4821, i64* %242, align 8
  %4822 = add i64 %4805, -96
  %4823 = add i64 %4807, 14
  store i64 %4823, i64* %3, align 8
  %4824 = inttoptr i64 %4822 to i32*
  %4825 = load i32, i32* %4824, align 4
  %4826 = zext i32 %4825 to i64
  store i64 %4826, i64* %474, align 8
  %4827 = load i64, i64* %6, align 8
  store i64 %4827, i64* %RDI.i4036.pre-phi, align 8
  %4828 = add i64 %4807, 24
  store i64 %4828, i64* %3, align 8
  %4829 = inttoptr i64 %4827 to i64*
  store i64 4277699, i64* %4829, align 8
  %4830 = load i64, i64* %RBP.i, align 8
  %4831 = add i64 %4830, -328
  %4832 = load i64, i64* %3, align 8
  %4833 = add i64 %4832, 7
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4831 to i64*
  %4835 = load i64, i64* %4834, align 8
  store i64 %4835, i64* %RDI.i4036.pre-phi, align 8
  %4836 = add i64 %4830, -248
  %4837 = add i64 %4832, 13
  store i64 %4837, i64* %3, align 8
  %4838 = inttoptr i64 %4836 to i32*
  %4839 = load i32, i32* %4838, align 4
  %4840 = zext i32 %4839 to i64
  store i64 %4840, i64* %RSI.i3042, align 8
  %4841 = add i64 %4832, 27562
  %4842 = add i64 %4832, 18
  %4843 = load i64, i64* %6, align 8
  %4844 = add i64 %4843, -8
  %4845 = inttoptr i64 %4844 to i64*
  store i64 %4842, i64* %4845, align 8
  store i64 %4844, i64* %6, align 8
  store i64 %4841, i64* %3, align 8
  %call2_4021b3 = tail call %struct.Memory* @sub_408d50._Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4841, %struct.Memory* %call2_402189)
  %4846 = load i64, i64* %RBP.i, align 8
  %4847 = add i64 %4846, -84
  %4848 = load i64, i64* %3, align 8
  %4849 = add i64 %4848, 3
  store i64 %4849, i64* %3, align 8
  %4850 = inttoptr i64 %4847 to i32*
  %4851 = load i32, i32* %4850, align 4
  %4852 = zext i32 %4851 to i64
  store i64 %4852, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145e1_type* @G__0x4145e1 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145e1_type* @G__0x4145e1 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4853 = add i64 %4846, -328
  %4854 = add i64 %4848, 17
  store i64 %4854, i64* %3, align 8
  %4855 = inttoptr i64 %4853 to i64*
  %4856 = load i64, i64* %4855, align 8
  store i64 %4856, i64* %RDI.i4036.pre-phi, align 8
  %4857 = add i64 %4846, -248
  %4858 = add i64 %4848, 23
  store i64 %4858, i64* %3, align 8
  %4859 = inttoptr i64 %4857 to i32*
  %4860 = load i32, i32* %4859, align 4
  %4861 = zext i32 %4860 to i64
  store i64 %4861, i64* %RSI.i3042, align 8
  %4862 = add i64 %4848, 27752
  %4863 = add i64 %4848, 28
  %4864 = load i64, i64* %6, align 8
  %4865 = add i64 %4864, -8
  %4866 = inttoptr i64 %4865 to i64*
  store i64 %4863, i64* %4866, align 8
  store i64 %4865, i64* %6, align 8
  store i64 %4862, i64* %3, align 8
  %call2_4021cf = tail call %struct.Memory* @sub_408e20._Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4862, %struct.Memory* %call2_4021b3)
  %4867 = load i64, i64* %RBP.i, align 8
  %4868 = add i64 %4867, -84
  %4869 = load i64, i64* %3, align 8
  %4870 = add i64 %4869, 3
  store i64 %4870, i64* %3, align 8
  %4871 = inttoptr i64 %4868 to i32*
  %4872 = load i32, i32* %4871, align 4
  %4873 = zext i32 %4872 to i64
  store i64 %4873, i64* %RDX.i4028, align 8
  %4874 = add i64 %4867, -88
  %4875 = add i64 %4869, 6
  store i64 %4875, i64* %3, align 8
  %4876 = inttoptr i64 %4874 to i32*
  %4877 = load i32, i32* %4876, align 4
  %4878 = zext i32 %4877 to i64
  store i64 %4878, i64* %RCX.i4032, align 8
  %4879 = add i64 %4867, -92
  %4880 = add i64 %4869, 10
  store i64 %4880, i64* %3, align 8
  %4881 = inttoptr i64 %4879 to i32*
  %4882 = load i32, i32* %4881, align 4
  %4883 = zext i32 %4882 to i64
  store i64 %4883, i64* %242, align 8
  %4884 = add i64 %4867, -96
  %4885 = add i64 %4869, 14
  store i64 %4885, i64* %3, align 8
  %4886 = inttoptr i64 %4884 to i32*
  %4887 = load i32, i32* %4886, align 4
  %4888 = zext i32 %4887 to i64
  store i64 %4888, i64* %474, align 8
  %4889 = load i64, i64* %6, align 8
  store i64 %4889, i64* %RDI.i4036.pre-phi, align 8
  %4890 = add i64 %4869, 24
  store i64 %4890, i64* %3, align 8
  %4891 = inttoptr i64 %4889 to i64*
  store i64 4277751, i64* %4891, align 8
  %4892 = load i64, i64* %RBP.i, align 8
  %4893 = add i64 %4892, -328
  %4894 = load i64, i64* %3, align 8
  %4895 = add i64 %4894, 7
  store i64 %4895, i64* %3, align 8
  %4896 = inttoptr i64 %4893 to i64*
  %4897 = load i64, i64* %4896, align 8
  store i64 %4897, i64* %RDI.i4036.pre-phi, align 8
  %4898 = add i64 %4892, -248
  %4899 = add i64 %4894, 13
  store i64 %4899, i64* %3, align 8
  %4900 = inttoptr i64 %4898 to i32*
  %4901 = load i32, i32* %4900, align 4
  %4902 = zext i32 %4901 to i64
  store i64 %4902, i64* %RSI.i3042, align 8
  %4903 = add i64 %4894, 27860
  %4904 = add i64 %4894, 18
  %4905 = load i64, i64* %6, align 8
  %4906 = add i64 %4905, -8
  %4907 = inttoptr i64 %4906 to i64*
  store i64 %4904, i64* %4907, align 8
  store i64 %4906, i64* %6, align 8
  store i64 %4903, i64* %3, align 8
  %call2_4021f9 = tail call %struct.Memory* @sub_408ec0._Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4903, %struct.Memory* %call2_4021cf)
  %4908 = load i64, i64* %3, align 8
  %4909 = load double, double* bitcast (%G_0x217e82__rip__4203014__type* @G_0x217e82__rip__4203014_ to double*), align 8
  store double %4909, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %4910 = tail call double @llvm.trunc.f64(double %4909)
  %4911 = tail call double @llvm.fabs.f64(double %4910)
  %4912 = fcmp ogt double %4911, 0x43E0000000000000
  %4913 = fptosi double %4910 to i64
  %4914 = select i1 %4912, i64 -9223372036854775808, i64 %4913
  store i64 %4914, i64* %RDX.i4028, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %4915 = load i64, i64* %RBP.i, align 8
  %4916 = add i64 %4915, -344
  %4917 = add i64 %4908, 34
  store i64 %4917, i64* %3, align 8
  %4918 = inttoptr i64 %4916 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295) to i32) to i64), i64* %4918, align 8
  %4919 = load i64, i64* %3, align 8
  %4920 = add i64 %4919, 28016
  %4921 = add i64 %4919, 5
  %4922 = load i64, i64* %6, align 8
  %4923 = add i64 %4922, -8
  %4924 = inttoptr i64 %4923 to i64*
  store i64 %4921, i64* %4924, align 8
  store i64 %4923, i64* %6, align 8
  store i64 %4920, i64* %3, align 8
  %call2_402220 = tail call %struct.Memory* @sub_408f90._Z4fillIPllEvT_S1_T0_(%struct.State* %0, i64 %4920, %struct.Memory* %call2_4021f9)
  %4925 = load i64, i64* %RBP.i, align 8
  %4926 = add i64 %4925, -40
  %4927 = load i64, i64* %3, align 8
  %4928 = add i64 %4927, 6
  store i64 %4928, i64* %3, align 8
  %4929 = inttoptr i64 %4926 to double*
  %4930 = load double, double* %4929, align 8
  %4931 = tail call double @llvm.trunc.f64(double %4930)
  %4932 = tail call double @llvm.fabs.f64(double %4931)
  %4933 = fcmp ogt double %4932, 0x43E0000000000000
  %4934 = fptosi double %4931 to i64
  %4935 = select i1 %4933, i64 -9223372036854775808, i64 %4934
  store i64 %4935, i64* %RDX.i4028, align 8
  %4936 = add i64 %4925, -104
  %4937 = add i64 %4927, 10
  store i64 %4937, i64* %3, align 8
  %4938 = inttoptr i64 %4936 to i64*
  store i64 %4935, i64* %4938, align 8
  %4939 = load i64, i64* %RBP.i, align 8
  %4940 = add i64 %4939, -104
  %4941 = load i64, i64* %3, align 8
  %4942 = add i64 %4941, 4
  store i64 %4942, i64* %3, align 8
  %4943 = inttoptr i64 %4940 to i64*
  %4944 = load i64, i64* %4943, align 8
  %4945 = shl i64 %4944, 1
  store i64 %4945, i64* %RDX.i4028, align 8
  %4946 = icmp ult i64 %4945, %4944
  %4947 = zext i1 %4946 to i8
  store i8 %4947, i8* %26, align 1
  %4948 = trunc i64 %4945 to i32
  %4949 = and i32 %4948, 254
  %4950 = tail call i32 @llvm.ctpop.i32(i32 %4949)
  %4951 = trunc i32 %4950 to i8
  %4952 = and i8 %4951, 1
  %4953 = xor i8 %4952, 1
  store i8 %4953, i8* %33, align 1
  %4954 = lshr i64 %4944, 3
  %4955 = trunc i64 %4954 to i8
  %4956 = and i8 %4955, 1
  store i8 %4956, i8* %39, align 1
  %4957 = icmp eq i64 %4945, 0
  %4958 = zext i1 %4957 to i8
  store i8 %4958, i8* %42, align 1
  %4959 = lshr i64 %4944, 62
  %4960 = and i64 %4959, 1
  %4961 = trunc i64 %4960 to i8
  store i8 %4961, i8* %45, align 1
  %4962 = lshr i64 %4944, 63
  %4963 = xor i64 %4960, %4962
  %4964 = trunc i64 %4963 to i8
  store i8 %4964, i8* %51, align 1
  %4965 = add i64 %4939, -112
  %4966 = add i64 %4941, 11
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i64*
  store i64 %4945, i64* %4967, align 8
  %4968 = load i64, i64* %RBP.i, align 8
  %4969 = add i64 %4968, -104
  %4970 = load i64, i64* %3, align 8
  %4971 = add i64 %4970, 4
  store i64 %4971, i64* %3, align 8
  %4972 = inttoptr i64 %4969 to i64*
  %4973 = load i64, i64* %4972, align 8
  %4974 = add i64 %4973, 2
  store i64 %4974, i64* %RDX.i4028, align 8
  %4975 = icmp ugt i64 %4973, -3
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %26, align 1
  %4977 = trunc i64 %4974 to i32
  %4978 = and i32 %4977, 255
  %4979 = tail call i32 @llvm.ctpop.i32(i32 %4978)
  %4980 = trunc i32 %4979 to i8
  %4981 = and i8 %4980, 1
  %4982 = xor i8 %4981, 1
  store i8 %4982, i8* %33, align 1
  %4983 = xor i64 %4973, %4974
  %4984 = lshr i64 %4983, 4
  %4985 = trunc i64 %4984 to i8
  %4986 = and i8 %4985, 1
  store i8 %4986, i8* %39, align 1
  %4987 = icmp eq i64 %4974, 0
  %4988 = zext i1 %4987 to i8
  store i8 %4988, i8* %42, align 1
  %4989 = lshr i64 %4974, 63
  %4990 = trunc i64 %4989 to i8
  store i8 %4990, i8* %45, align 1
  %4991 = lshr i64 %4973, 63
  %4992 = xor i64 %4989, %4991
  %4993 = add nuw nsw i64 %4992, %4989
  %4994 = icmp eq i64 %4993, 2
  %4995 = zext i1 %4994 to i8
  store i8 %4995, i8* %51, align 1
  %4996 = add i64 %4968, -120
  %4997 = add i64 %4970, 12
  store i64 %4997, i64* %3, align 8
  %4998 = inttoptr i64 %4996 to i64*
  store i64 %4974, i64* %4998, align 8
  %4999 = load i64, i64* %RBP.i, align 8
  %5000 = add i64 %4999, -104
  %5001 = load i64, i64* %3, align 8
  %5002 = add i64 %5001, 4
  store i64 %5002, i64* %3, align 8
  %5003 = inttoptr i64 %5000 to i64*
  %5004 = load i64, i64* %5003, align 8
  store i64 %5004, i64* %RDX.i4028, align 8
  %5005 = add i64 %4999, -112
  %5006 = add i64 %5001, 8
  store i64 %5006, i64* %3, align 8
  %5007 = inttoptr i64 %5005 to i64*
  %5008 = load i64, i64* %5007, align 8
  store i64 %5008, i64* %RAX.i4030.pre-phi, align 8
  %5009 = add i64 %4999, -120
  %5010 = add i64 %5001, 12
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5009 to i64*
  %5012 = load i64, i64* %5011, align 8
  store i64 %5012, i64* %RSI.i3042, align 8
  %5013 = add i64 %4999, -352
  %5014 = add i64 %5001, 19
  store i64 %5014, i64* %3, align 8
  %5015 = inttoptr i64 %5013 to i64*
  store i64 %5004, i64* %5015, align 8
  %5016 = load i64, i64* %3, align 8
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5018 = load i64, i64* %5017, align 8
  %5019 = ashr i64 %5018, 63
  store i64 %5019, i64* %370, align 8
  %5020 = load i64, i64* %RSI.i3042, align 8
  %5021 = add i64 %5016, 5
  store i64 %5021, i64* %3, align 8
  %5022 = sext i64 %5020 to i128
  %5023 = and i128 %5022, -18446744073709551616
  %5024 = zext i64 %5019 to i128
  %5025 = shl nuw i128 %5024, 64
  %5026 = zext i64 %5018 to i128
  %5027 = or i128 %5025, %5026
  %5028 = zext i64 %5020 to i128
  %5029 = or i128 %5023, %5028
  %5030 = sdiv i128 %5027, %5029
  %5031 = trunc i128 %5030 to i64
  %5032 = and i128 %5030, 18446744073709551615
  %5033 = sext i64 %5031 to i128
  %5034 = and i128 %5033, -18446744073709551616
  %5035 = or i128 %5034, %5032
  %5036 = icmp eq i128 %5030, %5035
  br i1 %5036, label %5039, label %5037

; <label>:5037:                                   ; preds = %routine_divl__r8d.exit
  %5038 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5021, %struct.Memory* %call2_402220)
  %.pre21 = load i64, i64* %3, align 8
  %.pre22 = load i64, i64* %RAX.i4030.pre-phi, align 8
  br label %routine_idivq__rsi.exit

; <label>:5039:                                   ; preds = %routine_divl__r8d.exit
  %5040 = srem i128 %5027, %5029
  %5041 = trunc i128 %5040 to i64
  store i64 %5031, i64* %5017, align 8
  store i64 %5041, i64* %370, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %5039, %5037
  %5042 = phi i64 [ %.pre22, %5037 ], [ %5031, %5039 ]
  %5043 = phi i64 [ %.pre21, %5037 ], [ %5021, %5039 ]
  %5044 = phi %struct.Memory* [ %5038, %5037 ], [ %call2_402220, %5039 ]
  %5045 = load i64, i64* %RBP.i, align 8
  %5046 = add i64 %5045, -352
  %5047 = add i64 %5043, 7
  store i64 %5047, i64* %3, align 8
  %5048 = inttoptr i64 %5046 to i64*
  %5049 = load i64, i64* %5048, align 8
  %5050 = add i64 %5042, %5049
  store i64 %5050, i64* %RDX.i4028, align 8
  %5051 = icmp ult i64 %5050, %5049
  %5052 = icmp ult i64 %5050, %5042
  %5053 = or i1 %5051, %5052
  %5054 = zext i1 %5053 to i8
  store i8 %5054, i8* %26, align 1
  %5055 = trunc i64 %5050 to i32
  %5056 = and i32 %5055, 255
  %5057 = tail call i32 @llvm.ctpop.i32(i32 %5056)
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = xor i8 %5059, 1
  store i8 %5060, i8* %33, align 1
  %5061 = xor i64 %5042, %5049
  %5062 = xor i64 %5061, %5050
  %5063 = lshr i64 %5062, 4
  %5064 = trunc i64 %5063 to i8
  %5065 = and i8 %5064, 1
  store i8 %5065, i8* %39, align 1
  %5066 = icmp eq i64 %5050, 0
  %5067 = zext i1 %5066 to i8
  store i8 %5067, i8* %42, align 1
  %5068 = lshr i64 %5050, 63
  %5069 = trunc i64 %5068 to i8
  store i8 %5069, i8* %45, align 1
  %5070 = lshr i64 %5049, 63
  %5071 = lshr i64 %5042, 63
  %5072 = xor i64 %5068, %5070
  %5073 = xor i64 %5068, %5071
  %5074 = add nuw nsw i64 %5072, %5073
  %5075 = icmp eq i64 %5074, 2
  %5076 = zext i1 %5075 to i8
  store i8 %5076, i8* %51, align 1
  %5077 = add i64 %5045, -128
  %5078 = add i64 %5043, 14
  store i64 %5078, i64* %3, align 8
  %5079 = inttoptr i64 %5077 to i64*
  store i64 %5050, i64* %5079, align 8
  %5080 = load i64, i64* %RBP.i, align 8
  %5081 = add i64 %5080, -104
  %5082 = load i64, i64* %3, align 8
  %5083 = add i64 %5082, 4
  store i64 %5083, i64* %3, align 8
  %5084 = inttoptr i64 %5081 to i64*
  %5085 = load i64, i64* %5084, align 8
  store i64 %5085, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414617_type* @G__0x414617 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  %5086 = add i64 %5080, -344
  %5087 = add i64 %5082, 16
  store i64 %5087, i64* %3, align 8
  %5088 = inttoptr i64 %5086 to i64*
  %5089 = load i64, i64* %5088, align 8
  store i64 %5089, i64* %RDI.i4036.pre-phi, align 8
  %5090 = add i64 %5080, -248
  %5091 = add i64 %5082, 22
  store i64 %5091, i64* %3, align 8
  %5092 = inttoptr i64 %5090 to i32*
  %5093 = load i32, i32* %5092, align 4
  %5094 = zext i32 %5093 to i64
  store i64 %5094, i64* %RSI.i3042, align 8
  %5095 = add i64 %5082, 28004
  %5096 = add i64 %5082, 27
  %5097 = load i64, i64* %6, align 8
  %5098 = add i64 %5097, -8
  %5099 = inttoptr i64 %5098 to i64*
  store i64 %5096, i64* %5099, align 8
  store i64 %5098, i64* %6, align 8
  store i64 %5095, i64* %3, align 8
  %call2_402282 = tail call %struct.Memory* @sub_408fd0._Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5095, %struct.Memory* %5044)
  %5100 = load i64, i64* %RBP.i, align 8
  %5101 = add i64 %5100, -104
  %5102 = load i64, i64* %3, align 8
  %5103 = add i64 %5102, 4
  store i64 %5103, i64* %3, align 8
  %5104 = inttoptr i64 %5101 to i64*
  %5105 = load i64, i64* %5104, align 8
  store i64 %5105, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41462d_type* @G__0x41462d to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41462d_type* @G__0x41462d to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5106 = add i64 %5100, -344
  %5107 = add i64 %5102, 18
  store i64 %5107, i64* %3, align 8
  %5108 = inttoptr i64 %5106 to i64*
  %5109 = load i64, i64* %5108, align 8
  store i64 %5109, i64* %RDI.i4036.pre-phi, align 8
  %5110 = add i64 %5100, -248
  %5111 = add i64 %5102, 24
  store i64 %5111, i64* %3, align 8
  %5112 = inttoptr i64 %5110 to i32*
  %5113 = load i32, i32* %5112, align 4
  %5114 = zext i32 %5113 to i64
  store i64 %5114, i64* %RSI.i3042, align 8
  %5115 = add i64 %5102, 28153
  %5116 = add i64 %5102, 29
  %5117 = load i64, i64* %6, align 8
  %5118 = add i64 %5117, -8
  %5119 = inttoptr i64 %5118 to i64*
  store i64 %5116, i64* %5119, align 8
  store i64 %5118, i64* %6, align 8
  store i64 %5115, i64* %3, align 8
  %call2_40229f = tail call %struct.Memory* @sub_409080._Z22test_hoisted_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5115, %struct.Memory* %call2_402282)
  %5120 = load i64, i64* %RBP.i, align 8
  %5121 = add i64 %5120, -104
  %5122 = load i64, i64* %3, align 8
  %5123 = add i64 %5122, 4
  store i64 %5123, i64* %3, align 8
  %5124 = inttoptr i64 %5121 to i64*
  %5125 = load i64, i64* %5124, align 8
  store i64 %5125, i64* %RDX.i4028, align 8
  %5126 = add i64 %5120, -112
  %5127 = add i64 %5122, 8
  store i64 %5127, i64* %3, align 8
  %5128 = inttoptr i64 %5126 to i64*
  %5129 = load i64, i64* %5128, align 8
  store i64 %5129, i64* %RCX.i4032, align 8
  %5130 = add i64 %5120, -120
  %5131 = add i64 %5122, 12
  store i64 %5131, i64* %3, align 8
  %5132 = inttoptr i64 %5130 to i64*
  %5133 = load i64, i64* %5132, align 8
  store i64 %5133, i64* %242, align 8
  %5134 = add i64 %5120, -128
  %5135 = add i64 %5122, 16
  store i64 %5135, i64* %3, align 8
  %5136 = inttoptr i64 %5134 to i64*
  %5137 = load i64, i64* %5136, align 8
  store i64 %5137, i64* %474, align 8
  %5138 = load i64, i64* %6, align 8
  store i64 %5138, i64* %RAX.i4030.pre-phi, align 8
  %5139 = add i64 %5122, 26
  store i64 %5139, i64* %3, align 8
  %5140 = inttoptr i64 %5138 to i64*
  store i64 4277835, i64* %5140, align 8
  %5141 = load i64, i64* %RBP.i, align 8
  %5142 = add i64 %5141, -344
  %5143 = load i64, i64* %3, align 8
  %5144 = add i64 %5143, 7
  store i64 %5144, i64* %3, align 8
  %5145 = inttoptr i64 %5142 to i64*
  %5146 = load i64, i64* %5145, align 8
  store i64 %5146, i64* %RDI.i4036.pre-phi, align 8
  %5147 = add i64 %5141, -248
  %5148 = add i64 %5143, 13
  store i64 %5148, i64* %3, align 8
  %5149 = inttoptr i64 %5147 to i32*
  %5150 = load i32, i32* %5149, align 4
  %5151 = zext i32 %5150 to i64
  store i64 %5151, i64* %RSI.i3042, align 8
  %5152 = add i64 %5143, 28274
  %5153 = add i64 %5143, 18
  %5154 = load i64, i64* %6, align 8
  %5155 = add i64 %5154, -8
  %5156 = inttoptr i64 %5155 to i64*
  store i64 %5153, i64* %5156, align 8
  store i64 %5155, i64* %6, align 8
  store i64 %5152, i64* %3, align 8
  %call2_4022cb = tail call %struct.Memory* @sub_409130._Z14test_variable4Il28custom_add_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5152, %struct.Memory* %call2_40229f)
  %5157 = load i64, i64* %RBP.i, align 8
  %5158 = add i64 %5157, -104
  %5159 = load i64, i64* %3, align 8
  %5160 = add i64 %5159, 4
  store i64 %5160, i64* %3, align 8
  %5161 = inttoptr i64 %5158 to i64*
  %5162 = load i64, i64* %5161, align 8
  store i64 %5162, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41466b_type* @G__0x41466b to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41466b_type* @G__0x41466b to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5163 = add i64 %5157, -344
  %5164 = add i64 %5159, 18
  store i64 %5164, i64* %3, align 8
  %5165 = inttoptr i64 %5163 to i64*
  %5166 = load i64, i64* %5165, align 8
  store i64 %5166, i64* %RDI.i4036.pre-phi, align 8
  %5167 = add i64 %5157, -248
  %5168 = add i64 %5159, 24
  store i64 %5168, i64* %3, align 8
  %5169 = inttoptr i64 %5167 to i32*
  %5170 = load i32, i32* %5169, align 4
  %5171 = zext i32 %5170 to i64
  store i64 %5171, i64* %RSI.i3042, align 8
  %5172 = add i64 %5159, 28464
  %5173 = add i64 %5159, 29
  %5174 = load i64, i64* %6, align 8
  %5175 = add i64 %5174, -8
  %5176 = inttoptr i64 %5175 to i64*
  store i64 %5173, i64* %5176, align 8
  store i64 %5175, i64* %6, align 8
  store i64 %5172, i64* %3, align 8
  %call2_4022e8 = tail call %struct.Memory* @sub_409200._Z14test_variable1Il19custom_sub_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5172, %struct.Memory* %call2_4022cb)
  %5177 = load i64, i64* %RBP.i, align 8
  %5178 = add i64 %5177, -104
  %5179 = load i64, i64* %3, align 8
  %5180 = add i64 %5179, 4
  store i64 %5180, i64* %3, align 8
  %5181 = inttoptr i64 %5178 to i64*
  %5182 = load i64, i64* %5181, align 8
  store i64 %5182, i64* %RDX.i4028, align 8
  %5183 = add i64 %5177, -112
  %5184 = add i64 %5179, 8
  store i64 %5184, i64* %3, align 8
  %5185 = inttoptr i64 %5183 to i64*
  %5186 = load i64, i64* %5185, align 8
  store i64 %5186, i64* %RCX.i4032, align 8
  %5187 = add i64 %5177, -120
  %5188 = add i64 %5179, 12
  store i64 %5188, i64* %3, align 8
  %5189 = inttoptr i64 %5187 to i64*
  %5190 = load i64, i64* %5189, align 8
  store i64 %5190, i64* %242, align 8
  %5191 = add i64 %5177, -128
  %5192 = add i64 %5179, 16
  store i64 %5192, i64* %3, align 8
  %5193 = inttoptr i64 %5191 to i64*
  %5194 = load i64, i64* %5193, align 8
  store i64 %5194, i64* %474, align 8
  %5195 = load i64, i64* %6, align 8
  store i64 %5195, i64* %RAX.i4030.pre-phi, align 8
  %5196 = add i64 %5179, 26
  store i64 %5196, i64* %3, align 8
  %5197 = inttoptr i64 %5195 to i64*
  store i64 4277894, i64* %5197, align 8
  %5198 = load i64, i64* %RBP.i, align 8
  %5199 = add i64 %5198, -344
  %5200 = load i64, i64* %3, align 8
  %5201 = add i64 %5200, 7
  store i64 %5201, i64* %3, align 8
  %5202 = inttoptr i64 %5199 to i64*
  %5203 = load i64, i64* %5202, align 8
  store i64 %5203, i64* %RDI.i4036.pre-phi, align 8
  %5204 = add i64 %5198, -248
  %5205 = add i64 %5200, 13
  store i64 %5205, i64* %3, align 8
  %5206 = inttoptr i64 %5204 to i32*
  %5207 = load i32, i32* %5206, align 4
  %5208 = zext i32 %5207 to i64
  store i64 %5208, i64* %RSI.i3042, align 8
  %5209 = add i64 %5200, 28585
  %5210 = add i64 %5200, 18
  %5211 = load i64, i64* %6, align 8
  %5212 = add i64 %5211, -8
  %5213 = inttoptr i64 %5212 to i64*
  store i64 %5210, i64* %5213, align 8
  store i64 %5212, i64* %6, align 8
  store i64 %5209, i64* %3, align 8
  %call2_402314 = tail call %struct.Memory* @sub_4092b0._Z14test_variable4Il28custom_sub_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5209, %struct.Memory* %call2_4022e8)
  %5214 = load i64, i64* %RBP.i, align 8
  %5215 = add i64 %5214, -104
  %5216 = load i64, i64* %3, align 8
  %5217 = add i64 %5216, 4
  store i64 %5217, i64* %3, align 8
  %5218 = inttoptr i64 %5215 to i64*
  %5219 = load i64, i64* %5218, align 8
  store i64 %5219, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4146ab_type* @G__0x4146ab to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4146ab_type* @G__0x4146ab to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5220 = add i64 %5214, -344
  %5221 = add i64 %5216, 18
  store i64 %5221, i64* %3, align 8
  %5222 = inttoptr i64 %5220 to i64*
  %5223 = load i64, i64* %5222, align 8
  store i64 %5223, i64* %RDI.i4036.pre-phi, align 8
  %5224 = add i64 %5214, -248
  %5225 = add i64 %5216, 24
  store i64 %5225, i64* %3, align 8
  %5226 = inttoptr i64 %5224 to i32*
  %5227 = load i32, i32* %5226, align 4
  %5228 = zext i32 %5227 to i64
  store i64 %5228, i64* %RSI.i3042, align 8
  %5229 = add i64 %5216, 28775
  %5230 = add i64 %5216, 29
  %5231 = load i64, i64* %6, align 8
  %5232 = add i64 %5231, -8
  %5233 = inttoptr i64 %5232 to i64*
  store i64 %5230, i64* %5233, align 8
  store i64 %5232, i64* %6, align 8
  store i64 %5229, i64* %3, align 8
  %call2_402331 = tail call %struct.Memory* @sub_409380._Z14test_variable1Il24custom_multiply_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5229, %struct.Memory* %call2_402314)
  %5234 = load i64, i64* %RBP.i, align 8
  %5235 = add i64 %5234, -104
  %5236 = load i64, i64* %3, align 8
  %5237 = add i64 %5236, 4
  store i64 %5237, i64* %3, align 8
  %5238 = inttoptr i64 %5235 to i64*
  %5239 = load i64, i64* %5238, align 8
  store i64 %5239, i64* %RDX.i4028, align 8
  %5240 = add i64 %5234, -112
  %5241 = add i64 %5236, 8
  store i64 %5241, i64* %3, align 8
  %5242 = inttoptr i64 %5240 to i64*
  %5243 = load i64, i64* %5242, align 8
  store i64 %5243, i64* %RCX.i4032, align 8
  %5244 = add i64 %5234, -120
  %5245 = add i64 %5236, 12
  store i64 %5245, i64* %3, align 8
  %5246 = inttoptr i64 %5244 to i64*
  %5247 = load i64, i64* %5246, align 8
  store i64 %5247, i64* %242, align 8
  %5248 = add i64 %5234, -128
  %5249 = add i64 %5236, 16
  store i64 %5249, i64* %3, align 8
  %5250 = inttoptr i64 %5248 to i64*
  %5251 = load i64, i64* %5250, align 8
  store i64 %5251, i64* %474, align 8
  %5252 = load i64, i64* %6, align 8
  store i64 %5252, i64* %RAX.i4030.pre-phi, align 8
  %5253 = add i64 %5236, 26
  store i64 %5253, i64* %3, align 8
  %5254 = inttoptr i64 %5252 to i64*
  store i64 4277958, i64* %5254, align 8
  %5255 = load i64, i64* %RBP.i, align 8
  %5256 = add i64 %5255, -344
  %5257 = load i64, i64* %3, align 8
  %5258 = add i64 %5257, 7
  store i64 %5258, i64* %3, align 8
  %5259 = inttoptr i64 %5256 to i64*
  %5260 = load i64, i64* %5259, align 8
  store i64 %5260, i64* %RDI.i4036.pre-phi, align 8
  %5261 = add i64 %5255, -248
  %5262 = add i64 %5257, 13
  store i64 %5262, i64* %3, align 8
  %5263 = inttoptr i64 %5261 to i32*
  %5264 = load i32, i32* %5263, align 4
  %5265 = zext i32 %5264 to i64
  store i64 %5265, i64* %RSI.i3042, align 8
  %5266 = add i64 %5257, 28896
  %5267 = add i64 %5257, 18
  %5268 = load i64, i64* %6, align 8
  %5269 = add i64 %5268, -8
  %5270 = inttoptr i64 %5269 to i64*
  store i64 %5267, i64* %5270, align 8
  store i64 %5269, i64* %6, align 8
  store i64 %5266, i64* %3, align 8
  %call2_40235d = tail call %struct.Memory* @sub_409430._Z14test_variable4Il33custom_multiply_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5266, %struct.Memory* %call2_402331)
  %5271 = load i64, i64* %RBP.i, align 8
  %5272 = add i64 %5271, -104
  %5273 = load i64, i64* %3, align 8
  %5274 = add i64 %5273, 4
  store i64 %5274, i64* %3, align 8
  %5275 = inttoptr i64 %5272 to i64*
  %5276 = load i64, i64* %5275, align 8
  store i64 %5276, i64* %RDX.i4028, align 8
  %5277 = add i64 %5271, -112
  %5278 = add i64 %5273, 8
  store i64 %5278, i64* %3, align 8
  %5279 = inttoptr i64 %5277 to i64*
  %5280 = load i64, i64* %5279, align 8
  store i64 %5280, i64* %RCX.i4032, align 8
  %5281 = add i64 %5271, -120
  %5282 = add i64 %5273, 12
  store i64 %5282, i64* %3, align 8
  %5283 = inttoptr i64 %5281 to i64*
  %5284 = load i64, i64* %5283, align 8
  store i64 %5284, i64* %242, align 8
  %5285 = add i64 %5271, -128
  %5286 = add i64 %5273, 16
  store i64 %5286, i64* %3, align 8
  %5287 = inttoptr i64 %5285 to i64*
  %5288 = load i64, i64* %5287, align 8
  store i64 %5288, i64* %474, align 8
  %5289 = load i64, i64* %6, align 8
  store i64 %5289, i64* %RAX.i4030.pre-phi, align 8
  %5290 = add i64 %5273, 26
  store i64 %5290, i64* %3, align 8
  %5291 = inttoptr i64 %5289 to i64*
  store i64 4277996, i64* %5291, align 8
  %5292 = load i64, i64* %RBP.i, align 8
  %5293 = add i64 %5292, -344
  %5294 = load i64, i64* %3, align 8
  %5295 = add i64 %5294, 7
  store i64 %5295, i64* %3, align 8
  %5296 = inttoptr i64 %5293 to i64*
  %5297 = load i64, i64* %5296, align 8
  store i64 %5297, i64* %RDI.i4036.pre-phi, align 8
  %5298 = add i64 %5292, -248
  %5299 = add i64 %5294, 13
  store i64 %5299, i64* %3, align 8
  %5300 = inttoptr i64 %5298 to i32*
  %5301 = load i32, i32* %5300, align 4
  %5302 = zext i32 %5301 to i64
  store i64 %5302, i64* %RSI.i3042, align 8
  %5303 = add i64 %5294, 29060
  %5304 = add i64 %5294, 18
  %5305 = load i64, i64* %6, align 8
  %5306 = add i64 %5305, -8
  %5307 = inttoptr i64 %5306 to i64*
  store i64 %5304, i64* %5307, align 8
  store i64 %5306, i64* %6, align 8
  store i64 %5303, i64* %3, align 8
  %call2_402389 = tail call %struct.Memory* @sub_409500._Z14test_variable4Il34custom_multiply_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5303, %struct.Memory* %call2_40235d)
  %5308 = load i64, i64* %RBP.i, align 8
  %5309 = add i64 %5308, -104
  %5310 = load i64, i64* %3, align 8
  %5311 = add i64 %5310, 4
  store i64 %5311, i64* %3, align 8
  %5312 = inttoptr i64 %5309 to i64*
  %5313 = load i64, i64* %5312, align 8
  store i64 %5313, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414713_type* @G__0x414713 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414713_type* @G__0x414713 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5314 = add i64 %5308, -344
  %5315 = add i64 %5310, 18
  store i64 %5315, i64* %3, align 8
  %5316 = inttoptr i64 %5314 to i64*
  %5317 = load i64, i64* %5316, align 8
  store i64 %5317, i64* %RDI.i4036.pre-phi, align 8
  %5318 = add i64 %5308, -248
  %5319 = add i64 %5310, 24
  store i64 %5319, i64* %3, align 8
  %5320 = inttoptr i64 %5318 to i32*
  %5321 = load i32, i32* %5320, align 4
  %5322 = zext i32 %5321 to i64
  store i64 %5322, i64* %RSI.i3042, align 8
  %5323 = add i64 %5310, 29250
  %5324 = add i64 %5310, 29
  %5325 = load i64, i64* %6, align 8
  %5326 = add i64 %5325, -8
  %5327 = inttoptr i64 %5326 to i64*
  store i64 %5324, i64* %5327, align 8
  store i64 %5326, i64* %6, align 8
  store i64 %5323, i64* %3, align 8
  %call2_4023a6 = tail call %struct.Memory* @sub_4095d0._Z14test_variable1Il22custom_divide_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5323, %struct.Memory* %call2_402389)
  %5328 = load i64, i64* %RBP.i, align 8
  %5329 = add i64 %5328, -104
  %5330 = load i64, i64* %3, align 8
  %5331 = add i64 %5330, 4
  store i64 %5331, i64* %3, align 8
  %5332 = inttoptr i64 %5329 to i64*
  %5333 = load i64, i64* %5332, align 8
  store i64 %5333, i64* %RDX.i4028, align 8
  %5334 = add i64 %5328, -112
  %5335 = add i64 %5330, 8
  store i64 %5335, i64* %3, align 8
  %5336 = inttoptr i64 %5334 to i64*
  %5337 = load i64, i64* %5336, align 8
  store i64 %5337, i64* %RCX.i4032, align 8
  %5338 = add i64 %5328, -120
  %5339 = add i64 %5330, 12
  store i64 %5339, i64* %3, align 8
  %5340 = inttoptr i64 %5338 to i64*
  %5341 = load i64, i64* %5340, align 8
  store i64 %5341, i64* %242, align 8
  %5342 = add i64 %5328, -128
  %5343 = add i64 %5330, 16
  store i64 %5343, i64* %3, align 8
  %5344 = inttoptr i64 %5342 to i64*
  %5345 = load i64, i64* %5344, align 8
  store i64 %5345, i64* %474, align 8
  %5346 = load i64, i64* %6, align 8
  store i64 %5346, i64* %RAX.i4030.pre-phi, align 8
  %5347 = add i64 %5330, 26
  store i64 %5347, i64* %3, align 8
  %5348 = inttoptr i64 %5346 to i64*
  store i64 4278060, i64* %5348, align 8
  %5349 = load i64, i64* %RBP.i, align 8
  %5350 = add i64 %5349, -344
  %5351 = load i64, i64* %3, align 8
  %5352 = add i64 %5351, 7
  store i64 %5352, i64* %3, align 8
  %5353 = inttoptr i64 %5350 to i64*
  %5354 = load i64, i64* %5353, align 8
  store i64 %5354, i64* %RDI.i4036.pre-phi, align 8
  %5355 = add i64 %5349, -248
  %5356 = add i64 %5351, 13
  store i64 %5356, i64* %3, align 8
  %5357 = inttoptr i64 %5355 to i32*
  %5358 = load i32, i32* %5357, align 4
  %5359 = zext i32 %5358 to i64
  store i64 %5359, i64* %RSI.i3042, align 8
  %5360 = add i64 %5351, 29371
  %5361 = add i64 %5351, 18
  %5362 = load i64, i64* %6, align 8
  %5363 = add i64 %5362, -8
  %5364 = inttoptr i64 %5363 to i64*
  store i64 %5361, i64* %5364, align 8
  store i64 %5363, i64* %6, align 8
  store i64 %5360, i64* %3, align 8
  %call2_4023d2 = tail call %struct.Memory* @sub_409680._Z14test_variable4Il31custom_divide_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5360, %struct.Memory* %call2_4023a6)
  %5365 = load i64, i64* %RBP.i, align 8
  %5366 = add i64 %5365, -104
  %5367 = load i64, i64* %3, align 8
  %5368 = add i64 %5367, 4
  store i64 %5368, i64* %3, align 8
  %5369 = inttoptr i64 %5366 to i64*
  %5370 = load i64, i64* %5369, align 8
  store i64 %5370, i64* %RDX.i4028, align 8
  %5371 = add i64 %5365, -112
  %5372 = add i64 %5367, 8
  store i64 %5372, i64* %3, align 8
  %5373 = inttoptr i64 %5371 to i64*
  %5374 = load i64, i64* %5373, align 8
  store i64 %5374, i64* %RCX.i4032, align 8
  %5375 = add i64 %5365, -120
  %5376 = add i64 %5367, 12
  store i64 %5376, i64* %3, align 8
  %5377 = inttoptr i64 %5375 to i64*
  %5378 = load i64, i64* %5377, align 8
  store i64 %5378, i64* %242, align 8
  %5379 = add i64 %5365, -128
  %5380 = add i64 %5367, 16
  store i64 %5380, i64* %3, align 8
  %5381 = inttoptr i64 %5379 to i64*
  %5382 = load i64, i64* %5381, align 8
  store i64 %5382, i64* %474, align 8
  %5383 = load i64, i64* %6, align 8
  store i64 %5383, i64* %RAX.i4030.pre-phi, align 8
  %5384 = add i64 %5367, 26
  store i64 %5384, i64* %3, align 8
  %5385 = inttoptr i64 %5383 to i64*
  store i64 4278095, i64* %5385, align 8
  %5386 = load i64, i64* %RBP.i, align 8
  %5387 = add i64 %5386, -344
  %5388 = load i64, i64* %3, align 8
  %5389 = add i64 %5388, 7
  store i64 %5389, i64* %3, align 8
  %5390 = inttoptr i64 %5387 to i64*
  %5391 = load i64, i64* %5390, align 8
  store i64 %5391, i64* %RDI.i4036.pre-phi, align 8
  %5392 = add i64 %5386, -248
  %5393 = add i64 %5388, 13
  store i64 %5393, i64* %3, align 8
  %5394 = inttoptr i64 %5392 to i32*
  %5395 = load i32, i32* %5394, align 4
  %5396 = zext i32 %5395 to i64
  store i64 %5396, i64* %RSI.i3042, align 8
  %5397 = add i64 %5388, 29535
  %5398 = add i64 %5388, 18
  %5399 = load i64, i64* %6, align 8
  %5400 = add i64 %5399, -8
  %5401 = inttoptr i64 %5400 to i64*
  store i64 %5398, i64* %5401, align 8
  store i64 %5400, i64* %6, align 8
  store i64 %5397, i64* %3, align 8
  %call2_4023fe = tail call %struct.Memory* @sub_409750._Z14test_variable4Il32custom_divide_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5397, %struct.Memory* %call2_4023d2)
  %5402 = load i64, i64* %RBP.i, align 8
  %5403 = add i64 %5402, -104
  %5404 = load i64, i64* %3, align 8
  %5405 = add i64 %5404, 4
  store i64 %5405, i64* %3, align 8
  %5406 = inttoptr i64 %5403 to i64*
  %5407 = load i64, i64* %5406, align 8
  store i64 %5407, i64* %RDX.i4028, align 8
  %5408 = add i64 %5402, -112
  %5409 = add i64 %5404, 8
  store i64 %5409, i64* %3, align 8
  %5410 = inttoptr i64 %5408 to i64*
  %5411 = load i64, i64* %5410, align 8
  store i64 %5411, i64* %RCX.i4032, align 8
  %5412 = add i64 %5402, -120
  %5413 = add i64 %5404, 12
  store i64 %5413, i64* %3, align 8
  %5414 = inttoptr i64 %5412 to i64*
  %5415 = load i64, i64* %5414, align 8
  store i64 %5415, i64* %242, align 8
  %5416 = add i64 %5402, -128
  %5417 = add i64 %5404, 16
  store i64 %5417, i64* %3, align 8
  %5418 = inttoptr i64 %5416 to i64*
  %5419 = load i64, i64* %5418, align 8
  store i64 %5419, i64* %474, align 8
  %5420 = load i64, i64* %6, align 8
  store i64 %5420, i64* %RAX.i4030.pre-phi, align 8
  %5421 = add i64 %5404, 26
  store i64 %5421, i64* %3, align 8
  %5422 = inttoptr i64 %5420 to i64*
  store i64 4278131, i64* %5422, align 8
  %5423 = load i64, i64* %RBP.i, align 8
  %5424 = add i64 %5423, -344
  %5425 = load i64, i64* %3, align 8
  %5426 = add i64 %5425, 7
  store i64 %5426, i64* %3, align 8
  %5427 = inttoptr i64 %5424 to i64*
  %5428 = load i64, i64* %5427, align 8
  store i64 %5428, i64* %RDI.i4036.pre-phi, align 8
  %5429 = add i64 %5423, -248
  %5430 = add i64 %5425, 13
  store i64 %5430, i64* %3, align 8
  %5431 = inttoptr i64 %5429 to i32*
  %5432 = load i32, i32* %5431, align 4
  %5433 = zext i32 %5432 to i64
  store i64 %5433, i64* %RSI.i3042, align 8
  %5434 = add i64 %5425, 29699
  %5435 = add i64 %5425, 18
  %5436 = load i64, i64* %6, align 8
  %5437 = add i64 %5436, -8
  %5438 = inttoptr i64 %5437 to i64*
  store i64 %5435, i64* %5438, align 8
  store i64 %5437, i64* %6, align 8
  store i64 %5434, i64* %3, align 8
  %call2_40242a = tail call %struct.Memory* @sub_409820._Z14test_variable4Il30custom_mixed_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5434, %struct.Memory* %call2_4023fe)
  %5439 = load i64, i64* %RBP.i, align 8
  %5440 = add i64 %5439, -104
  %5441 = load i64, i64* %3, align 8
  %5442 = add i64 %5441, 4
  store i64 %5442, i64* %3, align 8
  %5443 = inttoptr i64 %5440 to i64*
  %5444 = load i64, i64* %5443, align 8
  store i64 %5444, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414794_type* @G__0x414794 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414794_type* @G__0x414794 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5445 = add i64 %5439, -344
  %5446 = add i64 %5441, 18
  store i64 %5446, i64* %3, align 8
  %5447 = inttoptr i64 %5445 to i64*
  %5448 = load i64, i64* %5447, align 8
  store i64 %5448, i64* %RDI.i4036.pre-phi, align 8
  %5449 = add i64 %5439, -248
  %5450 = add i64 %5441, 24
  store i64 %5450, i64* %3, align 8
  %5451 = inttoptr i64 %5449 to i32*
  %5452 = load i32, i32* %5451, align 4
  %5453 = zext i32 %5452 to i64
  store i64 %5453, i64* %RSI.i3042, align 8
  %5454 = add i64 %5441, 29889
  %5455 = add i64 %5441, 29
  %5456 = load i64, i64* %6, align 8
  %5457 = add i64 %5456, -8
  %5458 = inttoptr i64 %5457 to i64*
  store i64 %5455, i64* %5458, align 8
  store i64 %5457, i64* %6, align 8
  store i64 %5454, i64* %3, align 8
  %call2_402447 = tail call %struct.Memory* @sub_4098f0._Z14test_variable1Il19custom_variable_andIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5454, %struct.Memory* %call2_40242a)
  %5459 = load i64, i64* %RBP.i, align 8
  %5460 = add i64 %5459, -104
  %5461 = load i64, i64* %3, align 8
  %5462 = add i64 %5461, 4
  store i64 %5462, i64* %3, align 8
  %5463 = inttoptr i64 %5460 to i64*
  %5464 = load i64, i64* %5463, align 8
  store i64 %5464, i64* %RDX.i4028, align 8
  %5465 = add i64 %5459, -112
  %5466 = add i64 %5461, 8
  store i64 %5466, i64* %3, align 8
  %5467 = inttoptr i64 %5465 to i64*
  %5468 = load i64, i64* %5467, align 8
  store i64 %5468, i64* %RCX.i4032, align 8
  %5469 = add i64 %5459, -120
  %5470 = add i64 %5461, 12
  store i64 %5470, i64* %3, align 8
  %5471 = inttoptr i64 %5469 to i64*
  %5472 = load i64, i64* %5471, align 8
  store i64 %5472, i64* %242, align 8
  %5473 = add i64 %5459, -128
  %5474 = add i64 %5461, 16
  store i64 %5474, i64* %3, align 8
  %5475 = inttoptr i64 %5473 to i64*
  %5476 = load i64, i64* %5475, align 8
  store i64 %5476, i64* %474, align 8
  %5477 = load i64, i64* %6, align 8
  store i64 %5477, i64* %RAX.i4030.pre-phi, align 8
  %5478 = add i64 %5461, 26
  store i64 %5478, i64* %3, align 8
  %5479 = inttoptr i64 %5477 to i64*
  store i64 4278186, i64* %5479, align 8
  %5480 = load i64, i64* %RBP.i, align 8
  %5481 = add i64 %5480, -344
  %5482 = load i64, i64* %3, align 8
  %5483 = add i64 %5482, 7
  store i64 %5483, i64* %3, align 8
  %5484 = inttoptr i64 %5481 to i64*
  %5485 = load i64, i64* %5484, align 8
  store i64 %5485, i64* %RDI.i4036.pre-phi, align 8
  %5486 = add i64 %5480, -248
  %5487 = add i64 %5482, 13
  store i64 %5487, i64* %3, align 8
  %5488 = inttoptr i64 %5486 to i32*
  %5489 = load i32, i32* %5488, align 4
  %5490 = zext i32 %5489 to i64
  store i64 %5490, i64* %RSI.i3042, align 8
  %5491 = add i64 %5482, 30010
  %5492 = add i64 %5482, 18
  %5493 = load i64, i64* %6, align 8
  %5494 = add i64 %5493, -8
  %5495 = inttoptr i64 %5494 to i64*
  store i64 %5492, i64* %5495, align 8
  store i64 %5494, i64* %6, align 8
  store i64 %5491, i64* %3, align 8
  %call2_402473 = tail call %struct.Memory* @sub_4099a0._Z14test_variable4Il28custom_multiple_variable_andIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5491, %struct.Memory* %call2_402447)
  %5496 = load i64, i64* %RBP.i, align 8
  %5497 = add i64 %5496, -104
  %5498 = load i64, i64* %3, align 8
  %5499 = add i64 %5498, 4
  store i64 %5499, i64* %3, align 8
  %5500 = inttoptr i64 %5497 to i64*
  %5501 = load i64, i64* %5500, align 8
  store i64 %5501, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4147c9_type* @G__0x4147c9 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4147c9_type* @G__0x4147c9 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5502 = add i64 %5496, -344
  %5503 = add i64 %5498, 18
  store i64 %5503, i64* %3, align 8
  %5504 = inttoptr i64 %5502 to i64*
  %5505 = load i64, i64* %5504, align 8
  store i64 %5505, i64* %RDI.i4036.pre-phi, align 8
  %5506 = add i64 %5496, -248
  %5507 = add i64 %5498, 24
  store i64 %5507, i64* %3, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  %5510 = zext i32 %5509 to i64
  store i64 %5510, i64* %RSI.i3042, align 8
  %5511 = add i64 %5498, 30200
  %5512 = add i64 %5498, 29
  %5513 = load i64, i64* %6, align 8
  %5514 = add i64 %5513, -8
  %5515 = inttoptr i64 %5514 to i64*
  store i64 %5512, i64* %5515, align 8
  store i64 %5514, i64* %6, align 8
  store i64 %5511, i64* %3, align 8
  %call2_402490 = tail call %struct.Memory* @sub_409a70._Z14test_variable1Il18custom_variable_orIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5511, %struct.Memory* %call2_402473)
  %5516 = load i64, i64* %RBP.i, align 8
  %5517 = add i64 %5516, -104
  %5518 = load i64, i64* %3, align 8
  %5519 = add i64 %5518, 4
  store i64 %5519, i64* %3, align 8
  %5520 = inttoptr i64 %5517 to i64*
  %5521 = load i64, i64* %5520, align 8
  store i64 %5521, i64* %RDX.i4028, align 8
  %5522 = add i64 %5516, -112
  %5523 = add i64 %5518, 8
  store i64 %5523, i64* %3, align 8
  %5524 = inttoptr i64 %5522 to i64*
  %5525 = load i64, i64* %5524, align 8
  store i64 %5525, i64* %RCX.i4032, align 8
  %5526 = add i64 %5516, -120
  %5527 = add i64 %5518, 12
  store i64 %5527, i64* %3, align 8
  %5528 = inttoptr i64 %5526 to i64*
  %5529 = load i64, i64* %5528, align 8
  store i64 %5529, i64* %242, align 8
  %5530 = add i64 %5516, -128
  %5531 = add i64 %5518, 16
  store i64 %5531, i64* %3, align 8
  %5532 = inttoptr i64 %5530 to i64*
  %5533 = load i64, i64* %5532, align 8
  store i64 %5533, i64* %474, align 8
  %5534 = load i64, i64* %6, align 8
  store i64 %5534, i64* %RAX.i4030.pre-phi, align 8
  %5535 = add i64 %5518, 26
  store i64 %5535, i64* %3, align 8
  %5536 = inttoptr i64 %5534 to i64*
  store i64 4278238, i64* %5536, align 8
  %5537 = load i64, i64* %RBP.i, align 8
  %5538 = add i64 %5537, -344
  %5539 = load i64, i64* %3, align 8
  %5540 = add i64 %5539, 7
  store i64 %5540, i64* %3, align 8
  %5541 = inttoptr i64 %5538 to i64*
  %5542 = load i64, i64* %5541, align 8
  store i64 %5542, i64* %RDI.i4036.pre-phi, align 8
  %5543 = add i64 %5537, -248
  %5544 = add i64 %5539, 13
  store i64 %5544, i64* %3, align 8
  %5545 = inttoptr i64 %5543 to i32*
  %5546 = load i32, i32* %5545, align 4
  %5547 = zext i32 %5546 to i64
  store i64 %5547, i64* %RSI.i3042, align 8
  %5548 = add i64 %5539, 30321
  %5549 = add i64 %5539, 18
  %5550 = load i64, i64* %6, align 8
  %5551 = add i64 %5550, -8
  %5552 = inttoptr i64 %5551 to i64*
  store i64 %5549, i64* %5552, align 8
  store i64 %5551, i64* %6, align 8
  store i64 %5548, i64* %3, align 8
  %call2_4024bc = tail call %struct.Memory* @sub_409b20._Z14test_variable4Il27custom_multiple_variable_orIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5548, %struct.Memory* %call2_402490)
  %5553 = load i64, i64* %RBP.i, align 8
  %5554 = add i64 %5553, -104
  %5555 = load i64, i64* %3, align 8
  %5556 = add i64 %5555, 4
  store i64 %5556, i64* %3, align 8
  %5557 = inttoptr i64 %5554 to i64*
  %5558 = load i64, i64* %5557, align 8
  store i64 %5558, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4147fc_type* @G__0x4147fc to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4147fc_type* @G__0x4147fc to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5559 = add i64 %5553, -344
  %5560 = add i64 %5555, 18
  store i64 %5560, i64* %3, align 8
  %5561 = inttoptr i64 %5559 to i64*
  %5562 = load i64, i64* %5561, align 8
  store i64 %5562, i64* %RDI.i4036.pre-phi, align 8
  %5563 = add i64 %5553, -248
  %5564 = add i64 %5555, 24
  store i64 %5564, i64* %3, align 8
  %5565 = inttoptr i64 %5563 to i32*
  %5566 = load i32, i32* %5565, align 4
  %5567 = zext i32 %5566 to i64
  store i64 %5567, i64* %RSI.i3042, align 8
  %5568 = add i64 %5555, 30511
  %5569 = add i64 %5555, 29
  %5570 = load i64, i64* %6, align 8
  %5571 = add i64 %5570, -8
  %5572 = inttoptr i64 %5571 to i64*
  store i64 %5569, i64* %5572, align 8
  store i64 %5571, i64* %6, align 8
  store i64 %5568, i64* %3, align 8
  %call2_4024d9 = tail call %struct.Memory* @sub_409bf0._Z14test_variable1Il19custom_variable_xorIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5568, %struct.Memory* %call2_4024bc)
  %5573 = load i64, i64* %RBP.i, align 8
  %5574 = add i64 %5573, -104
  %5575 = load i64, i64* %3, align 8
  %5576 = add i64 %5575, 4
  store i64 %5576, i64* %3, align 8
  %5577 = inttoptr i64 %5574 to i64*
  %5578 = load i64, i64* %5577, align 8
  store i64 %5578, i64* %RDX.i4028, align 8
  %5579 = add i64 %5573, -112
  %5580 = add i64 %5575, 8
  store i64 %5580, i64* %3, align 8
  %5581 = inttoptr i64 %5579 to i64*
  %5582 = load i64, i64* %5581, align 8
  store i64 %5582, i64* %RCX.i4032, align 8
  %5583 = add i64 %5573, -120
  %5584 = add i64 %5575, 12
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5583 to i64*
  %5586 = load i64, i64* %5585, align 8
  store i64 %5586, i64* %242, align 8
  %5587 = add i64 %5573, -128
  %5588 = add i64 %5575, 16
  store i64 %5588, i64* %3, align 8
  %5589 = inttoptr i64 %5587 to i64*
  %5590 = load i64, i64* %5589, align 8
  store i64 %5590, i64* %474, align 8
  %5591 = load i64, i64* %6, align 8
  store i64 %5591, i64* %RAX.i4030.pre-phi, align 8
  %5592 = add i64 %5575, 26
  store i64 %5592, i64* %3, align 8
  %5593 = inttoptr i64 %5591 to i64*
  store i64 4278290, i64* %5593, align 8
  %5594 = load i64, i64* %RBP.i, align 8
  %5595 = add i64 %5594, -344
  %5596 = load i64, i64* %3, align 8
  %5597 = add i64 %5596, 7
  store i64 %5597, i64* %3, align 8
  %5598 = inttoptr i64 %5595 to i64*
  %5599 = load i64, i64* %5598, align 8
  store i64 %5599, i64* %RDI.i4036.pre-phi, align 8
  %5600 = add i64 %5594, -248
  %5601 = add i64 %5596, 13
  store i64 %5601, i64* %3, align 8
  %5602 = inttoptr i64 %5600 to i32*
  %5603 = load i32, i32* %5602, align 4
  %5604 = zext i32 %5603 to i64
  store i64 %5604, i64* %RSI.i3042, align 8
  %5605 = add i64 %5596, 30632
  %5606 = add i64 %5596, 18
  %5607 = load i64, i64* %6, align 8
  %5608 = add i64 %5607, -8
  %5609 = inttoptr i64 %5608 to i64*
  store i64 %5606, i64* %5609, align 8
  store i64 %5608, i64* %6, align 8
  store i64 %5605, i64* %3, align 8
  %call2_402505 = tail call %struct.Memory* @sub_409ca0._Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5605, %struct.Memory* %call2_4024d9)
  %5610 = load i64, i64* %3, align 8
  %5611 = load double, double* bitcast (%G_0x217b76__rip__4203794__type* @G_0x217b76__rip__4203794_ to double*), align 8
  store double %5611, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5613 = bitcast %union.VectorReg* %5612 to i8*
  %5614 = load double, double* bitcast (%G_0x11926__rip__4203802__type* @G_0x11926__rip__4203802_ to double*), align 8
  %5615 = bitcast %union.VectorReg* %5612 to double*
  store double %5614, double* %5615, align 1
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %5617 = bitcast i64* %5616 to double*
  store double 0.000000e+00, double* %5617, align 1
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5619 = bitcast %union.VectorReg* %5618 to i8*
  %5620 = bitcast [32 x %union.VectorReg]* %52 to <2 x i32>*
  %5621 = bitcast double %5611 to <2 x i32>
  %5622 = bitcast i64* %57 to <2 x i32>*
  %5623 = extractelement <2 x i32> %5621, i32 0
  %5624 = bitcast %union.VectorReg* %5618 to i32*
  store i32 %5623, i32* %5624, align 1
  %5625 = extractelement <2 x i32> %5621, i32 1
  %5626 = getelementptr inbounds i8, i8* %5619, i64 4
  %5627 = bitcast i8* %5626 to i32*
  store i32 %5625, i32* %5627, align 1
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %5629 = bitcast i64* %5628 to i32*
  store i32 0, i32* %5629, align 1
  %5630 = getelementptr inbounds i8, i8* %5619, i64 12
  %5631 = bitcast i8* %5630 to i32*
  store i32 0, i32* %5631, align 1
  %5632 = bitcast %union.VectorReg* %5618 to double*
  %5633 = load double, double* %5632, align 1
  %5634 = fsub double %5633, %5614
  store double %5634, double* %5632, align 1
  %5635 = tail call double @llvm.trunc.f64(double %5634)
  %5636 = tail call double @llvm.fabs.f64(double %5635)
  %5637 = fcmp ogt double %5636, 0x43E0000000000000
  %5638 = fptosi double %5635 to i64
  store i64 -9223372036854775808, i64* %RCX.i4032, align 8
  %.op = xor i64 %5638, -9223372036854775808
  %5639 = select i1 %5637, i64 0, i64 %.op
  store i64 %5639, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %5640 = trunc i64 %5639 to i32
  %5641 = and i32 %5640, 255
  %5642 = tail call i32 @llvm.ctpop.i32(i32 %5641)
  %5643 = trunc i32 %5642 to i8
  %5644 = and i8 %5643, 1
  %5645 = xor i8 %5644, 1
  store i8 %5645, i8* %33, align 1
  %5646 = icmp eq i64 %5639, 0
  %5647 = zext i1 %5646 to i8
  store i8 %5647, i8* %42, align 1
  %5648 = lshr i64 %5639, 63
  %5649 = trunc i64 %5648 to i8
  store i8 %5649, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5650 = tail call double @llvm.trunc.f64(double %5611)
  %5651 = tail call double @llvm.fabs.f64(double %5650)
  %5652 = fcmp ogt double %5651, 0x43E0000000000000
  %5653 = fptosi double %5650 to i64
  %5654 = select i1 %5652, i64 -9223372036854775808, i64 %5653
  store i64 %5654, i64* %RDX.i4028, align 8
  %5655 = add i64 %5610, 50
  store i64 %5655, i64* %3, align 8
  %5656 = fcmp uno double %5614, %5611
  br i1 %5656, label %5657, label %5667

; <label>:5657:                                   ; preds = %routine_idivq__rsi.exit
  %5658 = fadd double %5614, %5611
  %5659 = bitcast double %5658 to i64
  %5660 = and i64 %5659, 9221120237041090560
  %5661 = icmp eq i64 %5660, 9218868437227405312
  %5662 = and i64 %5659, 2251799813685247
  %5663 = icmp ne i64 %5662, 0
  %5664 = and i1 %5661, %5663
  br i1 %5664, label %5665, label %5673

; <label>:5665:                                   ; preds = %5657
  %5666 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5655, %struct.Memory* %call2_402505)
  %.pre23 = load i64, i64* %RDX.i4028, align 8
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i8, i8* %26, align 1
  %.pre26 = load i8, i8* %42, align 1
  %.pre27 = load i64, i64* %RAX.i4030.pre-phi, align 8
  %.pre28 = load i64, i64* %RCX.i4032, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:5667:                                   ; preds = %routine_idivq__rsi.exit
  %5668 = fcmp ogt double %5614, %5611
  br i1 %5668, label %5673, label %5669

; <label>:5669:                                   ; preds = %5667
  %5670 = fcmp olt double %5614, %5611
  br i1 %5670, label %5673, label %5671

; <label>:5671:                                   ; preds = %5669
  %5672 = fcmp oeq double %5614, %5611
  br i1 %5672, label %5673, label %5677

; <label>:5673:                                   ; preds = %5671, %5669, %5667, %5657
  %5674 = phi i8 [ 0, %5667 ], [ 0, %5669 ], [ 1, %5671 ], [ 1, %5657 ]
  %5675 = phi i8 [ 0, %5667 ], [ 0, %5669 ], [ 0, %5671 ], [ 1, %5657 ]
  %5676 = phi i8 [ 0, %5667 ], [ 1, %5669 ], [ 0, %5671 ], [ 1, %5657 ]
  store i8 %5674, i8* %42, align 1
  store i8 %5675, i8* %33, align 1
  store i8 %5676, i8* %26, align 1
  br label %5677

; <label>:5677:                                   ; preds = %5673, %5671
  %5678 = phi i8 [ %5674, %5673 ], [ %5647, %5671 ]
  %5679 = phi i8 [ %5676, %5673 ], [ 0, %5671 ]
  store i8 0, i8* %51, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %39, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %5677, %5665
  %5680 = phi i64 [ %.pre28, %5665 ], [ -9223372036854775808, %5677 ]
  %5681 = phi i64 [ %.pre27, %5665 ], [ %5639, %5677 ]
  %5682 = phi i8 [ %.pre26, %5665 ], [ %5678, %5677 ]
  %5683 = phi i8 [ %.pre25, %5665 ], [ %5679, %5677 ]
  %5684 = phi i64 [ %.pre24, %5665 ], [ %5655, %5677 ]
  %5685 = phi i64 [ %.pre23, %5665 ], [ %5654, %5677 ]
  %5686 = phi %struct.Memory* [ %5666, %5665 ], [ %call2_402505, %5677 ]
  %5687 = or i8 %5682, %5683
  %5688 = icmp eq i8 %5687, 0
  %5689 = select i1 %5688, i64 %5685, i64 %5681
  store i64 %5689, i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 %5689, i64* %RDX.i4028, align 8
  %5690 = load i64, i64* %RBP.i, align 8
  %5691 = add i64 %5690, -360
  %5692 = add i64 %5684, 26
  store i64 %5692, i64* %3, align 8
  %5693 = inttoptr i64 %5691 to i64*
  store i64 %5680, i64* %5693, align 8
  %5694 = load i64, i64* %RBP.i, align 8
  %5695 = add i64 %5694, -368
  %5696 = load i64, i64* %3, align 8
  %5697 = add i64 %5696, 8
  store i64 %5697, i64* %3, align 8
  %5698 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5612, i64 0, i32 0, i32 0, i32 0, i64 0
  %5699 = load i64, i64* %5698, align 1
  %5700 = inttoptr i64 %5695 to i64*
  store i64 %5699, i64* %5700, align 8
  %5701 = load i64, i64* %3, align 8
  %5702 = add i64 %5701, 30738
  %5703 = add i64 %5701, 5
  %5704 = load i64, i64* %6, align 8
  %5705 = add i64 %5704, -8
  %5706 = inttoptr i64 %5705 to i64*
  store i64 %5703, i64* %5706, align 8
  store i64 %5705, i64* %6, align 8
  store i64 %5702, i64* %3, align 8
  %call2_40255e = tail call %struct.Memory* @sub_409d70._Z4fillIPmmEvT_S1_T0_(%struct.State* %0, i64 %5702, %struct.Memory* %5686)
  %5707 = load i64, i64* %RBP.i, align 8
  %5708 = add i64 %5707, -40
  %5709 = load i64, i64* %3, align 8
  %5710 = add i64 %5709, 5
  store i64 %5710, i64* %3, align 8
  %5711 = inttoptr i64 %5708 to double*
  %5712 = load double, double* %5711, align 8
  store double %5712, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %5713 = bitcast double %5712 to <2 x i32>
  %5714 = extractelement <2 x i32> %5713, i32 0
  %5715 = bitcast %union.VectorReg* %5612 to i32*
  store i32 %5714, i32* %5715, align 1
  %5716 = extractelement <2 x i32> %5713, i32 1
  %5717 = getelementptr inbounds i8, i8* %5613, i64 4
  %5718 = bitcast i8* %5717 to i32*
  store i32 %5716, i32* %5718, align 1
  %5719 = bitcast i64* %5616 to i32*
  store i32 0, i32* %5719, align 1
  %5720 = getelementptr inbounds i8, i8* %5613, i64 12
  %5721 = bitcast i8* %5720 to i32*
  store i32 0, i32* %5721, align 1
  %5722 = add i64 %5707, -368
  %5723 = add i64 %5709, 16
  store i64 %5723, i64* %3, align 8
  %5724 = inttoptr i64 %5722 to double*
  %5725 = load double, double* %5724, align 8
  store double %5725, double* %5632, align 1
  %5726 = bitcast i64* %5628 to double*
  store double 0.000000e+00, double* %5726, align 1
  %5727 = load double, double* %5615, align 1
  %5728 = fsub double %5727, %5725
  store double %5728, double* %5615, align 1
  %5729 = tail call double @llvm.trunc.f64(double %5728)
  %5730 = tail call double @llvm.fabs.f64(double %5729)
  %5731 = fcmp ogt double %5730, 0x43E0000000000000
  %5732 = fptosi double %5729 to i64
  %5733 = select i1 %5731, i64 -9223372036854775808, i64 %5732
  store i64 %5733, i64* %RAX.i4030.pre-phi, align 8
  %5734 = add i64 %5707, -360
  %5735 = add i64 %5709, 32
  store i64 %5735, i64* %3, align 8
  %5736 = inttoptr i64 %5734 to i64*
  %5737 = load i64, i64* %5736, align 8
  store i64 %5737, i64* %RCX.i4032, align 8
  %5738 = xor i64 %5737, %5733
  store i64 %5738, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %5739 = trunc i64 %5738 to i32
  %5740 = and i32 %5739, 255
  %5741 = tail call i32 @llvm.ctpop.i32(i32 %5740)
  %5742 = trunc i32 %5741 to i8
  %5743 = and i8 %5742, 1
  %5744 = xor i8 %5743, 1
  store i8 %5744, i8* %33, align 1
  %5745 = icmp eq i64 %5738, 0
  %5746 = zext i1 %5745 to i8
  store i8 %5746, i8* %42, align 1
  %5747 = lshr i64 %5738, 63
  %5748 = trunc i64 %5747 to i8
  store i8 %5748, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5749 = tail call double @llvm.trunc.f64(double %5712)
  %5750 = tail call double @llvm.fabs.f64(double %5749)
  %5751 = fcmp ogt double %5750, 0x43E0000000000000
  %5752 = fptosi double %5749 to i64
  %5753 = select i1 %5751, i64 -9223372036854775808, i64 %5752
  store i64 %5753, i64* %RDX.i4028, align 8
  %5754 = add i64 %5709, 44
  store i64 %5754, i64* %3, align 8
  %5755 = fcmp uno double %5725, %5712
  br i1 %5755, label %5756, label %5766

; <label>:5756:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %5757 = fadd double %5725, %5712
  %5758 = bitcast double %5757 to i64
  %5759 = and i64 %5758, 9221120237041090560
  %5760 = icmp eq i64 %5759, 9218868437227405312
  %5761 = and i64 %5758, 2251799813685247
  %5762 = icmp ne i64 %5761, 0
  %5763 = and i1 %5760, %5762
  br i1 %5763, label %5764, label %5772

; <label>:5764:                                   ; preds = %5756
  %5765 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5754, %struct.Memory* %call2_40255e)
  %.pre29 = load i64, i64* %RDX.i4028, align 8
  %.pre30 = load i64, i64* %3, align 8
  %.pre31 = load i8, i8* %26, align 1
  %.pre32 = load i8, i8* %42, align 1
  %.pre33 = load i64, i64* %RAX.i4030.pre-phi, align 8
  %.pre34 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm2.exit

; <label>:5766:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %5767 = fcmp ogt double %5725, %5712
  br i1 %5767, label %5772, label %5768

; <label>:5768:                                   ; preds = %5766
  %5769 = fcmp olt double %5725, %5712
  br i1 %5769, label %5772, label %5770

; <label>:5770:                                   ; preds = %5768
  %5771 = fcmp oeq double %5725, %5712
  br i1 %5771, label %5772, label %5776

; <label>:5772:                                   ; preds = %5770, %5768, %5766, %5756
  %5773 = phi i8 [ 0, %5766 ], [ 0, %5768 ], [ 1, %5770 ], [ 1, %5756 ]
  %5774 = phi i8 [ 0, %5766 ], [ 0, %5768 ], [ 0, %5770 ], [ 1, %5756 ]
  %5775 = phi i8 [ 0, %5766 ], [ 1, %5768 ], [ 0, %5770 ], [ 1, %5756 ]
  store i8 %5773, i8* %42, align 1
  store i8 %5774, i8* %33, align 1
  store i8 %5775, i8* %26, align 1
  br label %5776

; <label>:5776:                                   ; preds = %5772, %5770
  %5777 = phi i8 [ %5773, %5772 ], [ %5746, %5770 ]
  %5778 = phi i8 [ %5775, %5772 ], [ 0, %5770 ]
  store i8 0, i8* %51, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %39, align 1
  br label %routine_ucomisd__xmm0___xmm2.exit

routine_ucomisd__xmm0___xmm2.exit:                ; preds = %5776, %5764
  %5779 = phi i64 [ %.pre34, %5764 ], [ %5707, %5776 ]
  %5780 = phi i64 [ %.pre33, %5764 ], [ %5738, %5776 ]
  %5781 = phi i8 [ %.pre32, %5764 ], [ %5777, %5776 ]
  %5782 = phi i8 [ %.pre31, %5764 ], [ %5778, %5776 ]
  %5783 = phi i64 [ %.pre30, %5764 ], [ %5754, %5776 ]
  %5784 = phi i64 [ %.pre29, %5764 ], [ %5753, %5776 ]
  %5785 = phi %struct.Memory* [ %5765, %5764 ], [ %call2_40255e, %5776 ]
  %5786 = or i8 %5781, %5782
  %5787 = icmp eq i8 %5786, 0
  %5788 = select i1 %5787, i64 %5784, i64 %5780
  store i64 %5788, i64* %RAX.i4030.pre-phi, align 8
  %5789 = add i64 %5779, -136
  %5790 = add i64 %5783, 11
  store i64 %5790, i64* %3, align 8
  %5791 = inttoptr i64 %5789 to i64*
  store i64 %5788, i64* %5791, align 8
  %5792 = load i64, i64* %RBP.i, align 8
  %5793 = add i64 %5792, -136
  %5794 = load i64, i64* %3, align 8
  %5795 = add i64 %5794, 7
  store i64 %5795, i64* %3, align 8
  %5796 = inttoptr i64 %5793 to i64*
  %5797 = load i64, i64* %5796, align 8
  %5798 = shl i64 %5797, 1
  %5799 = icmp slt i64 %5797, 0
  %5800 = icmp slt i64 %5798, 0
  %5801 = xor i1 %5799, %5800
  store i64 %5798, i64* %RAX.i4030.pre-phi, align 8
  %.lobit = lshr i64 %5797, 63
  %5802 = trunc i64 %.lobit to i8
  store i8 %5802, i8* %26, align 1
  %5803 = trunc i64 %5798 to i32
  %5804 = and i32 %5803, 254
  %5805 = tail call i32 @llvm.ctpop.i32(i32 %5804)
  %5806 = trunc i32 %5805 to i8
  %5807 = and i8 %5806, 1
  %5808 = xor i8 %5807, 1
  store i8 %5808, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5809 = icmp eq i64 %5798, 0
  %5810 = zext i1 %5809 to i8
  store i8 %5810, i8* %42, align 1
  %5811 = lshr i64 %5797, 62
  %5812 = trunc i64 %5811 to i8
  %5813 = and i8 %5812, 1
  store i8 %5813, i8* %45, align 1
  %5814 = zext i1 %5801 to i8
  store i8 %5814, i8* %51, align 1
  %5815 = add i64 %5792, -144
  %5816 = add i64 %5794, 18
  store i64 %5816, i64* %3, align 8
  %5817 = inttoptr i64 %5815 to i64*
  store i64 %5798, i64* %5817, align 8
  %5818 = load i64, i64* %RBP.i, align 8
  %5819 = add i64 %5818, -136
  %5820 = load i64, i64* %3, align 8
  %5821 = add i64 %5820, 7
  store i64 %5821, i64* %3, align 8
  %5822 = inttoptr i64 %5819 to i64*
  %5823 = load i64, i64* %5822, align 8
  %5824 = add i64 %5823, 2
  store i64 %5824, i64* %RAX.i4030.pre-phi, align 8
  %5825 = icmp ugt i64 %5823, -3
  %5826 = zext i1 %5825 to i8
  store i8 %5826, i8* %26, align 1
  %5827 = trunc i64 %5824 to i32
  %5828 = and i32 %5827, 255
  %5829 = tail call i32 @llvm.ctpop.i32(i32 %5828)
  %5830 = trunc i32 %5829 to i8
  %5831 = and i8 %5830, 1
  %5832 = xor i8 %5831, 1
  store i8 %5832, i8* %33, align 1
  %5833 = xor i64 %5823, %5824
  %5834 = lshr i64 %5833, 4
  %5835 = trunc i64 %5834 to i8
  %5836 = and i8 %5835, 1
  store i8 %5836, i8* %39, align 1
  %5837 = icmp eq i64 %5824, 0
  %5838 = zext i1 %5837 to i8
  store i8 %5838, i8* %42, align 1
  %5839 = lshr i64 %5824, 63
  %5840 = trunc i64 %5839 to i8
  store i8 %5840, i8* %45, align 1
  %5841 = lshr i64 %5823, 63
  %5842 = xor i64 %5839, %5841
  %5843 = add nuw nsw i64 %5842, %5839
  %5844 = icmp eq i64 %5843, 2
  %5845 = zext i1 %5844 to i8
  store i8 %5845, i8* %51, align 1
  %5846 = add i64 %5818, -152
  %5847 = add i64 %5820, 18
  store i64 %5847, i64* %3, align 8
  %5848 = inttoptr i64 %5846 to i64*
  store i64 %5824, i64* %5848, align 8
  %5849 = load i64, i64* %RBP.i, align 8
  %5850 = add i64 %5849, -136
  %5851 = load i64, i64* %3, align 8
  %5852 = add i64 %5851, 7
  store i64 %5852, i64* %3, align 8
  %5853 = inttoptr i64 %5850 to i64*
  %5854 = load i64, i64* %5853, align 8
  store i64 %5854, i64* %RAX.i4030.pre-phi, align 8
  %5855 = add i64 %5849, -144
  %5856 = add i64 %5851, 14
  store i64 %5856, i64* %3, align 8
  %5857 = inttoptr i64 %5855 to i64*
  %5858 = load i64, i64* %5857, align 8
  store i64 %5858, i64* %RDX.i4028, align 8
  %5859 = add i64 %5849, -376
  %5860 = add i64 %5851, 21
  store i64 %5860, i64* %3, align 8
  %5861 = inttoptr i64 %5859 to i64*
  store i64 %5854, i64* %5861, align 8
  %5862 = load i64, i64* %RDX.i4028, align 8
  %5863 = load i64, i64* %3, align 8
  store i64 %5862, i64* %RAX.i4030.pre-phi, align 8
  store i64 0, i64* %356, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  store i64 0, i64* %RDX.i4028, align 8
  %5864 = load i64, i64* %RBP.i, align 8
  %5865 = add i64 %5864, -152
  %5866 = add i64 %5863, 16
  store i64 %5866, i64* %3, align 8
  %5867 = inttoptr i64 %5865 to i64*
  %5868 = load i64, i64* %5867, align 8
  %div = udiv i64 %5862, %5868
  %5869 = urem i64 %5862, %5868
  store i64 %div, i64* %5017, align 8
  store i64 %5869, i64* %370, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5870 = add i64 %5864, -376
  %5871 = add i64 %5863, 23
  store i64 %5871, i64* %3, align 8
  %5872 = inttoptr i64 %5870 to i64*
  %5873 = load i64, i64* %5872, align 8
  %5874 = add i64 %div, %5873
  store i64 %5874, i64* %RSI.i3042, align 8
  %5875 = icmp ult i64 %5874, %5873
  %5876 = icmp ult i64 %5874, %div
  %5877 = or i1 %5875, %5876
  %5878 = zext i1 %5877 to i8
  store i8 %5878, i8* %26, align 1
  %5879 = trunc i64 %5874 to i32
  %5880 = and i32 %5879, 255
  %5881 = tail call i32 @llvm.ctpop.i32(i32 %5880)
  %5882 = trunc i32 %5881 to i8
  %5883 = and i8 %5882, 1
  %5884 = xor i8 %5883, 1
  store i8 %5884, i8* %33, align 1
  %5885 = xor i64 %div, %5873
  %5886 = xor i64 %5885, %5874
  %5887 = lshr i64 %5886, 4
  %5888 = trunc i64 %5887 to i8
  %5889 = and i8 %5888, 1
  store i8 %5889, i8* %39, align 1
  %5890 = icmp eq i64 %5874, 0
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %42, align 1
  %5892 = lshr i64 %5874, 63
  %5893 = trunc i64 %5892 to i8
  store i8 %5893, i8* %45, align 1
  %5894 = lshr i64 %5873, 63
  %5895 = lshr i64 %div, 63
  %5896 = xor i64 %5892, %5894
  %5897 = xor i64 %5892, %5895
  %5898 = add nuw nsw i64 %5896, %5897
  %5899 = icmp eq i64 %5898, 2
  %5900 = zext i1 %5899 to i8
  store i8 %5900, i8* %51, align 1
  %5901 = add i64 %5864, -160
  %5902 = add i64 %5863, 33
  store i64 %5902, i64* %3, align 8
  %5903 = inttoptr i64 %5901 to i64*
  store i64 %5874, i64* %5903, align 8
  %5904 = load i64, i64* %RBP.i, align 8
  %5905 = add i64 %5904, -136
  %5906 = load i64, i64* %3, align 8
  %5907 = add i64 %5906, 7
  store i64 %5907, i64* %3, align 8
  %5908 = inttoptr i64 %5905 to i64*
  %5909 = load i64, i64* %5908, align 8
  store i64 %5909, i64* %RAX.i4030.pre-phi, align 8
  %5910 = add i64 %5904, -216
  %5911 = add i64 %5906, 14
  store i64 %5911, i64* %3, align 8
  %5912 = inttoptr i64 %5910 to i64*
  %5913 = load i64, i64* %5912, align 8
  store i64 %5913, i64* %RDI.i4036.pre-phi, align 8
  %5914 = add i64 %5904, -220
  %5915 = add i64 %5906, 20
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5914 to i32*
  %5917 = load i32, i32* %5916, align 4
  %5918 = zext i32 %5917 to i64
  store i64 %5918, i64* %RSI.i3042, align 8
  store i64 %5909, i64* %RDX.i4028, align 8
  %5919 = add i64 %5904, -232
  %5920 = add i64 %5906, 30
  store i64 %5920, i64* %3, align 8
  %5921 = inttoptr i64 %5919 to i64*
  %5922 = load i64, i64* %5921, align 8
  store i64 %5922, i64* %RCX.i4032, align 8
  %5923 = add i64 %5906, 30652
  %5924 = add i64 %5906, 35
  %5925 = load i64, i64* %6, align 8
  %5926 = add i64 %5925, -8
  %5927 = inttoptr i64 %5926 to i64*
  store i64 %5924, i64* %5927, align 8
  store i64 %5926, i64* %6, align 8
  store i64 %5923, i64* %3, align 8
  %call2_402612 = tail call %struct.Memory* @sub_409db0._Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %5923, %struct.Memory* %5785)
  %5928 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41462c_type* @G__0x41462c to i64), i64* %RCX.i4032, align 8
  %5929 = load i64, i64* %RBP.i, align 8
  %5930 = add i64 %5929, -136
  %5931 = add i64 %5928, 32
  store i64 %5931, i64* %3, align 8
  %5932 = inttoptr i64 %5930 to i64*
  %5933 = load i64, i64* %5932, align 8
  store i64 %5933, i64* %RDX.i4028, align 8
  %5934 = add i64 %5928, 30793
  %5935 = add i64 %5928, 37
  %5936 = load i64, i64* %6, align 8
  %5937 = add i64 %5936, -8
  %5938 = inttoptr i64 %5937 to i64*
  store i64 %5935, i64* %5938, align 8
  store i64 %5937, i64* %6, align 8
  store i64 %5934, i64* %3, align 8
  %call2_402637 = tail call %struct.Memory* @sub_409e60._Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %5934, %struct.Memory* %call2_402612)
  %5939 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41464a_type* @G__0x41464a to i64), i64* %RAX.i4030.pre-phi, align 8
  %5940 = load i64, i64* %RBP.i, align 8
  %5941 = add i64 %5940, -136
  %5942 = add i64 %5939, 32
  store i64 %5942, i64* %3, align 8
  %5943 = inttoptr i64 %5941 to i64*
  %5944 = load i64, i64* %5943, align 8
  store i64 %5944, i64* %RDX.i4028, align 8
  %5945 = add i64 %5940, -144
  %5946 = add i64 %5939, 39
  store i64 %5946, i64* %3, align 8
  %5947 = inttoptr i64 %5945 to i64*
  %5948 = load i64, i64* %5947, align 8
  store i64 %5948, i64* %RCX.i4032, align 8
  %5949 = add i64 %5940, -152
  %5950 = add i64 %5939, 46
  store i64 %5950, i64* %3, align 8
  %5951 = inttoptr i64 %5949 to i64*
  %5952 = load i64, i64* %5951, align 8
  store i64 %5952, i64* %242, align 8
  %5953 = add i64 %5940, -160
  %5954 = add i64 %5939, 53
  store i64 %5954, i64* %3, align 8
  %5955 = inttoptr i64 %5953 to i64*
  %5956 = load i64, i64* %5955, align 8
  store i64 %5956, i64* %474, align 8
  %5957 = bitcast i64* %6 to i64**
  %5958 = load i64*, i64** %5957, align 8
  %5959 = add i64 %5939, 57
  store i64 %5959, i64* %3, align 8
  store i64 ptrtoint (%G__0x41464a_type* @G__0x41464a to i64), i64* %5958, align 8
  %5960 = load i64, i64* %3, align 8
  %5961 = add i64 %5960, 30875
  %5962 = add i64 %5960, 5
  %5963 = load i64, i64* %6, align 8
  %5964 = add i64 %5963, -8
  %5965 = inttoptr i64 %5964 to i64*
  store i64 %5962, i64* %5965, align 8
  store i64 %5964, i64* %6, align 8
  store i64 %5961, i64* %3, align 8
  %call2_402675 = tail call %struct.Memory* @sub_409f10._Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5961, %struct.Memory* %call2_402637)
  %5966 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41466a_type* @G__0x41466a to i64), i64* %RCX.i4032, align 8
  %5967 = load i64, i64* %RBP.i, align 8
  %5968 = add i64 %5967, -136
  %5969 = add i64 %5966, 32
  store i64 %5969, i64* %3, align 8
  %5970 = inttoptr i64 %5968 to i64*
  %5971 = load i64, i64* %5970, align 8
  store i64 %5971, i64* %RDX.i4028, align 8
  %5972 = add i64 %5966, 31078
  %5973 = add i64 %5966, 37
  %5974 = load i64, i64* %6, align 8
  %5975 = add i64 %5974, -8
  %5976 = inttoptr i64 %5975 to i64*
  store i64 %5973, i64* %5976, align 8
  store i64 %5975, i64* %6, align 8
  store i64 %5972, i64* %3, align 8
  %call2_40269a = tail call %struct.Memory* @sub_409fe0._Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %5972, %struct.Memory* %call2_402675)
  %5977 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414685_type* @G__0x414685 to i64), i64* %RAX.i4030.pre-phi, align 8
  %5978 = load i64, i64* %RBP.i, align 8
  %5979 = add i64 %5978, -136
  %5980 = add i64 %5977, 32
  store i64 %5980, i64* %3, align 8
  %5981 = inttoptr i64 %5979 to i64*
  %5982 = load i64, i64* %5981, align 8
  store i64 %5982, i64* %RDX.i4028, align 8
  %5983 = add i64 %5978, -144
  %5984 = add i64 %5977, 39
  store i64 %5984, i64* %3, align 8
  %5985 = inttoptr i64 %5983 to i64*
  %5986 = load i64, i64* %5985, align 8
  store i64 %5986, i64* %RCX.i4032, align 8
  %5987 = add i64 %5978, -152
  %5988 = add i64 %5977, 46
  store i64 %5988, i64* %3, align 8
  %5989 = inttoptr i64 %5987 to i64*
  %5990 = load i64, i64* %5989, align 8
  store i64 %5990, i64* %242, align 8
  %5991 = add i64 %5978, -160
  %5992 = add i64 %5977, 53
  store i64 %5992, i64* %3, align 8
  %5993 = inttoptr i64 %5991 to i64*
  %5994 = load i64, i64* %5993, align 8
  store i64 %5994, i64* %474, align 8
  %5995 = load i64*, i64** %5957, align 8
  %5996 = add i64 %5977, 57
  store i64 %5996, i64* %3, align 8
  store i64 ptrtoint (%G__0x414685_type* @G__0x414685 to i64), i64* %5995, align 8
  %5997 = load i64, i64* %3, align 8
  %5998 = add i64 %5997, 31160
  %5999 = add i64 %5997, 5
  %6000 = load i64, i64* %6, align 8
  %6001 = add i64 %6000, -8
  %6002 = inttoptr i64 %6001 to i64*
  store i64 %5999, i64* %6002, align 8
  store i64 %6001, i64* %6, align 8
  store i64 %5998, i64* %3, align 8
  %call2_4026d8 = tail call %struct.Memory* @sub_40a090._Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5998, %struct.Memory* %call2_40269a)
  %6003 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4146aa_type* @G__0x4146aa to i64), i64* %RCX.i4032, align 8
  %6004 = load i64, i64* %RBP.i, align 8
  %6005 = add i64 %6004, -136
  %6006 = add i64 %6003, 32
  store i64 %6006, i64* %3, align 8
  %6007 = inttoptr i64 %6005 to i64*
  %6008 = load i64, i64* %6007, align 8
  store i64 %6008, i64* %RDX.i4028, align 8
  %6009 = add i64 %6003, 31363
  %6010 = add i64 %6003, 37
  %6011 = load i64, i64* %6, align 8
  %6012 = add i64 %6011, -8
  %6013 = inttoptr i64 %6012 to i64*
  store i64 %6010, i64* %6013, align 8
  store i64 %6012, i64* %6, align 8
  store i64 %6009, i64* %3, align 8
  %call2_4026fd = tail call %struct.Memory* @sub_40a160._Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %6009, %struct.Memory* %call2_4026d8)
  %6014 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4146c5_type* @G__0x4146c5 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6015 = load i64, i64* %RBP.i, align 8
  %6016 = add i64 %6015, -136
  %6017 = add i64 %6014, 32
  store i64 %6017, i64* %3, align 8
  %6018 = inttoptr i64 %6016 to i64*
  %6019 = load i64, i64* %6018, align 8
  store i64 %6019, i64* %RDX.i4028, align 8
  %6020 = add i64 %6015, -144
  %6021 = add i64 %6014, 39
  store i64 %6021, i64* %3, align 8
  %6022 = inttoptr i64 %6020 to i64*
  %6023 = load i64, i64* %6022, align 8
  store i64 %6023, i64* %RCX.i4032, align 8
  %6024 = add i64 %6015, -152
  %6025 = add i64 %6014, 46
  store i64 %6025, i64* %3, align 8
  %6026 = inttoptr i64 %6024 to i64*
  %6027 = load i64, i64* %6026, align 8
  store i64 %6027, i64* %242, align 8
  %6028 = add i64 %6015, -160
  %6029 = add i64 %6014, 53
  store i64 %6029, i64* %3, align 8
  %6030 = inttoptr i64 %6028 to i64*
  %6031 = load i64, i64* %6030, align 8
  store i64 %6031, i64* %474, align 8
  %6032 = load i64*, i64** %5957, align 8
  %6033 = add i64 %6014, 57
  store i64 %6033, i64* %3, align 8
  store i64 ptrtoint (%G__0x4146c5_type* @G__0x4146c5 to i64), i64* %6032, align 8
  %6034 = load i64, i64* %3, align 8
  %6035 = add i64 %6034, 31445
  %6036 = add i64 %6034, 5
  %6037 = load i64, i64* %6, align 8
  %6038 = add i64 %6037, -8
  %6039 = inttoptr i64 %6038 to i64*
  store i64 %6036, i64* %6039, align 8
  store i64 %6038, i64* %6, align 8
  store i64 %6035, i64* %3, align 8
  %call2_40273b = tail call %struct.Memory* @sub_40a210._Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6035, %struct.Memory* %call2_4026fd)
  %6040 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4146eb_type* @G__0x4146eb to i64), i64* %RAX.i4030.pre-phi, align 8
  %6041 = load i64, i64* %RBP.i, align 8
  %6042 = add i64 %6041, -136
  %6043 = add i64 %6040, 32
  store i64 %6043, i64* %3, align 8
  %6044 = inttoptr i64 %6042 to i64*
  %6045 = load i64, i64* %6044, align 8
  store i64 %6045, i64* %RDX.i4028, align 8
  %6046 = add i64 %6041, -144
  %6047 = add i64 %6040, 39
  store i64 %6047, i64* %3, align 8
  %6048 = inttoptr i64 %6046 to i64*
  %6049 = load i64, i64* %6048, align 8
  store i64 %6049, i64* %RCX.i4032, align 8
  %6050 = add i64 %6041, -152
  %6051 = add i64 %6040, 46
  store i64 %6051, i64* %3, align 8
  %6052 = inttoptr i64 %6050 to i64*
  %6053 = load i64, i64* %6052, align 8
  store i64 %6053, i64* %242, align 8
  %6054 = add i64 %6041, -160
  %6055 = add i64 %6040, 53
  store i64 %6055, i64* %3, align 8
  %6056 = inttoptr i64 %6054 to i64*
  %6057 = load i64, i64* %6056, align 8
  store i64 %6057, i64* %474, align 8
  %6058 = load i64*, i64** %5957, align 8
  %6059 = add i64 %6040, 57
  store i64 %6059, i64* %3, align 8
  store i64 ptrtoint (%G__0x4146eb_type* @G__0x4146eb to i64), i64* %6058, align 8
  %6060 = load i64, i64* %3, align 8
  %6061 = add i64 %6060, 31591
  %6062 = add i64 %6060, 5
  %6063 = load i64, i64* %6, align 8
  %6064 = add i64 %6063, -8
  %6065 = inttoptr i64 %6064 to i64*
  store i64 %6062, i64* %6065, align 8
  store i64 %6064, i64* %6, align 8
  store i64 %6061, i64* %3, align 8
  %call2_402779 = tail call %struct.Memory* @sub_40a2e0._Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6061, %struct.Memory* %call2_40273b)
  %6066 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414712_type* @G__0x414712 to i64), i64* %RCX.i4032, align 8
  %6067 = load i64, i64* %RBP.i, align 8
  %6068 = add i64 %6067, -136
  %6069 = add i64 %6066, 32
  store i64 %6069, i64* %3, align 8
  %6070 = inttoptr i64 %6068 to i64*
  %6071 = load i64, i64* %6070, align 8
  store i64 %6071, i64* %RDX.i4028, align 8
  %6072 = add i64 %6066, 31794
  %6073 = add i64 %6066, 37
  %6074 = load i64, i64* %6, align 8
  %6075 = add i64 %6074, -8
  %6076 = inttoptr i64 %6075 to i64*
  store i64 %6073, i64* %6076, align 8
  store i64 %6075, i64* %6, align 8
  store i64 %6072, i64* %3, align 8
  %call2_40279e = tail call %struct.Memory* @sub_40a3b0._Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %6072, %struct.Memory* %call2_402779)
  %6077 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41472b_type* @G__0x41472b to i64), i64* %RAX.i4030.pre-phi, align 8
  %6078 = load i64, i64* %RBP.i, align 8
  %6079 = add i64 %6078, -136
  %6080 = add i64 %6077, 32
  store i64 %6080, i64* %3, align 8
  %6081 = inttoptr i64 %6079 to i64*
  %6082 = load i64, i64* %6081, align 8
  store i64 %6082, i64* %RDX.i4028, align 8
  %6083 = add i64 %6078, -144
  %6084 = add i64 %6077, 39
  store i64 %6084, i64* %3, align 8
  %6085 = inttoptr i64 %6083 to i64*
  %6086 = load i64, i64* %6085, align 8
  store i64 %6086, i64* %RCX.i4032, align 8
  %6087 = add i64 %6078, -152
  %6088 = add i64 %6077, 46
  store i64 %6088, i64* %3, align 8
  %6089 = inttoptr i64 %6087 to i64*
  %6090 = load i64, i64* %6089, align 8
  store i64 %6090, i64* %242, align 8
  %6091 = add i64 %6078, -160
  %6092 = add i64 %6077, 53
  store i64 %6092, i64* %3, align 8
  %6093 = inttoptr i64 %6091 to i64*
  %6094 = load i64, i64* %6093, align 8
  store i64 %6094, i64* %474, align 8
  %6095 = load i64*, i64** %5957, align 8
  %6096 = add i64 %6077, 57
  store i64 %6096, i64* %3, align 8
  store i64 ptrtoint (%G__0x41472b_type* @G__0x41472b to i64), i64* %6095, align 8
  %6097 = load i64, i64* %3, align 8
  %6098 = add i64 %6097, 31876
  %6099 = add i64 %6097, 5
  %6100 = load i64, i64* %6, align 8
  %6101 = add i64 %6100, -8
  %6102 = inttoptr i64 %6101 to i64*
  store i64 %6099, i64* %6102, align 8
  store i64 %6101, i64* %6, align 8
  store i64 %6098, i64* %3, align 8
  %call2_4027dc = tail call %struct.Memory* @sub_40a460._Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6098, %struct.Memory* %call2_40279e)
  %6103 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41474e_type* @G__0x41474e to i64), i64* %RAX.i4030.pre-phi, align 8
  %6104 = load i64, i64* %RBP.i, align 8
  %6105 = add i64 %6104, -136
  %6106 = add i64 %6103, 32
  store i64 %6106, i64* %3, align 8
  %6107 = inttoptr i64 %6105 to i64*
  %6108 = load i64, i64* %6107, align 8
  store i64 %6108, i64* %RDX.i4028, align 8
  %6109 = add i64 %6104, -144
  %6110 = add i64 %6103, 39
  store i64 %6110, i64* %3, align 8
  %6111 = inttoptr i64 %6109 to i64*
  %6112 = load i64, i64* %6111, align 8
  store i64 %6112, i64* %RCX.i4032, align 8
  %6113 = add i64 %6104, -152
  %6114 = add i64 %6103, 46
  store i64 %6114, i64* %3, align 8
  %6115 = inttoptr i64 %6113 to i64*
  %6116 = load i64, i64* %6115, align 8
  store i64 %6116, i64* %242, align 8
  %6117 = add i64 %6104, -160
  %6118 = add i64 %6103, 53
  store i64 %6118, i64* %3, align 8
  %6119 = inttoptr i64 %6117 to i64*
  %6120 = load i64, i64* %6119, align 8
  store i64 %6120, i64* %474, align 8
  %6121 = load i64*, i64** %5957, align 8
  %6122 = add i64 %6103, 57
  store i64 %6122, i64* %3, align 8
  store i64 ptrtoint (%G__0x41474e_type* @G__0x41474e to i64), i64* %6121, align 8
  %6123 = load i64, i64* %3, align 8
  %6124 = add i64 %6123, 32022
  %6125 = add i64 %6123, 5
  %6126 = load i64, i64* %6, align 8
  %6127 = add i64 %6126, -8
  %6128 = inttoptr i64 %6127 to i64*
  store i64 %6125, i64* %6128, align 8
  store i64 %6127, i64* %6, align 8
  store i64 %6124, i64* %3, align 8
  %call2_40281a = tail call %struct.Memory* @sub_40a530._Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6124, %struct.Memory* %call2_4027dc)
  %6129 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414772_type* @G__0x414772 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6130 = load i64, i64* %RBP.i, align 8
  %6131 = add i64 %6130, -136
  %6132 = add i64 %6129, 32
  store i64 %6132, i64* %3, align 8
  %6133 = inttoptr i64 %6131 to i64*
  %6134 = load i64, i64* %6133, align 8
  store i64 %6134, i64* %RDX.i4028, align 8
  %6135 = add i64 %6130, -144
  %6136 = add i64 %6129, 39
  store i64 %6136, i64* %3, align 8
  %6137 = inttoptr i64 %6135 to i64*
  %6138 = load i64, i64* %6137, align 8
  store i64 %6138, i64* %RCX.i4032, align 8
  %6139 = add i64 %6130, -152
  %6140 = add i64 %6129, 46
  store i64 %6140, i64* %3, align 8
  %6141 = inttoptr i64 %6139 to i64*
  %6142 = load i64, i64* %6141, align 8
  store i64 %6142, i64* %242, align 8
  %6143 = add i64 %6130, -160
  %6144 = add i64 %6129, 53
  store i64 %6144, i64* %3, align 8
  %6145 = inttoptr i64 %6143 to i64*
  %6146 = load i64, i64* %6145, align 8
  store i64 %6146, i64* %474, align 8
  %6147 = load i64*, i64** %5957, align 8
  %6148 = add i64 %6129, 57
  store i64 %6148, i64* %3, align 8
  store i64 ptrtoint (%G__0x414772_type* @G__0x414772 to i64), i64* %6147, align 8
  %6149 = load i64, i64* %3, align 8
  %6150 = add i64 %6149, 32168
  %6151 = add i64 %6149, 5
  %6152 = load i64, i64* %6, align 8
  %6153 = add i64 %6152, -8
  %6154 = inttoptr i64 %6153 to i64*
  store i64 %6151, i64* %6154, align 8
  store i64 %6153, i64* %6, align 8
  store i64 %6150, i64* %3, align 8
  %call2_402858 = tail call %struct.Memory* @sub_40a600._Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6150, %struct.Memory* %call2_40281a)
  %6155 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414793_type* @G__0x414793 to i64), i64* %RCX.i4032, align 8
  %6156 = load i64, i64* %RBP.i, align 8
  %6157 = add i64 %6156, -136
  %6158 = add i64 %6155, 32
  store i64 %6158, i64* %3, align 8
  %6159 = inttoptr i64 %6157 to i64*
  %6160 = load i64, i64* %6159, align 8
  store i64 %6160, i64* %RDX.i4028, align 8
  %6161 = add i64 %6155, 32371
  %6162 = add i64 %6155, 37
  %6163 = load i64, i64* %6, align 8
  %6164 = add i64 %6163, -8
  %6165 = inttoptr i64 %6164 to i64*
  store i64 %6162, i64* %6165, align 8
  store i64 %6164, i64* %6, align 8
  store i64 %6161, i64* %3, align 8
  %call2_40287d = tail call %struct.Memory* @sub_40a6d0._Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(%struct.State* %0, i64 %6161, %struct.Memory* %call2_402858)
  %6166 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147a9_type* @G__0x4147a9 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6167 = load i64, i64* %RBP.i, align 8
  %6168 = add i64 %6167, -136
  %6169 = add i64 %6166, 32
  store i64 %6169, i64* %3, align 8
  %6170 = inttoptr i64 %6168 to i64*
  %6171 = load i64, i64* %6170, align 8
  store i64 %6171, i64* %RDX.i4028, align 8
  %6172 = add i64 %6167, -144
  %6173 = add i64 %6166, 39
  store i64 %6173, i64* %3, align 8
  %6174 = inttoptr i64 %6172 to i64*
  %6175 = load i64, i64* %6174, align 8
  store i64 %6175, i64* %RCX.i4032, align 8
  %6176 = add i64 %6167, -152
  %6177 = add i64 %6166, 46
  store i64 %6177, i64* %3, align 8
  %6178 = inttoptr i64 %6176 to i64*
  %6179 = load i64, i64* %6178, align 8
  store i64 %6179, i64* %242, align 8
  %6180 = add i64 %6167, -160
  %6181 = add i64 %6166, 53
  store i64 %6181, i64* %3, align 8
  %6182 = inttoptr i64 %6180 to i64*
  %6183 = load i64, i64* %6182, align 8
  store i64 %6183, i64* %474, align 8
  %6184 = load i64*, i64** %5957, align 8
  %6185 = add i64 %6166, 57
  store i64 %6185, i64* %3, align 8
  store i64 ptrtoint (%G__0x4147a9_type* @G__0x4147a9 to i64), i64* %6184, align 8
  %6186 = load i64, i64* %3, align 8
  %6187 = add i64 %6186, 32453
  %6188 = add i64 %6186, 5
  %6189 = load i64, i64* %6, align 8
  %6190 = add i64 %6189, -8
  %6191 = inttoptr i64 %6190 to i64*
  store i64 %6188, i64* %6191, align 8
  store i64 %6190, i64* %6, align 8
  store i64 %6187, i64* %3, align 8
  %call2_4028bb = tail call %struct.Memory* @sub_40a780._Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6187, %struct.Memory* %call2_40287d)
  %6192 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147c8_type* @G__0x4147c8 to i64), i64* %RCX.i4032, align 8
  %6193 = load i64, i64* %RBP.i, align 8
  %6194 = add i64 %6193, -136
  %6195 = add i64 %6192, 32
  store i64 %6195, i64* %3, align 8
  %6196 = inttoptr i64 %6194 to i64*
  %6197 = load i64, i64* %6196, align 8
  store i64 %6197, i64* %RDX.i4028, align 8
  %6198 = add i64 %6192, 32656
  %6199 = add i64 %6192, 37
  %6200 = load i64, i64* %6, align 8
  %6201 = add i64 %6200, -8
  %6202 = inttoptr i64 %6201 to i64*
  store i64 %6199, i64* %6202, align 8
  store i64 %6201, i64* %6, align 8
  store i64 %6198, i64* %3, align 8
  %call2_4028e0 = tail call %struct.Memory* @sub_40a850._Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(%struct.State* %0, i64 %6198, %struct.Memory* %call2_4028bb)
  %6203 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147dd_type* @G__0x4147dd to i64), i64* %RAX.i4030.pre-phi, align 8
  %6204 = load i64, i64* %RBP.i, align 8
  %6205 = add i64 %6204, -136
  %6206 = add i64 %6203, 32
  store i64 %6206, i64* %3, align 8
  %6207 = inttoptr i64 %6205 to i64*
  %6208 = load i64, i64* %6207, align 8
  store i64 %6208, i64* %RDX.i4028, align 8
  %6209 = add i64 %6204, -144
  %6210 = add i64 %6203, 39
  store i64 %6210, i64* %3, align 8
  %6211 = inttoptr i64 %6209 to i64*
  %6212 = load i64, i64* %6211, align 8
  store i64 %6212, i64* %RCX.i4032, align 8
  %6213 = add i64 %6204, -152
  %6214 = add i64 %6203, 46
  store i64 %6214, i64* %3, align 8
  %6215 = inttoptr i64 %6213 to i64*
  %6216 = load i64, i64* %6215, align 8
  store i64 %6216, i64* %242, align 8
  %6217 = add i64 %6204, -160
  %6218 = add i64 %6203, 53
  store i64 %6218, i64* %3, align 8
  %6219 = inttoptr i64 %6217 to i64*
  %6220 = load i64, i64* %6219, align 8
  store i64 %6220, i64* %474, align 8
  %6221 = load i64*, i64** %5957, align 8
  %6222 = add i64 %6203, 57
  store i64 %6222, i64* %3, align 8
  store i64 ptrtoint (%G__0x4147dd_type* @G__0x4147dd to i64), i64* %6221, align 8
  %6223 = load i64, i64* %3, align 8
  %6224 = add i64 %6223, 32738
  %6225 = add i64 %6223, 5
  %6226 = load i64, i64* %6, align 8
  %6227 = add i64 %6226, -8
  %6228 = inttoptr i64 %6227 to i64*
  store i64 %6225, i64* %6228, align 8
  store i64 %6227, i64* %6, align 8
  store i64 %6224, i64* %3, align 8
  %call2_40291e = tail call %struct.Memory* @sub_40a900._Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6224, %struct.Memory* %call2_4028e0)
  %6229 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147fb_type* @G__0x4147fb to i64), i64* %RCX.i4032, align 8
  %6230 = load i64, i64* %RBP.i, align 8
  %6231 = add i64 %6230, -136
  %6232 = add i64 %6229, 32
  store i64 %6232, i64* %3, align 8
  %6233 = inttoptr i64 %6231 to i64*
  %6234 = load i64, i64* %6233, align 8
  store i64 %6234, i64* %RDX.i4028, align 8
  %6235 = add i64 %6229, 32941
  %6236 = add i64 %6229, 37
  %6237 = load i64, i64* %6, align 8
  %6238 = add i64 %6237, -8
  %6239 = inttoptr i64 %6238 to i64*
  store i64 %6236, i64* %6239, align 8
  store i64 %6238, i64* %6, align 8
  store i64 %6235, i64* %3, align 8
  %call2_402943 = tail call %struct.Memory* @sub_40a9d0._Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(%struct.State* %0, i64 %6235, %struct.Memory* %call2_40291e)
  %6240 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414811_type* @G__0x414811 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6241 = load i64, i64* %RBP.i, align 8
  %6242 = add i64 %6241, -136
  %6243 = add i64 %6240, 32
  store i64 %6243, i64* %3, align 8
  %6244 = inttoptr i64 %6242 to i64*
  %6245 = load i64, i64* %6244, align 8
  store i64 %6245, i64* %RDX.i4028, align 8
  %6246 = add i64 %6241, -144
  %6247 = add i64 %6240, 39
  store i64 %6247, i64* %3, align 8
  %6248 = inttoptr i64 %6246 to i64*
  %6249 = load i64, i64* %6248, align 8
  store i64 %6249, i64* %RCX.i4032, align 8
  %6250 = add i64 %6241, -152
  %6251 = add i64 %6240, 46
  store i64 %6251, i64* %3, align 8
  %6252 = inttoptr i64 %6250 to i64*
  %6253 = load i64, i64* %6252, align 8
  store i64 %6253, i64* %242, align 8
  %6254 = add i64 %6241, -160
  %6255 = add i64 %6240, 53
  store i64 %6255, i64* %3, align 8
  %6256 = inttoptr i64 %6254 to i64*
  %6257 = load i64, i64* %6256, align 8
  store i64 %6257, i64* %474, align 8
  %6258 = load i64*, i64** %5957, align 8
  %6259 = add i64 %6240, 57
  store i64 %6259, i64* %3, align 8
  store i64 ptrtoint (%G__0x414811_type* @G__0x414811 to i64), i64* %6258, align 8
  %6260 = load i64, i64* %3, align 8
  %6261 = add i64 %6260, 33023
  %6262 = add i64 %6260, 5
  %6263 = load i64, i64* %6, align 8
  %6264 = add i64 %6263, -8
  %6265 = inttoptr i64 %6264 to i64*
  store i64 %6262, i64* %6265, align 8
  store i64 %6264, i64* %6, align 8
  store i64 %6261, i64* %3, align 8
  %call2_402981 = tail call %struct.Memory* @sub_40aa80._Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6261, %struct.Memory* %call2_402943)
  %6266 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RAX.i4030.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64* %RCX.i4032, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 32000)) to i8), i8* %26, align 1
  %6267 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000) to i32), i32 255))
  %6268 = trunc i32 %6267 to i8
  %6269 = and i8 %6268, 1
  %6270 = xor i8 %6269, 1
  store i8 %6270, i8* %33, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000)), i64 4) to i8), i8 1), i8* %39, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 0) to i8), i8* %42, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 63) to i8), i8* %45, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 63), i64 lshr (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 63)), i64 2) to i8), i8* %51, align 1
  %6271 = load double, double* bitcast (%G_0x61a088_type* @G_0x61a088 to double*), align 8
  %6272 = bitcast double %6271 to <2 x i32>
  %6273 = fptrunc double %6271 to float
  %6274 = bitcast [32 x %union.VectorReg]* %52 to float*
  store float %6273, float* %6274, align 1
  %6275 = extractelement <2 x i32> %6272, i32 1
  %6276 = getelementptr inbounds i8, i8* %53, i64 4
  %6277 = bitcast i8* %6276 to i32*
  store i32 %6275, i32* %6277, align 1
  %6278 = bitcast i64* %57 to i32*
  store i32 0, i32* %6278, align 1
  %6279 = getelementptr inbounds i8, i8* %53, i64 12
  %6280 = bitcast i8* %6279 to i32*
  store i32 0, i32* %6280, align 1
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64* %RSI.i3042, align 8
  %6281 = add i64 %6266, 33226
  %6282 = add i64 %6266, 44
  %6283 = load i64, i64* %6, align 8
  %6284 = add i64 %6283, -8
  %6285 = inttoptr i64 %6284 to i64*
  store i64 %6282, i64* %6285, align 8
  store i64 %6284, i64* %6, align 8
  store i64 %6281, i64* %3, align 8
  %call2_4029ad = tail call %struct.Memory* @sub_40ab50._Z4fillIPffEvT_S1_T0_(%struct.State* %0, i64 %6281, %struct.Memory* %call2_402981)
  %6286 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414830_type* @G__0x414830 to i64), i64* %RDX.i4028, align 8
  %6287 = load i32, i32* bitcast (%G_0x1149d__rip__4205011__type* @G_0x1149d__rip__4205011_ to i32*), align 8
  %6288 = bitcast [32 x %union.VectorReg]* %52 to i32*
  store i32 %6287, i32* %6288, align 1
  %6289 = bitcast i8* %6276 to float*
  store float 0.000000e+00, float* %6289, align 1
  %6290 = bitcast i64* %57 to float*
  store float 0.000000e+00, float* %6290, align 1
  %6291 = bitcast i8* %6279 to float*
  store float 0.000000e+00, float* %6291, align 1
  %6292 = load i64, i64* %RBP.i, align 8
  %6293 = add i64 %6292, -40
  %6294 = add i64 %6286, 38
  store i64 %6294, i64* %3, align 8
  %6295 = inttoptr i64 %6293 to double*
  %6296 = load double, double* %6295, align 8
  %6297 = bitcast double %6296 to <2 x i32>
  %6298 = bitcast i64* %5616 to <2 x i32>*
  %6299 = fptrunc double %6296 to float
  %6300 = bitcast %union.VectorReg* %5612 to float*
  store float %6299, float* %6300, align 1
  %6301 = extractelement <2 x i32> %6297, i32 1
  store i32 %6301, i32* %5718, align 1
  %6302 = add i64 %6292, -164
  %6303 = add i64 %6286, 50
  store i64 %6303, i64* %3, align 8
  %6304 = bitcast %union.VectorReg* %5612 to <2 x float>*
  %6305 = load <2 x float>, <2 x float>* %6304, align 1
  %6306 = extractelement <2 x float> %6305, i32 0
  %6307 = inttoptr i64 %6302 to float*
  store float %6306, float* %6307, align 4
  %6308 = load i64, i64* %3, align 8
  %6309 = load <2 x i32>, <2 x i32>* %5620, align 1
  %6310 = load <2 x i32>, <2 x i32>* %5622, align 1
  %6311 = extractelement <2 x i32> %6309, i32 0
  store i32 %6311, i32* %5715, align 1
  %6312 = extractelement <2 x i32> %6309, i32 1
  store i32 %6312, i32* %5718, align 1
  %6313 = extractelement <2 x i32> %6310, i32 0
  store i32 %6313, i32* %5719, align 1
  %6314 = extractelement <2 x i32> %6310, i32 1
  store i32 %6314, i32* %5721, align 1
  %6315 = load i64, i64* %RBP.i, align 8
  %6316 = add i64 %6315, -164
  %6317 = add i64 %6308, 11
  store i64 %6317, i64* %3, align 8
  %6318 = load <2 x float>, <2 x float>* %6304, align 1
  %6319 = load <2 x i32>, <2 x i32>* %6298, align 1
  %6320 = inttoptr i64 %6316 to float*
  %6321 = load float, float* %6320, align 4
  %6322 = extractelement <2 x float> %6318, i32 0
  %6323 = fmul float %6322, %6321
  store float %6323, float* %6300, align 1
  %6324 = bitcast <2 x float> %6318 to <2 x i32>
  %6325 = extractelement <2 x i32> %6324, i32 1
  store i32 %6325, i32* %5718, align 1
  %6326 = extractelement <2 x i32> %6319, i32 0
  store i32 %6326, i32* %5719, align 1
  %6327 = extractelement <2 x i32> %6319, i32 1
  store i32 %6327, i32* %5721, align 1
  %6328 = add i64 %6315, -168
  %6329 = add i64 %6308, 19
  store i64 %6329, i64* %3, align 8
  %6330 = load <2 x float>, <2 x float>* %6304, align 1
  %6331 = extractelement <2 x float> %6330, i32 0
  %6332 = inttoptr i64 %6328 to float*
  store float %6331, float* %6332, align 4
  %6333 = load i64, i64* %RBP.i, align 8
  %6334 = add i64 %6333, -164
  %6335 = load i64, i64* %3, align 8
  %6336 = add i64 %6335, 8
  store i64 %6336, i64* %3, align 8
  %6337 = bitcast [32 x %union.VectorReg]* %52 to <2 x float>*
  %6338 = load <2 x float>, <2 x float>* %6337, align 1
  %6339 = load <2 x i32>, <2 x i32>* %5622, align 1
  %6340 = inttoptr i64 %6334 to float*
  %6341 = load float, float* %6340, align 4
  %6342 = extractelement <2 x float> %6338, i32 0
  %6343 = fadd float %6342, %6341
  store float %6343, float* %6274, align 1
  %6344 = bitcast <2 x float> %6338 to <2 x i32>
  %6345 = extractelement <2 x i32> %6344, i32 1
  store i32 %6345, i32* %6277, align 1
  %6346 = extractelement <2 x i32> %6339, i32 0
  store i32 %6346, i32* %6278, align 1
  %6347 = extractelement <2 x i32> %6339, i32 1
  store i32 %6347, i32* %6280, align 1
  %6348 = add i64 %6333, -172
  %6349 = add i64 %6335, 16
  store i64 %6349, i64* %3, align 8
  %6350 = load <2 x float>, <2 x float>* %6337, align 1
  %6351 = extractelement <2 x float> %6350, i32 0
  %6352 = inttoptr i64 %6348 to float*
  store float %6351, float* %6352, align 4
  %6353 = load i64, i64* %RBP.i, align 8
  %6354 = add i64 %6353, -164
  %6355 = load i64, i64* %3, align 8
  %6356 = add i64 %6355, 8
  store i64 %6356, i64* %3, align 8
  %6357 = inttoptr i64 %6354 to i32*
  %6358 = load i32, i32* %6357, align 4
  store i32 %6358, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6359 = add i64 %6353, -168
  %6360 = add i64 %6355, 16
  store i64 %6360, i64* %3, align 8
  %6361 = inttoptr i64 %6359 to i32*
  %6362 = load i32, i32* %6361, align 4
  store i32 %6362, i32* %5715, align 1
  %6363 = bitcast i8* %5717 to float*
  store float 0.000000e+00, float* %6363, align 1
  %6364 = bitcast i64* %5616 to float*
  store float 0.000000e+00, float* %6364, align 1
  %6365 = bitcast i8* %5720 to float*
  store float 0.000000e+00, float* %6365, align 1
  %6366 = add i64 %6353, -172
  %6367 = add i64 %6355, 24
  store i64 %6367, i64* %3, align 8
  %6368 = load <2 x float>, <2 x float>* %6304, align 1
  %6369 = load <2 x i32>, <2 x i32>* %6298, align 1
  %6370 = inttoptr i64 %6366 to float*
  %6371 = load float, float* %6370, align 4
  %6372 = extractelement <2 x float> %6368, i32 0
  %6373 = fdiv float %6372, %6371
  store float %6373, float* %6300, align 1
  %6374 = bitcast <2 x float> %6368 to <2 x i32>
  %6375 = extractelement <2 x i32> %6374, i32 1
  store i32 %6375, i32* %5718, align 1
  %6376 = extractelement <2 x i32> %6369, i32 0
  store i32 %6376, i32* %5719, align 1
  %6377 = extractelement <2 x i32> %6369, i32 1
  store i32 %6377, i32* %5721, align 1
  %6378 = load <2 x float>, <2 x float>* %6337, align 1
  %6379 = load <2 x i32>, <2 x i32>* %5622, align 1
  %6380 = load <2 x float>, <2 x float>* %6304, align 1
  %6381 = extractelement <2 x float> %6378, i32 0
  %6382 = extractelement <2 x float> %6380, i32 0
  %6383 = fadd float %6381, %6382
  store float %6383, float* %6274, align 1
  %6384 = bitcast <2 x float> %6378 to <2 x i32>
  %6385 = extractelement <2 x i32> %6384, i32 1
  store i32 %6385, i32* %6277, align 1
  %6386 = extractelement <2 x i32> %6379, i32 0
  store i32 %6386, i32* %6278, align 1
  %6387 = extractelement <2 x i32> %6379, i32 1
  store i32 %6387, i32* %6280, align 1
  %6388 = add i64 %6353, -176
  %6389 = add i64 %6355, 36
  store i64 %6389, i64* %3, align 8
  %6390 = load <2 x float>, <2 x float>* %6337, align 1
  %6391 = extractelement <2 x float> %6390, i32 0
  %6392 = inttoptr i64 %6388 to float*
  store float %6391, float* %6392, align 4
  %6393 = load i64, i64* %RBP.i, align 8
  %6394 = add i64 %6393, -164
  %6395 = load i64, i64* %3, align 8
  %6396 = add i64 %6395, 8
  store i64 %6396, i64* %3, align 8
  %6397 = inttoptr i64 %6394 to i32*
  %6398 = load i32, i32* %6397, align 4
  store i32 %6398, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6399 = add i64 %6395, 33125
  %6400 = add i64 %6395, 13
  %6401 = load i64, i64* %6, align 8
  %6402 = add i64 %6401, -8
  %6403 = inttoptr i64 %6402 to i64*
  store i64 %6400, i64* %6403, align 8
  store i64 %6402, i64* %6, align 8
  store i64 %6399, i64* %3, align 8
  %call2_402a33 = tail call %struct.Memory* @sub_40ab90._Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6399, %struct.Memory* %call2_4029ad)
  %6404 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414843_type* @G__0x414843 to i64), i64* %RDX.i4028, align 8
  %6405 = load i64, i64* %RBP.i, align 8
  %6406 = add i64 %6405, -164
  %6407 = add i64 %6404, 33
  store i64 %6407, i64* %3, align 8
  %6408 = inttoptr i64 %6406 to i32*
  %6409 = load i32, i32* %6408, align 4
  store i32 %6409, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6410 = add i64 %6404, 33288
  %6411 = add i64 %6404, 38
  %6412 = load i64, i64* %6, align 8
  %6413 = add i64 %6412, -8
  %6414 = inttoptr i64 %6413 to i64*
  store i64 %6411, i64* %6414, align 8
  store i64 %6413, i64* %6, align 8
  store i64 %6410, i64* %3, align 8
  %call2_402a59 = tail call %struct.Memory* @sub_40ac40._Z22test_hoisted_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6410, %struct.Memory* %call2_402a33)
  %6415 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41485e_type* @G__0x41485e to i64), i64* %RDX.i4028, align 8
  %6416 = load i64, i64* %RBP.i, align 8
  %6417 = add i64 %6416, -164
  %6418 = add i64 %6415, 33
  store i64 %6418, i64* %3, align 8
  %6419 = inttoptr i64 %6417 to i32*
  %6420 = load i32, i32* %6419, align 4
  store i32 %6420, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6421 = add i64 %6416, -168
  %6422 = add i64 %6415, 41
  store i64 %6422, i64* %3, align 8
  %6423 = inttoptr i64 %6421 to i32*
  %6424 = load i32, i32* %6423, align 4
  store i32 %6424, i32* %5715, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  store float 0.000000e+00, float* %6365, align 1
  %6425 = add i64 %6416, -172
  %6426 = add i64 %6415, 49
  store i64 %6426, i64* %3, align 8
  %6427 = inttoptr i64 %6425 to i32*
  %6428 = load i32, i32* %6427, align 4
  store i32 %6428, i32* %5624, align 1
  %6429 = bitcast i8* %5626 to float*
  store float 0.000000e+00, float* %6429, align 1
  %6430 = bitcast i64* %5628 to float*
  store float 0.000000e+00, float* %6430, align 1
  %6431 = bitcast i8* %5630 to float*
  store float 0.000000e+00, float* %6431, align 1
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %6433 = bitcast %union.VectorReg* %6432 to i8*
  %6434 = add i64 %6416, -176
  %6435 = add i64 %6415, 57
  store i64 %6435, i64* %3, align 8
  %6436 = inttoptr i64 %6434 to i32*
  %6437 = load i32, i32* %6436, align 4
  %6438 = bitcast %union.VectorReg* %6432 to i32*
  store i32 %6437, i32* %6438, align 1
  %6439 = getelementptr inbounds i8, i8* %6433, i64 4
  %6440 = bitcast i8* %6439 to float*
  store float 0.000000e+00, float* %6440, align 1
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %6442 = bitcast i64* %6441 to float*
  store float 0.000000e+00, float* %6442, align 1
  %6443 = getelementptr inbounds i8, i8* %6433, i64 12
  %6444 = bitcast i8* %6443 to float*
  store float 0.000000e+00, float* %6444, align 1
  %6445 = add i64 %6415, 33442
  %6446 = add i64 %6415, 62
  %6447 = load i64, i64* %6, align 8
  %6448 = add i64 %6447, -8
  %6449 = inttoptr i64 %6448 to i64*
  store i64 %6446, i64* %6449, align 8
  store i64 %6448, i64* %6, align 8
  store i64 %6445, i64* %3, align 8
  %call2_402a97 = tail call %struct.Memory* @sub_40ad00._Z14test_variable4If28custom_add_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6445, %struct.Memory* %call2_402a59)
  %6450 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41487b_type* @G__0x41487b to i64), i64* %RDX.i4028, align 8
  %6451 = load i64, i64* %RBP.i, align 8
  %6452 = add i64 %6451, -164
  %6453 = add i64 %6450, 33
  store i64 %6453, i64* %3, align 8
  %6454 = inttoptr i64 %6452 to i32*
  %6455 = load i32, i32* %6454, align 4
  store i32 %6455, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6456 = add i64 %6450, 33604
  %6457 = add i64 %6450, 38
  %6458 = load i64, i64* %6, align 8
  %6459 = add i64 %6458, -8
  %6460 = inttoptr i64 %6459 to i64*
  store i64 %6457, i64* %6460, align 8
  store i64 %6459, i64* %6, align 8
  store i64 %6456, i64* %3, align 8
  %call2_402abd = tail call %struct.Memory* @sub_40ade0._Z14test_variable1If19custom_sub_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6456, %struct.Memory* %call2_402a97)
  %6461 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414893_type* @G__0x414893 to i64), i64* %RDX.i4028, align 8
  %6462 = load i64, i64* %RBP.i, align 8
  %6463 = add i64 %6462, -164
  %6464 = add i64 %6461, 33
  store i64 %6464, i64* %3, align 8
  %6465 = inttoptr i64 %6463 to i32*
  %6466 = load i32, i32* %6465, align 4
  store i32 %6466, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6467 = add i64 %6462, -168
  %6468 = add i64 %6461, 41
  store i64 %6468, i64* %3, align 8
  %6469 = inttoptr i64 %6467 to i32*
  %6470 = load i32, i32* %6469, align 4
  store i32 %6470, i32* %5715, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  store float 0.000000e+00, float* %6365, align 1
  %6471 = add i64 %6462, -172
  %6472 = add i64 %6461, 49
  store i64 %6472, i64* %3, align 8
  %6473 = inttoptr i64 %6471 to i32*
  %6474 = load i32, i32* %6473, align 4
  store i32 %6474, i32* %5624, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  store float 0.000000e+00, float* %6431, align 1
  %6475 = add i64 %6462, -176
  %6476 = add i64 %6461, 57
  store i64 %6476, i64* %3, align 8
  %6477 = inttoptr i64 %6475 to i32*
  %6478 = load i32, i32* %6477, align 4
  store i32 %6478, i32* %6438, align 1
  store float 0.000000e+00, float* %6440, align 1
  store float 0.000000e+00, float* %6442, align 1
  store float 0.000000e+00, float* %6444, align 1
  %6479 = add i64 %6461, 33742
  %6480 = add i64 %6461, 62
  %6481 = load i64, i64* %6, align 8
  %6482 = add i64 %6481, -8
  %6483 = inttoptr i64 %6482 to i64*
  store i64 %6480, i64* %6483, align 8
  store i64 %6482, i64* %6, align 8
  store i64 %6479, i64* %3, align 8
  %call2_402afb = tail call %struct.Memory* @sub_40ae90._Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6479, %struct.Memory* %call2_402abd)
  %6484 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4148b5_type* @G__0x4148b5 to i64), i64* %RDX.i4028, align 8
  %6485 = load i64, i64* %RBP.i, align 8
  %6486 = add i64 %6485, -164
  %6487 = add i64 %6484, 33
  store i64 %6487, i64* %3, align 8
  %6488 = inttoptr i64 %6486 to i32*
  %6489 = load i32, i32* %6488, align 4
  store i32 %6489, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6490 = add i64 %6484, 33904
  %6491 = add i64 %6484, 38
  %6492 = load i64, i64* %6, align 8
  %6493 = add i64 %6492, -8
  %6494 = inttoptr i64 %6493 to i64*
  store i64 %6491, i64* %6494, align 8
  store i64 %6493, i64* %6, align 8
  store i64 %6490, i64* %3, align 8
  %call2_402b21 = tail call %struct.Memory* @sub_40af70._Z14test_variable1If24custom_multiply_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6490, %struct.Memory* %call2_402afb)
  %6495 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4148cd_type* @G__0x4148cd to i64), i64* %RDX.i4028, align 8
  %6496 = load i64, i64* %RBP.i, align 8
  %6497 = add i64 %6496, -164
  %6498 = add i64 %6495, 33
  store i64 %6498, i64* %3, align 8
  %6499 = inttoptr i64 %6497 to i32*
  %6500 = load i32, i32* %6499, align 4
  store i32 %6500, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6501 = add i64 %6496, -168
  %6502 = add i64 %6495, 41
  store i64 %6502, i64* %3, align 8
  %6503 = inttoptr i64 %6501 to i32*
  %6504 = load i32, i32* %6503, align 4
  store i32 %6504, i32* %5715, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  store float 0.000000e+00, float* %6365, align 1
  %6505 = add i64 %6496, -172
  %6506 = add i64 %6495, 49
  store i64 %6506, i64* %3, align 8
  %6507 = inttoptr i64 %6505 to i32*
  %6508 = load i32, i32* %6507, align 4
  store i32 %6508, i32* %5624, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  store float 0.000000e+00, float* %6431, align 1
  %6509 = add i64 %6496, -176
  %6510 = add i64 %6495, 57
  store i64 %6510, i64* %3, align 8
  %6511 = inttoptr i64 %6509 to i32*
  %6512 = load i32, i32* %6511, align 4
  store i32 %6512, i32* %6438, align 1
  store float 0.000000e+00, float* %6440, align 1
  store float 0.000000e+00, float* %6442, align 1
  store float 0.000000e+00, float* %6444, align 1
  %6513 = add i64 %6495, 34042
  %6514 = add i64 %6495, 62
  %6515 = load i64, i64* %6, align 8
  %6516 = add i64 %6515, -8
  %6517 = inttoptr i64 %6516 to i64*
  store i64 %6514, i64* %6517, align 8
  store i64 %6516, i64* %6, align 8
  store i64 %6513, i64* %3, align 8
  %call2_402b5f = tail call %struct.Memory* @sub_40b020._Z14test_variable4If33custom_multiply_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6513, %struct.Memory* %call2_402b21)
  %6518 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4148f0_type* @G__0x4148f0 to i64), i64* %RDX.i4028, align 8
  %6519 = load i64, i64* %RBP.i, align 8
  %6520 = add i64 %6519, -164
  %6521 = add i64 %6518, 33
  store i64 %6521, i64* %3, align 8
  %6522 = inttoptr i64 %6520 to i32*
  %6523 = load i32, i32* %6522, align 4
  store i32 %6523, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6524 = add i64 %6519, -168
  %6525 = add i64 %6518, 41
  store i64 %6525, i64* %3, align 8
  %6526 = inttoptr i64 %6524 to i32*
  %6527 = load i32, i32* %6526, align 4
  store i32 %6527, i32* %5715, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  store float 0.000000e+00, float* %6365, align 1
  %6528 = add i64 %6519, -172
  %6529 = add i64 %6518, 49
  store i64 %6529, i64* %3, align 8
  %6530 = inttoptr i64 %6528 to i32*
  %6531 = load i32, i32* %6530, align 4
  store i32 %6531, i32* %5624, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  store float 0.000000e+00, float* %6431, align 1
  %6532 = add i64 %6519, -176
  %6533 = add i64 %6518, 57
  store i64 %6533, i64* %3, align 8
  %6534 = inttoptr i64 %6532 to i32*
  %6535 = load i32, i32* %6534, align 4
  store i32 %6535, i32* %6438, align 1
  store float 0.000000e+00, float* %6440, align 1
  store float 0.000000e+00, float* %6442, align 1
  store float 0.000000e+00, float* %6444, align 1
  %6536 = add i64 %6518, 34204
  %6537 = add i64 %6518, 62
  %6538 = load i64, i64* %6, align 8
  %6539 = add i64 %6538, -8
  %6540 = inttoptr i64 %6539 to i64*
  store i64 %6537, i64* %6540, align 8
  store i64 %6539, i64* %6, align 8
  store i64 %6536, i64* %3, align 8
  %call2_402b9d = tail call %struct.Memory* @sub_40b100._Z14test_variable4If34custom_multiply_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6536, %struct.Memory* %call2_402b5f)
  %6541 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414914_type* @G__0x414914 to i64), i64* %RDX.i4028, align 8
  %6542 = load i64, i64* %RBP.i, align 8
  %6543 = add i64 %6542, -164
  %6544 = add i64 %6541, 33
  store i64 %6544, i64* %3, align 8
  %6545 = inttoptr i64 %6543 to i32*
  %6546 = load i32, i32* %6545, align 4
  store i32 %6546, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6547 = add i64 %6541, 34366
  %6548 = add i64 %6541, 38
  %6549 = load i64, i64* %6, align 8
  %6550 = add i64 %6549, -8
  %6551 = inttoptr i64 %6550 to i64*
  store i64 %6548, i64* %6551, align 8
  store i64 %6550, i64* %6, align 8
  store i64 %6547, i64* %3, align 8
  %call2_402bc3 = tail call %struct.Memory* @sub_40b1e0._Z14test_variable1If22custom_divide_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6547, %struct.Memory* %call2_402b9d)
  %6552 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41492a_type* @G__0x41492a to i64), i64* %RDX.i4028, align 8
  %6553 = load i64, i64* %RBP.i, align 8
  %6554 = add i64 %6553, -164
  %6555 = add i64 %6552, 33
  store i64 %6555, i64* %3, align 8
  %6556 = inttoptr i64 %6554 to i32*
  %6557 = load i32, i32* %6556, align 4
  store i32 %6557, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6558 = add i64 %6553, -168
  %6559 = add i64 %6552, 41
  store i64 %6559, i64* %3, align 8
  %6560 = inttoptr i64 %6558 to i32*
  %6561 = load i32, i32* %6560, align 4
  store i32 %6561, i32* %5715, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  store float 0.000000e+00, float* %6365, align 1
  %6562 = add i64 %6553, -172
  %6563 = add i64 %6552, 49
  store i64 %6563, i64* %3, align 8
  %6564 = inttoptr i64 %6562 to i32*
  %6565 = load i32, i32* %6564, align 4
  store i32 %6565, i32* %5624, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  store float 0.000000e+00, float* %6431, align 1
  %6566 = add i64 %6553, -176
  %6567 = add i64 %6552, 57
  store i64 %6567, i64* %3, align 8
  %6568 = inttoptr i64 %6566 to i32*
  %6569 = load i32, i32* %6568, align 4
  store i32 %6569, i32* %6438, align 1
  store float 0.000000e+00, float* %6440, align 1
  store float 0.000000e+00, float* %6442, align 1
  store float 0.000000e+00, float* %6444, align 1
  %6570 = add i64 %6552, 34504
  %6571 = add i64 %6552, 62
  %6572 = load i64, i64* %6, align 8
  %6573 = add i64 %6572, -8
  %6574 = inttoptr i64 %6573 to i64*
  store i64 %6571, i64* %6574, align 8
  store i64 %6573, i64* %6, align 8
  store i64 %6570, i64* %3, align 8
  %call2_402c01 = tail call %struct.Memory* @sub_40b290._Z14test_variable4If31custom_divide_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6570, %struct.Memory* %call2_402bc3)
  %6575 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41494a_type* @G__0x41494a to i64), i64* %RDX.i4028, align 8
  %6576 = load i64, i64* %RBP.i, align 8
  %6577 = add i64 %6576, -164
  %6578 = add i64 %6575, 33
  store i64 %6578, i64* %3, align 8
  %6579 = inttoptr i64 %6577 to i32*
  %6580 = load i32, i32* %6579, align 4
  store i32 %6580, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6581 = add i64 %6576, -168
  %6582 = add i64 %6575, 41
  store i64 %6582, i64* %3, align 8
  %6583 = inttoptr i64 %6581 to i32*
  %6584 = load i32, i32* %6583, align 4
  store i32 %6584, i32* %5715, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  store float 0.000000e+00, float* %6365, align 1
  %6585 = add i64 %6576, -172
  %6586 = add i64 %6575, 49
  store i64 %6586, i64* %3, align 8
  %6587 = inttoptr i64 %6585 to i32*
  %6588 = load i32, i32* %6587, align 4
  store i32 %6588, i32* %5624, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  store float 0.000000e+00, float* %6431, align 1
  %6589 = add i64 %6576, -176
  %6590 = add i64 %6575, 57
  store i64 %6590, i64* %3, align 8
  %6591 = inttoptr i64 %6589 to i32*
  %6592 = load i32, i32* %6591, align 4
  store i32 %6592, i32* %6438, align 1
  store float 0.000000e+00, float* %6440, align 1
  store float 0.000000e+00, float* %6442, align 1
  store float 0.000000e+00, float* %6444, align 1
  %6593 = add i64 %6575, 34666
  %6594 = add i64 %6575, 62
  %6595 = load i64, i64* %6, align 8
  %6596 = add i64 %6595, -8
  %6597 = inttoptr i64 %6596 to i64*
  store i64 %6594, i64* %6597, align 8
  store i64 %6596, i64* %6, align 8
  store i64 %6593, i64* %3, align 8
  %call2_402c3f = tail call %struct.Memory* @sub_40b370._Z14test_variable4If32custom_divide_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6593, %struct.Memory* %call2_402c01)
  %6598 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41496b_type* @G__0x41496b to i64), i64* %RDX.i4028, align 8
  %6599 = load i64, i64* %RBP.i, align 8
  %6600 = add i64 %6599, -164
  %6601 = add i64 %6598, 33
  store i64 %6601, i64* %3, align 8
  %6602 = inttoptr i64 %6600 to i32*
  %6603 = load i32, i32* %6602, align 4
  store i32 %6603, i32* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  store float 0.000000e+00, float* %6291, align 1
  %6604 = add i64 %6599, -168
  %6605 = add i64 %6598, 41
  store i64 %6605, i64* %3, align 8
  %6606 = inttoptr i64 %6604 to i32*
  %6607 = load i32, i32* %6606, align 4
  store i32 %6607, i32* %5715, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  store float 0.000000e+00, float* %6365, align 1
  %6608 = add i64 %6599, -172
  %6609 = add i64 %6598, 49
  store i64 %6609, i64* %3, align 8
  %6610 = inttoptr i64 %6608 to i32*
  %6611 = load i32, i32* %6610, align 4
  store i32 %6611, i32* %5624, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  store float 0.000000e+00, float* %6431, align 1
  %6612 = add i64 %6599, -176
  %6613 = add i64 %6598, 57
  store i64 %6613, i64* %3, align 8
  %6614 = inttoptr i64 %6612 to i32*
  %6615 = load i32, i32* %6614, align 4
  store i32 %6615, i32* %6438, align 1
  store float 0.000000e+00, float* %6440, align 1
  store float 0.000000e+00, float* %6442, align 1
  store float 0.000000e+00, float* %6444, align 1
  %6616 = add i64 %6598, 34828
  %6617 = add i64 %6598, 62
  %6618 = load i64, i64* %6, align 8
  %6619 = add i64 %6618, -8
  %6620 = inttoptr i64 %6619 to i64*
  store i64 %6617, i64* %6620, align 8
  store i64 %6619, i64* %6, align 8
  store i64 %6616, i64* %3, align 8
  %call2_402c7d = tail call %struct.Memory* @sub_40b450._Z14test_variable4If30custom_mixed_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6616, %struct.Memory* %call2_402c3f)
  %6621 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RAX.i4030.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64* %RCX.i4032, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 64000)) to i8), i8* %26, align 1
  %6622 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000) to i32), i32 255))
  %6623 = trunc i32 %6622 to i8
  %6624 = and i8 %6623, 1
  %6625 = xor i8 %6624, 1
  store i8 %6625, i8* %33, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000)), i64 4) to i8), i8 1), i8* %39, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 0) to i8), i8* %42, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 63) to i8), i8* %45, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 63), i64 lshr (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 63)), i64 2) to i8), i8* %51, align 1
  %6626 = load i64, i64* bitcast (%G_0x61a088_type* @G_0x61a088 to i64*), align 8
  store i64 %6626, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64* %RSI.i3042, align 8
  %6627 = add i64 %6621, 34990
  %6628 = add i64 %6621, 40
  %6629 = load i64, i64* %6, align 8
  %6630 = add i64 %6629, -8
  %6631 = inttoptr i64 %6630 to i64*
  store i64 %6628, i64* %6631, align 8
  store i64 %6630, i64* %6, align 8
  store i64 %6627, i64* %3, align 8
  %call2_402ca5 = tail call %struct.Memory* @sub_40b530._Z4fillIPddEvT_S1_T0_(%struct.State* %0, i64 %6627, %struct.Memory* %call2_402c7d)
  %6632 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414989_type* @G__0x414989 to i64), i64* %RDX.i4028, align 8
  %6633 = load i64, i64* bitcast (%G_0x1116d__rip__4205771__type* @G_0x1116d__rip__4205771_ to i64*), align 8
  store i64 %6633, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6634 = load i64, i64* %RBP.i, align 8
  %6635 = add i64 %6634, -40
  %6636 = add i64 %6632, 38
  store i64 %6636, i64* %3, align 8
  %6637 = inttoptr i64 %6635 to i64*
  %6638 = load i64, i64* %6637, align 8
  %6639 = add i64 %6634, -184
  %6640 = add i64 %6632, 46
  store i64 %6640, i64* %3, align 8
  %6641 = inttoptr i64 %6639 to i64*
  store i64 %6638, i64* %6641, align 8
  %6642 = load i64, i64* %3, align 8
  %6643 = load <2 x i32>, <2 x i32>* %5620, align 1
  %6644 = load <2 x i32>, <2 x i32>* %5622, align 1
  %6645 = extractelement <2 x i32> %6643, i32 0
  store i32 %6645, i32* %5715, align 1
  %6646 = extractelement <2 x i32> %6643, i32 1
  store i32 %6646, i32* %5718, align 1
  %6647 = extractelement <2 x i32> %6644, i32 0
  store i32 %6647, i32* %5719, align 1
  %6648 = extractelement <2 x i32> %6644, i32 1
  store i32 %6648, i32* %5721, align 1
  %6649 = load i64, i64* %RBP.i, align 8
  %6650 = add i64 %6649, -184
  %6651 = add i64 %6642, 11
  store i64 %6651, i64* %3, align 8
  %6652 = load double, double* %5615, align 1
  %6653 = inttoptr i64 %6650 to double*
  %6654 = load double, double* %6653, align 8
  %6655 = fmul double %6652, %6654
  store double %6655, double* %5615, align 1
  %6656 = add i64 %6649, -192
  %6657 = add i64 %6642, 19
  store i64 %6657, i64* %3, align 8
  %6658 = inttoptr i64 %6656 to double*
  store double %6655, double* %6658, align 8
  %6659 = load i64, i64* %RBP.i, align 8
  %6660 = add i64 %6659, -184
  %6661 = load i64, i64* %3, align 8
  %6662 = add i64 %6661, 8
  store i64 %6662, i64* %3, align 8
  %6663 = load double, double* %55, align 1
  %6664 = inttoptr i64 %6660 to double*
  %6665 = load double, double* %6664, align 8
  %6666 = fadd double %6663, %6665
  store double %6666, double* %55, align 1
  %6667 = add i64 %6659, -200
  %6668 = add i64 %6661, 16
  store i64 %6668, i64* %3, align 8
  %6669 = inttoptr i64 %6667 to double*
  store double %6666, double* %6669, align 8
  %6670 = load i64, i64* %RBP.i, align 8
  %6671 = add i64 %6670, -184
  %6672 = load i64, i64* %3, align 8
  %6673 = add i64 %6672, 8
  store i64 %6673, i64* %3, align 8
  %6674 = inttoptr i64 %6671 to double*
  %6675 = load double, double* %6674, align 8
  store double %6675, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %6676 = add i64 %6670, -192
  %6677 = add i64 %6672, 16
  store i64 %6677, i64* %3, align 8
  %6678 = inttoptr i64 %6676 to double*
  %6679 = load double, double* %6678, align 8
  store double %6679, double* %5615, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6680 = add i64 %6670, -200
  %6681 = add i64 %6672, 24
  store i64 %6681, i64* %3, align 8
  %6682 = inttoptr i64 %6680 to double*
  %6683 = load double, double* %6682, align 8
  %6684 = fdiv double %6679, %6683
  store double %6684, double* %5615, align 1
  store i64 0, i64* %5616, align 1
  %6685 = fadd double %6675, %6684
  store double %6685, double* %55, align 1
  store i64 0, i64* %57, align 1
  %6686 = add i64 %6670, -208
  %6687 = add i64 %6672, 36
  store i64 %6687, i64* %3, align 8
  %6688 = inttoptr i64 %6686 to double*
  store double %6685, double* %6688, align 8
  %6689 = load i64, i64* %RBP.i, align 8
  %6690 = add i64 %6689, -184
  %6691 = load i64, i64* %3, align 8
  %6692 = add i64 %6691, 8
  store i64 %6692, i64* %3, align 8
  %6693 = inttoptr i64 %6690 to i64*
  %6694 = load i64, i64* %6693, align 8
  store i64 %6694, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6695 = add i64 %6691, 34897
  %6696 = add i64 %6691, 13
  %6697 = load i64, i64* %6, align 8
  %6698 = add i64 %6697, -8
  %6699 = inttoptr i64 %6698 to i64*
  store i64 %6696, i64* %6699, align 8
  store i64 %6698, i64* %6, align 8
  store i64 %6695, i64* %3, align 8
  %call2_402d27 = tail call %struct.Memory* @sub_40b570._Z14test_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6695, %struct.Memory* %call2_402ca5)
  %6700 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41499d_type* @G__0x41499d to i64), i64* %RDX.i4028, align 8
  %6701 = load i64, i64* %RBP.i, align 8
  %6702 = add i64 %6701, -184
  %6703 = add i64 %6700, 33
  store i64 %6703, i64* %3, align 8
  %6704 = inttoptr i64 %6702 to i64*
  %6705 = load i64, i64* %6704, align 8
  store i64 %6705, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6706 = add i64 %6700, 35060
  %6707 = add i64 %6700, 38
  %6708 = load i64, i64* %6, align 8
  %6709 = add i64 %6708, -8
  %6710 = inttoptr i64 %6709 to i64*
  store i64 %6707, i64* %6710, align 8
  store i64 %6709, i64* %6, align 8
  store i64 %6706, i64* %3, align 8
  %call2_402d4d = tail call %struct.Memory* @sub_40b620._Z22test_hoisted_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6706, %struct.Memory* %call2_402d27)
  %6711 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4149b9_type* @G__0x4149b9 to i64), i64* %RDX.i4028, align 8
  %6712 = load i64, i64* %RBP.i, align 8
  %6713 = add i64 %6712, -184
  %6714 = add i64 %6711, 33
  store i64 %6714, i64* %3, align 8
  %6715 = inttoptr i64 %6713 to i64*
  %6716 = load i64, i64* %6715, align 8
  store i64 %6716, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6717 = add i64 %6712, -192
  %6718 = add i64 %6711, 41
  store i64 %6718, i64* %3, align 8
  %6719 = inttoptr i64 %6717 to i64*
  %6720 = load i64, i64* %6719, align 8
  store i64 %6720, i64* %5698, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6721 = add i64 %6712, -200
  %6722 = add i64 %6711, 49
  store i64 %6722, i64* %3, align 8
  %6723 = inttoptr i64 %6721 to i64*
  %6724 = load i64, i64* %6723, align 8
  %6725 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5618, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %6724, i64* %6725, align 1
  store double 0.000000e+00, double* %5726, align 1
  %6726 = add i64 %6712, -208
  %6727 = add i64 %6711, 57
  store i64 %6727, i64* %3, align 8
  %6728 = inttoptr i64 %6726 to i64*
  %6729 = load i64, i64* %6728, align 8
  %6730 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6432, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %6729, i64* %6730, align 1
  %6731 = bitcast i64* %6441 to double*
  store double 0.000000e+00, double* %6731, align 1
  %6732 = add i64 %6711, 35214
  %6733 = add i64 %6711, 62
  %6734 = load i64, i64* %6, align 8
  %6735 = add i64 %6734, -8
  %6736 = inttoptr i64 %6735 to i64*
  store i64 %6733, i64* %6736, align 8
  store i64 %6735, i64* %6, align 8
  store i64 %6732, i64* %3, align 8
  %call2_402d8b = tail call %struct.Memory* @sub_40b6e0._Z14test_variable4Id28custom_add_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6732, %struct.Memory* %call2_402d4d)
  %6737 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4149d7_type* @G__0x4149d7 to i64), i64* %RDX.i4028, align 8
  %6738 = load i64, i64* %RBP.i, align 8
  %6739 = add i64 %6738, -184
  %6740 = add i64 %6737, 33
  store i64 %6740, i64* %3, align 8
  %6741 = inttoptr i64 %6739 to i64*
  %6742 = load i64, i64* %6741, align 8
  store i64 %6742, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6743 = add i64 %6737, 35376
  %6744 = add i64 %6737, 38
  %6745 = load i64, i64* %6, align 8
  %6746 = add i64 %6745, -8
  %6747 = inttoptr i64 %6746 to i64*
  store i64 %6744, i64* %6747, align 8
  store i64 %6746, i64* %6, align 8
  store i64 %6743, i64* %3, align 8
  %call2_402db1 = tail call %struct.Memory* @sub_40b7c0._Z14test_variable1Id19custom_sub_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6743, %struct.Memory* %call2_402d8b)
  %6748 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4149f0_type* @G__0x4149f0 to i64), i64* %RDX.i4028, align 8
  %6749 = load i64, i64* %RBP.i, align 8
  %6750 = add i64 %6749, -184
  %6751 = add i64 %6748, 33
  store i64 %6751, i64* %3, align 8
  %6752 = inttoptr i64 %6750 to i64*
  %6753 = load i64, i64* %6752, align 8
  store i64 %6753, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6754 = add i64 %6749, -192
  %6755 = add i64 %6748, 41
  store i64 %6755, i64* %3, align 8
  %6756 = inttoptr i64 %6754 to i64*
  %6757 = load i64, i64* %6756, align 8
  store i64 %6757, i64* %5698, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6758 = add i64 %6749, -200
  %6759 = add i64 %6748, 49
  store i64 %6759, i64* %3, align 8
  %6760 = inttoptr i64 %6758 to i64*
  %6761 = load i64, i64* %6760, align 8
  store i64 %6761, i64* %6725, align 1
  store double 0.000000e+00, double* %5726, align 1
  %6762 = add i64 %6749, -208
  %6763 = add i64 %6748, 57
  store i64 %6763, i64* %3, align 8
  %6764 = inttoptr i64 %6762 to i64*
  %6765 = load i64, i64* %6764, align 8
  store i64 %6765, i64* %6730, align 1
  store double 0.000000e+00, double* %6731, align 1
  %6766 = add i64 %6748, 35514
  %6767 = add i64 %6748, 62
  %6768 = load i64, i64* %6, align 8
  %6769 = add i64 %6768, -8
  %6770 = inttoptr i64 %6769 to i64*
  store i64 %6767, i64* %6770, align 8
  store i64 %6769, i64* %6, align 8
  store i64 %6766, i64* %3, align 8
  %call2_402def = tail call %struct.Memory* @sub_40b870._Z14test_variable4Id28custom_sub_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6766, %struct.Memory* %call2_402db1)
  %6771 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a13_type* @G__0x414a13 to i64), i64* %RDX.i4028, align 8
  %6772 = load i64, i64* %RBP.i, align 8
  %6773 = add i64 %6772, -184
  %6774 = add i64 %6771, 33
  store i64 %6774, i64* %3, align 8
  %6775 = inttoptr i64 %6773 to i64*
  %6776 = load i64, i64* %6775, align 8
  store i64 %6776, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6777 = add i64 %6771, 35676
  %6778 = add i64 %6771, 38
  %6779 = load i64, i64* %6, align 8
  %6780 = add i64 %6779, -8
  %6781 = inttoptr i64 %6780 to i64*
  store i64 %6778, i64* %6781, align 8
  store i64 %6780, i64* %6, align 8
  store i64 %6777, i64* %3, align 8
  %call2_402e15 = tail call %struct.Memory* @sub_40b950._Z14test_variable1Id24custom_multiply_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6777, %struct.Memory* %call2_402def)
  %6782 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a2c_type* @G__0x414a2c to i64), i64* %RDX.i4028, align 8
  %6783 = load i64, i64* %RBP.i, align 8
  %6784 = add i64 %6783, -184
  %6785 = add i64 %6782, 33
  store i64 %6785, i64* %3, align 8
  %6786 = inttoptr i64 %6784 to i64*
  %6787 = load i64, i64* %6786, align 8
  store i64 %6787, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6788 = add i64 %6783, -192
  %6789 = add i64 %6782, 41
  store i64 %6789, i64* %3, align 8
  %6790 = inttoptr i64 %6788 to i64*
  %6791 = load i64, i64* %6790, align 8
  store i64 %6791, i64* %5698, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6792 = add i64 %6783, -200
  %6793 = add i64 %6782, 49
  store i64 %6793, i64* %3, align 8
  %6794 = inttoptr i64 %6792 to i64*
  %6795 = load i64, i64* %6794, align 8
  store i64 %6795, i64* %6725, align 1
  store double 0.000000e+00, double* %5726, align 1
  %6796 = add i64 %6783, -208
  %6797 = add i64 %6782, 57
  store i64 %6797, i64* %3, align 8
  %6798 = inttoptr i64 %6796 to i64*
  %6799 = load i64, i64* %6798, align 8
  store i64 %6799, i64* %6730, align 1
  store double 0.000000e+00, double* %6731, align 1
  %6800 = add i64 %6782, 35814
  %6801 = add i64 %6782, 62
  %6802 = load i64, i64* %6, align 8
  %6803 = add i64 %6802, -8
  %6804 = inttoptr i64 %6803 to i64*
  store i64 %6801, i64* %6804, align 8
  store i64 %6803, i64* %6, align 8
  store i64 %6800, i64* %3, align 8
  %call2_402e53 = tail call %struct.Memory* @sub_40ba00._Z14test_variable4Id33custom_multiply_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6800, %struct.Memory* %call2_402e15)
  %6805 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a50_type* @G__0x414a50 to i64), i64* %RDX.i4028, align 8
  %6806 = load i64, i64* %RBP.i, align 8
  %6807 = add i64 %6806, -184
  %6808 = add i64 %6805, 33
  store i64 %6808, i64* %3, align 8
  %6809 = inttoptr i64 %6807 to i64*
  %6810 = load i64, i64* %6809, align 8
  store i64 %6810, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6811 = add i64 %6806, -192
  %6812 = add i64 %6805, 41
  store i64 %6812, i64* %3, align 8
  %6813 = inttoptr i64 %6811 to i64*
  %6814 = load i64, i64* %6813, align 8
  store i64 %6814, i64* %5698, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6815 = add i64 %6806, -200
  %6816 = add i64 %6805, 49
  store i64 %6816, i64* %3, align 8
  %6817 = inttoptr i64 %6815 to i64*
  %6818 = load i64, i64* %6817, align 8
  store i64 %6818, i64* %6725, align 1
  store double 0.000000e+00, double* %5726, align 1
  %6819 = add i64 %6806, -208
  %6820 = add i64 %6805, 57
  store i64 %6820, i64* %3, align 8
  %6821 = inttoptr i64 %6819 to i64*
  %6822 = load i64, i64* %6821, align 8
  store i64 %6822, i64* %6730, align 1
  store double 0.000000e+00, double* %6731, align 1
  %6823 = add i64 %6805, 35976
  %6824 = add i64 %6805, 62
  %6825 = load i64, i64* %6, align 8
  %6826 = add i64 %6825, -8
  %6827 = inttoptr i64 %6826 to i64*
  store i64 %6824, i64* %6827, align 8
  store i64 %6826, i64* %6, align 8
  store i64 %6823, i64* %3, align 8
  %call2_402e91 = tail call %struct.Memory* @sub_40bae0._Z14test_variable4Id34custom_multiply_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6823, %struct.Memory* %call2_402e53)
  %6828 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a75_type* @G__0x414a75 to i64), i64* %RDX.i4028, align 8
  %6829 = load i64, i64* %RBP.i, align 8
  %6830 = add i64 %6829, -184
  %6831 = add i64 %6828, 33
  store i64 %6831, i64* %3, align 8
  %6832 = inttoptr i64 %6830 to i64*
  %6833 = load i64, i64* %6832, align 8
  store i64 %6833, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6834 = add i64 %6828, 36138
  %6835 = add i64 %6828, 38
  %6836 = load i64, i64* %6, align 8
  %6837 = add i64 %6836, -8
  %6838 = inttoptr i64 %6837 to i64*
  store i64 %6835, i64* %6838, align 8
  store i64 %6837, i64* %6, align 8
  store i64 %6834, i64* %3, align 8
  %call2_402eb7 = tail call %struct.Memory* @sub_40bbc0._Z14test_variable1Id22custom_divide_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6834, %struct.Memory* %call2_402e91)
  %6839 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a8c_type* @G__0x414a8c to i64), i64* %RDX.i4028, align 8
  %6840 = load i64, i64* %RBP.i, align 8
  %6841 = add i64 %6840, -184
  %6842 = add i64 %6839, 33
  store i64 %6842, i64* %3, align 8
  %6843 = inttoptr i64 %6841 to i64*
  %6844 = load i64, i64* %6843, align 8
  store i64 %6844, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6845 = add i64 %6840, -192
  %6846 = add i64 %6839, 41
  store i64 %6846, i64* %3, align 8
  %6847 = inttoptr i64 %6845 to i64*
  %6848 = load i64, i64* %6847, align 8
  store i64 %6848, i64* %5698, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6849 = add i64 %6840, -200
  %6850 = add i64 %6839, 49
  store i64 %6850, i64* %3, align 8
  %6851 = inttoptr i64 %6849 to i64*
  %6852 = load i64, i64* %6851, align 8
  store i64 %6852, i64* %6725, align 1
  store double 0.000000e+00, double* %5726, align 1
  %6853 = add i64 %6840, -208
  %6854 = add i64 %6839, 57
  store i64 %6854, i64* %3, align 8
  %6855 = inttoptr i64 %6853 to i64*
  %6856 = load i64, i64* %6855, align 8
  store i64 %6856, i64* %6730, align 1
  store double 0.000000e+00, double* %6731, align 1
  %6857 = add i64 %6839, 36276
  %6858 = add i64 %6839, 62
  %6859 = load i64, i64* %6, align 8
  %6860 = add i64 %6859, -8
  %6861 = inttoptr i64 %6860 to i64*
  store i64 %6858, i64* %6861, align 8
  store i64 %6860, i64* %6, align 8
  store i64 %6857, i64* %3, align 8
  %call2_402ef5 = tail call %struct.Memory* @sub_40bc70._Z14test_variable4Id31custom_divide_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6857, %struct.Memory* %call2_402eb7)
  %6862 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414aad_type* @G__0x414aad to i64), i64* %RDX.i4028, align 8
  %6863 = load i64, i64* %RBP.i, align 8
  %6864 = add i64 %6863, -184
  %6865 = add i64 %6862, 33
  store i64 %6865, i64* %3, align 8
  %6866 = inttoptr i64 %6864 to i64*
  %6867 = load i64, i64* %6866, align 8
  store i64 %6867, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6868 = add i64 %6863, -192
  %6869 = add i64 %6862, 41
  store i64 %6869, i64* %3, align 8
  %6870 = inttoptr i64 %6868 to i64*
  %6871 = load i64, i64* %6870, align 8
  store i64 %6871, i64* %5698, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6872 = add i64 %6863, -200
  %6873 = add i64 %6862, 49
  store i64 %6873, i64* %3, align 8
  %6874 = inttoptr i64 %6872 to i64*
  %6875 = load i64, i64* %6874, align 8
  store i64 %6875, i64* %6725, align 1
  store double 0.000000e+00, double* %5726, align 1
  %6876 = add i64 %6863, -208
  %6877 = add i64 %6862, 57
  store i64 %6877, i64* %3, align 8
  %6878 = inttoptr i64 %6876 to i64*
  %6879 = load i64, i64* %6878, align 8
  store i64 %6879, i64* %6730, align 1
  store double 0.000000e+00, double* %6731, align 1
  %6880 = add i64 %6862, 36438
  %6881 = add i64 %6862, 62
  %6882 = load i64, i64* %6, align 8
  %6883 = add i64 %6882, -8
  %6884 = inttoptr i64 %6883 to i64*
  store i64 %6881, i64* %6884, align 8
  store i64 %6883, i64* %6, align 8
  store i64 %6880, i64* %3, align 8
  %call2_402f33 = tail call %struct.Memory* @sub_40bd50._Z14test_variable4Id32custom_divide_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6880, %struct.Memory* %call2_402ef5)
  %6885 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414acf_type* @G__0x414acf to i64), i64* %RDX.i4028, align 8
  %6886 = load i64, i64* %RBP.i, align 8
  %6887 = add i64 %6886, -184
  %6888 = add i64 %6885, 33
  store i64 %6888, i64* %3, align 8
  %6889 = inttoptr i64 %6887 to i64*
  %6890 = load i64, i64* %6889, align 8
  store i64 %6890, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6891 = add i64 %6886, -192
  %6892 = add i64 %6885, 41
  store i64 %6892, i64* %3, align 8
  %6893 = inttoptr i64 %6891 to i64*
  %6894 = load i64, i64* %6893, align 8
  store i64 %6894, i64* %5698, align 1
  store double 0.000000e+00, double* %5617, align 1
  %6895 = add i64 %6886, -200
  %6896 = add i64 %6885, 49
  store i64 %6896, i64* %3, align 8
  %6897 = inttoptr i64 %6895 to i64*
  %6898 = load i64, i64* %6897, align 8
  store i64 %6898, i64* %6725, align 1
  store double 0.000000e+00, double* %5726, align 1
  %6899 = add i64 %6886, -208
  %6900 = add i64 %6885, 57
  store i64 %6900, i64* %3, align 8
  %6901 = inttoptr i64 %6899 to i64*
  %6902 = load i64, i64* %6901, align 8
  store i64 %6902, i64* %6730, align 1
  store double 0.000000e+00, double* %6731, align 1
  %6903 = add i64 %6885, 36600
  %6904 = add i64 %6885, 62
  %6905 = load i64, i64* %6, align 8
  %6906 = add i64 %6905, -8
  %6907 = inttoptr i64 %6906 to i64*
  store i64 %6904, i64* %6907, align 8
  store i64 %6906, i64* %6, align 8
  store i64 %6903, i64* %3, align 8
  %call2_402f71 = tail call %struct.Memory* @sub_40be30._Z14test_variable4Id30custom_mixed_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6903, %struct.Memory* %call2_402f33)
  %6908 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i4030.pre-phi, align 8
  %6909 = load i64, i64* %6, align 8
  %6910 = add i64 %6909, 368
  store i64 %6910, i64* %6, align 8
  %6911 = icmp ugt i64 %6909, -369
  %6912 = zext i1 %6911 to i8
  store i8 %6912, i8* %26, align 1
  %6913 = trunc i64 %6910 to i32
  %6914 = and i32 %6913, 255
  %6915 = tail call i32 @llvm.ctpop.i32(i32 %6914)
  %6916 = trunc i32 %6915 to i8
  %6917 = and i8 %6916, 1
  %6918 = xor i8 %6917, 1
  store i8 %6918, i8* %33, align 1
  %6919 = xor i64 %6909, 16
  %6920 = xor i64 %6919, %6910
  %6921 = lshr i64 %6920, 4
  %6922 = trunc i64 %6921 to i8
  %6923 = and i8 %6922, 1
  store i8 %6923, i8* %39, align 1
  %6924 = icmp eq i64 %6910, 0
  %6925 = zext i1 %6924 to i8
  store i8 %6925, i8* %42, align 1
  %6926 = lshr i64 %6910, 63
  %6927 = trunc i64 %6926 to i8
  store i8 %6927, i8* %45, align 1
  %6928 = lshr i64 %6909, 63
  %6929 = xor i64 %6926, %6928
  %6930 = add nuw nsw i64 %6929, %6926
  %6931 = icmp eq i64 %6930, 2
  %6932 = zext i1 %6931 to i8
  store i8 %6932, i8* %51, align 1
  %6933 = add i64 %6908, 10
  store i64 %6933, i64* %3, align 8
  %6934 = add i64 %6909, 376
  %6935 = inttoptr i64 %6910 to i64*
  %6936 = load i64, i64* %6935, align 8
  store i64 %6936, i64* %RBX.i885, align 8
  store i64 %6934, i64* %6, align 8
  %6937 = add i64 %6908, 12
  store i64 %6937, i64* %3, align 8
  %6938 = add i64 %6909, 384
  %6939 = inttoptr i64 %6934 to i64*
  %6940 = load i64, i64* %6939, align 8
  store i64 %6940, i64* %R14.i837, align 8
  store i64 %6938, i64* %6, align 8
  %6941 = add i64 %6908, 13
  store i64 %6941, i64* %3, align 8
  %6942 = add i64 %6909, 392
  %6943 = inttoptr i64 %6938 to i64*
  %6944 = load i64, i64* %6943, align 8
  store i64 %6944, i64* %RBP.i, align 8
  store i64 %6942, i64* %6, align 8
  %6945 = add i64 %6908, 14
  store i64 %6945, i64* %3, align 8
  %6946 = inttoptr i64 %6942 to i64*
  %6947 = load i64, i64* %6946, align 8
  store i64 %6947, i64* %3, align 8
  %6948 = add i64 %6909, 400
  store i64 %6948, i64* %6, align 8
  ret %struct.Memory* %call2_402f71
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x170___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 368
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x12faa__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x12faa__rip__4198022__type* @G_0x12faa__rip__4198022_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jle_.L_400eb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__0x61a080(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x61a080_type* @G_0x61a080 to i32*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jle_.L_400ed7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.atof_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__0x61a088(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x61a088_type* @G_0x61a088 to i64*), align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jle_.L_400ef3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %16 = add i64 %3, %.v
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6317c0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1f40___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8000, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x414616___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414616_type* @G__0x414616 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si_0x219174__rip____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load double, double* bitcast (%G_0x219174__rip__4198164__type* @G_0x219174__rip__4198164_ to double*), align 8
  %6 = tail call double @llvm.trunc.f64(double %5)
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp ogt double %7, 0x41DFFFFFFFC00000
  %9 = fptosi double %6 to i32
  %10 = zext i32 %9 to i64
  %11 = select i1 %8, i64 2147483648, i64 %10
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x66a200___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x66a200_type* @G__0x66a200 to i64), i64 4294967295), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl__r9b___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %R9B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x66c140___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x66c140_type* @G__0x66c140 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0xdc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPaaEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvttsd2si_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to double*
  %8 = load double, double* %7, align 8
  %9 = tail call double @llvm.trunc.f64(double %8)
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x41DFFFFFFFC00000
  %12 = fptosi double %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r9b__MINUS0x29__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x29__rbp____r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addb__r9b___r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R9B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = shl i8 %4, 1
  store i8 %7, i8* %R9B, align 1
  %8 = icmp ult i8 %7, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = zext i8 %7 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = lshr i8 %4, 3
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i8 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i8 %4, 6
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %4, 7
  %27 = xor i8 %24, %26
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r9b__MINUS0x2a__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x29__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -41
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
  %18 = xor i32 %6, %7
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r9b__MINUS0x2b__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x2a__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x2b__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_idivl__r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R11D, align 4
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

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movl_MINUS0xf4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movb__dl___r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r9b__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x29__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -41
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x413fdb___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x413fdb_type* @G__0x413fdb to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1f40___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8000, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x413ff0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x413ff0_type* @G__0x413ff0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xf8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsbl_MINUS0x2c__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x2b__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x2a__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x41400d____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276237, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_add_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41402c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41402c_type* @G__0x41402c to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_sub_variableIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414046____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276294, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_sub_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41406a___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41406a_type* @G__0x41406a to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ia24custom_multiply_variableIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414084____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276356, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia33custom_multiply_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4140a9____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276393, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4140cf___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4140cf_type* @G__0x4140cf to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ia22custom_divide_variableIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4140e7____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276455, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia31custom_divide_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414109____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276489, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia32custom_divide_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41412c____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276524, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia30custom_mixed_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41414c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41414c_type* @G__0x41414c to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_variable_andIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414161____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276577, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_multiple_variable_andIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41417f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41417f_type* @G__0x41417f to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ia18custom_variable_orIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414193____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276627, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia27custom_multiple_variable_orIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4141b0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4141b0_type* @G__0x4141b0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ia19custom_variable_xorIaEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4141c5____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276677, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ia28custom_multiple_variable_xorIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvttsd2si_0x218e27__rip____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load double, double* bitcast (%G_0x218e27__rip__4199009__type* @G_0x218e27__rip__4199009_ to double*), align 8
  %6 = tail call double @llvm.trunc.f64(double %5)
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp ogt double %7, 0x41DFFFFFFFC00000
  %9 = fptosi double %6 to i32
  %10 = zext i32 %9 to i64
  %11 = select i1 %8, i64 2147483648, i64 %10
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6682c0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %BL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__bl___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %BL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x66a200___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x66a200_type* @G__0x66a200 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPhhEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movb__bl__MINUS0x2d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x2d__rbp____bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -45
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %BL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addb__bl___bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %BL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = shl i8 %4, 1
  store i8 %7, i8* %BL, align 1
  %8 = icmp ult i8 %7, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = zext i8 %7 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = lshr i8 %4, 3
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i8 %7, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i8 %4, 6
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %4, 7
  %27 = xor i8 %24, %26
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__bl__MINUS0x2e__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -46
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x2d__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -45
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__bl__MINUS0x2f__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -47
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x2e__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -46
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x2f__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -47
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x104__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x108__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = udiv i64 %17, %5
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400478
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400478
  %24 = urem i64 %17, %5
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

define %struct.Memory* @routine_movl_MINUS0x104__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

define %struct.Memory* @routine_movb__cl___bl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %BL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__bl__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x2d__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -45
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x413fda___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x413fda_type* @G__0x413fda to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x100__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x10c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x413fef___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x413fef_type* @G__0x413fef to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movzbl_MINUS0x30__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x2f__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -47
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x41400c____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276236, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_add_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41402b___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41402b_type* @G__0x41402b to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_sub_variableIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414045____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276293, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_sub_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414069___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414069_type* @G__0x414069 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ih24custom_multiply_variableIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414083____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276355, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih33custom_multiply_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4140a8____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276392, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih34custom_multiply_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4140ce___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4140ce_type* @G__0x4140ce to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ih22custom_divide_variableIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4140e6____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276454, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih31custom_divide_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414108____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276488, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih32custom_divide_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41412b____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276523, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih30custom_mixed_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41414b___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41414b_type* @G__0x41414b to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_variable_andIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414160____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276576, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_multiple_variable_andIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41417e___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41417e_type* @G__0x41417e to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ih18custom_variable_orIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414192____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276626, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih27custom_multiple_variable_orIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4141af___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4141af_type* @G__0x4141af to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ih19custom_variable_xorIhEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4141c4____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276676, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvttsd2si_0x218af2__rip____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load double, double* bitcast (%G_0x218af2__rip__4199830__type* @G_0x218af2__rip__4199830_ to double*), align 8
  %6 = tail call double @llvm.trunc.f64(double %5)
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp ogt double %7, 0x41DFFFFFFFC00000
  %9 = fptosi double %6 to i32
  %10 = zext i32 %9 to i64
  %11 = select i1 %8, i64 2147483648, i64 %10
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x664440___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__ax___r14w(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R14W, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl__r14w___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R14W, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i16 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6682c0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x118__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPssEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movw__r14w__MINUS0x32__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -50
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x32__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -50
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = trunc i64 %3 to i32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = shl i32 %4, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %7, %4
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %7, 254
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 3
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %4, 30
  %26 = and i32 %25, 1
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__r14w__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__r14w__MINUS0x36__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -54
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_MINUS0x36__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -54
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x120__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
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
block_400478:
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

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movl_MINUS0x11c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__cx___r14w(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %CX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R14W, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__r14w__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_MINUS0x32__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -50
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4141e3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4141e3_type* @G__0x4141e3 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x118__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4141f9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4141f9_type* @G__0x4141f9 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movswl_MINUS0x38__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_MINUS0x36__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -54
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x414217____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276759, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414237___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414237_type* @G__0x414237 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414252____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276818, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414277___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414277_type* @G__0x414277 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414292____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276882, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4142b8____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276920, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4142df___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4142df_type* @G__0x4142df to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4142f8____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276984, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41431b____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277019, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41433f____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277055, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414360___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414360_type* @G__0x414360 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414376____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277110, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414395___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414395_type* @G__0x414395 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4143aa____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277162, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4143c8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4143c8_type* @G__0x4143c8 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4143de____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277214, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvttsd2si_0x2187b3__rip____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load double, double* bitcast (%G_0x2187b3__rip__4200661__type* @G_0x2187b3__rip__4200661_ to double*), align 8
  %6 = tail call double @llvm.trunc.f64(double %5)
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp ogt double %7, 0x41DFFFFFFFC00000
  %9 = fptosi double %6 to i32
  %10 = zext i32 %9 to i64
  %11 = select i1 %8, i64 2147483648, i64 %10
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6605c0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl__r14w___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i16, i16* %R14W, align 2
  %5 = zext i16 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x664440___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPttEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movw__r14w__MINUS0x3a__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -58
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x3a__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -58
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__r14w__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__r14w__MINUS0x3e__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -62
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x3e__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -62
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x10c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x130__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %11
  %18 = udiv i64 %17, %5
  %19 = and i64 %18, 4294967295
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400478
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400478
  %24 = urem i64 %17, %5
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

define %struct.Memory* @routine_movl_MINUS0x12c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__dx___r14w(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %R14W, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__r14w__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14W = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i16, i16* %R14W, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x3a__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -58
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4141e2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4141e2_type* @G__0x4141e2 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x128__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4141f8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4141f8_type* @G__0x4141f8 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movzwl_MINUS0x40__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzwl_MINUS0x3e__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -62
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x414216____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276758, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414236___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414236_type* @G__0x414236 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414251____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276817, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414276___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414276_type* @G__0x414276 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414291____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276881, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4142b7____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276919, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4142de___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4142de_type* @G__0x4142de to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4142f7____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4276983, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41431a____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277018, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41433e____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277054, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41435f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41435f_type* @G__0x41435f to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414375____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277109, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414394___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414394_type* @G__0x414394 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4143a9____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277161, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4143c7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4143c7_type* @G__0x4143c7 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4143dd____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277213, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x21846b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x21846b__rip__4201501__type* @G_0x21846b__rip__4201501_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6588c0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x6605c0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPiiEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x140__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x13c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4143fd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4143fd_type* @G__0x4143fd to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x138__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414413___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414413_type* @G__0x414413 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x414431____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277297, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_add_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414451___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414451_type* @G__0x414451 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41446c____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277356, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_sub_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414491___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414491_type* @G__0x414491 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ii24custom_multiply_variableIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4144ac____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277420, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii33custom_multiply_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4144d2____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277458, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii34custom_multiply_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4144f9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4144f9_type* @G__0x4144f9 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ii22custom_divide_variableIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414512____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277522, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii31custom_divide_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414535____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277557, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii32custom_divide_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414559____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277593, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii30custom_mixed_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41457a___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41457a_type* @G__0x41457a to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_variable_andIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414590____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277648, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_multiple_variable_andIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4145af___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4145af_type* @G__0x4145af to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ii18custom_variable_orIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4145c4____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277700, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii27custom_multiple_variable_orIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4145e2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4145e2_type* @G__0x4145e2 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ii19custom_variable_xorIiEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4145f8____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277752, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvttsd2si_0x21817c__rip____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load double, double* bitcast (%G_0x21817c__rip__4202252__type* @G_0x21817c__rip__4202252_ to double*), align 8
  %6 = tail call double @llvm.trunc.f64(double %5)
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp ogt double %7, 0x43E0000000000000
  %9 = fptosi double %6 to i64
  %10 = select i1 %8, i64 -9223372036854775808, i64 %9
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x650bc0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6588c0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_._Z4fillIPjjEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvttsd2si_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to double*
  %8 = load double, double* %7, align 8
  %9 = tail call double @llvm.trunc.f64(double %8)
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x43E0000000000000
  %12 = fptosi double %9 to i64
  %13 = select i1 %11, i64 -9223372036854775808, i64 %12
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x150__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x150__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -332
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4143fc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4143fc_type* @G__0x4143fc to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x148__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414412___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414412_type* @G__0x414412 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x414430____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277296, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414450___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414450_type* @G__0x414450 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41446b____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277355, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414490___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414490_type* @G__0x414490 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4144ab____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277419, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4144d1____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277457, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4144f8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4144f8_type* @G__0x4144f8 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414511____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277521, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414534____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277556, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414558____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277592, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414579___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414579_type* @G__0x414579 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41458f____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277647, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4145ae___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4145ae_type* @G__0x4145ae to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4145c3____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277699, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4145e1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4145e1_type* @G__0x4145e1 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4145f7____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277751, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x217e82__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x217e82__rip__4203014__type* @G_0x217e82__rip__4203014_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6411c0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x650bc0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x158__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPllEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvttsd2si_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to double*
  %8 = load double, double* %7, align 8
  %9 = tail call double @llvm.trunc.f64(double %8)
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ogt double %10, 0x43E0000000000000
  %12 = fptosi double %9 to i64
  %13 = select i1 %11, i64 -9223372036854775808, i64 %12
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ult i64 %6, %3
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = trunc i64 %6 to i32
  %11 = and i32 %10, 254
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = lshr i64 %3, 3
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %3, 62
  %25 = and i64 %24, 1
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %3, 63
  %29 = xor i64 %25, %28
  %30 = trunc i64 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -3
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movq__rdx__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x160__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cqto(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400478
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400478
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

define %struct.Memory* @routine_movq_MINUS0x160__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x414617___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414617_type* @G__0x414617 to i64), i64 4294967295), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x158__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41462d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41462d_type* @G__0x41462d to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x80__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x41464b____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277835, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_add_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x41466b___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x41466b_type* @G__0x41466b to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_sub_variableIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414686____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277894, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_sub_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4146ab___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4146ab_type* @G__0x4146ab to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Il24custom_multiply_variableIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4146c6____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277958, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il33custom_multiply_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4146ec____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4277996, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il34custom_multiply_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414713___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414713_type* @G__0x414713 to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Il22custom_divide_variableIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41472c____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278060, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il31custom_divide_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41474f____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278095, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il32custom_divide_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414773____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278131, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il30custom_mixed_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x414794___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x414794_type* @G__0x414794 to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_variable_andIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4147aa____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278186, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_multiple_variable_andIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4147c9___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4147c9_type* @G__0x4147c9 to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Il18custom_variable_orIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4147de____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278238, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il27custom_multiple_variable_orIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x4147fc___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x4147fc_type* @G__0x4147fc to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Il19custom_variable_xorIlEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414812____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 4278290, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x217b76__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x217b76__rip__4203794__type* @G_0x217b76__rip__4203794_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x11926__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x11926__rip__4203802__type* @G_0x11926__rip__4203802_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_cmovaq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__0x6317c0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x6411c0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x168__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x170__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPmmEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x170__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x43E0000000000000
  %11 = fptosi double %8 to i64
  %12 = select i1 %10, i64 -9223372036854775808, i64 %11
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shlq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp slt i64 %6, 0
  %9 = xor i1 %7, %8
  store i64 %6, i64* %RAX, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i64 %3, 63
  %11 = trunc i64 %.lobit to i8
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = trunc i64 %6 to i32
  %14 = and i32 %13, 254
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %12, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i64 %6, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %3, 62
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %28 = zext i1 %9 to i8
  store i8 %28, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x178__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r11d___r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divq_MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %4 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = zext i64 %10 to i128
  %14 = shl nuw i128 %13, 64
  %15 = zext i64 %8 to i128
  %16 = or i128 %14, %15
  %17 = zext i64 %12 to i128
  %18 = udiv i128 %16, %17
  %19 = and i128 %18, 18446744073709551615
  %20 = icmp eq i128 %18, %19
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %block_400478
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

; <label>:23:                                     ; preds = %block_400478
  %24 = urem i128 %16, %17
  %25 = trunc i128 %24 to i64
  %26 = trunc i128 %18 to i64
  store i64 %26, i64* %7, align 8
  store i64 %25, i64* %9, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVrdxraxI2MnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %23, %21
  %33 = phi %struct.Memory* [ %22, %21 ], [ %2, %23 ]
  ret %struct.Memory* %33
}

define %struct.Memory* @routine_movq_MINUS0x178__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rsi__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xdc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41462c___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41462c_type* @G__0x41462c to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41464a___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41464a_type* @G__0x41464a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41466a___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41466a_type* @G__0x41466a to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414685___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414685_type* @G__0x414685 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4146aa___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4146aa_type* @G__0x4146aa to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4146c5___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4146c5_type* @G__0x4146c5 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4146eb___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4146eb_type* @G__0x4146eb to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414712___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414712_type* @G__0x414712 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41472b___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41472b_type* @G__0x41472b to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41474e___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41474e_type* @G__0x41474e to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414772___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414772_type* @G__0x414772 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414793___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414793_type* @G__0x414793 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4147a9___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4147a9_type* @G__0x4147a9 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4147c8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4147c8_type* @G__0x4147c8 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4147dd___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4147dd_type* @G__0x4147dd to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4147fb___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4147fb_type* @G__0x4147fb to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414811___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414811_type* @G__0x414811 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x629ac0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x7d00___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32000
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -32001
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movsd_0x61a088___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x61a088_type* @G_0x61a088 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %12 = bitcast <2 x i32> %8 to double
  %13 = fptrunc double %12 to float
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

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z4fillIPffEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x629ac0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x414830___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414830_type* @G__0x414830 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x1149d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x1149d__rip__4205011__type* @G_0x1149d__rip__4205011_ to i32*), align 8
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = bitcast <2 x i32> %8 to double
  %13 = fptrunc double %12 to float
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

define %struct.Memory* @routine_movss__xmm1__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
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

define %struct.Memory* @routine_mulss_MINUS0xa4__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
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

define %struct.Memory* @routine_addss_MINUS0xa4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
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

define %struct.Memory* @routine_movss_MINUS0xa4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
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

define %struct.Memory* @routine_movss_MINUS0xa8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -168
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

define %struct.Memory* @routine_divss_MINUS0xac__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -172
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
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

define %struct.Memory* @routine_callq_._Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414843___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414843_type* @G__0x414843 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41485e___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41485e_type* @G__0x41485e to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xb0__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -176
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4If28custom_add_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41487b___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41487b_type* @G__0x41487b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1If19custom_sub_variableIfEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414893___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414893_type* @G__0x414893 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4148b5___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4148b5_type* @G__0x4148b5 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1If24custom_multiply_variableIfEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4148cd___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4148cd_type* @G__0x4148cd to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4If33custom_multiply_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4148f0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4148f0_type* @G__0x4148f0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4If34custom_multiply_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414914___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414914_type* @G__0x414914 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1If22custom_divide_variableIfEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41492a___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41492a_type* @G__0x41492a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4If31custom_divide_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41494a___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41494a_type* @G__0x41494a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4If32custom_divide_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41496b___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41496b_type* @G__0x41496b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4If30custom_mixed_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x61a0c0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xfa00___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64000
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -64001
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_callq_._Z4fillIPddEvT_S1_T0_(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x61a0c0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x414989___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414989_type* @G__0x414989 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1116d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1116d__rip__4205771__type* @G_0x1116d__rip__4205771_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0xb8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0xb8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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

define %struct.Memory* @routine_divsd_MINUS0xc8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x41499d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x41499d_type* @G__0x41499d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z22test_hoisted_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4149b9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4149b9_type* @G__0x4149b9 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xc8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xd0__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Id28custom_add_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4149d7___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4149d7_type* @G__0x4149d7 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Id19custom_sub_variableIdEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x4149f0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4149f0_type* @G__0x4149f0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Id28custom_sub_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414a13___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414a13_type* @G__0x414a13 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Id24custom_multiply_variableIdEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414a2c___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414a2c_type* @G__0x414a2c to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Id33custom_multiply_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414a50___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414a50_type* @G__0x414a50 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Id34custom_multiply_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414a75___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414a75_type* @G__0x414a75 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable1Id22custom_divide_variableIdEEvPT_iS2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414a8c___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414a8c_type* @G__0x414a8c to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Id31custom_divide_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414aad___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414aad_type* @G__0x414aad to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Id32custom_divide_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x414acf___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x414acf_type* @G__0x414acf to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_._Z14test_variable4Id30custom_mixed_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x170___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 368
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -369
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
