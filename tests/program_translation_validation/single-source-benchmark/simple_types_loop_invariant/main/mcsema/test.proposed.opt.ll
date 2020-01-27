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
  %.pre-phi = phi %union.anon* [ %.pre40, %block_.L_400ed7.block_.L_400ef3_crit_edge ], [ %211, %block_400ee1 ]
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
  %371 = bitcast %union.anon* %.pre-phi to i32*
  %372 = sext i32 %367 to i64
  %373 = lshr i64 %372, 32
  store i64 %373, i64* %370, align 8
  %374 = load i32, i32* %R11D.i3960, align 4
  %375 = add i64 %369, 6
  store i64 %375, i64* %3, align 8
  %376 = sext i32 %374 to i64
  %377 = shl nuw i64 %373, 32
  %378 = or i64 %377, %368
  %379 = sdiv i64 %378, %376
  %380 = shl i64 %379, 32
  %381 = ashr exact i64 %380, 32
  %382 = icmp eq i64 %379, %381
  br i1 %382, label %385, label %383

; <label>:383:                                    ; preds = %block_.L_400ef3
  %384 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %375, %struct.Memory* %call2_400f4c)
  %.pre4 = load i64, i64* %3, align 8
  %.pre5 = load i32, i32* %EAX.i4015, align 4
  br label %routine_idivl__r11d.exit

; <label>:385:                                    ; preds = %block_.L_400ef3
  %386 = srem i64 %378, %376
  %387 = getelementptr inbounds %union.anon, %union.anon* %.pre-phi, i64 0, i32 0
  %388 = and i64 %379, 4294967295
  store i64 %388, i64* %387, align 8
  %389 = and i64 %386, 4294967295
  store i64 %389, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %390 = trunc i64 %379 to i32
  br label %routine_idivl__r11d.exit

routine_idivl__r11d.exit:                         ; preds = %385, %383
  %391 = phi i32 [ %.pre5, %383 ], [ %390, %385 ]
  %392 = phi i64 [ %.pre4, %383 ], [ %375, %385 ]
  %393 = phi %struct.Memory* [ %384, %383 ], [ %call2_400f4c, %385 ]
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -244
  %396 = add i64 %392, 6
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i32 %391, %398
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RDX.i4028, align 8
  %401 = icmp ult i32 %399, %398
  %402 = icmp ult i32 %399, %391
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %26, align 1
  %405 = and i32 %399, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %33, align 1
  %410 = xor i32 %391, %398
  %411 = xor i32 %410, %399
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %39, align 1
  %415 = icmp eq i32 %399, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %42, align 1
  %417 = lshr i32 %399, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %45, align 1
  %419 = lshr i32 %398, 31
  %420 = lshr i32 %391, 31
  %421 = xor i32 %417, %419
  %422 = xor i32 %417, %420
  %423 = add nuw nsw i32 %421, %422
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %51, align 1
  %426 = trunc i32 %399 to i8
  store i8 %426, i8* %R9B.i4023, align 1
  %427 = add i64 %394, -44
  %428 = add i64 %392, 15
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i8*
  store i8 %426, i8* %429, align 1
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -41
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i8*
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i64
  %437 = and i64 %436, 4294967295
  store i64 %437, i64* %RDX.i4028, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413fdb_type* @G__0x413fdb to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  store i64 8000, i64* %RAX.i4030.pre-phi, align 8
  %438 = add i64 %430, -240
  %439 = add i64 %432, 23
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  %442 = add i64 %430, -248
  %443 = add i64 %432, 31
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  store i32 8000, i32* %444, align 4
  %445 = load i64, i64* %3, align 8
  %446 = add i64 %445, 8211
  %447 = add i64 %445, 5
  %448 = load i64, i64* %6, align 8
  %449 = add i64 %448, -8
  %450 = inttoptr i64 %449 to i64*
  store i64 %447, i64* %450, align 8
  store i64 %449, i64* %6, align 8
  store i64 %446, i64* %3, align 8
  %call2_400fbd = tail call %struct.Memory* @sub_402fd0._Z14test_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %446, %struct.Memory* %393)
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -41
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, 4
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %452 to i8*
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i64
  %458 = and i64 %457, 4294967295
  store i64 %458, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x413ff0_type* @G__0x413ff0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413ff0_type* @G__0x413ff0 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %459 = add i64 %451, -240
  %460 = add i64 %453, 18
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RDI.i4036.pre-phi, align 8
  %463 = add i64 %451, -248
  %464 = add i64 %453, 24
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RSI.i3042, align 8
  %468 = add i64 %453, 8382
  %469 = add i64 %453, 29
  %470 = load i64, i64* %6, align 8
  %471 = add i64 %470, -8
  %472 = inttoptr i64 %471 to i64*
  store i64 %469, i64* %472, align 8
  store i64 %471, i64* %6, align 8
  store i64 %468, i64* %3, align 8
  %call2_400fda = tail call %struct.Memory* @sub_403080._Z22test_hoisted_variable1Ia19custom_add_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %468, %struct.Memory* %call2_400fbd)
  %473 = getelementptr inbounds %union.anon, %union.anon* %243, i64 0, i32 0
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -44
  %476 = load i64, i64* %3, align 8
  %477 = add i64 %476, 5
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %475 to i8*
  %479 = load i8, i8* %478, align 1
  %480 = sext i8 %479 to i64
  %481 = and i64 %480, 4294967295
  store i64 %481, i64* %473, align 8
  %482 = add i64 %474, -43
  %483 = add i64 %476, 10
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i8*
  %485 = load i8, i8* %484, align 1
  %486 = sext i8 %485 to i64
  %487 = and i64 %486, 4294967295
  store i64 %487, i64* %242, align 8
  %488 = add i64 %474, -42
  %489 = add i64 %476, 14
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i8*
  %491 = load i8, i8* %490, align 1
  %492 = sext i8 %491 to i64
  %493 = and i64 %492, 4294967295
  store i64 %493, i64* %RCX.i4032, align 8
  %494 = add i64 %474, -41
  %495 = add i64 %476, 18
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i8*
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i64
  %499 = and i64 %498, 4294967295
  store i64 %499, i64* %RDX.i4028, align 8
  %500 = load i64, i64* %6, align 8
  store i64 %500, i64* %RDI.i4036.pre-phi, align 8
  %501 = add i64 %476, 28
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i64*
  store i64 4276237, i64* %502, align 8
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -240
  %505 = load i64, i64* %3, align 8
  %506 = add i64 %505, 7
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %RDI.i4036.pre-phi, align 8
  %509 = add i64 %503, -248
  %510 = add i64 %505, 13
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RSI.i3042, align 8
  %514 = add i64 %505, 8517
  %515 = add i64 %505, 18
  %516 = load i64, i64* %6, align 8
  %517 = add i64 %516, -8
  %518 = inttoptr i64 %517 to i64*
  store i64 %515, i64* %518, align 8
  store i64 %517, i64* %6, align 8
  store i64 %514, i64* %3, align 8
  %call2_401008 = tail call %struct.Memory* @sub_403140._Z14test_variable4Ia28custom_add_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %514, %struct.Memory* %call2_400fda)
  %519 = load i64, i64* %RBP.i, align 8
  %520 = add i64 %519, -41
  %521 = load i64, i64* %3, align 8
  %522 = add i64 %521, 4
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %520 to i8*
  %524 = load i8, i8* %523, align 1
  %525 = sext i8 %524 to i64
  %526 = and i64 %525, 4294967295
  store i64 %526, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41402c_type* @G__0x41402c to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41402c_type* @G__0x41402c to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %527 = add i64 %519, -240
  %528 = add i64 %521, 18
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i64*
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %RDI.i4036.pre-phi, align 8
  %531 = add i64 %519, -248
  %532 = add i64 %521, 24
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RSI.i3042, align 8
  %536 = add i64 %521, 8771
  %537 = add i64 %521, 29
  %538 = load i64, i64* %6, align 8
  %539 = add i64 %538, -8
  %540 = inttoptr i64 %539 to i64*
  store i64 %537, i64* %540, align 8
  store i64 %539, i64* %6, align 8
  store i64 %536, i64* %3, align 8
  %call2_401025 = tail call %struct.Memory* @sub_403250._Z14test_variable1Ia19custom_sub_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %536, %struct.Memory* %call2_401008)
  %541 = load i64, i64* %RBP.i, align 8
  %542 = add i64 %541, -44
  %543 = load i64, i64* %3, align 8
  %544 = add i64 %543, 5
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %542 to i8*
  %546 = load i8, i8* %545, align 1
  %547 = sext i8 %546 to i64
  %548 = and i64 %547, 4294967295
  store i64 %548, i64* %473, align 8
  %549 = add i64 %541, -43
  %550 = add i64 %543, 10
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i8*
  %552 = load i8, i8* %551, align 1
  %553 = sext i8 %552 to i64
  %554 = and i64 %553, 4294967295
  store i64 %554, i64* %242, align 8
  %555 = add i64 %541, -42
  %556 = add i64 %543, 14
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i8*
  %558 = load i8, i8* %557, align 1
  %559 = sext i8 %558 to i64
  %560 = and i64 %559, 4294967295
  store i64 %560, i64* %RCX.i4032, align 8
  %561 = add i64 %541, -41
  %562 = add i64 %543, 18
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i8*
  %564 = load i8, i8* %563, align 1
  %565 = sext i8 %564 to i64
  %566 = and i64 %565, 4294967295
  store i64 %566, i64* %RDX.i4028, align 8
  %567 = load i64, i64* %6, align 8
  store i64 %567, i64* %RDI.i4036.pre-phi, align 8
  %568 = add i64 %543, 28
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  store i64 4276294, i64* %569, align 8
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -240
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 7
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i64*
  %575 = load i64, i64* %574, align 8
  store i64 %575, i64* %RDI.i4036.pre-phi, align 8
  %576 = add i64 %570, -248
  %577 = add i64 %572, 13
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RSI.i3042, align 8
  %581 = add i64 %572, 8890
  %582 = add i64 %572, 18
  %583 = load i64, i64* %6, align 8
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %582, i64* %585, align 8
  store i64 %584, i64* %6, align 8
  store i64 %581, i64* %3, align 8
  %call2_401053 = tail call %struct.Memory* @sub_403300._Z14test_variable4Ia28custom_sub_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %581, %struct.Memory* %call2_401025)
  %586 = load i64, i64* %RBP.i, align 8
  %587 = add i64 %586, -41
  %588 = load i64, i64* %3, align 8
  %589 = add i64 %588, 4
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %587 to i8*
  %591 = load i8, i8* %590, align 1
  %592 = sext i8 %591 to i64
  %593 = and i64 %592, 4294967295
  store i64 %593, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41406a_type* @G__0x41406a to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41406a_type* @G__0x41406a to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %594 = add i64 %586, -240
  %595 = add i64 %588, 18
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RDI.i4036.pre-phi, align 8
  %598 = add i64 %586, -248
  %599 = add i64 %588, 24
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RSI.i3042, align 8
  %603 = add i64 %588, 9144
  %604 = add i64 %588, 29
  %605 = load i64, i64* %6, align 8
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %604, i64* %607, align 8
  store i64 %606, i64* %6, align 8
  store i64 %603, i64* %3, align 8
  %call2_401070 = tail call %struct.Memory* @sub_403410._Z14test_variable1Ia24custom_multiply_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %603, %struct.Memory* %call2_401053)
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -44
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, 5
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %609 to i8*
  %613 = load i8, i8* %612, align 1
  %614 = sext i8 %613 to i64
  %615 = and i64 %614, 4294967295
  store i64 %615, i64* %473, align 8
  %616 = add i64 %608, -43
  %617 = add i64 %610, 10
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i8*
  %619 = load i8, i8* %618, align 1
  %620 = sext i8 %619 to i64
  %621 = and i64 %620, 4294967295
  store i64 %621, i64* %242, align 8
  %622 = add i64 %608, -42
  %623 = add i64 %610, 14
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i8*
  %625 = load i8, i8* %624, align 1
  %626 = sext i8 %625 to i64
  %627 = and i64 %626, 4294967295
  store i64 %627, i64* %RCX.i4032, align 8
  %628 = add i64 %608, -41
  %629 = add i64 %610, 18
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i8*
  %631 = load i8, i8* %630, align 1
  %632 = sext i8 %631 to i64
  %633 = and i64 %632, 4294967295
  store i64 %633, i64* %RDX.i4028, align 8
  %634 = load i64, i64* %6, align 8
  store i64 %634, i64* %RDI.i4036.pre-phi, align 8
  %635 = add i64 %610, 28
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i64*
  store i64 4276356, i64* %636, align 8
  %637 = load i64, i64* %RBP.i, align 8
  %638 = add i64 %637, -240
  %639 = load i64, i64* %3, align 8
  %640 = add i64 %639, 7
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RDI.i4036.pre-phi, align 8
  %643 = add i64 %637, -248
  %644 = add i64 %639, 13
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RSI.i3042, align 8
  %648 = add i64 %639, 9263
  %649 = add i64 %639, 18
  %650 = load i64, i64* %6, align 8
  %651 = add i64 %650, -8
  %652 = inttoptr i64 %651 to i64*
  store i64 %649, i64* %652, align 8
  store i64 %651, i64* %6, align 8
  store i64 %648, i64* %3, align 8
  %call2_40109e = tail call %struct.Memory* @sub_4034c0._Z14test_variable4Ia33custom_multiply_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %648, %struct.Memory* %call2_401070)
  %653 = load i64, i64* %RBP.i, align 8
  %654 = add i64 %653, -44
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 5
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %654 to i8*
  %658 = load i8, i8* %657, align 1
  %659 = sext i8 %658 to i64
  %660 = and i64 %659, 4294967295
  store i64 %660, i64* %473, align 8
  %661 = add i64 %653, -43
  %662 = add i64 %655, 10
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i8*
  %664 = load i8, i8* %663, align 1
  %665 = sext i8 %664 to i64
  %666 = and i64 %665, 4294967295
  store i64 %666, i64* %242, align 8
  %667 = add i64 %653, -42
  %668 = add i64 %655, 14
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i8*
  %670 = load i8, i8* %669, align 1
  %671 = sext i8 %670 to i64
  %672 = and i64 %671, 4294967295
  store i64 %672, i64* %RCX.i4032, align 8
  %673 = add i64 %653, -41
  %674 = add i64 %655, 18
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i8*
  %676 = load i8, i8* %675, align 1
  %677 = sext i8 %676 to i64
  %678 = and i64 %677, 4294967295
  store i64 %678, i64* %RDX.i4028, align 8
  %679 = load i64, i64* %6, align 8
  store i64 %679, i64* %RDI.i4036.pre-phi, align 8
  %680 = add i64 %655, 28
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i64*
  store i64 4276393, i64* %681, align 8
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -240
  %684 = load i64, i64* %3, align 8
  %685 = add i64 %684, 7
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %683 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %RDI.i4036.pre-phi, align 8
  %688 = add i64 %682, -248
  %689 = add i64 %684, 13
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RSI.i3042, align 8
  %693 = add i64 %684, 9489
  %694 = add i64 %684, 18
  %695 = load i64, i64* %6, align 8
  %696 = add i64 %695, -8
  %697 = inttoptr i64 %696 to i64*
  store i64 %694, i64* %697, align 8
  store i64 %696, i64* %6, align 8
  store i64 %693, i64* %3, align 8
  %call2_4010cc = tail call %struct.Memory* @sub_4035d0._Z14test_variable4Ia34custom_multiply_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %693, %struct.Memory* %call2_40109e)
  %698 = load i64, i64* %RBP.i, align 8
  %699 = add i64 %698, -41
  %700 = load i64, i64* %3, align 8
  %701 = add i64 %700, 4
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %699 to i8*
  %703 = load i8, i8* %702, align 1
  %704 = sext i8 %703 to i64
  %705 = and i64 %704, 4294967295
  store i64 %705, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4140cf_type* @G__0x4140cf to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4140cf_type* @G__0x4140cf to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %706 = add i64 %698, -240
  %707 = add i64 %700, 18
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i64*
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %RDI.i4036.pre-phi, align 8
  %710 = add i64 %698, -248
  %711 = add i64 %700, 24
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RSI.i3042, align 8
  %715 = add i64 %700, 9743
  %716 = add i64 %700, 29
  %717 = load i64, i64* %6, align 8
  %718 = add i64 %717, -8
  %719 = inttoptr i64 %718 to i64*
  store i64 %716, i64* %719, align 8
  store i64 %718, i64* %6, align 8
  store i64 %715, i64* %3, align 8
  %call2_4010e9 = tail call %struct.Memory* @sub_4036e0._Z14test_variable1Ia22custom_divide_variableIaEEvPT_iS2_PKc(%struct.State* %0, i64 %715, %struct.Memory* %call2_4010cc)
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -44
  %722 = load i64, i64* %3, align 8
  %723 = add i64 %722, 5
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %721 to i8*
  %725 = load i8, i8* %724, align 1
  %726 = sext i8 %725 to i64
  %727 = and i64 %726, 4294967295
  store i64 %727, i64* %473, align 8
  %728 = add i64 %720, -43
  %729 = add i64 %722, 10
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i8*
  %731 = load i8, i8* %730, align 1
  %732 = sext i8 %731 to i64
  %733 = and i64 %732, 4294967295
  store i64 %733, i64* %242, align 8
  %734 = add i64 %720, -42
  %735 = add i64 %722, 14
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i8*
  %737 = load i8, i8* %736, align 1
  %738 = sext i8 %737 to i64
  %739 = and i64 %738, 4294967295
  store i64 %739, i64* %RCX.i4032, align 8
  %740 = add i64 %720, -41
  %741 = add i64 %722, 18
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i8*
  %743 = load i8, i8* %742, align 1
  %744 = sext i8 %743 to i64
  %745 = and i64 %744, 4294967295
  store i64 %745, i64* %RDX.i4028, align 8
  %746 = load i64, i64* %6, align 8
  store i64 %746, i64* %RDI.i4036.pre-phi, align 8
  %747 = add i64 %722, 28
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i64*
  store i64 4276455, i64* %748, align 8
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -240
  %751 = load i64, i64* %3, align 8
  %752 = add i64 %751, 7
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %750 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %RDI.i4036.pre-phi, align 8
  %755 = add i64 %749, -248
  %756 = add i64 %751, 13
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RSI.i3042, align 8
  %760 = add i64 %751, 9862
  %761 = add i64 %751, 18
  %762 = load i64, i64* %6, align 8
  %763 = add i64 %762, -8
  %764 = inttoptr i64 %763 to i64*
  store i64 %761, i64* %764, align 8
  store i64 %763, i64* %6, align 8
  store i64 %760, i64* %3, align 8
  %call2_401117 = tail call %struct.Memory* @sub_403790._Z14test_variable4Ia31custom_divide_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %760, %struct.Memory* %call2_4010e9)
  %765 = load i64, i64* %RBP.i, align 8
  %766 = add i64 %765, -44
  %767 = load i64, i64* %3, align 8
  %768 = add i64 %767, 5
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %766 to i8*
  %770 = load i8, i8* %769, align 1
  %771 = sext i8 %770 to i64
  %772 = and i64 %771, 4294967295
  store i64 %772, i64* %473, align 8
  %773 = add i64 %765, -43
  %774 = add i64 %767, 10
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i8*
  %776 = load i8, i8* %775, align 1
  %777 = sext i8 %776 to i64
  %778 = and i64 %777, 4294967295
  store i64 %778, i64* %242, align 8
  %779 = add i64 %765, -42
  %780 = add i64 %767, 14
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i8*
  %782 = load i8, i8* %781, align 1
  %783 = sext i8 %782 to i64
  %784 = and i64 %783, 4294967295
  store i64 %784, i64* %RCX.i4032, align 8
  %785 = add i64 %765, -41
  %786 = add i64 %767, 18
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i8*
  %788 = load i8, i8* %787, align 1
  %789 = sext i8 %788 to i64
  %790 = and i64 %789, 4294967295
  store i64 %790, i64* %RDX.i4028, align 8
  %791 = load i64, i64* %6, align 8
  store i64 %791, i64* %RDI.i4036.pre-phi, align 8
  %792 = add i64 %767, 28
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i64*
  store i64 4276489, i64* %793, align 8
  %794 = load i64, i64* %RBP.i, align 8
  %795 = add i64 %794, -240
  %796 = load i64, i64* %3, align 8
  %797 = add i64 %796, 7
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %795 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %RDI.i4036.pre-phi, align 8
  %800 = add i64 %794, -248
  %801 = add i64 %796, 13
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RSI.i3042, align 8
  %805 = add i64 %796, 10088
  %806 = add i64 %796, 18
  %807 = load i64, i64* %6, align 8
  %808 = add i64 %807, -8
  %809 = inttoptr i64 %808 to i64*
  store i64 %806, i64* %809, align 8
  store i64 %808, i64* %6, align 8
  store i64 %805, i64* %3, align 8
  %call2_401145 = tail call %struct.Memory* @sub_4038a0._Z14test_variable4Ia32custom_divide_multiple_variable2IaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %805, %struct.Memory* %call2_401117)
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -44
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 5
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %811 to i8*
  %815 = load i8, i8* %814, align 1
  %816 = sext i8 %815 to i64
  %817 = and i64 %816, 4294967295
  store i64 %817, i64* %473, align 8
  %818 = add i64 %810, -43
  %819 = add i64 %812, 10
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i8*
  %821 = load i8, i8* %820, align 1
  %822 = sext i8 %821 to i64
  %823 = and i64 %822, 4294967295
  store i64 %823, i64* %242, align 8
  %824 = add i64 %810, -42
  %825 = add i64 %812, 14
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i8*
  %827 = load i8, i8* %826, align 1
  %828 = sext i8 %827 to i64
  %829 = and i64 %828, 4294967295
  store i64 %829, i64* %RCX.i4032, align 8
  %830 = add i64 %810, -41
  %831 = add i64 %812, 18
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i8*
  %833 = load i8, i8* %832, align 1
  %834 = sext i8 %833 to i64
  %835 = and i64 %834, 4294967295
  store i64 %835, i64* %RDX.i4028, align 8
  %836 = load i64, i64* %6, align 8
  store i64 %836, i64* %RDI.i4036.pre-phi, align 8
  %837 = add i64 %812, 28
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i64*
  store i64 4276524, i64* %838, align 8
  %839 = load i64, i64* %RBP.i, align 8
  %840 = add i64 %839, -240
  %841 = load i64, i64* %3, align 8
  %842 = add i64 %841, 7
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %840 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RDI.i4036.pre-phi, align 8
  %845 = add i64 %839, -248
  %846 = add i64 %841, 13
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RSI.i3042, align 8
  %850 = add i64 %841, 10314
  %851 = add i64 %841, 18
  %852 = load i64, i64* %6, align 8
  %853 = add i64 %852, -8
  %854 = inttoptr i64 %853 to i64*
  store i64 %851, i64* %854, align 8
  store i64 %853, i64* %6, align 8
  store i64 %850, i64* %3, align 8
  %call2_401173 = tail call %struct.Memory* @sub_4039b0._Z14test_variable4Ia30custom_mixed_multiple_variableIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %850, %struct.Memory* %call2_401145)
  %855 = load i64, i64* %RBP.i, align 8
  %856 = add i64 %855, -41
  %857 = load i64, i64* %3, align 8
  %858 = add i64 %857, 4
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %856 to i8*
  %860 = load i8, i8* %859, align 1
  %861 = sext i8 %860 to i64
  %862 = and i64 %861, 4294967295
  store i64 %862, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41414c_type* @G__0x41414c to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41414c_type* @G__0x41414c to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %863 = add i64 %855, -240
  %864 = add i64 %857, 18
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %RDI.i4036.pre-phi, align 8
  %867 = add i64 %855, -248
  %868 = add i64 %857, 24
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RSI.i3042, align 8
  %872 = add i64 %857, 10568
  %873 = add i64 %857, 29
  %874 = load i64, i64* %6, align 8
  %875 = add i64 %874, -8
  %876 = inttoptr i64 %875 to i64*
  store i64 %873, i64* %876, align 8
  store i64 %875, i64* %6, align 8
  store i64 %872, i64* %3, align 8
  %call2_401190 = tail call %struct.Memory* @sub_403ac0._Z14test_variable1Ia19custom_variable_andIaEEvPT_iS2_PKc(%struct.State* %0, i64 %872, %struct.Memory* %call2_401173)
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -44
  %879 = load i64, i64* %3, align 8
  %880 = add i64 %879, 5
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %878 to i8*
  %882 = load i8, i8* %881, align 1
  %883 = sext i8 %882 to i64
  %884 = and i64 %883, 4294967295
  store i64 %884, i64* %473, align 8
  %885 = add i64 %877, -43
  %886 = add i64 %879, 10
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i8*
  %888 = load i8, i8* %887, align 1
  %889 = sext i8 %888 to i64
  %890 = and i64 %889, 4294967295
  store i64 %890, i64* %242, align 8
  %891 = add i64 %877, -42
  %892 = add i64 %879, 14
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i8*
  %894 = load i8, i8* %893, align 1
  %895 = sext i8 %894 to i64
  %896 = and i64 %895, 4294967295
  store i64 %896, i64* %RCX.i4032, align 8
  %897 = add i64 %877, -41
  %898 = add i64 %879, 18
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i8*
  %900 = load i8, i8* %899, align 1
  %901 = sext i8 %900 to i64
  %902 = and i64 %901, 4294967295
  store i64 %902, i64* %RDX.i4028, align 8
  %903 = load i64, i64* %6, align 8
  store i64 %903, i64* %RDI.i4036.pre-phi, align 8
  %904 = add i64 %879, 28
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  store i64 4276577, i64* %905, align 8
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -240
  %908 = load i64, i64* %3, align 8
  %909 = add i64 %908, 7
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %907 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RDI.i4036.pre-phi, align 8
  %912 = add i64 %906, -248
  %913 = add i64 %908, 13
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RSI.i3042, align 8
  %917 = add i64 %908, 10687
  %918 = add i64 %908, 18
  %919 = load i64, i64* %6, align 8
  %920 = add i64 %919, -8
  %921 = inttoptr i64 %920 to i64*
  store i64 %918, i64* %921, align 8
  store i64 %920, i64* %6, align 8
  store i64 %917, i64* %3, align 8
  %call2_4011be = tail call %struct.Memory* @sub_403b70._Z14test_variable4Ia28custom_multiple_variable_andIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %917, %struct.Memory* %call2_401190)
  %922 = load i64, i64* %RBP.i, align 8
  %923 = add i64 %922, -41
  %924 = load i64, i64* %3, align 8
  %925 = add i64 %924, 4
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %923 to i8*
  %927 = load i8, i8* %926, align 1
  %928 = sext i8 %927 to i64
  %929 = and i64 %928, 4294967295
  store i64 %929, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41417f_type* @G__0x41417f to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41417f_type* @G__0x41417f to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %930 = add i64 %922, -240
  %931 = add i64 %924, 18
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i64*
  %933 = load i64, i64* %932, align 8
  store i64 %933, i64* %RDI.i4036.pre-phi, align 8
  %934 = add i64 %922, -248
  %935 = add i64 %924, 24
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RSI.i3042, align 8
  %939 = add i64 %924, 10941
  %940 = add i64 %924, 29
  %941 = load i64, i64* %6, align 8
  %942 = add i64 %941, -8
  %943 = inttoptr i64 %942 to i64*
  store i64 %940, i64* %943, align 8
  store i64 %942, i64* %6, align 8
  store i64 %939, i64* %3, align 8
  %call2_4011db = tail call %struct.Memory* @sub_403c80._Z14test_variable1Ia18custom_variable_orIaEEvPT_iS2_PKc(%struct.State* %0, i64 %939, %struct.Memory* %call2_4011be)
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -44
  %946 = load i64, i64* %3, align 8
  %947 = add i64 %946, 5
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %945 to i8*
  %949 = load i8, i8* %948, align 1
  %950 = sext i8 %949 to i64
  %951 = and i64 %950, 4294967295
  store i64 %951, i64* %473, align 8
  %952 = add i64 %944, -43
  %953 = add i64 %946, 10
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i8*
  %955 = load i8, i8* %954, align 1
  %956 = sext i8 %955 to i64
  %957 = and i64 %956, 4294967295
  store i64 %957, i64* %242, align 8
  %958 = add i64 %944, -42
  %959 = add i64 %946, 14
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i8*
  %961 = load i8, i8* %960, align 1
  %962 = sext i8 %961 to i64
  %963 = and i64 %962, 4294967295
  store i64 %963, i64* %RCX.i4032, align 8
  %964 = add i64 %944, -41
  %965 = add i64 %946, 18
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i8*
  %967 = load i8, i8* %966, align 1
  %968 = sext i8 %967 to i64
  %969 = and i64 %968, 4294967295
  store i64 %969, i64* %RDX.i4028, align 8
  %970 = load i64, i64* %6, align 8
  store i64 %970, i64* %RDI.i4036.pre-phi, align 8
  %971 = add i64 %946, 28
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i64*
  store i64 4276627, i64* %972, align 8
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -240
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, 7
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %974 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RDI.i4036.pre-phi, align 8
  %979 = add i64 %973, -248
  %980 = add i64 %975, 13
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RSI.i3042, align 8
  %984 = add i64 %975, 11060
  %985 = add i64 %975, 18
  %986 = load i64, i64* %6, align 8
  %987 = add i64 %986, -8
  %988 = inttoptr i64 %987 to i64*
  store i64 %985, i64* %988, align 8
  store i64 %987, i64* %6, align 8
  store i64 %984, i64* %3, align 8
  %call2_401209 = tail call %struct.Memory* @sub_403d30._Z14test_variable4Ia27custom_multiple_variable_orIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %984, %struct.Memory* %call2_4011db)
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -41
  %991 = load i64, i64* %3, align 8
  %992 = add i64 %991, 4
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %990 to i8*
  %994 = load i8, i8* %993, align 1
  %995 = sext i8 %994 to i64
  %996 = and i64 %995, 4294967295
  store i64 %996, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141b0_type* @G__0x4141b0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141b0_type* @G__0x4141b0 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %997 = add i64 %989, -240
  %998 = add i64 %991, 18
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i64*
  %1000 = load i64, i64* %999, align 8
  store i64 %1000, i64* %RDI.i4036.pre-phi, align 8
  %1001 = add i64 %989, -248
  %1002 = add i64 %991, 24
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RSI.i3042, align 8
  %1006 = add i64 %991, 11314
  %1007 = add i64 %991, 29
  %1008 = load i64, i64* %6, align 8
  %1009 = add i64 %1008, -8
  %1010 = inttoptr i64 %1009 to i64*
  store i64 %1007, i64* %1010, align 8
  store i64 %1009, i64* %6, align 8
  store i64 %1006, i64* %3, align 8
  %call2_401226 = tail call %struct.Memory* @sub_403e40._Z14test_variable1Ia19custom_variable_xorIaEEvPT_iS2_PKc(%struct.State* %0, i64 %1006, %struct.Memory* %call2_401209)
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -44
  %1013 = load i64, i64* %3, align 8
  %1014 = add i64 %1013, 5
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1012 to i8*
  %1016 = load i8, i8* %1015, align 1
  %1017 = sext i8 %1016 to i64
  %1018 = and i64 %1017, 4294967295
  store i64 %1018, i64* %473, align 8
  %1019 = add i64 %1011, -43
  %1020 = add i64 %1013, 10
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i8*
  %1022 = load i8, i8* %1021, align 1
  %1023 = sext i8 %1022 to i64
  %1024 = and i64 %1023, 4294967295
  store i64 %1024, i64* %242, align 8
  %1025 = add i64 %1011, -42
  %1026 = add i64 %1013, 14
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i8*
  %1028 = load i8, i8* %1027, align 1
  %1029 = sext i8 %1028 to i64
  %1030 = and i64 %1029, 4294967295
  store i64 %1030, i64* %RCX.i4032, align 8
  %1031 = add i64 %1011, -41
  %1032 = add i64 %1013, 18
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i8*
  %1034 = load i8, i8* %1033, align 1
  %1035 = sext i8 %1034 to i64
  %1036 = and i64 %1035, 4294967295
  store i64 %1036, i64* %RDX.i4028, align 8
  %1037 = load i64, i64* %6, align 8
  store i64 %1037, i64* %RDI.i4036.pre-phi, align 8
  %1038 = add i64 %1013, 28
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1037 to i64*
  store i64 4276677, i64* %1039, align 8
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -240
  %1042 = load i64, i64* %3, align 8
  %1043 = add i64 %1042, 7
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1041 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RDI.i4036.pre-phi, align 8
  %1046 = add i64 %1040, -248
  %1047 = add i64 %1042, 13
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  %1049 = load i32, i32* %1048, align 4
  %1050 = zext i32 %1049 to i64
  store i64 %1050, i64* %RSI.i3042, align 8
  %1051 = add i64 %1042, 11433
  %1052 = add i64 %1042, 18
  %1053 = load i64, i64* %6, align 8
  %1054 = add i64 %1053, -8
  %1055 = inttoptr i64 %1054 to i64*
  store i64 %1052, i64* %1055, align 8
  store i64 %1054, i64* %6, align 8
  store i64 %1051, i64* %3, align 8
  %call2_401254 = tail call %struct.Memory* @sub_403ef0._Z14test_variable4Ia28custom_multiple_variable_xorIaEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1051, %struct.Memory* %call2_401226)
  %1056 = load i64, i64* %3, align 8
  %1057 = load double, double* bitcast (%G_0x218e27__rip__4199009__type* @G_0x218e27__rip__4199009_ to double*), align 8
  %1058 = tail call double @llvm.trunc.f64(double %1057)
  %1059 = tail call double @llvm.fabs.f64(double %1058)
  %1060 = fcmp ogt double %1059, 0x41DFFFFFFFC00000
  %1061 = fptosi double %1058 to i32
  store i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  %ECX.i3567 = bitcast %union.anon* %234 to i32*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  %BL.i3565 = bitcast %union.anon* %16 to i8*
  %1062 = trunc i32 %1061 to i8
  %1063 = select i1 %1060, i8 0, i8 %1062
  %1064 = zext i8 %1063 to i64
  store i8 %1063, i8* %BL.i3565, align 1
  store i64 %1064, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x66a200_type* @G__0x66a200 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x66a200_type* @G__0x66a200 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %1065 = load i64, i64* %RBP.i, align 8
  %1066 = add i64 %1065, -256
  %1067 = add i64 %1056, 34
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295) to i32) to i64), i64* %1068, align 8
  %1069 = load i64, i64* %3, align 8
  %1070 = add i64 %1069, 11653
  %1071 = add i64 %1069, 5
  %1072 = load i64, i64* %6, align 8
  %1073 = add i64 %1072, -8
  %1074 = inttoptr i64 %1073 to i64*
  store i64 %1071, i64* %1074, align 8
  store i64 %1073, i64* %6, align 8
  store i64 %1070, i64* %3, align 8
  %call2_40127b = tail call %struct.Memory* @sub_404000._Z4fillIPhhEvT_S1_T0_(%struct.State* %0, i64 %1070, %struct.Memory* %call2_401254)
  %1075 = load i64, i64* %RBP.i, align 8
  %1076 = add i64 %1075, -40
  %1077 = load i64, i64* %3, align 8
  %1078 = add i64 %1077, 5
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1076 to double*
  %1080 = load double, double* %1079, align 8
  %1081 = tail call double @llvm.trunc.f64(double %1080)
  %1082 = tail call double @llvm.fabs.f64(double %1081)
  %1083 = fcmp ogt double %1082, 0x41DFFFFFFFC00000
  %1084 = fptosi double %1081 to i32
  %1085 = zext i32 %1084 to i64
  %1086 = select i1 %1083, i64 2147483648, i64 %1085
  store i64 %1086, i64* %RAX.i4030.pre-phi, align 8
  %1087 = trunc i64 %1086 to i8
  store i8 %1087, i8* %BL.i3565, align 1
  %1088 = add i64 %1075, -45
  %1089 = add i64 %1077, 10
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i8*
  store i8 %1087, i8* %1090, align 1
  %1091 = load i64, i64* %RBP.i, align 8
  %1092 = add i64 %1091, -45
  %1093 = load i64, i64* %3, align 8
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1092 to i8*
  %1096 = load i8, i8* %1095, align 1
  %1097 = shl i8 %1096, 1
  store i8 %1097, i8* %BL.i3565, align 1
  %1098 = icmp ult i8 %1097, %1096
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %26, align 1
  %1100 = zext i8 %1097 to i32
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %33, align 1
  %1105 = lshr i8 %1096, 3
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %39, align 1
  %1107 = icmp eq i8 %1097, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %42, align 1
  %1109 = lshr i8 %1096, 6
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %45, align 1
  %1111 = lshr i8 %1096, 7
  %1112 = xor i8 %1110, %1111
  store i8 %1112, i8* %51, align 1
  %1113 = add i64 %1091, -46
  %1114 = add i64 %1093, 8
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i8*
  store i8 %1097, i8* %1115, align 1
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -45
  %1118 = load i64, i64* %3, align 8
  %1119 = add i64 %1118, 4
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1117 to i8*
  %1121 = load i8, i8* %1120, align 1
  %1122 = zext i8 %1121 to i32
  %1123 = add nuw nsw i32 %1122, 2
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %1125 = and i32 %1123, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %33, align 1
  %1130 = xor i32 %1122, %1123
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1134 = trunc i32 %1123 to i8
  store i8 %1134, i8* %BL.i3565, align 1
  %1135 = add i64 %1116, -47
  %1136 = add i64 %1118, 12
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i8*
  store i8 %1134, i8* %1137, align 1
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -45
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1139 to i8*
  %1143 = load i8, i8* %1142, align 1
  %1144 = zext i8 %1143 to i64
  store i64 %1144, i64* %RAX.i4030.pre-phi, align 8
  %1145 = add i64 %1138, -46
  %1146 = add i64 %1140, 8
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i8*
  %1148 = load i8, i8* %1147, align 1
  %1149 = zext i8 %1148 to i64
  store i64 %1149, i64* %RCX.i4032, align 8
  %1150 = add i64 %1138, -47
  %1151 = add i64 %1140, 12
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i8*
  %1153 = load i8, i8* %1152, align 1
  %1154 = zext i8 %1153 to i64
  store i64 %1154, i64* %RDX.i4028, align 8
  store i64 0, i64* %242, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %1155 = add i64 %1138, -260
  %1156 = zext i8 %1143 to i32
  %1157 = add i64 %1140, 21
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1155 to i32*
  store i32 %1156, i32* %1158, align 4
  %1159 = load i32, i32* %ECX.i3567, align 4
  %1160 = zext i32 %1159 to i64
  %1161 = load i64, i64* %3, align 8
  store i64 %1160, i64* %RAX.i4030.pre-phi, align 8
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -264
  %1164 = load i32, i32* %EDX.i4025, align 4
  %1165 = add i64 %1161, 8
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1163 to i32*
  store i32 %1164, i32* %1166, align 4
  %1167 = load i32, i32* %R8D.i4026, align 4
  %1168 = zext i32 %1167 to i64
  %1169 = load i64, i64* %3, align 8
  store i64 %1168, i64* %RDX.i4028, align 8
  %1170 = load i64, i64* %RBP.i, align 8
  %1171 = add i64 %1170, -264
  %1172 = add i64 %1169, 9
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i4032, align 8
  %1176 = add i64 %1169, 11
  store i64 %1176, i64* %3, align 8
  %1177 = load i32, i32* %371, align 8
  %1178 = zext i32 %1177 to i64
  %1179 = shl nuw i64 %1168, 32
  %1180 = or i64 %1179, %1178
  %1181 = udiv i64 %1180, %1175
  %1182 = and i64 %1181, 4294967295
  %1183 = icmp eq i64 %1181, %1182
  br i1 %1183, label %1186, label %1184

; <label>:1184:                                   ; preds = %routine_idivl__r11d.exit
  %1185 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1176, %struct.Memory* %call2_40127b)
  %.pre6 = load i64, i64* %RBP.i, align 8
  %.pre7 = load i64, i64* %3, align 8
  %.pre8 = load i32, i32* %EAX.i4015, align 4
  br label %routine_divl__ecx.exit

; <label>:1186:                                   ; preds = %routine_idivl__r11d.exit
  %1187 = urem i64 %1180, %1175
  %1188 = getelementptr inbounds %union.anon, %union.anon* %.pre-phi, i64 0, i32 0
  store i64 %1181, i64* %1188, align 8
  store i64 %1187, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1189 = trunc i64 %1181 to i32
  br label %routine_divl__ecx.exit

routine_divl__ecx.exit:                           ; preds = %1186, %1184
  %1190 = phi i32 [ %.pre8, %1184 ], [ %1189, %1186 ]
  %1191 = phi i64 [ %.pre7, %1184 ], [ %1176, %1186 ]
  %1192 = phi i64 [ %.pre6, %1184 ], [ %1170, %1186 ]
  %1193 = phi %struct.Memory* [ %1185, %1184 ], [ %call2_40127b, %1186 ]
  %1194 = add i64 %1192, -260
  %1195 = add i64 %1191, 6
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = add i32 %1190, %1197
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RCX.i4032, align 8
  %1200 = icmp ult i32 %1198, %1197
  %1201 = icmp ult i32 %1198, %1190
  %1202 = or i1 %1200, %1201
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %26, align 1
  %1204 = and i32 %1198, 255
  %1205 = tail call i32 @llvm.ctpop.i32(i32 %1204)
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  %1208 = xor i8 %1207, 1
  store i8 %1208, i8* %33, align 1
  %1209 = xor i32 %1190, %1197
  %1210 = xor i32 %1209, %1198
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %39, align 1
  %1214 = icmp eq i32 %1198, 0
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %42, align 1
  %1216 = lshr i32 %1198, 31
  %1217 = trunc i32 %1216 to i8
  store i8 %1217, i8* %45, align 1
  %1218 = lshr i32 %1197, 31
  %1219 = lshr i32 %1190, 31
  %1220 = xor i32 %1216, %1218
  %1221 = xor i32 %1216, %1219
  %1222 = add nuw nsw i32 %1220, %1221
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %51, align 1
  %1225 = trunc i32 %1198 to i8
  store i8 %1225, i8* %BL.i3565, align 1
  %1226 = add i64 %1192, -48
  %1227 = add i64 %1191, 13
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i8*
  store i8 %1225, i8* %1228, align 1
  %1229 = load i64, i64* %RBP.i, align 8
  %1230 = add i64 %1229, -45
  %1231 = load i64, i64* %3, align 8
  %1232 = add i64 %1231, 4
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1230 to i8*
  %1234 = load i8, i8* %1233, align 1
  %1235 = zext i8 %1234 to i64
  store i64 %1235, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x413fda_type* @G__0x413fda to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413fda_type* @G__0x413fda to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1236 = add i64 %1229, -256
  %1237 = add i64 %1231, 18
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i64*
  %1239 = load i64, i64* %1238, align 8
  store i64 %1239, i64* %RDI.i4036.pre-phi, align 8
  %1240 = add i64 %1229, -248
  %1241 = add i64 %1231, 24
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  %1243 = load i32, i32* %1242, align 4
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RSI.i3042, align 8
  %1245 = add i64 %1229, -268
  %1246 = load i32, i32* %R8D.i4026, align 4
  %1247 = add i64 %1231, 31
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1245 to i32*
  store i32 %1246, i32* %1248, align 4
  %1249 = load i64, i64* %3, align 8
  %1250 = add i64 %1249, 11598
  %1251 = add i64 %1249, 5
  %1252 = load i64, i64* %6, align 8
  %1253 = add i64 %1252, -8
  %1254 = inttoptr i64 %1253 to i64*
  store i64 %1251, i64* %1254, align 8
  store i64 %1253, i64* %6, align 8
  store i64 %1250, i64* %3, align 8
  %call2_4012f2 = tail call %struct.Memory* @sub_404040._Z14test_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1250, %struct.Memory* %1193)
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -45
  %1257 = load i64, i64* %3, align 8
  %1258 = add i64 %1257, 4
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1256 to i8*
  %1260 = load i8, i8* %1259, align 1
  %1261 = zext i8 %1260 to i64
  store i64 %1261, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x413fef_type* @G__0x413fef to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x413fef_type* @G__0x413fef to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1262 = add i64 %1255, -256
  %1263 = add i64 %1257, 18
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i64*
  %1265 = load i64, i64* %1264, align 8
  store i64 %1265, i64* %RDI.i4036.pre-phi, align 8
  %1266 = add i64 %1255, -248
  %1267 = add i64 %1257, 24
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i32*
  %1269 = load i32, i32* %1268, align 4
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RSI.i3042, align 8
  %1271 = add i64 %1257, 11769
  %1272 = add i64 %1257, 29
  %1273 = load i64, i64* %6, align 8
  %1274 = add i64 %1273, -8
  %1275 = inttoptr i64 %1274 to i64*
  store i64 %1272, i64* %1275, align 8
  store i64 %1274, i64* %6, align 8
  store i64 %1271, i64* %3, align 8
  %call2_40130f = tail call %struct.Memory* @sub_4040f0._Z22test_hoisted_variable1Ih19custom_add_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1271, %struct.Memory* %call2_4012f2)
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -48
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, 5
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1277 to i8*
  %1281 = load i8, i8* %1280, align 1
  %1282 = zext i8 %1281 to i64
  store i64 %1282, i64* %473, align 8
  %1283 = add i64 %1276, -47
  %1284 = add i64 %1278, 10
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i8*
  %1286 = load i8, i8* %1285, align 1
  %1287 = zext i8 %1286 to i64
  store i64 %1287, i64* %242, align 8
  %1288 = add i64 %1276, -46
  %1289 = add i64 %1278, 14
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i8*
  %1291 = load i8, i8* %1290, align 1
  %1292 = zext i8 %1291 to i64
  store i64 %1292, i64* %RCX.i4032, align 8
  %1293 = add i64 %1276, -45
  %1294 = add i64 %1278, 18
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i8*
  %1296 = load i8, i8* %1295, align 1
  %1297 = zext i8 %1296 to i64
  store i64 %1297, i64* %RDX.i4028, align 8
  %1298 = load i64, i64* %6, align 8
  store i64 %1298, i64* %RDI.i4036.pre-phi, align 8
  %1299 = add i64 %1278, 28
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i64*
  store i64 4276236, i64* %1300, align 8
  %1301 = load i64, i64* %RBP.i, align 8
  %1302 = add i64 %1301, -256
  %1303 = load i64, i64* %3, align 8
  %1304 = add i64 %1303, 7
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1302 to i64*
  %1306 = load i64, i64* %1305, align 8
  store i64 %1306, i64* %RDI.i4036.pre-phi, align 8
  %1307 = add i64 %1301, -248
  %1308 = add i64 %1303, 13
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RSI.i3042, align 8
  %1312 = add i64 %1303, 11904
  %1313 = add i64 %1303, 18
  %1314 = load i64, i64* %6, align 8
  %1315 = add i64 %1314, -8
  %1316 = inttoptr i64 %1315 to i64*
  store i64 %1313, i64* %1316, align 8
  store i64 %1315, i64* %6, align 8
  store i64 %1312, i64* %3, align 8
  %call2_40133d = tail call %struct.Memory* @sub_4041b0._Z14test_variable4Ih28custom_add_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1312, %struct.Memory* %call2_40130f)
  %1317 = load i64, i64* %RBP.i, align 8
  %1318 = add i64 %1317, -45
  %1319 = load i64, i64* %3, align 8
  %1320 = add i64 %1319, 4
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1318 to i8*
  %1322 = load i8, i8* %1321, align 1
  %1323 = zext i8 %1322 to i64
  store i64 %1323, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41402b_type* @G__0x41402b to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41402b_type* @G__0x41402b to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1324 = add i64 %1317, -256
  %1325 = add i64 %1319, 18
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %RDI.i4036.pre-phi, align 8
  %1328 = add i64 %1317, -248
  %1329 = add i64 %1319, 24
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RSI.i3042, align 8
  %1333 = add i64 %1319, 12158
  %1334 = add i64 %1319, 29
  %1335 = load i64, i64* %6, align 8
  %1336 = add i64 %1335, -8
  %1337 = inttoptr i64 %1336 to i64*
  store i64 %1334, i64* %1337, align 8
  store i64 %1336, i64* %6, align 8
  store i64 %1333, i64* %3, align 8
  %call2_40135a = tail call %struct.Memory* @sub_4042c0._Z14test_variable1Ih19custom_sub_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1333, %struct.Memory* %call2_40133d)
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -48
  %1340 = load i64, i64* %3, align 8
  %1341 = add i64 %1340, 5
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1339 to i8*
  %1343 = load i8, i8* %1342, align 1
  %1344 = zext i8 %1343 to i64
  store i64 %1344, i64* %473, align 8
  %1345 = add i64 %1338, -47
  %1346 = add i64 %1340, 10
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i8*
  %1348 = load i8, i8* %1347, align 1
  %1349 = zext i8 %1348 to i64
  store i64 %1349, i64* %242, align 8
  %1350 = add i64 %1338, -46
  %1351 = add i64 %1340, 14
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i8*
  %1353 = load i8, i8* %1352, align 1
  %1354 = zext i8 %1353 to i64
  store i64 %1354, i64* %RCX.i4032, align 8
  %1355 = add i64 %1338, -45
  %1356 = add i64 %1340, 18
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i8*
  %1358 = load i8, i8* %1357, align 1
  %1359 = zext i8 %1358 to i64
  store i64 %1359, i64* %RDX.i4028, align 8
  %1360 = load i64, i64* %6, align 8
  store i64 %1360, i64* %RDI.i4036.pre-phi, align 8
  %1361 = add i64 %1340, 28
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i64*
  store i64 4276293, i64* %1362, align 8
  %1363 = load i64, i64* %RBP.i, align 8
  %1364 = add i64 %1363, -256
  %1365 = load i64, i64* %3, align 8
  %1366 = add i64 %1365, 7
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1364 to i64*
  %1368 = load i64, i64* %1367, align 8
  store i64 %1368, i64* %RDI.i4036.pre-phi, align 8
  %1369 = add i64 %1363, -248
  %1370 = add i64 %1365, 13
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i32*
  %1372 = load i32, i32* %1371, align 4
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RSI.i3042, align 8
  %1374 = add i64 %1365, 12277
  %1375 = add i64 %1365, 18
  %1376 = load i64, i64* %6, align 8
  %1377 = add i64 %1376, -8
  %1378 = inttoptr i64 %1377 to i64*
  store i64 %1375, i64* %1378, align 8
  store i64 %1377, i64* %6, align 8
  store i64 %1374, i64* %3, align 8
  %call2_401388 = tail call %struct.Memory* @sub_404370._Z14test_variable4Ih28custom_sub_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1374, %struct.Memory* %call2_40135a)
  %1379 = load i64, i64* %RBP.i, align 8
  %1380 = add i64 %1379, -45
  %1381 = load i64, i64* %3, align 8
  %1382 = add i64 %1381, 4
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1380 to i8*
  %1384 = load i8, i8* %1383, align 1
  %1385 = zext i8 %1384 to i64
  store i64 %1385, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414069_type* @G__0x414069 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414069_type* @G__0x414069 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1386 = add i64 %1379, -256
  %1387 = add i64 %1381, 18
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RDI.i4036.pre-phi, align 8
  %1390 = add i64 %1379, -248
  %1391 = add i64 %1381, 24
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RSI.i3042, align 8
  %1395 = add i64 %1381, 12531
  %1396 = add i64 %1381, 29
  %1397 = load i64, i64* %6, align 8
  %1398 = add i64 %1397, -8
  %1399 = inttoptr i64 %1398 to i64*
  store i64 %1396, i64* %1399, align 8
  store i64 %1398, i64* %6, align 8
  store i64 %1395, i64* %3, align 8
  %call2_4013a5 = tail call %struct.Memory* @sub_404480._Z14test_variable1Ih24custom_multiply_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1395, %struct.Memory* %call2_401388)
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -48
  %1402 = load i64, i64* %3, align 8
  %1403 = add i64 %1402, 5
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1401 to i8*
  %1405 = load i8, i8* %1404, align 1
  %1406 = zext i8 %1405 to i64
  store i64 %1406, i64* %473, align 8
  %1407 = add i64 %1400, -47
  %1408 = add i64 %1402, 10
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i8*
  %1410 = load i8, i8* %1409, align 1
  %1411 = zext i8 %1410 to i64
  store i64 %1411, i64* %242, align 8
  %1412 = add i64 %1400, -46
  %1413 = add i64 %1402, 14
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i8*
  %1415 = load i8, i8* %1414, align 1
  %1416 = zext i8 %1415 to i64
  store i64 %1416, i64* %RCX.i4032, align 8
  %1417 = add i64 %1400, -45
  %1418 = add i64 %1402, 18
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i8*
  %1420 = load i8, i8* %1419, align 1
  %1421 = zext i8 %1420 to i64
  store i64 %1421, i64* %RDX.i4028, align 8
  %1422 = load i64, i64* %6, align 8
  store i64 %1422, i64* %RDI.i4036.pre-phi, align 8
  %1423 = add i64 %1402, 28
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i64*
  store i64 4276355, i64* %1424, align 8
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -256
  %1427 = load i64, i64* %3, align 8
  %1428 = add i64 %1427, 7
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1426 to i64*
  %1430 = load i64, i64* %1429, align 8
  store i64 %1430, i64* %RDI.i4036.pre-phi, align 8
  %1431 = add i64 %1425, -248
  %1432 = add i64 %1427, 13
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RSI.i3042, align 8
  %1436 = add i64 %1427, 12650
  %1437 = add i64 %1427, 18
  %1438 = load i64, i64* %6, align 8
  %1439 = add i64 %1438, -8
  %1440 = inttoptr i64 %1439 to i64*
  store i64 %1437, i64* %1440, align 8
  store i64 %1439, i64* %6, align 8
  store i64 %1436, i64* %3, align 8
  %call2_4013d3 = tail call %struct.Memory* @sub_404530._Z14test_variable4Ih33custom_multiply_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1436, %struct.Memory* %call2_4013a5)
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -48
  %1443 = load i64, i64* %3, align 8
  %1444 = add i64 %1443, 5
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1442 to i8*
  %1446 = load i8, i8* %1445, align 1
  %1447 = zext i8 %1446 to i64
  store i64 %1447, i64* %473, align 8
  %1448 = add i64 %1441, -47
  %1449 = add i64 %1443, 10
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i8*
  %1451 = load i8, i8* %1450, align 1
  %1452 = zext i8 %1451 to i64
  store i64 %1452, i64* %242, align 8
  %1453 = add i64 %1441, -46
  %1454 = add i64 %1443, 14
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i8*
  %1456 = load i8, i8* %1455, align 1
  %1457 = zext i8 %1456 to i64
  store i64 %1457, i64* %RCX.i4032, align 8
  %1458 = add i64 %1441, -45
  %1459 = add i64 %1443, 18
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i8*
  %1461 = load i8, i8* %1460, align 1
  %1462 = zext i8 %1461 to i64
  store i64 %1462, i64* %RDX.i4028, align 8
  %1463 = load i64, i64* %6, align 8
  store i64 %1463, i64* %RDI.i4036.pre-phi, align 8
  %1464 = add i64 %1443, 28
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i64*
  store i64 4276392, i64* %1465, align 8
  %1466 = load i64, i64* %RBP.i, align 8
  %1467 = add i64 %1466, -256
  %1468 = load i64, i64* %3, align 8
  %1469 = add i64 %1468, 7
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1467 to i64*
  %1471 = load i64, i64* %1470, align 8
  store i64 %1471, i64* %RDI.i4036.pre-phi, align 8
  %1472 = add i64 %1466, -248
  %1473 = add i64 %1468, 13
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1472 to i32*
  %1475 = load i32, i32* %1474, align 4
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RSI.i3042, align 8
  %1477 = add i64 %1468, 12876
  %1478 = add i64 %1468, 18
  %1479 = load i64, i64* %6, align 8
  %1480 = add i64 %1479, -8
  %1481 = inttoptr i64 %1480 to i64*
  store i64 %1478, i64* %1481, align 8
  store i64 %1480, i64* %6, align 8
  store i64 %1477, i64* %3, align 8
  %call2_401401 = tail call %struct.Memory* @sub_404640._Z14test_variable4Ih34custom_multiply_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1477, %struct.Memory* %call2_4013d3)
  %1482 = load i64, i64* %RBP.i, align 8
  %1483 = add i64 %1482, -45
  %1484 = load i64, i64* %3, align 8
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1483 to i8*
  %1487 = load i8, i8* %1486, align 1
  %1488 = zext i8 %1487 to i64
  store i64 %1488, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4140ce_type* @G__0x4140ce to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4140ce_type* @G__0x4140ce to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1489 = add i64 %1482, -256
  %1490 = add i64 %1484, 18
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %RDI.i4036.pre-phi, align 8
  %1493 = add i64 %1482, -248
  %1494 = add i64 %1484, 24
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RSI.i3042, align 8
  %1498 = add i64 %1484, 13130
  %1499 = add i64 %1484, 29
  %1500 = load i64, i64* %6, align 8
  %1501 = add i64 %1500, -8
  %1502 = inttoptr i64 %1501 to i64*
  store i64 %1499, i64* %1502, align 8
  store i64 %1501, i64* %6, align 8
  store i64 %1498, i64* %3, align 8
  %call2_40141e = tail call %struct.Memory* @sub_404750._Z14test_variable1Ih22custom_divide_variableIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1498, %struct.Memory* %call2_401401)
  %1503 = load i64, i64* %RBP.i, align 8
  %1504 = add i64 %1503, -48
  %1505 = load i64, i64* %3, align 8
  %1506 = add i64 %1505, 5
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1504 to i8*
  %1508 = load i8, i8* %1507, align 1
  %1509 = zext i8 %1508 to i64
  store i64 %1509, i64* %473, align 8
  %1510 = add i64 %1503, -47
  %1511 = add i64 %1505, 10
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i8*
  %1513 = load i8, i8* %1512, align 1
  %1514 = zext i8 %1513 to i64
  store i64 %1514, i64* %242, align 8
  %1515 = add i64 %1503, -46
  %1516 = add i64 %1505, 14
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i8*
  %1518 = load i8, i8* %1517, align 1
  %1519 = zext i8 %1518 to i64
  store i64 %1519, i64* %RCX.i4032, align 8
  %1520 = add i64 %1503, -45
  %1521 = add i64 %1505, 18
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i8*
  %1523 = load i8, i8* %1522, align 1
  %1524 = zext i8 %1523 to i64
  store i64 %1524, i64* %RDX.i4028, align 8
  %1525 = load i64, i64* %6, align 8
  store i64 %1525, i64* %RDI.i4036.pre-phi, align 8
  %1526 = add i64 %1505, 28
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i64*
  store i64 4276454, i64* %1527, align 8
  %1528 = load i64, i64* %RBP.i, align 8
  %1529 = add i64 %1528, -256
  %1530 = load i64, i64* %3, align 8
  %1531 = add i64 %1530, 7
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1529 to i64*
  %1533 = load i64, i64* %1532, align 8
  store i64 %1533, i64* %RDI.i4036.pre-phi, align 8
  %1534 = add i64 %1528, -248
  %1535 = add i64 %1530, 13
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RSI.i3042, align 8
  %1539 = add i64 %1530, 13249
  %1540 = add i64 %1530, 18
  %1541 = load i64, i64* %6, align 8
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1540, i64* %1543, align 8
  store i64 %1542, i64* %6, align 8
  store i64 %1539, i64* %3, align 8
  %call2_40144c = tail call %struct.Memory* @sub_404800._Z14test_variable4Ih31custom_divide_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1539, %struct.Memory* %call2_40141e)
  %1544 = load i64, i64* %RBP.i, align 8
  %1545 = add i64 %1544, -48
  %1546 = load i64, i64* %3, align 8
  %1547 = add i64 %1546, 5
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1545 to i8*
  %1549 = load i8, i8* %1548, align 1
  %1550 = zext i8 %1549 to i64
  store i64 %1550, i64* %473, align 8
  %1551 = add i64 %1544, -47
  %1552 = add i64 %1546, 10
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i8*
  %1554 = load i8, i8* %1553, align 1
  %1555 = zext i8 %1554 to i64
  store i64 %1555, i64* %242, align 8
  %1556 = add i64 %1544, -46
  %1557 = add i64 %1546, 14
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i8*
  %1559 = load i8, i8* %1558, align 1
  %1560 = zext i8 %1559 to i64
  store i64 %1560, i64* %RCX.i4032, align 8
  %1561 = add i64 %1544, -45
  %1562 = add i64 %1546, 18
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i8*
  %1564 = load i8, i8* %1563, align 1
  %1565 = zext i8 %1564 to i64
  store i64 %1565, i64* %RDX.i4028, align 8
  %1566 = load i64, i64* %6, align 8
  store i64 %1566, i64* %RDI.i4036.pre-phi, align 8
  %1567 = add i64 %1546, 28
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i64*
  store i64 4276488, i64* %1568, align 8
  %1569 = load i64, i64* %RBP.i, align 8
  %1570 = add i64 %1569, -256
  %1571 = load i64, i64* %3, align 8
  %1572 = add i64 %1571, 7
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1570 to i64*
  %1574 = load i64, i64* %1573, align 8
  store i64 %1574, i64* %RDI.i4036.pre-phi, align 8
  %1575 = add i64 %1569, -248
  %1576 = add i64 %1571, 13
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RSI.i3042, align 8
  %1580 = add i64 %1571, 13475
  %1581 = add i64 %1571, 18
  %1582 = load i64, i64* %6, align 8
  %1583 = add i64 %1582, -8
  %1584 = inttoptr i64 %1583 to i64*
  store i64 %1581, i64* %1584, align 8
  store i64 %1583, i64* %6, align 8
  store i64 %1580, i64* %3, align 8
  %call2_40147a = tail call %struct.Memory* @sub_404910._Z14test_variable4Ih32custom_divide_multiple_variable2IhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1580, %struct.Memory* %call2_40144c)
  %1585 = load i64, i64* %RBP.i, align 8
  %1586 = add i64 %1585, -48
  %1587 = load i64, i64* %3, align 8
  %1588 = add i64 %1587, 5
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1586 to i8*
  %1590 = load i8, i8* %1589, align 1
  %1591 = zext i8 %1590 to i64
  store i64 %1591, i64* %473, align 8
  %1592 = add i64 %1585, -47
  %1593 = add i64 %1587, 10
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i8*
  %1595 = load i8, i8* %1594, align 1
  %1596 = zext i8 %1595 to i64
  store i64 %1596, i64* %242, align 8
  %1597 = add i64 %1585, -46
  %1598 = add i64 %1587, 14
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i8*
  %1600 = load i8, i8* %1599, align 1
  %1601 = zext i8 %1600 to i64
  store i64 %1601, i64* %RCX.i4032, align 8
  %1602 = add i64 %1585, -45
  %1603 = add i64 %1587, 18
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i8*
  %1605 = load i8, i8* %1604, align 1
  %1606 = zext i8 %1605 to i64
  store i64 %1606, i64* %RDX.i4028, align 8
  %1607 = load i64, i64* %6, align 8
  store i64 %1607, i64* %RDI.i4036.pre-phi, align 8
  %1608 = add i64 %1587, 28
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to i64*
  store i64 4276523, i64* %1609, align 8
  %1610 = load i64, i64* %RBP.i, align 8
  %1611 = add i64 %1610, -256
  %1612 = load i64, i64* %3, align 8
  %1613 = add i64 %1612, 7
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1611 to i64*
  %1615 = load i64, i64* %1614, align 8
  store i64 %1615, i64* %RDI.i4036.pre-phi, align 8
  %1616 = add i64 %1610, -248
  %1617 = add i64 %1612, 13
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RSI.i3042, align 8
  %1621 = add i64 %1612, 13701
  %1622 = add i64 %1612, 18
  %1623 = load i64, i64* %6, align 8
  %1624 = add i64 %1623, -8
  %1625 = inttoptr i64 %1624 to i64*
  store i64 %1622, i64* %1625, align 8
  store i64 %1624, i64* %6, align 8
  store i64 %1621, i64* %3, align 8
  %call2_4014a8 = tail call %struct.Memory* @sub_404a20._Z14test_variable4Ih30custom_mixed_multiple_variableIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1621, %struct.Memory* %call2_40147a)
  %1626 = load i64, i64* %RBP.i, align 8
  %1627 = add i64 %1626, -45
  %1628 = load i64, i64* %3, align 8
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1627 to i8*
  %1631 = load i8, i8* %1630, align 1
  %1632 = zext i8 %1631 to i64
  store i64 %1632, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41414b_type* @G__0x41414b to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41414b_type* @G__0x41414b to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1633 = add i64 %1626, -256
  %1634 = add i64 %1628, 18
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to i64*
  %1636 = load i64, i64* %1635, align 8
  store i64 %1636, i64* %RDI.i4036.pre-phi, align 8
  %1637 = add i64 %1626, -248
  %1638 = add i64 %1628, 24
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RSI.i3042, align 8
  %1642 = add i64 %1628, 13955
  %1643 = add i64 %1628, 29
  %1644 = load i64, i64* %6, align 8
  %1645 = add i64 %1644, -8
  %1646 = inttoptr i64 %1645 to i64*
  store i64 %1643, i64* %1646, align 8
  store i64 %1645, i64* %6, align 8
  store i64 %1642, i64* %3, align 8
  %call2_4014c5 = tail call %struct.Memory* @sub_404b30._Z14test_variable1Ih19custom_variable_andIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1642, %struct.Memory* %call2_4014a8)
  %1647 = load i64, i64* %RBP.i, align 8
  %1648 = add i64 %1647, -48
  %1649 = load i64, i64* %3, align 8
  %1650 = add i64 %1649, 5
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1648 to i8*
  %1652 = load i8, i8* %1651, align 1
  %1653 = zext i8 %1652 to i64
  store i64 %1653, i64* %473, align 8
  %1654 = add i64 %1647, -47
  %1655 = add i64 %1649, 10
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i8*
  %1657 = load i8, i8* %1656, align 1
  %1658 = zext i8 %1657 to i64
  store i64 %1658, i64* %242, align 8
  %1659 = add i64 %1647, -46
  %1660 = add i64 %1649, 14
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i8*
  %1662 = load i8, i8* %1661, align 1
  %1663 = zext i8 %1662 to i64
  store i64 %1663, i64* %RCX.i4032, align 8
  %1664 = add i64 %1647, -45
  %1665 = add i64 %1649, 18
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i8*
  %1667 = load i8, i8* %1666, align 1
  %1668 = zext i8 %1667 to i64
  store i64 %1668, i64* %RDX.i4028, align 8
  %1669 = load i64, i64* %6, align 8
  store i64 %1669, i64* %RDI.i4036.pre-phi, align 8
  %1670 = add i64 %1649, 28
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i64*
  store i64 4276576, i64* %1671, align 8
  %1672 = load i64, i64* %RBP.i, align 8
  %1673 = add i64 %1672, -256
  %1674 = load i64, i64* %3, align 8
  %1675 = add i64 %1674, 7
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1673 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %RDI.i4036.pre-phi, align 8
  %1678 = add i64 %1672, -248
  %1679 = add i64 %1674, 13
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RSI.i3042, align 8
  %1683 = add i64 %1674, 14074
  %1684 = add i64 %1674, 18
  %1685 = load i64, i64* %6, align 8
  %1686 = add i64 %1685, -8
  %1687 = inttoptr i64 %1686 to i64*
  store i64 %1684, i64* %1687, align 8
  store i64 %1686, i64* %6, align 8
  store i64 %1683, i64* %3, align 8
  %call2_4014f3 = tail call %struct.Memory* @sub_404be0._Z14test_variable4Ih28custom_multiple_variable_andIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1683, %struct.Memory* %call2_4014c5)
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -45
  %1690 = load i64, i64* %3, align 8
  %1691 = add i64 %1690, 4
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1689 to i8*
  %1693 = load i8, i8* %1692, align 1
  %1694 = zext i8 %1693 to i64
  store i64 %1694, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41417e_type* @G__0x41417e to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41417e_type* @G__0x41417e to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1695 = add i64 %1688, -256
  %1696 = add i64 %1690, 18
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i64*
  %1698 = load i64, i64* %1697, align 8
  store i64 %1698, i64* %RDI.i4036.pre-phi, align 8
  %1699 = add i64 %1688, -248
  %1700 = add i64 %1690, 24
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i32*
  %1702 = load i32, i32* %1701, align 4
  %1703 = zext i32 %1702 to i64
  store i64 %1703, i64* %RSI.i3042, align 8
  %1704 = add i64 %1690, 14328
  %1705 = add i64 %1690, 29
  %1706 = load i64, i64* %6, align 8
  %1707 = add i64 %1706, -8
  %1708 = inttoptr i64 %1707 to i64*
  store i64 %1705, i64* %1708, align 8
  store i64 %1707, i64* %6, align 8
  store i64 %1704, i64* %3, align 8
  %call2_401510 = tail call %struct.Memory* @sub_404cf0._Z14test_variable1Ih18custom_variable_orIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1704, %struct.Memory* %call2_4014f3)
  %1709 = load i64, i64* %RBP.i, align 8
  %1710 = add i64 %1709, -48
  %1711 = load i64, i64* %3, align 8
  %1712 = add i64 %1711, 5
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1710 to i8*
  %1714 = load i8, i8* %1713, align 1
  %1715 = zext i8 %1714 to i64
  store i64 %1715, i64* %473, align 8
  %1716 = add i64 %1709, -47
  %1717 = add i64 %1711, 10
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i8*
  %1719 = load i8, i8* %1718, align 1
  %1720 = zext i8 %1719 to i64
  store i64 %1720, i64* %242, align 8
  %1721 = add i64 %1709, -46
  %1722 = add i64 %1711, 14
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i8*
  %1724 = load i8, i8* %1723, align 1
  %1725 = zext i8 %1724 to i64
  store i64 %1725, i64* %RCX.i4032, align 8
  %1726 = add i64 %1709, -45
  %1727 = add i64 %1711, 18
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i8*
  %1729 = load i8, i8* %1728, align 1
  %1730 = zext i8 %1729 to i64
  store i64 %1730, i64* %RDX.i4028, align 8
  %1731 = load i64, i64* %6, align 8
  store i64 %1731, i64* %RDI.i4036.pre-phi, align 8
  %1732 = add i64 %1711, 28
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to i64*
  store i64 4276626, i64* %1733, align 8
  %1734 = load i64, i64* %RBP.i, align 8
  %1735 = add i64 %1734, -256
  %1736 = load i64, i64* %3, align 8
  %1737 = add i64 %1736, 7
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1735 to i64*
  %1739 = load i64, i64* %1738, align 8
  store i64 %1739, i64* %RDI.i4036.pre-phi, align 8
  %1740 = add i64 %1734, -248
  %1741 = add i64 %1736, 13
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i32*
  %1743 = load i32, i32* %1742, align 4
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RSI.i3042, align 8
  %1745 = add i64 %1736, 14447
  %1746 = add i64 %1736, 18
  %1747 = load i64, i64* %6, align 8
  %1748 = add i64 %1747, -8
  %1749 = inttoptr i64 %1748 to i64*
  store i64 %1746, i64* %1749, align 8
  store i64 %1748, i64* %6, align 8
  store i64 %1745, i64* %3, align 8
  %call2_40153e = tail call %struct.Memory* @sub_404da0._Z14test_variable4Ih27custom_multiple_variable_orIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1745, %struct.Memory* %call2_401510)
  %1750 = load i64, i64* %RBP.i, align 8
  %1751 = add i64 %1750, -45
  %1752 = load i64, i64* %3, align 8
  %1753 = add i64 %1752, 4
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1751 to i8*
  %1755 = load i8, i8* %1754, align 1
  %1756 = zext i8 %1755 to i64
  store i64 %1756, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141af_type* @G__0x4141af to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141af_type* @G__0x4141af to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %1757 = add i64 %1750, -256
  %1758 = add i64 %1752, 18
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i64*
  %1760 = load i64, i64* %1759, align 8
  store i64 %1760, i64* %RDI.i4036.pre-phi, align 8
  %1761 = add i64 %1750, -248
  %1762 = add i64 %1752, 24
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  %1764 = load i32, i32* %1763, align 4
  %1765 = zext i32 %1764 to i64
  store i64 %1765, i64* %RSI.i3042, align 8
  %1766 = add i64 %1752, 14701
  %1767 = add i64 %1752, 29
  %1768 = load i64, i64* %6, align 8
  %1769 = add i64 %1768, -8
  %1770 = inttoptr i64 %1769 to i64*
  store i64 %1767, i64* %1770, align 8
  store i64 %1769, i64* %6, align 8
  store i64 %1766, i64* %3, align 8
  %call2_40155b = tail call %struct.Memory* @sub_404eb0._Z14test_variable1Ih19custom_variable_xorIhEEvPT_iS2_PKc(%struct.State* %0, i64 %1766, %struct.Memory* %call2_40153e)
  %1771 = load i64, i64* %RBP.i, align 8
  %1772 = add i64 %1771, -48
  %1773 = load i64, i64* %3, align 8
  %1774 = add i64 %1773, 5
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1772 to i8*
  %1776 = load i8, i8* %1775, align 1
  %1777 = zext i8 %1776 to i64
  store i64 %1777, i64* %473, align 8
  %1778 = add i64 %1771, -47
  %1779 = add i64 %1773, 10
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i8*
  %1781 = load i8, i8* %1780, align 1
  %1782 = zext i8 %1781 to i64
  store i64 %1782, i64* %242, align 8
  %1783 = add i64 %1771, -46
  %1784 = add i64 %1773, 14
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i8*
  %1786 = load i8, i8* %1785, align 1
  %1787 = zext i8 %1786 to i64
  store i64 %1787, i64* %RCX.i4032, align 8
  %1788 = add i64 %1771, -45
  %1789 = add i64 %1773, 18
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i8*
  %1791 = load i8, i8* %1790, align 1
  %1792 = zext i8 %1791 to i64
  store i64 %1792, i64* %RDX.i4028, align 8
  %1793 = load i64, i64* %6, align 8
  store i64 %1793, i64* %RDI.i4036.pre-phi, align 8
  %1794 = add i64 %1773, 28
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i64*
  store i64 4276676, i64* %1795, align 8
  %1796 = load i64, i64* %RBP.i, align 8
  %1797 = add i64 %1796, -256
  %1798 = load i64, i64* %3, align 8
  %1799 = add i64 %1798, 7
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1797 to i64*
  %1801 = load i64, i64* %1800, align 8
  store i64 %1801, i64* %RDI.i4036.pre-phi, align 8
  %1802 = add i64 %1796, -248
  %1803 = add i64 %1798, 13
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = zext i32 %1805 to i64
  store i64 %1806, i64* %RSI.i3042, align 8
  %1807 = add i64 %1798, 14820
  %1808 = add i64 %1798, 18
  %1809 = load i64, i64* %6, align 8
  %1810 = add i64 %1809, -8
  %1811 = inttoptr i64 %1810 to i64*
  store i64 %1808, i64* %1811, align 8
  store i64 %1810, i64* %6, align 8
  store i64 %1807, i64* %3, align 8
  %call2_401589 = tail call %struct.Memory* @sub_404f60._Z14test_variable4Ih28custom_multiple_variable_xorIhEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %1807, %struct.Memory* %call2_40155b)
  %1812 = load i64, i64* %3, align 8
  %1813 = load double, double* bitcast (%G_0x218af2__rip__4199830__type* @G_0x218af2__rip__4199830_ to double*), align 8
  %1814 = tail call double @llvm.trunc.f64(double %1813)
  %1815 = tail call double @llvm.fabs.f64(double %1814)
  %1816 = fcmp ogt double %1815, 0x41DFFFFFFFC00000
  %1817 = fptosi double %1814 to i32
  store i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  %R14W.i3112 = bitcast %union.anon* %11 to i16*
  %1818 = trunc i32 %1817 to i16
  %1819 = select i1 %1816, i16 0, i16 %1818
  store i16 %1819, i16* %R14W.i3112, align 2
  %1820 = sext i16 %1819 to i64
  %1821 = and i64 %1820, 4294967295
  store i64 %1821, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6682c0_type* @G__0x6682c0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %1822 = load i64, i64* %RBP.i, align 8
  %1823 = add i64 %1822, -280
  %1824 = add i64 %1812, 37
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295) to i32) to i64), i64* %1825, align 8
  %1826 = load i64, i64* %3, align 8
  %1827 = add i64 %1826, 15037
  %1828 = add i64 %1826, 5
  %1829 = load i64, i64* %6, align 8
  %1830 = add i64 %1829, -8
  %1831 = inttoptr i64 %1830 to i64*
  store i64 %1828, i64* %1831, align 8
  store i64 %1830, i64* %6, align 8
  store i64 %1827, i64* %3, align 8
  %call2_4015b3 = tail call %struct.Memory* @sub_405070._Z4fillIPssEvT_S1_T0_(%struct.State* %0, i64 %1827, %struct.Memory* %call2_401589)
  %1832 = load i64, i64* %RBP.i, align 8
  %1833 = add i64 %1832, -40
  %1834 = load i64, i64* %3, align 8
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1833 to double*
  %1837 = load double, double* %1836, align 8
  %1838 = tail call double @llvm.trunc.f64(double %1837)
  %1839 = tail call double @llvm.fabs.f64(double %1838)
  %1840 = fcmp ogt double %1839, 0x41DFFFFFFFC00000
  %1841 = fptosi double %1838 to i32
  %1842 = zext i32 %1841 to i64
  %1843 = select i1 %1840, i64 2147483648, i64 %1842
  store i64 %1843, i64* %RAX.i4030.pre-phi, align 8
  %1844 = trunc i64 %1843 to i16
  store i16 %1844, i16* %R14W.i3112, align 2
  %1845 = add i64 %1832, -50
  %1846 = add i64 %1834, 14
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i16*
  store i16 %1844, i16* %1847, align 2
  %1848 = load i64, i64* %RBP.i, align 8
  %1849 = add i64 %1848, -50
  %1850 = load i64, i64* %3, align 8
  %1851 = add i64 %1850, 4
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1849 to i16*
  %1853 = load i16, i16* %1852, align 2
  %1854 = zext i16 %1853 to i32
  %1855 = shl nuw nsw i32 %1854, 1
  %1856 = zext i32 %1855 to i64
  store i64 %1856, i64* %RAX.i4030.pre-phi, align 8
  %1857 = icmp ult i32 %1855, %1854
  %1858 = zext i1 %1857 to i8
  store i8 %1858, i8* %26, align 1
  %1859 = and i32 %1855, 254
  %1860 = tail call i32 @llvm.ctpop.i32(i32 %1859)
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  %1863 = xor i8 %1862, 1
  store i8 %1863, i8* %33, align 1
  %1864 = lshr i16 %1853, 3
  %1865 = trunc i16 %1864 to i8
  %1866 = and i8 %1865, 1
  store i8 %1866, i8* %39, align 1
  %1867 = icmp eq i16 %1853, 0
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1869 = trunc i32 %1855 to i16
  store i16 %1869, i16* %R14W.i3112, align 2
  %1870 = add i64 %1848, -52
  %1871 = add i64 %1850, 15
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i16*
  store i16 %1869, i16* %1872, align 2
  %1873 = load i64, i64* %RBP.i, align 8
  %1874 = add i64 %1873, -50
  %1875 = load i64, i64* %3, align 8
  %1876 = add i64 %1875, 4
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1874 to i16*
  %1878 = load i16, i16* %1877, align 2
  %1879 = zext i16 %1878 to i32
  %1880 = add nuw nsw i32 %1879, 2
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %1882 = and i32 %1880, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %33, align 1
  %1887 = xor i32 %1879, %1880
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1891 = trunc i32 %1880 to i16
  store i16 %1891, i16* %R14W.i3112, align 2
  %1892 = add i64 %1873, -54
  %1893 = add i64 %1875, 16
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i16*
  store i16 %1891, i16* %1894, align 2
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -50
  %1897 = load i64, i64* %3, align 8
  %1898 = add i64 %1897, 4
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1896 to i16*
  %1900 = load i16, i16* %1899, align 2
  %1901 = zext i16 %1900 to i64
  store i64 %1901, i64* %RAX.i4030.pre-phi, align 8
  %1902 = add i64 %1895, -52
  %1903 = add i64 %1897, 8
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i16*
  %1905 = load i16, i16* %1904, align 2
  %1906 = sext i16 %1905 to i64
  %1907 = and i64 %1906, 4294967295
  store i64 %1907, i64* %RCX.i4032, align 8
  %1908 = add i64 %1895, -54
  %1909 = add i64 %1897, 12
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i16*
  %1911 = load i16, i16* %1910, align 2
  %1912 = sext i16 %1911 to i64
  %1913 = and i64 %1912, 4294967295
  store i64 %1913, i64* %RDX.i4028, align 8
  %1914 = add i64 %1895, -284
  %1915 = zext i16 %1900 to i32
  %1916 = add i64 %1897, 18
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1914 to i32*
  store i32 %1915, i32* %1917, align 4
  %1918 = load i32, i32* %ECX.i3567, align 4
  %1919 = zext i32 %1918 to i64
  %1920 = load i64, i64* %3, align 8
  store i64 %1919, i64* %RAX.i4030.pre-phi, align 8
  %1921 = load i64, i64* %RBP.i, align 8
  %1922 = add i64 %1921, -288
  %1923 = load i32, i32* %EDX.i4025, align 4
  %1924 = add i64 %1920, 8
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1922 to i32*
  store i32 %1923, i32* %1925, align 4
  %1926 = load i64, i64* %3, align 8
  %1927 = load i32, i32* %371, align 8
  %1928 = sext i32 %1927 to i64
  %1929 = lshr i64 %1928, 32
  store i64 %1929, i64* %370, align 8
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -288
  %1932 = add i64 %1926, 7
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RCX.i4032, align 8
  %1936 = add i64 %1926, 9
  store i64 %1936, i64* %3, align 8
  %1937 = zext i32 %1927 to i64
  %1938 = sext i32 %1934 to i64
  %1939 = shl nuw i64 %1929, 32
  %1940 = or i64 %1939, %1937
  %1941 = sdiv i64 %1940, %1938
  %1942 = shl i64 %1941, 32
  %1943 = ashr exact i64 %1942, 32
  %1944 = icmp eq i64 %1941, %1943
  br i1 %1944, label %1947, label %1945

; <label>:1945:                                   ; preds = %routine_divl__ecx.exit
  %1946 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1936, %struct.Memory* %call2_4015b3)
  %.pre9 = load i64, i64* %RBP.i, align 8
  %.pre10 = load i64, i64* %3, align 8
  %.pre11 = load i32, i32* %EAX.i4015, align 4
  br label %routine_idivl__ecx.exit3040

; <label>:1947:                                   ; preds = %routine_divl__ecx.exit
  %1948 = srem i64 %1940, %1938
  %1949 = getelementptr inbounds %union.anon, %union.anon* %.pre-phi, i64 0, i32 0
  %1950 = and i64 %1941, 4294967295
  store i64 %1950, i64* %1949, align 8
  %1951 = and i64 %1948, 4294967295
  store i64 %1951, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %1952 = trunc i64 %1941 to i32
  br label %routine_idivl__ecx.exit3040

routine_idivl__ecx.exit3040:                      ; preds = %1947, %1945
  %1953 = phi i32 [ %.pre11, %1945 ], [ %1952, %1947 ]
  %1954 = phi i64 [ %.pre10, %1945 ], [ %1936, %1947 ]
  %1955 = phi i64 [ %.pre9, %1945 ], [ %1930, %1947 ]
  %1956 = phi %struct.Memory* [ %1946, %1945 ], [ %call2_4015b3, %1947 ]
  %1957 = add i64 %1955, -284
  %1958 = add i64 %1954, 6
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1957 to i32*
  %1960 = load i32, i32* %1959, align 4
  %1961 = add i32 %1953, %1960
  %1962 = zext i32 %1961 to i64
  store i64 %1962, i64* %RCX.i4032, align 8
  %1963 = icmp ult i32 %1961, %1960
  %1964 = icmp ult i32 %1961, %1953
  %1965 = or i1 %1963, %1964
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %26, align 1
  %1967 = and i32 %1961, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %33, align 1
  %1972 = xor i32 %1953, %1960
  %1973 = xor i32 %1972, %1961
  %1974 = lshr i32 %1973, 4
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  store i8 %1976, i8* %39, align 1
  %1977 = icmp eq i32 %1961, 0
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %42, align 1
  %1979 = lshr i32 %1961, 31
  %1980 = trunc i32 %1979 to i8
  store i8 %1980, i8* %45, align 1
  %1981 = lshr i32 %1960, 31
  %1982 = lshr i32 %1953, 31
  %1983 = xor i32 %1979, %1981
  %1984 = xor i32 %1979, %1982
  %1985 = add nuw nsw i32 %1983, %1984
  %1986 = icmp eq i32 %1985, 2
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %51, align 1
  %1988 = trunc i32 %1961 to i16
  store i16 %1988, i16* %R14W.i3112, align 2
  %1989 = add i64 %1955, -56
  %1990 = add i64 %1954, 17
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i16*
  store i16 %1988, i16* %1991, align 2
  %1992 = load i64, i64* %RBP.i, align 8
  %1993 = add i64 %1992, -50
  %1994 = load i64, i64* %3, align 8
  %1995 = add i64 %1994, 4
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1993 to i16*
  %1997 = load i16, i16* %1996, align 2
  %1998 = sext i16 %1997 to i64
  %1999 = and i64 %1998, 4294967295
  store i64 %1999, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141e3_type* @G__0x4141e3 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141e3_type* @G__0x4141e3 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2000 = add i64 %1992, -280
  %2001 = add i64 %1994, 18
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i64*
  %2003 = load i64, i64* %2002, align 8
  store i64 %2003, i64* %RDI.i4036.pre-phi, align 8
  %2004 = add i64 %1992, -248
  %2005 = add i64 %1994, 24
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RSI.i3042, align 8
  %2009 = add i64 %1994, 14999
  %2010 = add i64 %1994, 29
  %2011 = load i64, i64* %6, align 8
  %2012 = add i64 %2011, -8
  %2013 = inttoptr i64 %2012 to i64*
  store i64 %2010, i64* %2013, align 8
  store i64 %2012, i64* %6, align 8
  store i64 %2009, i64* %3, align 8
  %call2_401631 = tail call %struct.Memory* @sub_4050b0._Z14test_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2009, %struct.Memory* %1956)
  %2014 = load i64, i64* %RBP.i, align 8
  %2015 = add i64 %2014, -50
  %2016 = load i64, i64* %3, align 8
  %2017 = add i64 %2016, 4
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2015 to i16*
  %2019 = load i16, i16* %2018, align 2
  %2020 = sext i16 %2019 to i64
  %2021 = and i64 %2020, 4294967295
  store i64 %2021, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141f9_type* @G__0x4141f9 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141f9_type* @G__0x4141f9 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2022 = add i64 %2014, -280
  %2023 = add i64 %2016, 18
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i64*
  %2025 = load i64, i64* %2024, align 8
  store i64 %2025, i64* %RDI.i4036.pre-phi, align 8
  %2026 = add i64 %2014, -248
  %2027 = add i64 %2016, 24
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RSI.i3042, align 8
  %2031 = add i64 %2016, 15162
  %2032 = add i64 %2016, 29
  %2033 = load i64, i64* %6, align 8
  %2034 = add i64 %2033, -8
  %2035 = inttoptr i64 %2034 to i64*
  store i64 %2032, i64* %2035, align 8
  store i64 %2034, i64* %6, align 8
  store i64 %2031, i64* %3, align 8
  %call2_40164e = tail call %struct.Memory* @sub_405170._Z22test_hoisted_variable1Is19custom_add_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2031, %struct.Memory* %call2_401631)
  %2036 = load i64, i64* %RBP.i, align 8
  %2037 = add i64 %2036, -56
  %2038 = load i64, i64* %3, align 8
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2037 to i16*
  %2041 = load i16, i16* %2040, align 2
  %2042 = sext i16 %2041 to i64
  %2043 = and i64 %2042, 4294967295
  store i64 %2043, i64* %473, align 8
  %2044 = add i64 %2036, -54
  %2045 = add i64 %2038, 10
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i16*
  %2047 = load i16, i16* %2046, align 2
  %2048 = sext i16 %2047 to i64
  %2049 = and i64 %2048, 4294967295
  store i64 %2049, i64* %242, align 8
  %2050 = add i64 %2036, -52
  %2051 = add i64 %2038, 14
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i16*
  %2053 = load i16, i16* %2052, align 2
  %2054 = sext i16 %2053 to i64
  %2055 = and i64 %2054, 4294967295
  store i64 %2055, i64* %RCX.i4032, align 8
  %2056 = add i64 %2036, -50
  %2057 = add i64 %2038, 18
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i16*
  %2059 = load i16, i16* %2058, align 2
  %2060 = sext i16 %2059 to i64
  %2061 = and i64 %2060, 4294967295
  store i64 %2061, i64* %RDX.i4028, align 8
  %2062 = load i64, i64* %6, align 8
  store i64 %2062, i64* %RDI.i4036.pre-phi, align 8
  %2063 = add i64 %2038, 28
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i64*
  store i64 4276759, i64* %2064, align 8
  %2065 = load i64, i64* %RBP.i, align 8
  %2066 = add i64 %2065, -280
  %2067 = load i64, i64* %3, align 8
  %2068 = add i64 %2067, 7
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2066 to i64*
  %2070 = load i64, i64* %2069, align 8
  store i64 %2070, i64* %RDI.i4036.pre-phi, align 8
  %2071 = add i64 %2065, -248
  %2072 = add i64 %2067, 13
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RSI.i3042, align 8
  %2076 = add i64 %2067, 15297
  %2077 = add i64 %2067, 18
  %2078 = load i64, i64* %6, align 8
  %2079 = add i64 %2078, -8
  %2080 = inttoptr i64 %2079 to i64*
  store i64 %2077, i64* %2080, align 8
  store i64 %2079, i64* %6, align 8
  store i64 %2076, i64* %3, align 8
  %call2_40167c = tail call %struct.Memory* @sub_405230._Z14test_variable4Is28custom_add_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2076, %struct.Memory* %call2_40164e)
  %2081 = load i64, i64* %RBP.i, align 8
  %2082 = add i64 %2081, -50
  %2083 = load i64, i64* %3, align 8
  %2084 = add i64 %2083, 4
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2082 to i16*
  %2086 = load i16, i16* %2085, align 2
  %2087 = sext i16 %2086 to i64
  %2088 = and i64 %2087, 4294967295
  store i64 %2088, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414237_type* @G__0x414237 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414237_type* @G__0x414237 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2089 = add i64 %2081, -280
  %2090 = add i64 %2083, 18
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i64*
  %2092 = load i64, i64* %2091, align 8
  store i64 %2092, i64* %RDI.i4036.pre-phi, align 8
  %2093 = add i64 %2081, -248
  %2094 = add i64 %2083, 24
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i32*
  %2096 = load i32, i32* %2095, align 4
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RSI.i3042, align 8
  %2098 = add i64 %2083, 15583
  %2099 = add i64 %2083, 29
  %2100 = load i64, i64* %6, align 8
  %2101 = add i64 %2100, -8
  %2102 = inttoptr i64 %2101 to i64*
  store i64 %2099, i64* %2102, align 8
  store i64 %2101, i64* %6, align 8
  store i64 %2098, i64* %3, align 8
  %call2_401699 = tail call %struct.Memory* @sub_405360._Z14test_variable1Is19custom_sub_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2098, %struct.Memory* %call2_40167c)
  %2103 = load i64, i64* %RBP.i, align 8
  %2104 = add i64 %2103, -56
  %2105 = load i64, i64* %3, align 8
  %2106 = add i64 %2105, 5
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2104 to i16*
  %2108 = load i16, i16* %2107, align 2
  %2109 = sext i16 %2108 to i64
  %2110 = and i64 %2109, 4294967295
  store i64 %2110, i64* %473, align 8
  %2111 = add i64 %2103, -54
  %2112 = add i64 %2105, 10
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i16*
  %2114 = load i16, i16* %2113, align 2
  %2115 = sext i16 %2114 to i64
  %2116 = and i64 %2115, 4294967295
  store i64 %2116, i64* %242, align 8
  %2117 = add i64 %2103, -52
  %2118 = add i64 %2105, 14
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i16*
  %2120 = load i16, i16* %2119, align 2
  %2121 = sext i16 %2120 to i64
  %2122 = and i64 %2121, 4294967295
  store i64 %2122, i64* %RCX.i4032, align 8
  %2123 = add i64 %2103, -50
  %2124 = add i64 %2105, 18
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i16*
  %2126 = load i16, i16* %2125, align 2
  %2127 = sext i16 %2126 to i64
  %2128 = and i64 %2127, 4294967295
  store i64 %2128, i64* %RDX.i4028, align 8
  %2129 = load i64, i64* %6, align 8
  store i64 %2129, i64* %RDI.i4036.pre-phi, align 8
  %2130 = add i64 %2105, 28
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i64*
  store i64 4276818, i64* %2131, align 8
  %2132 = load i64, i64* %RBP.i, align 8
  %2133 = add i64 %2132, -280
  %2134 = load i64, i64* %3, align 8
  %2135 = add i64 %2134, 7
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2133 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %RDI.i4036.pre-phi, align 8
  %2138 = add i64 %2132, -248
  %2139 = add i64 %2134, 13
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RSI.i3042, align 8
  %2143 = add i64 %2134, 15718
  %2144 = add i64 %2134, 18
  %2145 = load i64, i64* %6, align 8
  %2146 = add i64 %2145, -8
  %2147 = inttoptr i64 %2146 to i64*
  store i64 %2144, i64* %2147, align 8
  store i64 %2146, i64* %6, align 8
  store i64 %2143, i64* %3, align 8
  %call2_4016c7 = tail call %struct.Memory* @sub_405420._Z14test_variable4Is28custom_sub_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2143, %struct.Memory* %call2_401699)
  %2148 = load i64, i64* %RBP.i, align 8
  %2149 = add i64 %2148, -50
  %2150 = load i64, i64* %3, align 8
  %2151 = add i64 %2150, 4
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2149 to i16*
  %2153 = load i16, i16* %2152, align 2
  %2154 = sext i16 %2153 to i64
  %2155 = and i64 %2154, 4294967295
  store i64 %2155, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414277_type* @G__0x414277 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414277_type* @G__0x414277 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2156 = add i64 %2148, -280
  %2157 = add i64 %2150, 18
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i64*
  %2159 = load i64, i64* %2158, align 8
  store i64 %2159, i64* %RDI.i4036.pre-phi, align 8
  %2160 = add i64 %2148, -248
  %2161 = add i64 %2150, 24
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = zext i32 %2163 to i64
  store i64 %2164, i64* %RSI.i3042, align 8
  %2165 = add i64 %2150, 16004
  %2166 = add i64 %2150, 29
  %2167 = load i64, i64* %6, align 8
  %2168 = add i64 %2167, -8
  %2169 = inttoptr i64 %2168 to i64*
  store i64 %2166, i64* %2169, align 8
  store i64 %2168, i64* %6, align 8
  store i64 %2165, i64* %3, align 8
  %call2_4016e4 = tail call %struct.Memory* @sub_405550._Z14test_variable1Is24custom_multiply_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2165, %struct.Memory* %call2_4016c7)
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -56
  %2172 = load i64, i64* %3, align 8
  %2173 = add i64 %2172, 5
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2171 to i16*
  %2175 = load i16, i16* %2174, align 2
  %2176 = sext i16 %2175 to i64
  %2177 = and i64 %2176, 4294967295
  store i64 %2177, i64* %473, align 8
  %2178 = add i64 %2170, -54
  %2179 = add i64 %2172, 10
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i16*
  %2181 = load i16, i16* %2180, align 2
  %2182 = sext i16 %2181 to i64
  %2183 = and i64 %2182, 4294967295
  store i64 %2183, i64* %242, align 8
  %2184 = add i64 %2170, -52
  %2185 = add i64 %2172, 14
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i16*
  %2187 = load i16, i16* %2186, align 2
  %2188 = sext i16 %2187 to i64
  %2189 = and i64 %2188, 4294967295
  store i64 %2189, i64* %RCX.i4032, align 8
  %2190 = add i64 %2170, -50
  %2191 = add i64 %2172, 18
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i16*
  %2193 = load i16, i16* %2192, align 2
  %2194 = sext i16 %2193 to i64
  %2195 = and i64 %2194, 4294967295
  store i64 %2195, i64* %RDX.i4028, align 8
  %2196 = load i64, i64* %6, align 8
  store i64 %2196, i64* %RDI.i4036.pre-phi, align 8
  %2197 = add i64 %2172, 28
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i64*
  store i64 4276882, i64* %2198, align 8
  %2199 = load i64, i64* %RBP.i, align 8
  %2200 = add i64 %2199, -280
  %2201 = load i64, i64* %3, align 8
  %2202 = add i64 %2201, 7
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2200 to i64*
  %2204 = load i64, i64* %2203, align 8
  store i64 %2204, i64* %RDI.i4036.pre-phi, align 8
  %2205 = add i64 %2199, -248
  %2206 = add i64 %2201, 13
  store i64 %2206, i64* %3, align 8
  %2207 = inttoptr i64 %2205 to i32*
  %2208 = load i32, i32* %2207, align 4
  %2209 = zext i32 %2208 to i64
  store i64 %2209, i64* %RSI.i3042, align 8
  %2210 = add i64 %2201, 16139
  %2211 = add i64 %2201, 18
  %2212 = load i64, i64* %6, align 8
  %2213 = add i64 %2212, -8
  %2214 = inttoptr i64 %2213 to i64*
  store i64 %2211, i64* %2214, align 8
  store i64 %2213, i64* %6, align 8
  store i64 %2210, i64* %3, align 8
  %call2_401712 = tail call %struct.Memory* @sub_405610._Z14test_variable4Is33custom_multiply_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2210, %struct.Memory* %call2_4016e4)
  %2215 = load i64, i64* %RBP.i, align 8
  %2216 = add i64 %2215, -56
  %2217 = load i64, i64* %3, align 8
  %2218 = add i64 %2217, 5
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2216 to i16*
  %2220 = load i16, i16* %2219, align 2
  %2221 = sext i16 %2220 to i64
  %2222 = and i64 %2221, 4294967295
  store i64 %2222, i64* %473, align 8
  %2223 = add i64 %2215, -54
  %2224 = add i64 %2217, 10
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to i16*
  %2226 = load i16, i16* %2225, align 2
  %2227 = sext i16 %2226 to i64
  %2228 = and i64 %2227, 4294967295
  store i64 %2228, i64* %242, align 8
  %2229 = add i64 %2215, -52
  %2230 = add i64 %2217, 14
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i16*
  %2232 = load i16, i16* %2231, align 2
  %2233 = sext i16 %2232 to i64
  %2234 = and i64 %2233, 4294967295
  store i64 %2234, i64* %RCX.i4032, align 8
  %2235 = add i64 %2215, -50
  %2236 = add i64 %2217, 18
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i16*
  %2238 = load i16, i16* %2237, align 2
  %2239 = sext i16 %2238 to i64
  %2240 = and i64 %2239, 4294967295
  store i64 %2240, i64* %RDX.i4028, align 8
  %2241 = load i64, i64* %6, align 8
  store i64 %2241, i64* %RDI.i4036.pre-phi, align 8
  %2242 = add i64 %2217, 28
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i64*
  store i64 4276920, i64* %2243, align 8
  %2244 = load i64, i64* %RBP.i, align 8
  %2245 = add i64 %2244, -280
  %2246 = load i64, i64* %3, align 8
  %2247 = add i64 %2246, 7
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2245 to i64*
  %2249 = load i64, i64* %2248, align 8
  store i64 %2249, i64* %RDI.i4036.pre-phi, align 8
  %2250 = add i64 %2244, -248
  %2251 = add i64 %2246, 13
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i32*
  %2253 = load i32, i32* %2252, align 4
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RSI.i3042, align 8
  %2255 = add i64 %2246, 16397
  %2256 = add i64 %2246, 18
  %2257 = load i64, i64* %6, align 8
  %2258 = add i64 %2257, -8
  %2259 = inttoptr i64 %2258 to i64*
  store i64 %2256, i64* %2259, align 8
  store i64 %2258, i64* %6, align 8
  store i64 %2255, i64* %3, align 8
  %call2_401740 = tail call %struct.Memory* @sub_405740._Z14test_variable4Is34custom_multiply_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2255, %struct.Memory* %call2_401712)
  %2260 = load i64, i64* %RBP.i, align 8
  %2261 = add i64 %2260, -50
  %2262 = load i64, i64* %3, align 8
  %2263 = add i64 %2262, 4
  store i64 %2263, i64* %3, align 8
  %2264 = inttoptr i64 %2261 to i16*
  %2265 = load i16, i16* %2264, align 2
  %2266 = sext i16 %2265 to i64
  %2267 = and i64 %2266, 4294967295
  store i64 %2267, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4142df_type* @G__0x4142df to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4142df_type* @G__0x4142df to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2268 = add i64 %2260, -280
  %2269 = add i64 %2262, 18
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i64*
  %2271 = load i64, i64* %2270, align 8
  store i64 %2271, i64* %RDI.i4036.pre-phi, align 8
  %2272 = add i64 %2260, -248
  %2273 = add i64 %2262, 24
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = zext i32 %2275 to i64
  store i64 %2276, i64* %RSI.i3042, align 8
  %2277 = add i64 %2262, 16683
  %2278 = add i64 %2262, 29
  %2279 = load i64, i64* %6, align 8
  %2280 = add i64 %2279, -8
  %2281 = inttoptr i64 %2280 to i64*
  store i64 %2278, i64* %2281, align 8
  store i64 %2280, i64* %6, align 8
  store i64 %2277, i64* %3, align 8
  %call2_40175d = tail call %struct.Memory* @sub_405870._Z14test_variable1Is22custom_divide_variableIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2277, %struct.Memory* %call2_401740)
  %2282 = load i64, i64* %RBP.i, align 8
  %2283 = add i64 %2282, -56
  %2284 = load i64, i64* %3, align 8
  %2285 = add i64 %2284, 5
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2283 to i16*
  %2287 = load i16, i16* %2286, align 2
  %2288 = sext i16 %2287 to i64
  %2289 = and i64 %2288, 4294967295
  store i64 %2289, i64* %473, align 8
  %2290 = add i64 %2282, -54
  %2291 = add i64 %2284, 10
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i16*
  %2293 = load i16, i16* %2292, align 2
  %2294 = sext i16 %2293 to i64
  %2295 = and i64 %2294, 4294967295
  store i64 %2295, i64* %242, align 8
  %2296 = add i64 %2282, -52
  %2297 = add i64 %2284, 14
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i16*
  %2299 = load i16, i16* %2298, align 2
  %2300 = sext i16 %2299 to i64
  %2301 = and i64 %2300, 4294967295
  store i64 %2301, i64* %RCX.i4032, align 8
  %2302 = add i64 %2282, -50
  %2303 = add i64 %2284, 18
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i16*
  %2305 = load i16, i16* %2304, align 2
  %2306 = sext i16 %2305 to i64
  %2307 = and i64 %2306, 4294967295
  store i64 %2307, i64* %RDX.i4028, align 8
  %2308 = load i64, i64* %6, align 8
  store i64 %2308, i64* %RDI.i4036.pre-phi, align 8
  %2309 = add i64 %2284, 28
  store i64 %2309, i64* %3, align 8
  %2310 = inttoptr i64 %2308 to i64*
  store i64 4276984, i64* %2310, align 8
  %2311 = load i64, i64* %RBP.i, align 8
  %2312 = add i64 %2311, -280
  %2313 = load i64, i64* %3, align 8
  %2314 = add i64 %2313, 7
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2312 to i64*
  %2316 = load i64, i64* %2315, align 8
  store i64 %2316, i64* %RDI.i4036.pre-phi, align 8
  %2317 = add i64 %2311, -248
  %2318 = add i64 %2313, 13
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  %2321 = zext i32 %2320 to i64
  store i64 %2321, i64* %RSI.i3042, align 8
  %2322 = add i64 %2313, 16818
  %2323 = add i64 %2313, 18
  %2324 = load i64, i64* %6, align 8
  %2325 = add i64 %2324, -8
  %2326 = inttoptr i64 %2325 to i64*
  store i64 %2323, i64* %2326, align 8
  store i64 %2325, i64* %6, align 8
  store i64 %2322, i64* %3, align 8
  %call2_40178b = tail call %struct.Memory* @sub_405930._Z14test_variable4Is31custom_divide_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2322, %struct.Memory* %call2_40175d)
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -56
  %2329 = load i64, i64* %3, align 8
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2328 to i16*
  %2332 = load i16, i16* %2331, align 2
  %2333 = sext i16 %2332 to i64
  %2334 = and i64 %2333, 4294967295
  store i64 %2334, i64* %473, align 8
  %2335 = add i64 %2327, -54
  %2336 = add i64 %2329, 10
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i16*
  %2338 = load i16, i16* %2337, align 2
  %2339 = sext i16 %2338 to i64
  %2340 = and i64 %2339, 4294967295
  store i64 %2340, i64* %242, align 8
  %2341 = add i64 %2327, -52
  %2342 = add i64 %2329, 14
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i16*
  %2344 = load i16, i16* %2343, align 2
  %2345 = sext i16 %2344 to i64
  %2346 = and i64 %2345, 4294967295
  store i64 %2346, i64* %RCX.i4032, align 8
  %2347 = add i64 %2327, -50
  %2348 = add i64 %2329, 18
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i16*
  %2350 = load i16, i16* %2349, align 2
  %2351 = sext i16 %2350 to i64
  %2352 = and i64 %2351, 4294967295
  store i64 %2352, i64* %RDX.i4028, align 8
  %2353 = load i64, i64* %6, align 8
  store i64 %2353, i64* %RDI.i4036.pre-phi, align 8
  %2354 = add i64 %2329, 28
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i64*
  store i64 4277019, i64* %2355, align 8
  %2356 = load i64, i64* %RBP.i, align 8
  %2357 = add i64 %2356, -280
  %2358 = load i64, i64* %3, align 8
  %2359 = add i64 %2358, 7
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2357 to i64*
  %2361 = load i64, i64* %2360, align 8
  store i64 %2361, i64* %RDI.i4036.pre-phi, align 8
  %2362 = add i64 %2356, -248
  %2363 = add i64 %2358, 13
  store i64 %2363, i64* %3, align 8
  %2364 = inttoptr i64 %2362 to i32*
  %2365 = load i32, i32* %2364, align 4
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RSI.i3042, align 8
  %2367 = add i64 %2358, 17076
  %2368 = add i64 %2358, 18
  %2369 = load i64, i64* %6, align 8
  %2370 = add i64 %2369, -8
  %2371 = inttoptr i64 %2370 to i64*
  store i64 %2368, i64* %2371, align 8
  store i64 %2370, i64* %6, align 8
  store i64 %2367, i64* %3, align 8
  %call2_4017b9 = tail call %struct.Memory* @sub_405a60._Z14test_variable4Is32custom_divide_multiple_variable2IsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2367, %struct.Memory* %call2_40178b)
  %2372 = load i64, i64* %RBP.i, align 8
  %2373 = add i64 %2372, -56
  %2374 = load i64, i64* %3, align 8
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2373 to i16*
  %2377 = load i16, i16* %2376, align 2
  %2378 = sext i16 %2377 to i64
  %2379 = and i64 %2378, 4294967295
  store i64 %2379, i64* %473, align 8
  %2380 = add i64 %2372, -54
  %2381 = add i64 %2374, 10
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i16*
  %2383 = load i16, i16* %2382, align 2
  %2384 = sext i16 %2383 to i64
  %2385 = and i64 %2384, 4294967295
  store i64 %2385, i64* %242, align 8
  %2386 = add i64 %2372, -52
  %2387 = add i64 %2374, 14
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i16*
  %2389 = load i16, i16* %2388, align 2
  %2390 = sext i16 %2389 to i64
  %2391 = and i64 %2390, 4294967295
  store i64 %2391, i64* %RCX.i4032, align 8
  %2392 = add i64 %2372, -50
  %2393 = add i64 %2374, 18
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i16*
  %2395 = load i16, i16* %2394, align 2
  %2396 = sext i16 %2395 to i64
  %2397 = and i64 %2396, 4294967295
  store i64 %2397, i64* %RDX.i4028, align 8
  %2398 = load i64, i64* %6, align 8
  store i64 %2398, i64* %RDI.i4036.pre-phi, align 8
  %2399 = add i64 %2374, 28
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i64*
  store i64 4277055, i64* %2400, align 8
  %2401 = load i64, i64* %RBP.i, align 8
  %2402 = add i64 %2401, -280
  %2403 = load i64, i64* %3, align 8
  %2404 = add i64 %2403, 7
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2402 to i64*
  %2406 = load i64, i64* %2405, align 8
  store i64 %2406, i64* %RDI.i4036.pre-phi, align 8
  %2407 = add i64 %2401, -248
  %2408 = add i64 %2403, 13
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = zext i32 %2410 to i64
  store i64 %2411, i64* %RSI.i3042, align 8
  %2412 = add i64 %2403, 17334
  %2413 = add i64 %2403, 18
  %2414 = load i64, i64* %6, align 8
  %2415 = add i64 %2414, -8
  %2416 = inttoptr i64 %2415 to i64*
  store i64 %2413, i64* %2416, align 8
  store i64 %2415, i64* %6, align 8
  store i64 %2412, i64* %3, align 8
  %call2_4017e7 = tail call %struct.Memory* @sub_405b90._Z14test_variable4Is30custom_mixed_multiple_variableIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2412, %struct.Memory* %call2_4017b9)
  %2417 = load i64, i64* %RBP.i, align 8
  %2418 = add i64 %2417, -50
  %2419 = load i64, i64* %3, align 8
  %2420 = add i64 %2419, 4
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2418 to i16*
  %2422 = load i16, i16* %2421, align 2
  %2423 = sext i16 %2422 to i64
  %2424 = and i64 %2423, 4294967295
  store i64 %2424, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414360_type* @G__0x414360 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414360_type* @G__0x414360 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2425 = add i64 %2417, -280
  %2426 = add i64 %2419, 18
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i64*
  %2428 = load i64, i64* %2427, align 8
  store i64 %2428, i64* %RDI.i4036.pre-phi, align 8
  %2429 = add i64 %2417, -248
  %2430 = add i64 %2419, 24
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i32*
  %2432 = load i32, i32* %2431, align 4
  %2433 = zext i32 %2432 to i64
  store i64 %2433, i64* %RSI.i3042, align 8
  %2434 = add i64 %2419, 17620
  %2435 = add i64 %2419, 29
  %2436 = load i64, i64* %6, align 8
  %2437 = add i64 %2436, -8
  %2438 = inttoptr i64 %2437 to i64*
  store i64 %2435, i64* %2438, align 8
  store i64 %2437, i64* %6, align 8
  store i64 %2434, i64* %3, align 8
  %call2_401804 = tail call %struct.Memory* @sub_405cc0._Z14test_variable1Is19custom_variable_andIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2434, %struct.Memory* %call2_4017e7)
  %2439 = load i64, i64* %RBP.i, align 8
  %2440 = add i64 %2439, -56
  %2441 = load i64, i64* %3, align 8
  %2442 = add i64 %2441, 5
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2440 to i16*
  %2444 = load i16, i16* %2443, align 2
  %2445 = sext i16 %2444 to i64
  %2446 = and i64 %2445, 4294967295
  store i64 %2446, i64* %473, align 8
  %2447 = add i64 %2439, -54
  %2448 = add i64 %2441, 10
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i16*
  %2450 = load i16, i16* %2449, align 2
  %2451 = sext i16 %2450 to i64
  %2452 = and i64 %2451, 4294967295
  store i64 %2452, i64* %242, align 8
  %2453 = add i64 %2439, -52
  %2454 = add i64 %2441, 14
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i16*
  %2456 = load i16, i16* %2455, align 2
  %2457 = sext i16 %2456 to i64
  %2458 = and i64 %2457, 4294967295
  store i64 %2458, i64* %RCX.i4032, align 8
  %2459 = add i64 %2439, -50
  %2460 = add i64 %2441, 18
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i16*
  %2462 = load i16, i16* %2461, align 2
  %2463 = sext i16 %2462 to i64
  %2464 = and i64 %2463, 4294967295
  store i64 %2464, i64* %RDX.i4028, align 8
  %2465 = load i64, i64* %6, align 8
  store i64 %2465, i64* %RDI.i4036.pre-phi, align 8
  %2466 = add i64 %2441, 28
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i64*
  store i64 4277110, i64* %2467, align 8
  %2468 = load i64, i64* %RBP.i, align 8
  %2469 = add i64 %2468, -280
  %2470 = load i64, i64* %3, align 8
  %2471 = add i64 %2470, 7
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2469 to i64*
  %2473 = load i64, i64* %2472, align 8
  store i64 %2473, i64* %RDI.i4036.pre-phi, align 8
  %2474 = add i64 %2468, -248
  %2475 = add i64 %2470, 13
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = zext i32 %2477 to i64
  store i64 %2478, i64* %RSI.i3042, align 8
  %2479 = add i64 %2470, 17755
  %2480 = add i64 %2470, 18
  %2481 = load i64, i64* %6, align 8
  %2482 = add i64 %2481, -8
  %2483 = inttoptr i64 %2482 to i64*
  store i64 %2480, i64* %2483, align 8
  store i64 %2482, i64* %6, align 8
  store i64 %2479, i64* %3, align 8
  %call2_401832 = tail call %struct.Memory* @sub_405d80._Z14test_variable4Is28custom_multiple_variable_andIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2479, %struct.Memory* %call2_401804)
  %2484 = load i64, i64* %RBP.i, align 8
  %2485 = add i64 %2484, -50
  %2486 = load i64, i64* %3, align 8
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2485 to i16*
  %2489 = load i16, i16* %2488, align 2
  %2490 = sext i16 %2489 to i64
  %2491 = and i64 %2490, 4294967295
  store i64 %2491, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414395_type* @G__0x414395 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414395_type* @G__0x414395 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2492 = add i64 %2484, -280
  %2493 = add i64 %2486, 18
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i64*
  %2495 = load i64, i64* %2494, align 8
  store i64 %2495, i64* %RDI.i4036.pre-phi, align 8
  %2496 = add i64 %2484, -248
  %2497 = add i64 %2486, 24
  store i64 %2497, i64* %3, align 8
  %2498 = inttoptr i64 %2496 to i32*
  %2499 = load i32, i32* %2498, align 4
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RSI.i3042, align 8
  %2501 = add i64 %2486, 18041
  %2502 = add i64 %2486, 29
  %2503 = load i64, i64* %6, align 8
  %2504 = add i64 %2503, -8
  %2505 = inttoptr i64 %2504 to i64*
  store i64 %2502, i64* %2505, align 8
  store i64 %2504, i64* %6, align 8
  store i64 %2501, i64* %3, align 8
  %call2_40184f = tail call %struct.Memory* @sub_405eb0._Z14test_variable1Is18custom_variable_orIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2501, %struct.Memory* %call2_401832)
  %2506 = load i64, i64* %RBP.i, align 8
  %2507 = add i64 %2506, -56
  %2508 = load i64, i64* %3, align 8
  %2509 = add i64 %2508, 5
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2507 to i16*
  %2511 = load i16, i16* %2510, align 2
  %2512 = sext i16 %2511 to i64
  %2513 = and i64 %2512, 4294967295
  store i64 %2513, i64* %473, align 8
  %2514 = add i64 %2506, -54
  %2515 = add i64 %2508, 10
  store i64 %2515, i64* %3, align 8
  %2516 = inttoptr i64 %2514 to i16*
  %2517 = load i16, i16* %2516, align 2
  %2518 = sext i16 %2517 to i64
  %2519 = and i64 %2518, 4294967295
  store i64 %2519, i64* %242, align 8
  %2520 = add i64 %2506, -52
  %2521 = add i64 %2508, 14
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i16*
  %2523 = load i16, i16* %2522, align 2
  %2524 = sext i16 %2523 to i64
  %2525 = and i64 %2524, 4294967295
  store i64 %2525, i64* %RCX.i4032, align 8
  %2526 = add i64 %2506, -50
  %2527 = add i64 %2508, 18
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i16*
  %2529 = load i16, i16* %2528, align 2
  %2530 = sext i16 %2529 to i64
  %2531 = and i64 %2530, 4294967295
  store i64 %2531, i64* %RDX.i4028, align 8
  %2532 = load i64, i64* %6, align 8
  store i64 %2532, i64* %RDI.i4036.pre-phi, align 8
  %2533 = add i64 %2508, 28
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i64*
  store i64 4277162, i64* %2534, align 8
  %2535 = load i64, i64* %RBP.i, align 8
  %2536 = add i64 %2535, -280
  %2537 = load i64, i64* %3, align 8
  %2538 = add i64 %2537, 7
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2536 to i64*
  %2540 = load i64, i64* %2539, align 8
  store i64 %2540, i64* %RDI.i4036.pre-phi, align 8
  %2541 = add i64 %2535, -248
  %2542 = add i64 %2537, 13
  store i64 %2542, i64* %3, align 8
  %2543 = inttoptr i64 %2541 to i32*
  %2544 = load i32, i32* %2543, align 4
  %2545 = zext i32 %2544 to i64
  store i64 %2545, i64* %RSI.i3042, align 8
  %2546 = add i64 %2537, 18176
  %2547 = add i64 %2537, 18
  %2548 = load i64, i64* %6, align 8
  %2549 = add i64 %2548, -8
  %2550 = inttoptr i64 %2549 to i64*
  store i64 %2547, i64* %2550, align 8
  store i64 %2549, i64* %6, align 8
  store i64 %2546, i64* %3, align 8
  %call2_40187d = tail call %struct.Memory* @sub_405f70._Z14test_variable4Is27custom_multiple_variable_orIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2546, %struct.Memory* %call2_40184f)
  %2551 = load i64, i64* %RBP.i, align 8
  %2552 = add i64 %2551, -50
  %2553 = load i64, i64* %3, align 8
  %2554 = add i64 %2553, 4
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2552 to i16*
  %2556 = load i16, i16* %2555, align 2
  %2557 = sext i16 %2556 to i64
  %2558 = and i64 %2557, 4294967295
  store i64 %2558, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143c8_type* @G__0x4143c8 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143c8_type* @G__0x4143c8 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2559 = add i64 %2551, -280
  %2560 = add i64 %2553, 18
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i64*
  %2562 = load i64, i64* %2561, align 8
  store i64 %2562, i64* %RDI.i4036.pre-phi, align 8
  %2563 = add i64 %2551, -248
  %2564 = add i64 %2553, 24
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RSI.i3042, align 8
  %2568 = add i64 %2553, 18462
  %2569 = add i64 %2553, 29
  %2570 = load i64, i64* %6, align 8
  %2571 = add i64 %2570, -8
  %2572 = inttoptr i64 %2571 to i64*
  store i64 %2569, i64* %2572, align 8
  store i64 %2571, i64* %6, align 8
  store i64 %2568, i64* %3, align 8
  %call2_40189a = tail call %struct.Memory* @sub_4060a0._Z14test_variable1Is19custom_variable_xorIsEEvPT_iS2_PKc(%struct.State* %0, i64 %2568, %struct.Memory* %call2_40187d)
  %2573 = load i64, i64* %RBP.i, align 8
  %2574 = add i64 %2573, -56
  %2575 = load i64, i64* %3, align 8
  %2576 = add i64 %2575, 5
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2574 to i16*
  %2578 = load i16, i16* %2577, align 2
  %2579 = sext i16 %2578 to i64
  %2580 = and i64 %2579, 4294967295
  store i64 %2580, i64* %473, align 8
  %2581 = add i64 %2573, -54
  %2582 = add i64 %2575, 10
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i16*
  %2584 = load i16, i16* %2583, align 2
  %2585 = sext i16 %2584 to i64
  %2586 = and i64 %2585, 4294967295
  store i64 %2586, i64* %242, align 8
  %2587 = add i64 %2573, -52
  %2588 = add i64 %2575, 14
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i16*
  %2590 = load i16, i16* %2589, align 2
  %2591 = sext i16 %2590 to i64
  %2592 = and i64 %2591, 4294967295
  store i64 %2592, i64* %RCX.i4032, align 8
  %2593 = add i64 %2573, -50
  %2594 = add i64 %2575, 18
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i16*
  %2596 = load i16, i16* %2595, align 2
  %2597 = sext i16 %2596 to i64
  %2598 = and i64 %2597, 4294967295
  store i64 %2598, i64* %RDX.i4028, align 8
  %2599 = load i64, i64* %6, align 8
  store i64 %2599, i64* %RDI.i4036.pre-phi, align 8
  %2600 = add i64 %2575, 28
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i64*
  store i64 4277214, i64* %2601, align 8
  %2602 = load i64, i64* %RBP.i, align 8
  %2603 = add i64 %2602, -280
  %2604 = load i64, i64* %3, align 8
  %2605 = add i64 %2604, 7
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2603 to i64*
  %2607 = load i64, i64* %2606, align 8
  store i64 %2607, i64* %RDI.i4036.pre-phi, align 8
  %2608 = add i64 %2602, -248
  %2609 = add i64 %2604, 13
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RSI.i3042, align 8
  %2613 = add i64 %2604, 18597
  %2614 = add i64 %2604, 18
  %2615 = load i64, i64* %6, align 8
  %2616 = add i64 %2615, -8
  %2617 = inttoptr i64 %2616 to i64*
  store i64 %2614, i64* %2617, align 8
  store i64 %2616, i64* %6, align 8
  store i64 %2613, i64* %3, align 8
  %call2_4018c8 = tail call %struct.Memory* @sub_406160._Z14test_variable4Is28custom_multiple_variable_xorIsEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2613, %struct.Memory* %call2_40189a)
  %2618 = load i64, i64* %3, align 8
  %2619 = load double, double* bitcast (%G_0x2187b3__rip__4200661__type* @G_0x2187b3__rip__4200661_ to double*), align 8
  %2620 = tail call double @llvm.trunc.f64(double %2619)
  %2621 = tail call double @llvm.fabs.f64(double %2620)
  %2622 = fcmp ogt double %2621, 0x41DFFFFFFFC00000
  %2623 = fptosi double %2620 to i32
  store i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  %2624 = trunc i32 %2623 to i16
  %2625 = select i1 %2622, i16 0, i16 %2624
  %2626 = zext i16 %2625 to i64
  store i16 %2625, i16* %R14W.i3112, align 2
  store i64 %2626, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x664440_type* @G__0x664440 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %2627 = load i64, i64* %RBP.i, align 8
  %2628 = add i64 %2627, -296
  %2629 = add i64 %2618, 37
  store i64 %2629, i64* %3, align 8
  %2630 = inttoptr i64 %2628 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295) to i32) to i64), i64* %2630, align 8
  %2631 = load i64, i64* %3, align 8
  %2632 = add i64 %2631, 18846
  %2633 = add i64 %2631, 5
  %2634 = load i64, i64* %6, align 8
  %2635 = add i64 %2634, -8
  %2636 = inttoptr i64 %2635 to i64*
  store i64 %2633, i64* %2636, align 8
  store i64 %2635, i64* %6, align 8
  store i64 %2632, i64* %3, align 8
  %call2_4018f2 = tail call %struct.Memory* @sub_406290._Z4fillIPttEvT_S1_T0_(%struct.State* %0, i64 %2632, %struct.Memory* %call2_4018c8)
  %2637 = load i64, i64* %RBP.i, align 8
  %2638 = add i64 %2637, -40
  %2639 = load i64, i64* %3, align 8
  %2640 = add i64 %2639, 5
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2638 to double*
  %2642 = load double, double* %2641, align 8
  %2643 = tail call double @llvm.trunc.f64(double %2642)
  %2644 = tail call double @llvm.fabs.f64(double %2643)
  %2645 = fcmp ogt double %2644, 0x41DFFFFFFFC00000
  %2646 = fptosi double %2643 to i32
  %2647 = zext i32 %2646 to i64
  %2648 = select i1 %2645, i64 2147483648, i64 %2647
  store i64 %2648, i64* %RAX.i4030.pre-phi, align 8
  %2649 = trunc i64 %2648 to i16
  store i16 %2649, i16* %R14W.i3112, align 2
  %2650 = add i64 %2637, -58
  %2651 = add i64 %2639, 14
  store i64 %2651, i64* %3, align 8
  %2652 = inttoptr i64 %2650 to i16*
  store i16 %2649, i16* %2652, align 2
  %2653 = load i64, i64* %RBP.i, align 8
  %2654 = add i64 %2653, -58
  %2655 = load i64, i64* %3, align 8
  %2656 = add i64 %2655, 4
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2654 to i16*
  %2658 = load i16, i16* %2657, align 2
  %2659 = zext i16 %2658 to i32
  %2660 = shl nuw nsw i32 %2659, 1
  %2661 = zext i32 %2660 to i64
  store i64 %2661, i64* %RAX.i4030.pre-phi, align 8
  %2662 = icmp ult i32 %2660, %2659
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %26, align 1
  %2664 = and i32 %2660, 254
  %2665 = tail call i32 @llvm.ctpop.i32(i32 %2664)
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = xor i8 %2667, 1
  store i8 %2668, i8* %33, align 1
  %2669 = lshr i16 %2658, 3
  %2670 = trunc i16 %2669 to i8
  %2671 = and i8 %2670, 1
  store i8 %2671, i8* %39, align 1
  %2672 = icmp eq i16 %2658, 0
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2674 = trunc i32 %2660 to i16
  store i16 %2674, i16* %R14W.i3112, align 2
  %2675 = add i64 %2653, -60
  %2676 = add i64 %2655, 15
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i16*
  store i16 %2674, i16* %2677, align 2
  %2678 = load i64, i64* %RBP.i, align 8
  %2679 = add i64 %2678, -58
  %2680 = load i64, i64* %3, align 8
  %2681 = add i64 %2680, 4
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2679 to i16*
  %2683 = load i16, i16* %2682, align 2
  %2684 = zext i16 %2683 to i32
  %2685 = add nuw nsw i32 %2684, 2
  %2686 = zext i32 %2685 to i64
  store i64 %2686, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %2687 = and i32 %2685, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %33, align 1
  %2692 = xor i32 %2684, %2685
  %2693 = lshr i32 %2692, 4
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  store i8 %2695, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2696 = trunc i32 %2685 to i16
  store i16 %2696, i16* %R14W.i3112, align 2
  %2697 = add i64 %2678, -62
  %2698 = add i64 %2680, 16
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i16*
  store i16 %2696, i16* %2699, align 2
  %2700 = load i64, i64* %RBP.i, align 8
  %2701 = add i64 %2700, -58
  %2702 = load i64, i64* %3, align 8
  %2703 = add i64 %2702, 4
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2701 to i16*
  %2705 = load i16, i16* %2704, align 2
  %2706 = zext i16 %2705 to i64
  store i64 %2706, i64* %RAX.i4030.pre-phi, align 8
  %2707 = add i64 %2700, -60
  %2708 = add i64 %2702, 8
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2707 to i16*
  %2710 = load i16, i16* %2709, align 2
  %2711 = zext i16 %2710 to i64
  store i64 %2711, i64* %RCX.i4032, align 8
  %2712 = add i64 %2700, -62
  %2713 = add i64 %2702, 12
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i16*
  %2715 = load i16, i16* %2714, align 2
  %2716 = zext i16 %2715 to i64
  store i64 %2716, i64* %RDX.i4028, align 8
  %2717 = add i64 %2700, -300
  %2718 = zext i16 %2705 to i32
  %2719 = add i64 %2702, 18
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2717 to i32*
  store i32 %2718, i32* %2720, align 4
  %2721 = load i32, i32* %ECX.i3567, align 4
  %2722 = zext i32 %2721 to i64
  %2723 = load i64, i64* %3, align 8
  store i64 %2722, i64* %RAX.i4030.pre-phi, align 8
  %2724 = load i64, i64* %RBP.i, align 8
  %2725 = add i64 %2724, -268
  %2726 = add i64 %2723, 8
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RCX.i4032, align 8
  %2730 = add i64 %2724, -304
  %2731 = load i32, i32* %EDX.i4025, align 4
  %2732 = add i64 %2723, 14
  store i64 %2732, i64* %3, align 8
  %2733 = inttoptr i64 %2730 to i32*
  store i32 %2731, i32* %2733, align 4
  %2734 = load i32, i32* %ECX.i3567, align 4
  %2735 = zext i32 %2734 to i64
  %2736 = load i64, i64* %3, align 8
  store i64 %2735, i64* %RDX.i4028, align 8
  %2737 = load i64, i64* %RBP.i, align 8
  %2738 = add i64 %2737, -304
  %2739 = add i64 %2736, 9
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to i32*
  %2741 = load i32, i32* %2740, align 4
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %242, align 8
  %2743 = add i64 %2736, 12
  store i64 %2743, i64* %3, align 8
  %2744 = load i32, i32* %371, align 8
  %2745 = zext i32 %2744 to i64
  %2746 = shl nuw i64 %2735, 32
  %2747 = or i64 %2746, %2745
  %2748 = udiv i64 %2747, %2742
  %2749 = and i64 %2748, 4294967295
  %2750 = icmp eq i64 %2748, %2749
  br i1 %2750, label %2753, label %2751

; <label>:2751:                                   ; preds = %routine_idivl__ecx.exit3040
  %2752 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2743, %struct.Memory* %call2_4018f2)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i64, i64* %3, align 8
  %.pre14 = load i32, i32* %EAX.i4015, align 4
  br label %routine_divl__r8d.exit2583

; <label>:2753:                                   ; preds = %routine_idivl__ecx.exit3040
  %2754 = urem i64 %2747, %2742
  %2755 = getelementptr inbounds %union.anon, %union.anon* %.pre-phi, i64 0, i32 0
  store i64 %2748, i64* %2755, align 8
  store i64 %2754, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %2756 = trunc i64 %2748 to i32
  br label %routine_divl__r8d.exit2583

routine_divl__r8d.exit2583:                       ; preds = %2753, %2751
  %2757 = phi i32 [ %.pre14, %2751 ], [ %2756, %2753 ]
  %2758 = phi i64 [ %.pre13, %2751 ], [ %2743, %2753 ]
  %2759 = phi i64 [ %.pre12, %2751 ], [ %2737, %2753 ]
  %2760 = phi %struct.Memory* [ %2752, %2751 ], [ %call2_4018f2, %2753 ]
  %2761 = add i64 %2759, -300
  %2762 = add i64 %2758, 6
  store i64 %2762, i64* %3, align 8
  %2763 = inttoptr i64 %2761 to i32*
  %2764 = load i32, i32* %2763, align 4
  %2765 = add i32 %2757, %2764
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RDX.i4028, align 8
  %2767 = icmp ult i32 %2765, %2764
  %2768 = icmp ult i32 %2765, %2757
  %2769 = or i1 %2767, %2768
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %26, align 1
  %2771 = and i32 %2765, 255
  %2772 = tail call i32 @llvm.ctpop.i32(i32 %2771)
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = xor i8 %2774, 1
  store i8 %2775, i8* %33, align 1
  %2776 = xor i32 %2757, %2764
  %2777 = xor i32 %2776, %2765
  %2778 = lshr i32 %2777, 4
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  store i8 %2780, i8* %39, align 1
  %2781 = icmp eq i32 %2765, 0
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %42, align 1
  %2783 = lshr i32 %2765, 31
  %2784 = trunc i32 %2783 to i8
  store i8 %2784, i8* %45, align 1
  %2785 = lshr i32 %2764, 31
  %2786 = lshr i32 %2757, 31
  %2787 = xor i32 %2783, %2785
  %2788 = xor i32 %2783, %2786
  %2789 = add nuw nsw i32 %2787, %2788
  %2790 = icmp eq i32 %2789, 2
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %51, align 1
  %2792 = trunc i32 %2765 to i16
  store i16 %2792, i16* %R14W.i3112, align 2
  %2793 = add i64 %2759, -64
  %2794 = add i64 %2758, 17
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2793 to i16*
  store i16 %2792, i16* %2795, align 2
  %2796 = load i64, i64* %RBP.i, align 8
  %2797 = add i64 %2796, -58
  %2798 = load i64, i64* %3, align 8
  %2799 = add i64 %2798, 4
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2797 to i16*
  %2801 = load i16, i16* %2800, align 2
  %2802 = zext i16 %2801 to i64
  store i64 %2802, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141e2_type* @G__0x4141e2 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141e2_type* @G__0x4141e2 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2803 = add i64 %2796, -296
  %2804 = add i64 %2798, 18
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i64*
  %2806 = load i64, i64* %2805, align 8
  store i64 %2806, i64* %RDI.i4036.pre-phi, align 8
  %2807 = add i64 %2796, -248
  %2808 = add i64 %2798, 24
  store i64 %2808, i64* %3, align 8
  %2809 = inttoptr i64 %2807 to i32*
  %2810 = load i32, i32* %2809, align 4
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RSI.i3042, align 8
  %2812 = add i64 %2798, 18799
  %2813 = add i64 %2798, 29
  %2814 = load i64, i64* %6, align 8
  %2815 = add i64 %2814, -8
  %2816 = inttoptr i64 %2815 to i64*
  store i64 %2813, i64* %2816, align 8
  store i64 %2815, i64* %6, align 8
  store i64 %2812, i64* %3, align 8
  %call2_401979 = tail call %struct.Memory* @sub_4062d0._Z14test_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2812, %struct.Memory* %2760)
  %2817 = load i64, i64* %RBP.i, align 8
  %2818 = add i64 %2817, -58
  %2819 = load i64, i64* %3, align 8
  %2820 = add i64 %2819, 4
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2818 to i16*
  %2822 = load i16, i16* %2821, align 2
  %2823 = zext i16 %2822 to i64
  store i64 %2823, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4141f8_type* @G__0x4141f8 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4141f8_type* @G__0x4141f8 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2824 = add i64 %2817, -296
  %2825 = add i64 %2819, 18
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i64*
  %2827 = load i64, i64* %2826, align 8
  store i64 %2827, i64* %RDI.i4036.pre-phi, align 8
  %2828 = add i64 %2817, -248
  %2829 = add i64 %2819, 24
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RSI.i3042, align 8
  %2833 = add i64 %2819, 18962
  %2834 = add i64 %2819, 29
  %2835 = load i64, i64* %6, align 8
  %2836 = add i64 %2835, -8
  %2837 = inttoptr i64 %2836 to i64*
  store i64 %2834, i64* %2837, align 8
  store i64 %2836, i64* %6, align 8
  store i64 %2833, i64* %3, align 8
  %call2_401996 = tail call %struct.Memory* @sub_406390._Z22test_hoisted_variable1It19custom_add_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2833, %struct.Memory* %call2_401979)
  %2838 = load i64, i64* %RBP.i, align 8
  %2839 = add i64 %2838, -64
  %2840 = load i64, i64* %3, align 8
  %2841 = add i64 %2840, 5
  store i64 %2841, i64* %3, align 8
  %2842 = inttoptr i64 %2839 to i16*
  %2843 = load i16, i16* %2842, align 2
  %2844 = zext i16 %2843 to i64
  store i64 %2844, i64* %473, align 8
  %2845 = add i64 %2838, -62
  %2846 = add i64 %2840, 10
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2845 to i16*
  %2848 = load i16, i16* %2847, align 2
  %2849 = zext i16 %2848 to i64
  store i64 %2849, i64* %242, align 8
  %2850 = add i64 %2838, -60
  %2851 = add i64 %2840, 14
  store i64 %2851, i64* %3, align 8
  %2852 = inttoptr i64 %2850 to i16*
  %2853 = load i16, i16* %2852, align 2
  %2854 = zext i16 %2853 to i64
  store i64 %2854, i64* %RCX.i4032, align 8
  %2855 = add i64 %2838, -58
  %2856 = add i64 %2840, 18
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2855 to i16*
  %2858 = load i16, i16* %2857, align 2
  %2859 = zext i16 %2858 to i64
  store i64 %2859, i64* %RDX.i4028, align 8
  %2860 = load i64, i64* %6, align 8
  store i64 %2860, i64* %RDI.i4036.pre-phi, align 8
  %2861 = add i64 %2840, 28
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i64*
  store i64 4276758, i64* %2862, align 8
  %2863 = load i64, i64* %RBP.i, align 8
  %2864 = add i64 %2863, -296
  %2865 = load i64, i64* %3, align 8
  %2866 = add i64 %2865, 7
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2864 to i64*
  %2868 = load i64, i64* %2867, align 8
  store i64 %2868, i64* %RDI.i4036.pre-phi, align 8
  %2869 = add i64 %2863, -248
  %2870 = add i64 %2865, 13
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RSI.i3042, align 8
  %2874 = add i64 %2865, 19097
  %2875 = add i64 %2865, 18
  %2876 = load i64, i64* %6, align 8
  %2877 = add i64 %2876, -8
  %2878 = inttoptr i64 %2877 to i64*
  store i64 %2875, i64* %2878, align 8
  store i64 %2877, i64* %6, align 8
  store i64 %2874, i64* %3, align 8
  %call2_4019c4 = tail call %struct.Memory* @sub_406450._Z14test_variable4It28custom_add_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2874, %struct.Memory* %call2_401996)
  %2879 = load i64, i64* %RBP.i, align 8
  %2880 = add i64 %2879, -58
  %2881 = load i64, i64* %3, align 8
  %2882 = add i64 %2881, 4
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2880 to i16*
  %2884 = load i16, i16* %2883, align 2
  %2885 = zext i16 %2884 to i64
  store i64 %2885, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414236_type* @G__0x414236 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414236_type* @G__0x414236 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2886 = add i64 %2879, -296
  %2887 = add i64 %2881, 18
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i64*
  %2889 = load i64, i64* %2888, align 8
  store i64 %2889, i64* %RDI.i4036.pre-phi, align 8
  %2890 = add i64 %2879, -248
  %2891 = add i64 %2881, 24
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i32*
  %2893 = load i32, i32* %2892, align 4
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RSI.i3042, align 8
  %2895 = add i64 %2881, 19383
  %2896 = add i64 %2881, 29
  %2897 = load i64, i64* %6, align 8
  %2898 = add i64 %2897, -8
  %2899 = inttoptr i64 %2898 to i64*
  store i64 %2896, i64* %2899, align 8
  store i64 %2898, i64* %6, align 8
  store i64 %2895, i64* %3, align 8
  %call2_4019e1 = tail call %struct.Memory* @sub_406580._Z14test_variable1It19custom_sub_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2895, %struct.Memory* %call2_4019c4)
  %2900 = load i64, i64* %RBP.i, align 8
  %2901 = add i64 %2900, -64
  %2902 = load i64, i64* %3, align 8
  %2903 = add i64 %2902, 5
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2901 to i16*
  %2905 = load i16, i16* %2904, align 2
  %2906 = zext i16 %2905 to i64
  store i64 %2906, i64* %473, align 8
  %2907 = add i64 %2900, -62
  %2908 = add i64 %2902, 10
  store i64 %2908, i64* %3, align 8
  %2909 = inttoptr i64 %2907 to i16*
  %2910 = load i16, i16* %2909, align 2
  %2911 = zext i16 %2910 to i64
  store i64 %2911, i64* %242, align 8
  %2912 = add i64 %2900, -60
  %2913 = add i64 %2902, 14
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i16*
  %2915 = load i16, i16* %2914, align 2
  %2916 = zext i16 %2915 to i64
  store i64 %2916, i64* %RCX.i4032, align 8
  %2917 = add i64 %2900, -58
  %2918 = add i64 %2902, 18
  store i64 %2918, i64* %3, align 8
  %2919 = inttoptr i64 %2917 to i16*
  %2920 = load i16, i16* %2919, align 2
  %2921 = zext i16 %2920 to i64
  store i64 %2921, i64* %RDX.i4028, align 8
  %2922 = load i64, i64* %6, align 8
  store i64 %2922, i64* %RDI.i4036.pre-phi, align 8
  %2923 = add i64 %2902, 28
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2922 to i64*
  store i64 4276817, i64* %2924, align 8
  %2925 = load i64, i64* %RBP.i, align 8
  %2926 = add i64 %2925, -296
  %2927 = load i64, i64* %3, align 8
  %2928 = add i64 %2927, 7
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2926 to i64*
  %2930 = load i64, i64* %2929, align 8
  store i64 %2930, i64* %RDI.i4036.pre-phi, align 8
  %2931 = add i64 %2925, -248
  %2932 = add i64 %2927, 13
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = zext i32 %2934 to i64
  store i64 %2935, i64* %RSI.i3042, align 8
  %2936 = add i64 %2927, 19518
  %2937 = add i64 %2927, 18
  %2938 = load i64, i64* %6, align 8
  %2939 = add i64 %2938, -8
  %2940 = inttoptr i64 %2939 to i64*
  store i64 %2937, i64* %2940, align 8
  store i64 %2939, i64* %6, align 8
  store i64 %2936, i64* %3, align 8
  %call2_401a0f = tail call %struct.Memory* @sub_406640._Z14test_variable4It28custom_sub_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2936, %struct.Memory* %call2_4019e1)
  %2941 = load i64, i64* %RBP.i, align 8
  %2942 = add i64 %2941, -58
  %2943 = load i64, i64* %3, align 8
  %2944 = add i64 %2943, 4
  store i64 %2944, i64* %3, align 8
  %2945 = inttoptr i64 %2942 to i16*
  %2946 = load i16, i16* %2945, align 2
  %2947 = zext i16 %2946 to i64
  store i64 %2947, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414276_type* @G__0x414276 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414276_type* @G__0x414276 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %2948 = add i64 %2941, -296
  %2949 = add i64 %2943, 18
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i64*
  %2951 = load i64, i64* %2950, align 8
  store i64 %2951, i64* %RDI.i4036.pre-phi, align 8
  %2952 = add i64 %2941, -248
  %2953 = add i64 %2943, 24
  store i64 %2953, i64* %3, align 8
  %2954 = inttoptr i64 %2952 to i32*
  %2955 = load i32, i32* %2954, align 4
  %2956 = zext i32 %2955 to i64
  store i64 %2956, i64* %RSI.i3042, align 8
  %2957 = add i64 %2943, 19804
  %2958 = add i64 %2943, 29
  %2959 = load i64, i64* %6, align 8
  %2960 = add i64 %2959, -8
  %2961 = inttoptr i64 %2960 to i64*
  store i64 %2958, i64* %2961, align 8
  store i64 %2960, i64* %6, align 8
  store i64 %2957, i64* %3, align 8
  %call2_401a2c = tail call %struct.Memory* @sub_406770._Z14test_variable1It24custom_multiply_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %2957, %struct.Memory* %call2_401a0f)
  %2962 = load i64, i64* %RBP.i, align 8
  %2963 = add i64 %2962, -64
  %2964 = load i64, i64* %3, align 8
  %2965 = add i64 %2964, 5
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2963 to i16*
  %2967 = load i16, i16* %2966, align 2
  %2968 = zext i16 %2967 to i64
  store i64 %2968, i64* %473, align 8
  %2969 = add i64 %2962, -62
  %2970 = add i64 %2964, 10
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i16*
  %2972 = load i16, i16* %2971, align 2
  %2973 = zext i16 %2972 to i64
  store i64 %2973, i64* %242, align 8
  %2974 = add i64 %2962, -60
  %2975 = add i64 %2964, 14
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i16*
  %2977 = load i16, i16* %2976, align 2
  %2978 = zext i16 %2977 to i64
  store i64 %2978, i64* %RCX.i4032, align 8
  %2979 = add i64 %2962, -58
  %2980 = add i64 %2964, 18
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i16*
  %2982 = load i16, i16* %2981, align 2
  %2983 = zext i16 %2982 to i64
  store i64 %2983, i64* %RDX.i4028, align 8
  %2984 = load i64, i64* %6, align 8
  store i64 %2984, i64* %RDI.i4036.pre-phi, align 8
  %2985 = add i64 %2964, 28
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i64*
  store i64 4276881, i64* %2986, align 8
  %2987 = load i64, i64* %RBP.i, align 8
  %2988 = add i64 %2987, -296
  %2989 = load i64, i64* %3, align 8
  %2990 = add i64 %2989, 7
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2988 to i64*
  %2992 = load i64, i64* %2991, align 8
  store i64 %2992, i64* %RDI.i4036.pre-phi, align 8
  %2993 = add i64 %2987, -248
  %2994 = add i64 %2989, 13
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = zext i32 %2996 to i64
  store i64 %2997, i64* %RSI.i3042, align 8
  %2998 = add i64 %2989, 19939
  %2999 = add i64 %2989, 18
  %3000 = load i64, i64* %6, align 8
  %3001 = add i64 %3000, -8
  %3002 = inttoptr i64 %3001 to i64*
  store i64 %2999, i64* %3002, align 8
  store i64 %3001, i64* %6, align 8
  store i64 %2998, i64* %3, align 8
  %call2_401a5a = tail call %struct.Memory* @sub_406830._Z14test_variable4It33custom_multiply_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %2998, %struct.Memory* %call2_401a2c)
  %3003 = load i64, i64* %RBP.i, align 8
  %3004 = add i64 %3003, -64
  %3005 = load i64, i64* %3, align 8
  %3006 = add i64 %3005, 5
  store i64 %3006, i64* %3, align 8
  %3007 = inttoptr i64 %3004 to i16*
  %3008 = load i16, i16* %3007, align 2
  %3009 = zext i16 %3008 to i64
  store i64 %3009, i64* %473, align 8
  %3010 = add i64 %3003, -62
  %3011 = add i64 %3005, 10
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3010 to i16*
  %3013 = load i16, i16* %3012, align 2
  %3014 = zext i16 %3013 to i64
  store i64 %3014, i64* %242, align 8
  %3015 = add i64 %3003, -60
  %3016 = add i64 %3005, 14
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i16*
  %3018 = load i16, i16* %3017, align 2
  %3019 = zext i16 %3018 to i64
  store i64 %3019, i64* %RCX.i4032, align 8
  %3020 = add i64 %3003, -58
  %3021 = add i64 %3005, 18
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i16*
  %3023 = load i16, i16* %3022, align 2
  %3024 = zext i16 %3023 to i64
  store i64 %3024, i64* %RDX.i4028, align 8
  %3025 = load i64, i64* %6, align 8
  store i64 %3025, i64* %RDI.i4036.pre-phi, align 8
  %3026 = add i64 %3005, 28
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i64*
  store i64 4276919, i64* %3027, align 8
  %3028 = load i64, i64* %RBP.i, align 8
  %3029 = add i64 %3028, -296
  %3030 = load i64, i64* %3, align 8
  %3031 = add i64 %3030, 7
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3029 to i64*
  %3033 = load i64, i64* %3032, align 8
  store i64 %3033, i64* %RDI.i4036.pre-phi, align 8
  %3034 = add i64 %3028, -248
  %3035 = add i64 %3030, 13
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i32*
  %3037 = load i32, i32* %3036, align 4
  %3038 = zext i32 %3037 to i64
  store i64 %3038, i64* %RSI.i3042, align 8
  %3039 = add i64 %3030, 20197
  %3040 = add i64 %3030, 18
  %3041 = load i64, i64* %6, align 8
  %3042 = add i64 %3041, -8
  %3043 = inttoptr i64 %3042 to i64*
  store i64 %3040, i64* %3043, align 8
  store i64 %3042, i64* %6, align 8
  store i64 %3039, i64* %3, align 8
  %call2_401a88 = tail call %struct.Memory* @sub_406960._Z14test_variable4It34custom_multiply_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3039, %struct.Memory* %call2_401a5a)
  %3044 = load i64, i64* %RBP.i, align 8
  %3045 = add i64 %3044, -58
  %3046 = load i64, i64* %3, align 8
  %3047 = add i64 %3046, 4
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3045 to i16*
  %3049 = load i16, i16* %3048, align 2
  %3050 = zext i16 %3049 to i64
  store i64 %3050, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4142de_type* @G__0x4142de to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4142de_type* @G__0x4142de to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3051 = add i64 %3044, -296
  %3052 = add i64 %3046, 18
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3051 to i64*
  %3054 = load i64, i64* %3053, align 8
  store i64 %3054, i64* %RDI.i4036.pre-phi, align 8
  %3055 = add i64 %3044, -248
  %3056 = add i64 %3046, 24
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = zext i32 %3058 to i64
  store i64 %3059, i64* %RSI.i3042, align 8
  %3060 = add i64 %3046, 20483
  %3061 = add i64 %3046, 29
  %3062 = load i64, i64* %6, align 8
  %3063 = add i64 %3062, -8
  %3064 = inttoptr i64 %3063 to i64*
  store i64 %3061, i64* %3064, align 8
  store i64 %3063, i64* %6, align 8
  store i64 %3060, i64* %3, align 8
  %call2_401aa5 = tail call %struct.Memory* @sub_406a90._Z14test_variable1It22custom_divide_variableItEEvPT_iS2_PKc(%struct.State* %0, i64 %3060, %struct.Memory* %call2_401a88)
  %3065 = load i64, i64* %RBP.i, align 8
  %3066 = add i64 %3065, -64
  %3067 = load i64, i64* %3, align 8
  %3068 = add i64 %3067, 5
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3066 to i16*
  %3070 = load i16, i16* %3069, align 2
  %3071 = zext i16 %3070 to i64
  store i64 %3071, i64* %473, align 8
  %3072 = add i64 %3065, -62
  %3073 = add i64 %3067, 10
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i16*
  %3075 = load i16, i16* %3074, align 2
  %3076 = zext i16 %3075 to i64
  store i64 %3076, i64* %242, align 8
  %3077 = add i64 %3065, -60
  %3078 = add i64 %3067, 14
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i16*
  %3080 = load i16, i16* %3079, align 2
  %3081 = zext i16 %3080 to i64
  store i64 %3081, i64* %RCX.i4032, align 8
  %3082 = add i64 %3065, -58
  %3083 = add i64 %3067, 18
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i16*
  %3085 = load i16, i16* %3084, align 2
  %3086 = zext i16 %3085 to i64
  store i64 %3086, i64* %RDX.i4028, align 8
  %3087 = load i64, i64* %6, align 8
  store i64 %3087, i64* %RDI.i4036.pre-phi, align 8
  %3088 = add i64 %3067, 28
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3087 to i64*
  store i64 4276983, i64* %3089, align 8
  %3090 = load i64, i64* %RBP.i, align 8
  %3091 = add i64 %3090, -296
  %3092 = load i64, i64* %3, align 8
  %3093 = add i64 %3092, 7
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3091 to i64*
  %3095 = load i64, i64* %3094, align 8
  store i64 %3095, i64* %RDI.i4036.pre-phi, align 8
  %3096 = add i64 %3090, -248
  %3097 = add i64 %3092, 13
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = zext i32 %3099 to i64
  store i64 %3100, i64* %RSI.i3042, align 8
  %3101 = add i64 %3092, 20618
  %3102 = add i64 %3092, 18
  %3103 = load i64, i64* %6, align 8
  %3104 = add i64 %3103, -8
  %3105 = inttoptr i64 %3104 to i64*
  store i64 %3102, i64* %3105, align 8
  store i64 %3104, i64* %6, align 8
  store i64 %3101, i64* %3, align 8
  %call2_401ad3 = tail call %struct.Memory* @sub_406b50._Z14test_variable4It31custom_divide_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3101, %struct.Memory* %call2_401aa5)
  %3106 = load i64, i64* %RBP.i, align 8
  %3107 = add i64 %3106, -64
  %3108 = load i64, i64* %3, align 8
  %3109 = add i64 %3108, 5
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3107 to i16*
  %3111 = load i16, i16* %3110, align 2
  %3112 = zext i16 %3111 to i64
  store i64 %3112, i64* %473, align 8
  %3113 = add i64 %3106, -62
  %3114 = add i64 %3108, 10
  store i64 %3114, i64* %3, align 8
  %3115 = inttoptr i64 %3113 to i16*
  %3116 = load i16, i16* %3115, align 2
  %3117 = zext i16 %3116 to i64
  store i64 %3117, i64* %242, align 8
  %3118 = add i64 %3106, -60
  %3119 = add i64 %3108, 14
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3118 to i16*
  %3121 = load i16, i16* %3120, align 2
  %3122 = zext i16 %3121 to i64
  store i64 %3122, i64* %RCX.i4032, align 8
  %3123 = add i64 %3106, -58
  %3124 = add i64 %3108, 18
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i16*
  %3126 = load i16, i16* %3125, align 2
  %3127 = zext i16 %3126 to i64
  store i64 %3127, i64* %RDX.i4028, align 8
  %3128 = load i64, i64* %6, align 8
  store i64 %3128, i64* %RDI.i4036.pre-phi, align 8
  %3129 = add i64 %3108, 28
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i64*
  store i64 4277018, i64* %3130, align 8
  %3131 = load i64, i64* %RBP.i, align 8
  %3132 = add i64 %3131, -296
  %3133 = load i64, i64* %3, align 8
  %3134 = add i64 %3133, 7
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3132 to i64*
  %3136 = load i64, i64* %3135, align 8
  store i64 %3136, i64* %RDI.i4036.pre-phi, align 8
  %3137 = add i64 %3131, -248
  %3138 = add i64 %3133, 13
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = zext i32 %3140 to i64
  store i64 %3141, i64* %RSI.i3042, align 8
  %3142 = add i64 %3133, 20876
  %3143 = add i64 %3133, 18
  %3144 = load i64, i64* %6, align 8
  %3145 = add i64 %3144, -8
  %3146 = inttoptr i64 %3145 to i64*
  store i64 %3143, i64* %3146, align 8
  store i64 %3145, i64* %6, align 8
  store i64 %3142, i64* %3, align 8
  %call2_401b01 = tail call %struct.Memory* @sub_406c80._Z14test_variable4It32custom_divide_multiple_variable2ItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3142, %struct.Memory* %call2_401ad3)
  %3147 = load i64, i64* %RBP.i, align 8
  %3148 = add i64 %3147, -64
  %3149 = load i64, i64* %3, align 8
  %3150 = add i64 %3149, 5
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3148 to i16*
  %3152 = load i16, i16* %3151, align 2
  %3153 = zext i16 %3152 to i64
  store i64 %3153, i64* %473, align 8
  %3154 = add i64 %3147, -62
  %3155 = add i64 %3149, 10
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3154 to i16*
  %3157 = load i16, i16* %3156, align 2
  %3158 = zext i16 %3157 to i64
  store i64 %3158, i64* %242, align 8
  %3159 = add i64 %3147, -60
  %3160 = add i64 %3149, 14
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to i16*
  %3162 = load i16, i16* %3161, align 2
  %3163 = zext i16 %3162 to i64
  store i64 %3163, i64* %RCX.i4032, align 8
  %3164 = add i64 %3147, -58
  %3165 = add i64 %3149, 18
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to i16*
  %3167 = load i16, i16* %3166, align 2
  %3168 = zext i16 %3167 to i64
  store i64 %3168, i64* %RDX.i4028, align 8
  %3169 = load i64, i64* %6, align 8
  store i64 %3169, i64* %RDI.i4036.pre-phi, align 8
  %3170 = add i64 %3149, 28
  store i64 %3170, i64* %3, align 8
  %3171 = inttoptr i64 %3169 to i64*
  store i64 4277054, i64* %3171, align 8
  %3172 = load i64, i64* %RBP.i, align 8
  %3173 = add i64 %3172, -296
  %3174 = load i64, i64* %3, align 8
  %3175 = add i64 %3174, 7
  store i64 %3175, i64* %3, align 8
  %3176 = inttoptr i64 %3173 to i64*
  %3177 = load i64, i64* %3176, align 8
  store i64 %3177, i64* %RDI.i4036.pre-phi, align 8
  %3178 = add i64 %3172, -248
  %3179 = add i64 %3174, 13
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  %3181 = load i32, i32* %3180, align 4
  %3182 = zext i32 %3181 to i64
  store i64 %3182, i64* %RSI.i3042, align 8
  %3183 = add i64 %3174, 21134
  %3184 = add i64 %3174, 18
  %3185 = load i64, i64* %6, align 8
  %3186 = add i64 %3185, -8
  %3187 = inttoptr i64 %3186 to i64*
  store i64 %3184, i64* %3187, align 8
  store i64 %3186, i64* %6, align 8
  store i64 %3183, i64* %3, align 8
  %call2_401b2f = tail call %struct.Memory* @sub_406db0._Z14test_variable4It30custom_mixed_multiple_variableItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3183, %struct.Memory* %call2_401b01)
  %3188 = load i64, i64* %RBP.i, align 8
  %3189 = add i64 %3188, -58
  %3190 = load i64, i64* %3, align 8
  %3191 = add i64 %3190, 4
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3189 to i16*
  %3193 = load i16, i16* %3192, align 2
  %3194 = zext i16 %3193 to i64
  store i64 %3194, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41435f_type* @G__0x41435f to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41435f_type* @G__0x41435f to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3195 = add i64 %3188, -296
  %3196 = add i64 %3190, 18
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3195 to i64*
  %3198 = load i64, i64* %3197, align 8
  store i64 %3198, i64* %RDI.i4036.pre-phi, align 8
  %3199 = add i64 %3188, -248
  %3200 = add i64 %3190, 24
  store i64 %3200, i64* %3, align 8
  %3201 = inttoptr i64 %3199 to i32*
  %3202 = load i32, i32* %3201, align 4
  %3203 = zext i32 %3202 to i64
  store i64 %3203, i64* %RSI.i3042, align 8
  %3204 = add i64 %3190, 21420
  %3205 = add i64 %3190, 29
  %3206 = load i64, i64* %6, align 8
  %3207 = add i64 %3206, -8
  %3208 = inttoptr i64 %3207 to i64*
  store i64 %3205, i64* %3208, align 8
  store i64 %3207, i64* %6, align 8
  store i64 %3204, i64* %3, align 8
  %call2_401b4c = tail call %struct.Memory* @sub_406ee0._Z14test_variable1It19custom_variable_andItEEvPT_iS2_PKc(%struct.State* %0, i64 %3204, %struct.Memory* %call2_401b2f)
  %3209 = load i64, i64* %RBP.i, align 8
  %3210 = add i64 %3209, -64
  %3211 = load i64, i64* %3, align 8
  %3212 = add i64 %3211, 5
  store i64 %3212, i64* %3, align 8
  %3213 = inttoptr i64 %3210 to i16*
  %3214 = load i16, i16* %3213, align 2
  %3215 = zext i16 %3214 to i64
  store i64 %3215, i64* %473, align 8
  %3216 = add i64 %3209, -62
  %3217 = add i64 %3211, 10
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i16*
  %3219 = load i16, i16* %3218, align 2
  %3220 = zext i16 %3219 to i64
  store i64 %3220, i64* %242, align 8
  %3221 = add i64 %3209, -60
  %3222 = add i64 %3211, 14
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i16*
  %3224 = load i16, i16* %3223, align 2
  %3225 = zext i16 %3224 to i64
  store i64 %3225, i64* %RCX.i4032, align 8
  %3226 = add i64 %3209, -58
  %3227 = add i64 %3211, 18
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3226 to i16*
  %3229 = load i16, i16* %3228, align 2
  %3230 = zext i16 %3229 to i64
  store i64 %3230, i64* %RDX.i4028, align 8
  %3231 = load i64, i64* %6, align 8
  store i64 %3231, i64* %RDI.i4036.pre-phi, align 8
  %3232 = add i64 %3211, 28
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i64*
  store i64 4277109, i64* %3233, align 8
  %3234 = load i64, i64* %RBP.i, align 8
  %3235 = add i64 %3234, -296
  %3236 = load i64, i64* %3, align 8
  %3237 = add i64 %3236, 7
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3235 to i64*
  %3239 = load i64, i64* %3238, align 8
  store i64 %3239, i64* %RDI.i4036.pre-phi, align 8
  %3240 = add i64 %3234, -248
  %3241 = add i64 %3236, 13
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = zext i32 %3243 to i64
  store i64 %3244, i64* %RSI.i3042, align 8
  %3245 = add i64 %3236, 21555
  %3246 = add i64 %3236, 18
  %3247 = load i64, i64* %6, align 8
  %3248 = add i64 %3247, -8
  %3249 = inttoptr i64 %3248 to i64*
  store i64 %3246, i64* %3249, align 8
  store i64 %3248, i64* %6, align 8
  store i64 %3245, i64* %3, align 8
  %call2_401b7a = tail call %struct.Memory* @sub_406fa0._Z14test_variable4It28custom_multiple_variable_andItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3245, %struct.Memory* %call2_401b4c)
  %3250 = load i64, i64* %RBP.i, align 8
  %3251 = add i64 %3250, -58
  %3252 = load i64, i64* %3, align 8
  %3253 = add i64 %3252, 4
  store i64 %3253, i64* %3, align 8
  %3254 = inttoptr i64 %3251 to i16*
  %3255 = load i16, i16* %3254, align 2
  %3256 = zext i16 %3255 to i64
  store i64 %3256, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414394_type* @G__0x414394 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414394_type* @G__0x414394 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3257 = add i64 %3250, -296
  %3258 = add i64 %3252, 18
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i64*
  %3260 = load i64, i64* %3259, align 8
  store i64 %3260, i64* %RDI.i4036.pre-phi, align 8
  %3261 = add i64 %3250, -248
  %3262 = add i64 %3252, 24
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i32*
  %3264 = load i32, i32* %3263, align 4
  %3265 = zext i32 %3264 to i64
  store i64 %3265, i64* %RSI.i3042, align 8
  %3266 = add i64 %3252, 21841
  %3267 = add i64 %3252, 29
  %3268 = load i64, i64* %6, align 8
  %3269 = add i64 %3268, -8
  %3270 = inttoptr i64 %3269 to i64*
  store i64 %3267, i64* %3270, align 8
  store i64 %3269, i64* %6, align 8
  store i64 %3266, i64* %3, align 8
  %call2_401b97 = tail call %struct.Memory* @sub_4070d0._Z14test_variable1It18custom_variable_orItEEvPT_iS2_PKc(%struct.State* %0, i64 %3266, %struct.Memory* %call2_401b7a)
  %3271 = load i64, i64* %RBP.i, align 8
  %3272 = add i64 %3271, -64
  %3273 = load i64, i64* %3, align 8
  %3274 = add i64 %3273, 5
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3272 to i16*
  %3276 = load i16, i16* %3275, align 2
  %3277 = zext i16 %3276 to i64
  store i64 %3277, i64* %473, align 8
  %3278 = add i64 %3271, -62
  %3279 = add i64 %3273, 10
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i16*
  %3281 = load i16, i16* %3280, align 2
  %3282 = zext i16 %3281 to i64
  store i64 %3282, i64* %242, align 8
  %3283 = add i64 %3271, -60
  %3284 = add i64 %3273, 14
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3283 to i16*
  %3286 = load i16, i16* %3285, align 2
  %3287 = zext i16 %3286 to i64
  store i64 %3287, i64* %RCX.i4032, align 8
  %3288 = add i64 %3271, -58
  %3289 = add i64 %3273, 18
  store i64 %3289, i64* %3, align 8
  %3290 = inttoptr i64 %3288 to i16*
  %3291 = load i16, i16* %3290, align 2
  %3292 = zext i16 %3291 to i64
  store i64 %3292, i64* %RDX.i4028, align 8
  %3293 = load i64, i64* %6, align 8
  store i64 %3293, i64* %RDI.i4036.pre-phi, align 8
  %3294 = add i64 %3273, 28
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i64*
  store i64 4277161, i64* %3295, align 8
  %3296 = load i64, i64* %RBP.i, align 8
  %3297 = add i64 %3296, -296
  %3298 = load i64, i64* %3, align 8
  %3299 = add i64 %3298, 7
  store i64 %3299, i64* %3, align 8
  %3300 = inttoptr i64 %3297 to i64*
  %3301 = load i64, i64* %3300, align 8
  store i64 %3301, i64* %RDI.i4036.pre-phi, align 8
  %3302 = add i64 %3296, -248
  %3303 = add i64 %3298, 13
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i32*
  %3305 = load i32, i32* %3304, align 4
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RSI.i3042, align 8
  %3307 = add i64 %3298, 21976
  %3308 = add i64 %3298, 18
  %3309 = load i64, i64* %6, align 8
  %3310 = add i64 %3309, -8
  %3311 = inttoptr i64 %3310 to i64*
  store i64 %3308, i64* %3311, align 8
  store i64 %3310, i64* %6, align 8
  store i64 %3307, i64* %3, align 8
  %call2_401bc5 = tail call %struct.Memory* @sub_407190._Z14test_variable4It27custom_multiple_variable_orItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3307, %struct.Memory* %call2_401b97)
  %3312 = load i64, i64* %RBP.i, align 8
  %3313 = add i64 %3312, -58
  %3314 = load i64, i64* %3, align 8
  %3315 = add i64 %3314, 4
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3313 to i16*
  %3317 = load i16, i16* %3316, align 2
  %3318 = zext i16 %3317 to i64
  store i64 %3318, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143c7_type* @G__0x4143c7 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143c7_type* @G__0x4143c7 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3319 = add i64 %3312, -296
  %3320 = add i64 %3314, 18
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i64*
  %3322 = load i64, i64* %3321, align 8
  store i64 %3322, i64* %RDI.i4036.pre-phi, align 8
  %3323 = add i64 %3312, -248
  %3324 = add i64 %3314, 24
  store i64 %3324, i64* %3, align 8
  %3325 = inttoptr i64 %3323 to i32*
  %3326 = load i32, i32* %3325, align 4
  %3327 = zext i32 %3326 to i64
  store i64 %3327, i64* %RSI.i3042, align 8
  %3328 = add i64 %3314, 22262
  %3329 = add i64 %3314, 29
  %3330 = load i64, i64* %6, align 8
  %3331 = add i64 %3330, -8
  %3332 = inttoptr i64 %3331 to i64*
  store i64 %3329, i64* %3332, align 8
  store i64 %3331, i64* %6, align 8
  store i64 %3328, i64* %3, align 8
  %call2_401be2 = tail call %struct.Memory* @sub_4072c0._Z14test_variable1It19custom_variable_xorItEEvPT_iS2_PKc(%struct.State* %0, i64 %3328, %struct.Memory* %call2_401bc5)
  %3333 = load i64, i64* %RBP.i, align 8
  %3334 = add i64 %3333, -64
  %3335 = load i64, i64* %3, align 8
  %3336 = add i64 %3335, 5
  store i64 %3336, i64* %3, align 8
  %3337 = inttoptr i64 %3334 to i16*
  %3338 = load i16, i16* %3337, align 2
  %3339 = zext i16 %3338 to i64
  store i64 %3339, i64* %473, align 8
  %3340 = add i64 %3333, -62
  %3341 = add i64 %3335, 10
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3340 to i16*
  %3343 = load i16, i16* %3342, align 2
  %3344 = zext i16 %3343 to i64
  store i64 %3344, i64* %242, align 8
  %3345 = add i64 %3333, -60
  %3346 = add i64 %3335, 14
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i16*
  %3348 = load i16, i16* %3347, align 2
  %3349 = zext i16 %3348 to i64
  store i64 %3349, i64* %RCX.i4032, align 8
  %3350 = add i64 %3333, -58
  %3351 = add i64 %3335, 18
  store i64 %3351, i64* %3, align 8
  %3352 = inttoptr i64 %3350 to i16*
  %3353 = load i16, i16* %3352, align 2
  %3354 = zext i16 %3353 to i64
  store i64 %3354, i64* %RDX.i4028, align 8
  %3355 = load i64, i64* %6, align 8
  store i64 %3355, i64* %RDI.i4036.pre-phi, align 8
  %3356 = add i64 %3335, 28
  store i64 %3356, i64* %3, align 8
  %3357 = inttoptr i64 %3355 to i64*
  store i64 4277213, i64* %3357, align 8
  %3358 = load i64, i64* %RBP.i, align 8
  %3359 = add i64 %3358, -296
  %3360 = load i64, i64* %3, align 8
  %3361 = add i64 %3360, 7
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3359 to i64*
  %3363 = load i64, i64* %3362, align 8
  store i64 %3363, i64* %RDI.i4036.pre-phi, align 8
  %3364 = add i64 %3358, -248
  %3365 = add i64 %3360, 13
  store i64 %3365, i64* %3, align 8
  %3366 = inttoptr i64 %3364 to i32*
  %3367 = load i32, i32* %3366, align 4
  %3368 = zext i32 %3367 to i64
  store i64 %3368, i64* %RSI.i3042, align 8
  %3369 = add i64 %3360, 22397
  %3370 = add i64 %3360, 18
  %3371 = load i64, i64* %6, align 8
  %3372 = add i64 %3371, -8
  %3373 = inttoptr i64 %3372 to i64*
  store i64 %3370, i64* %3373, align 8
  store i64 %3372, i64* %6, align 8
  store i64 %3369, i64* %3, align 8
  %call2_401c10 = tail call %struct.Memory* @sub_407380._Z14test_variable4It28custom_multiple_variable_xorItEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3369, %struct.Memory* %call2_401be2)
  %3374 = load i64, i64* %3, align 8
  %3375 = load double, double* bitcast (%G_0x21846b__rip__4201501__type* @G_0x21846b__rip__4201501_ to double*), align 8
  store double %3375, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %3376 = tail call double @llvm.trunc.f64(double %3375)
  %3377 = tail call double @llvm.fabs.f64(double %3376)
  %3378 = fcmp ogt double %3377, 0x41DFFFFFFFC00000
  %3379 = fptosi double %3376 to i32
  %3380 = zext i32 %3379 to i64
  %3381 = select i1 %3378, i64 2147483648, i64 %3380
  store i64 %3381, i64* %RDX.i4028, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6605c0_type* @G__0x6605c0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %3382 = load i64, i64* %RBP.i, align 8
  %3383 = add i64 %3382, -312
  %3384 = add i64 %3374, 33
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3383 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295) to i32) to i64), i64* %3385, align 8
  %3386 = load i64, i64* %3, align 8
  %3387 = add i64 %3386, 22650
  %3388 = add i64 %3386, 5
  %3389 = load i64, i64* %6, align 8
  %3390 = add i64 %3389, -8
  %3391 = inttoptr i64 %3390 to i64*
  store i64 %3388, i64* %3391, align 8
  store i64 %3390, i64* %6, align 8
  store i64 %3387, i64* %3, align 8
  %call2_401c36 = tail call %struct.Memory* @sub_4074b0._Z4fillIPiiEvT_S1_T0_(%struct.State* %0, i64 %3387, %struct.Memory* %call2_401c10)
  %3392 = load i64, i64* %RBP.i, align 8
  %3393 = add i64 %3392, -40
  %3394 = load i64, i64* %3, align 8
  %3395 = add i64 %3394, 5
  store i64 %3395, i64* %3, align 8
  %3396 = inttoptr i64 %3393 to double*
  %3397 = load double, double* %3396, align 8
  %3398 = tail call double @llvm.trunc.f64(double %3397)
  %3399 = tail call double @llvm.fabs.f64(double %3398)
  %3400 = fcmp ogt double %3399, 0x41DFFFFFFFC00000
  %3401 = fptosi double %3398 to i32
  %3402 = zext i32 %3401 to i64
  %3403 = select i1 %3400, i64 2147483648, i64 %3402
  store i64 %3403, i64* %RAX.i4030.pre-phi, align 8
  %3404 = add i64 %3392, -68
  %3405 = trunc i64 %3403 to i32
  %3406 = add i64 %3394, 8
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3404 to i32*
  store i32 %3405, i32* %3407, align 4
  %3408 = load i64, i64* %RBP.i, align 8
  %3409 = add i64 %3408, -68
  %3410 = load i64, i64* %3, align 8
  %3411 = add i64 %3410, 3
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3409 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = shl i32 %3413, 1
  %3415 = zext i32 %3414 to i64
  store i64 %3415, i64* %RAX.i4030.pre-phi, align 8
  %3416 = icmp ult i32 %3414, %3413
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %26, align 1
  %3418 = and i32 %3414, 254
  %3419 = tail call i32 @llvm.ctpop.i32(i32 %3418)
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = xor i8 %3421, 1
  store i8 %3422, i8* %33, align 1
  %3423 = lshr i32 %3413, 3
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  store i8 %3425, i8* %39, align 1
  %3426 = icmp eq i32 %3414, 0
  %3427 = zext i1 %3426 to i8
  store i8 %3427, i8* %42, align 1
  %3428 = lshr i32 %3413, 30
  %3429 = and i32 %3428, 1
  %3430 = trunc i32 %3429 to i8
  store i8 %3430, i8* %45, align 1
  %3431 = lshr i32 %3413, 31
  %3432 = xor i32 %3429, %3431
  %3433 = trunc i32 %3432 to i8
  store i8 %3433, i8* %51, align 1
  %3434 = add i64 %3408, -72
  %3435 = add i64 %3410, 8
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i32*
  store i32 %3414, i32* %3436, align 4
  %3437 = load i64, i64* %RBP.i, align 8
  %3438 = add i64 %3437, -68
  %3439 = load i64, i64* %3, align 8
  %3440 = add i64 %3439, 3
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3438 to i32*
  %3442 = load i32, i32* %3441, align 4
  %3443 = add i32 %3442, 2
  %3444 = zext i32 %3443 to i64
  store i64 %3444, i64* %RAX.i4030.pre-phi, align 8
  %3445 = icmp ugt i32 %3442, -3
  %3446 = zext i1 %3445 to i8
  store i8 %3446, i8* %26, align 1
  %3447 = and i32 %3443, 255
  %3448 = tail call i32 @llvm.ctpop.i32(i32 %3447)
  %3449 = trunc i32 %3448 to i8
  %3450 = and i8 %3449, 1
  %3451 = xor i8 %3450, 1
  store i8 %3451, i8* %33, align 1
  %3452 = xor i32 %3442, %3443
  %3453 = lshr i32 %3452, 4
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  store i8 %3455, i8* %39, align 1
  %3456 = icmp eq i32 %3443, 0
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %42, align 1
  %3458 = lshr i32 %3443, 31
  %3459 = trunc i32 %3458 to i8
  store i8 %3459, i8* %45, align 1
  %3460 = lshr i32 %3442, 31
  %3461 = xor i32 %3458, %3460
  %3462 = add nuw nsw i32 %3461, %3458
  %3463 = icmp eq i32 %3462, 2
  %3464 = zext i1 %3463 to i8
  store i8 %3464, i8* %51, align 1
  %3465 = add i64 %3437, -76
  %3466 = add i64 %3439, 9
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to i32*
  store i32 %3443, i32* %3467, align 4
  %3468 = load i64, i64* %RBP.i, align 8
  %3469 = add i64 %3468, -68
  %3470 = load i64, i64* %3, align 8
  %3471 = add i64 %3470, 3
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3469 to i32*
  %3473 = load i32, i32* %3472, align 4
  %3474 = zext i32 %3473 to i64
  store i64 %3474, i64* %RAX.i4030.pre-phi, align 8
  %3475 = add i64 %3468, -72
  %3476 = add i64 %3470, 6
  store i64 %3476, i64* %3, align 8
  %3477 = inttoptr i64 %3475 to i32*
  %3478 = load i32, i32* %3477, align 4
  %3479 = zext i32 %3478 to i64
  store i64 %3479, i64* %RCX.i4032, align 8
  %3480 = add i64 %3468, -76
  %3481 = add i64 %3470, 9
  store i64 %3481, i64* %3, align 8
  %3482 = inttoptr i64 %3480 to i32*
  %3483 = load i32, i32* %3482, align 4
  %3484 = zext i32 %3483 to i64
  store i64 %3484, i64* %RDX.i4028, align 8
  %3485 = add i64 %3468, -316
  %3486 = add i64 %3470, 15
  store i64 %3486, i64* %3, align 8
  %3487 = inttoptr i64 %3485 to i32*
  store i32 %3473, i32* %3487, align 4
  %3488 = load i32, i32* %ECX.i3567, align 4
  %3489 = zext i32 %3488 to i64
  %3490 = load i64, i64* %3, align 8
  store i64 %3489, i64* %RAX.i4030.pre-phi, align 8
  %3491 = load i64, i64* %RBP.i, align 8
  %3492 = add i64 %3491, -320
  %3493 = load i32, i32* %EDX.i4025, align 4
  %3494 = add i64 %3490, 8
  store i64 %3494, i64* %3, align 8
  %3495 = inttoptr i64 %3492 to i32*
  store i32 %3493, i32* %3495, align 4
  %3496 = load i64, i64* %3, align 8
  %3497 = load i32, i32* %371, align 8
  %3498 = sext i32 %3497 to i64
  %3499 = lshr i64 %3498, 32
  store i64 %3499, i64* %370, align 8
  %3500 = load i64, i64* %RBP.i, align 8
  %3501 = add i64 %3500, -320
  %3502 = add i64 %3496, 7
  store i64 %3502, i64* %3, align 8
  %3503 = inttoptr i64 %3501 to i32*
  %3504 = load i32, i32* %3503, align 4
  %3505 = zext i32 %3504 to i64
  store i64 %3505, i64* %RCX.i4032, align 8
  %3506 = add i64 %3496, 9
  store i64 %3506, i64* %3, align 8
  %3507 = zext i32 %3497 to i64
  %3508 = sext i32 %3504 to i64
  %3509 = shl nuw i64 %3499, 32
  %3510 = or i64 %3509, %3507
  %3511 = sdiv i64 %3510, %3508
  %3512 = shl i64 %3511, 32
  %3513 = ashr exact i64 %3512, 32
  %3514 = icmp eq i64 %3511, %3513
  br i1 %3514, label %3517, label %3515

; <label>:3515:                                   ; preds = %routine_divl__r8d.exit2583
  %3516 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3506, %struct.Memory* %call2_401c36)
  %.pre15 = load i64, i64* %RBP.i, align 8
  %.pre16 = load i64, i64* %3, align 8
  %.pre17 = load i32, i32* %EAX.i4015, align 4
  br label %routine_idivl__ecx.exit

; <label>:3517:                                   ; preds = %routine_divl__r8d.exit2583
  %3518 = srem i64 %3510, %3508
  %3519 = getelementptr inbounds %union.anon, %union.anon* %.pre-phi, i64 0, i32 0
  %3520 = and i64 %3511, 4294967295
  store i64 %3520, i64* %3519, align 8
  %3521 = and i64 %3518, 4294967295
  store i64 %3521, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %3522 = trunc i64 %3511 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3517, %3515
  %3523 = phi i32 [ %.pre17, %3515 ], [ %3522, %3517 ]
  %3524 = phi i64 [ %.pre16, %3515 ], [ %3506, %3517 ]
  %3525 = phi i64 [ %.pre15, %3515 ], [ %3500, %3517 ]
  %3526 = phi %struct.Memory* [ %3516, %3515 ], [ %call2_401c36, %3517 ]
  %3527 = add i64 %3525, -316
  %3528 = add i64 %3524, 6
  store i64 %3528, i64* %3, align 8
  %3529 = inttoptr i64 %3527 to i32*
  %3530 = load i32, i32* %3529, align 4
  %3531 = add i32 %3523, %3530
  %3532 = zext i32 %3531 to i64
  store i64 %3532, i64* %RCX.i4032, align 8
  %3533 = icmp ult i32 %3531, %3530
  %3534 = icmp ult i32 %3531, %3523
  %3535 = or i1 %3533, %3534
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %26, align 1
  %3537 = and i32 %3531, 255
  %3538 = tail call i32 @llvm.ctpop.i32(i32 %3537)
  %3539 = trunc i32 %3538 to i8
  %3540 = and i8 %3539, 1
  %3541 = xor i8 %3540, 1
  store i8 %3541, i8* %33, align 1
  %3542 = xor i32 %3523, %3530
  %3543 = xor i32 %3542, %3531
  %3544 = lshr i32 %3543, 4
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  store i8 %3546, i8* %39, align 1
  %3547 = icmp eq i32 %3531, 0
  %3548 = zext i1 %3547 to i8
  store i8 %3548, i8* %42, align 1
  %3549 = lshr i32 %3531, 31
  %3550 = trunc i32 %3549 to i8
  store i8 %3550, i8* %45, align 1
  %3551 = lshr i32 %3530, 31
  %3552 = lshr i32 %3523, 31
  %3553 = xor i32 %3549, %3551
  %3554 = xor i32 %3549, %3552
  %3555 = add nuw nsw i32 %3553, %3554
  %3556 = icmp eq i32 %3555, 2
  %3557 = zext i1 %3556 to i8
  store i8 %3557, i8* %51, align 1
  %3558 = add i64 %3525, -80
  %3559 = add i64 %3524, 11
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i32*
  store i32 %3531, i32* %3560, align 4
  %3561 = load i64, i64* %RBP.i, align 8
  %3562 = add i64 %3561, -68
  %3563 = load i64, i64* %3, align 8
  %3564 = add i64 %3563, 3
  store i64 %3564, i64* %3, align 8
  %3565 = inttoptr i64 %3562 to i32*
  %3566 = load i32, i32* %3565, align 4
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143fd_type* @G__0x4143fd to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143fd_type* @G__0x4143fd to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3568 = add i64 %3561, -312
  %3569 = add i64 %3563, 17
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i64*
  %3571 = load i64, i64* %3570, align 8
  store i64 %3571, i64* %RDI.i4036.pre-phi, align 8
  %3572 = add i64 %3561, -248
  %3573 = add i64 %3563, 23
  store i64 %3573, i64* %3, align 8
  %3574 = inttoptr i64 %3572 to i32*
  %3575 = load i32, i32* %3574, align 4
  %3576 = zext i32 %3575 to i64
  store i64 %3576, i64* %RSI.i3042, align 8
  %3577 = add i64 %3563, 22641
  %3578 = add i64 %3563, 28
  %3579 = load i64, i64* %6, align 8
  %3580 = add i64 %3579, -8
  %3581 = inttoptr i64 %3580 to i64*
  store i64 %3578, i64* %3581, align 8
  store i64 %3580, i64* %6, align 8
  store i64 %3577, i64* %3, align 8
  %call2_401c96 = tail call %struct.Memory* @sub_4074f0._Z14test_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3577, %struct.Memory* %3526)
  %3582 = load i64, i64* %RBP.i, align 8
  %3583 = add i64 %3582, -68
  %3584 = load i64, i64* %3, align 8
  %3585 = add i64 %3584, 3
  store i64 %3585, i64* %3, align 8
  %3586 = inttoptr i64 %3583 to i32*
  %3587 = load i32, i32* %3586, align 4
  %3588 = zext i32 %3587 to i64
  store i64 %3588, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414413_type* @G__0x414413 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414413_type* @G__0x414413 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3589 = add i64 %3582, -312
  %3590 = add i64 %3584, 17
  store i64 %3590, i64* %3, align 8
  %3591 = inttoptr i64 %3589 to i64*
  %3592 = load i64, i64* %3591, align 8
  store i64 %3592, i64* %RDI.i4036.pre-phi, align 8
  %3593 = add i64 %3582, -248
  %3594 = add i64 %3584, 23
  store i64 %3594, i64* %3, align 8
  %3595 = inttoptr i64 %3593 to i32*
  %3596 = load i32, i32* %3595, align 4
  %3597 = zext i32 %3596 to i64
  store i64 %3597, i64* %RSI.i3042, align 8
  %3598 = add i64 %3584, 22773
  %3599 = add i64 %3584, 28
  %3600 = load i64, i64* %6, align 8
  %3601 = add i64 %3600, -8
  %3602 = inttoptr i64 %3601 to i64*
  store i64 %3599, i64* %3602, align 8
  store i64 %3601, i64* %6, align 8
  store i64 %3598, i64* %3, align 8
  %call2_401cb2 = tail call %struct.Memory* @sub_407590._Z22test_hoisted_variable1Ii19custom_add_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3598, %struct.Memory* %call2_401c96)
  %3603 = load i64, i64* %RBP.i, align 8
  %3604 = add i64 %3603, -68
  %3605 = load i64, i64* %3, align 8
  %3606 = add i64 %3605, 3
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3604 to i32*
  %3608 = load i32, i32* %3607, align 4
  %3609 = zext i32 %3608 to i64
  store i64 %3609, i64* %RDX.i4028, align 8
  %3610 = add i64 %3603, -72
  %3611 = add i64 %3605, 6
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3610 to i32*
  %3613 = load i32, i32* %3612, align 4
  %3614 = zext i32 %3613 to i64
  store i64 %3614, i64* %RCX.i4032, align 8
  %3615 = add i64 %3603, -76
  %3616 = add i64 %3605, 10
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3615 to i32*
  %3618 = load i32, i32* %3617, align 4
  %3619 = zext i32 %3618 to i64
  store i64 %3619, i64* %242, align 8
  %3620 = add i64 %3603, -80
  %3621 = add i64 %3605, 14
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3620 to i32*
  %3623 = load i32, i32* %3622, align 4
  %3624 = zext i32 %3623 to i64
  store i64 %3624, i64* %473, align 8
  %3625 = load i64, i64* %6, align 8
  store i64 %3625, i64* %RDI.i4036.pre-phi, align 8
  %3626 = add i64 %3605, 24
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i64*
  store i64 4277297, i64* %3627, align 8
  %3628 = load i64, i64* %RBP.i, align 8
  %3629 = add i64 %3628, -312
  %3630 = load i64, i64* %3, align 8
  %3631 = add i64 %3630, 7
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3629 to i64*
  %3633 = load i64, i64* %3632, align 8
  store i64 %3633, i64* %RDI.i4036.pre-phi, align 8
  %3634 = add i64 %3628, -248
  %3635 = add i64 %3630, 13
  store i64 %3635, i64* %3, align 8
  %3636 = inttoptr i64 %3634 to i32*
  %3637 = load i32, i32* %3636, align 4
  %3638 = zext i32 %3637 to i64
  store i64 %3638, i64* %RSI.i3042, align 8
  %3639 = add i64 %3630, 22897
  %3640 = add i64 %3630, 18
  %3641 = load i64, i64* %6, align 8
  %3642 = add i64 %3641, -8
  %3643 = inttoptr i64 %3642 to i64*
  store i64 %3640, i64* %3643, align 8
  store i64 %3642, i64* %6, align 8
  store i64 %3639, i64* %3, align 8
  %call2_401cdc = tail call %struct.Memory* @sub_407640._Z14test_variable4Ii28custom_add_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3639, %struct.Memory* %call2_401cb2)
  %3644 = load i64, i64* %RBP.i, align 8
  %3645 = add i64 %3644, -68
  %3646 = load i64, i64* %3, align 8
  %3647 = add i64 %3646, 3
  store i64 %3647, i64* %3, align 8
  %3648 = inttoptr i64 %3645 to i32*
  %3649 = load i32, i32* %3648, align 4
  %3650 = zext i32 %3649 to i64
  store i64 %3650, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414451_type* @G__0x414451 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414451_type* @G__0x414451 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3651 = add i64 %3644, -312
  %3652 = add i64 %3646, 17
  store i64 %3652, i64* %3, align 8
  %3653 = inttoptr i64 %3651 to i64*
  %3654 = load i64, i64* %3653, align 8
  store i64 %3654, i64* %RDI.i4036.pre-phi, align 8
  %3655 = add i64 %3644, -248
  %3656 = add i64 %3646, 23
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3655 to i32*
  %3658 = load i32, i32* %3657, align 4
  %3659 = zext i32 %3658 to i64
  store i64 %3659, i64* %RSI.i3042, align 8
  %3660 = add i64 %3646, 23087
  %3661 = add i64 %3646, 28
  %3662 = load i64, i64* %6, align 8
  %3663 = add i64 %3662, -8
  %3664 = inttoptr i64 %3663 to i64*
  store i64 %3661, i64* %3664, align 8
  store i64 %3663, i64* %6, align 8
  store i64 %3660, i64* %3, align 8
  %call2_401cf8 = tail call %struct.Memory* @sub_407710._Z14test_variable1Ii19custom_sub_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3660, %struct.Memory* %call2_401cdc)
  %3665 = load i64, i64* %RBP.i, align 8
  %3666 = add i64 %3665, -68
  %3667 = load i64, i64* %3, align 8
  %3668 = add i64 %3667, 3
  store i64 %3668, i64* %3, align 8
  %3669 = inttoptr i64 %3666 to i32*
  %3670 = load i32, i32* %3669, align 4
  %3671 = zext i32 %3670 to i64
  store i64 %3671, i64* %RDX.i4028, align 8
  %3672 = add i64 %3665, -72
  %3673 = add i64 %3667, 6
  store i64 %3673, i64* %3, align 8
  %3674 = inttoptr i64 %3672 to i32*
  %3675 = load i32, i32* %3674, align 4
  %3676 = zext i32 %3675 to i64
  store i64 %3676, i64* %RCX.i4032, align 8
  %3677 = add i64 %3665, -76
  %3678 = add i64 %3667, 10
  store i64 %3678, i64* %3, align 8
  %3679 = inttoptr i64 %3677 to i32*
  %3680 = load i32, i32* %3679, align 4
  %3681 = zext i32 %3680 to i64
  store i64 %3681, i64* %242, align 8
  %3682 = add i64 %3665, -80
  %3683 = add i64 %3667, 14
  store i64 %3683, i64* %3, align 8
  %3684 = inttoptr i64 %3682 to i32*
  %3685 = load i32, i32* %3684, align 4
  %3686 = zext i32 %3685 to i64
  store i64 %3686, i64* %473, align 8
  %3687 = load i64, i64* %6, align 8
  store i64 %3687, i64* %RDI.i4036.pre-phi, align 8
  %3688 = add i64 %3667, 24
  store i64 %3688, i64* %3, align 8
  %3689 = inttoptr i64 %3687 to i64*
  store i64 4277356, i64* %3689, align 8
  %3690 = load i64, i64* %RBP.i, align 8
  %3691 = add i64 %3690, -312
  %3692 = load i64, i64* %3, align 8
  %3693 = add i64 %3692, 7
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3691 to i64*
  %3695 = load i64, i64* %3694, align 8
  store i64 %3695, i64* %RDI.i4036.pre-phi, align 8
  %3696 = add i64 %3690, -248
  %3697 = add i64 %3692, 13
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = zext i32 %3699 to i64
  store i64 %3700, i64* %RSI.i3042, align 8
  %3701 = add i64 %3692, 23195
  %3702 = add i64 %3692, 18
  %3703 = load i64, i64* %6, align 8
  %3704 = add i64 %3703, -8
  %3705 = inttoptr i64 %3704 to i64*
  store i64 %3702, i64* %3705, align 8
  store i64 %3704, i64* %6, align 8
  store i64 %3701, i64* %3, align 8
  %call2_401d22 = tail call %struct.Memory* @sub_4077b0._Z14test_variable4Ii28custom_sub_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3701, %struct.Memory* %call2_401cf8)
  %3706 = load i64, i64* %RBP.i, align 8
  %3707 = add i64 %3706, -68
  %3708 = load i64, i64* %3, align 8
  %3709 = add i64 %3708, 3
  store i64 %3709, i64* %3, align 8
  %3710 = inttoptr i64 %3707 to i32*
  %3711 = load i32, i32* %3710, align 4
  %3712 = zext i32 %3711 to i64
  store i64 %3712, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414491_type* @G__0x414491 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414491_type* @G__0x414491 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3713 = add i64 %3706, -312
  %3714 = add i64 %3708, 17
  store i64 %3714, i64* %3, align 8
  %3715 = inttoptr i64 %3713 to i64*
  %3716 = load i64, i64* %3715, align 8
  store i64 %3716, i64* %RDI.i4036.pre-phi, align 8
  %3717 = add i64 %3706, -248
  %3718 = add i64 %3708, 23
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3717 to i32*
  %3720 = load i32, i32* %3719, align 4
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RSI.i3042, align 8
  %3722 = add i64 %3708, 23385
  %3723 = add i64 %3708, 28
  %3724 = load i64, i64* %6, align 8
  %3725 = add i64 %3724, -8
  %3726 = inttoptr i64 %3725 to i64*
  store i64 %3723, i64* %3726, align 8
  store i64 %3725, i64* %6, align 8
  store i64 %3722, i64* %3, align 8
  %call2_401d3e = tail call %struct.Memory* @sub_407880._Z14test_variable1Ii24custom_multiply_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3722, %struct.Memory* %call2_401d22)
  %3727 = load i64, i64* %RBP.i, align 8
  %3728 = add i64 %3727, -68
  %3729 = load i64, i64* %3, align 8
  %3730 = add i64 %3729, 3
  store i64 %3730, i64* %3, align 8
  %3731 = inttoptr i64 %3728 to i32*
  %3732 = load i32, i32* %3731, align 4
  %3733 = zext i32 %3732 to i64
  store i64 %3733, i64* %RDX.i4028, align 8
  %3734 = add i64 %3727, -72
  %3735 = add i64 %3729, 6
  store i64 %3735, i64* %3, align 8
  %3736 = inttoptr i64 %3734 to i32*
  %3737 = load i32, i32* %3736, align 4
  %3738 = zext i32 %3737 to i64
  store i64 %3738, i64* %RCX.i4032, align 8
  %3739 = add i64 %3727, -76
  %3740 = add i64 %3729, 10
  store i64 %3740, i64* %3, align 8
  %3741 = inttoptr i64 %3739 to i32*
  %3742 = load i32, i32* %3741, align 4
  %3743 = zext i32 %3742 to i64
  store i64 %3743, i64* %242, align 8
  %3744 = add i64 %3727, -80
  %3745 = add i64 %3729, 14
  store i64 %3745, i64* %3, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = zext i32 %3747 to i64
  store i64 %3748, i64* %473, align 8
  %3749 = load i64, i64* %6, align 8
  store i64 %3749, i64* %RDI.i4036.pre-phi, align 8
  %3750 = add i64 %3729, 24
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3749 to i64*
  store i64 4277420, i64* %3751, align 8
  %3752 = load i64, i64* %RBP.i, align 8
  %3753 = add i64 %3752, -312
  %3754 = load i64, i64* %3, align 8
  %3755 = add i64 %3754, 7
  store i64 %3755, i64* %3, align 8
  %3756 = inttoptr i64 %3753 to i64*
  %3757 = load i64, i64* %3756, align 8
  store i64 %3757, i64* %RDI.i4036.pre-phi, align 8
  %3758 = add i64 %3752, -248
  %3759 = add i64 %3754, 13
  store i64 %3759, i64* %3, align 8
  %3760 = inttoptr i64 %3758 to i32*
  %3761 = load i32, i32* %3760, align 4
  %3762 = zext i32 %3761 to i64
  store i64 %3762, i64* %RSI.i3042, align 8
  %3763 = add i64 %3754, 23493
  %3764 = add i64 %3754, 18
  %3765 = load i64, i64* %6, align 8
  %3766 = add i64 %3765, -8
  %3767 = inttoptr i64 %3766 to i64*
  store i64 %3764, i64* %3767, align 8
  store i64 %3766, i64* %6, align 8
  store i64 %3763, i64* %3, align 8
  %call2_401d68 = tail call %struct.Memory* @sub_407920._Z14test_variable4Ii33custom_multiply_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3763, %struct.Memory* %call2_401d3e)
  %3768 = load i64, i64* %RBP.i, align 8
  %3769 = add i64 %3768, -68
  %3770 = load i64, i64* %3, align 8
  %3771 = add i64 %3770, 3
  store i64 %3771, i64* %3, align 8
  %3772 = inttoptr i64 %3769 to i32*
  %3773 = load i32, i32* %3772, align 4
  %3774 = zext i32 %3773 to i64
  store i64 %3774, i64* %RDX.i4028, align 8
  %3775 = add i64 %3768, -72
  %3776 = add i64 %3770, 6
  store i64 %3776, i64* %3, align 8
  %3777 = inttoptr i64 %3775 to i32*
  %3778 = load i32, i32* %3777, align 4
  %3779 = zext i32 %3778 to i64
  store i64 %3779, i64* %RCX.i4032, align 8
  %3780 = add i64 %3768, -76
  %3781 = add i64 %3770, 10
  store i64 %3781, i64* %3, align 8
  %3782 = inttoptr i64 %3780 to i32*
  %3783 = load i32, i32* %3782, align 4
  %3784 = zext i32 %3783 to i64
  store i64 %3784, i64* %242, align 8
  %3785 = add i64 %3768, -80
  %3786 = add i64 %3770, 14
  store i64 %3786, i64* %3, align 8
  %3787 = inttoptr i64 %3785 to i32*
  %3788 = load i32, i32* %3787, align 4
  %3789 = zext i32 %3788 to i64
  store i64 %3789, i64* %473, align 8
  %3790 = load i64, i64* %6, align 8
  store i64 %3790, i64* %RDI.i4036.pre-phi, align 8
  %3791 = add i64 %3770, 24
  store i64 %3791, i64* %3, align 8
  %3792 = inttoptr i64 %3790 to i64*
  store i64 4277458, i64* %3792, align 8
  %3793 = load i64, i64* %RBP.i, align 8
  %3794 = add i64 %3793, -312
  %3795 = load i64, i64* %3, align 8
  %3796 = add i64 %3795, 7
  store i64 %3796, i64* %3, align 8
  %3797 = inttoptr i64 %3794 to i64*
  %3798 = load i64, i64* %3797, align 8
  store i64 %3798, i64* %RDI.i4036.pre-phi, align 8
  %3799 = add i64 %3793, -248
  %3800 = add i64 %3795, 13
  store i64 %3800, i64* %3, align 8
  %3801 = inttoptr i64 %3799 to i32*
  %3802 = load i32, i32* %3801, align 4
  %3803 = zext i32 %3802 to i64
  store i64 %3803, i64* %RSI.i3042, align 8
  %3804 = add i64 %3795, 23659
  %3805 = add i64 %3795, 18
  %3806 = load i64, i64* %6, align 8
  %3807 = add i64 %3806, -8
  %3808 = inttoptr i64 %3807 to i64*
  store i64 %3805, i64* %3808, align 8
  store i64 %3807, i64* %6, align 8
  store i64 %3804, i64* %3, align 8
  %call2_401d92 = tail call %struct.Memory* @sub_4079f0._Z14test_variable4Ii34custom_multiply_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3804, %struct.Memory* %call2_401d68)
  %3809 = load i64, i64* %RBP.i, align 8
  %3810 = add i64 %3809, -68
  %3811 = load i64, i64* %3, align 8
  %3812 = add i64 %3811, 3
  store i64 %3812, i64* %3, align 8
  %3813 = inttoptr i64 %3810 to i32*
  %3814 = load i32, i32* %3813, align 4
  %3815 = zext i32 %3814 to i64
  store i64 %3815, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4144f9_type* @G__0x4144f9 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4144f9_type* @G__0x4144f9 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3816 = add i64 %3809, -312
  %3817 = add i64 %3811, 17
  store i64 %3817, i64* %3, align 8
  %3818 = inttoptr i64 %3816 to i64*
  %3819 = load i64, i64* %3818, align 8
  store i64 %3819, i64* %RDI.i4036.pre-phi, align 8
  %3820 = add i64 %3809, -248
  %3821 = add i64 %3811, 23
  store i64 %3821, i64* %3, align 8
  %3822 = inttoptr i64 %3820 to i32*
  %3823 = load i32, i32* %3822, align 4
  %3824 = zext i32 %3823 to i64
  store i64 %3824, i64* %RSI.i3042, align 8
  %3825 = add i64 %3811, 23849
  %3826 = add i64 %3811, 28
  %3827 = load i64, i64* %6, align 8
  %3828 = add i64 %3827, -8
  %3829 = inttoptr i64 %3828 to i64*
  store i64 %3826, i64* %3829, align 8
  store i64 %3828, i64* %6, align 8
  store i64 %3825, i64* %3, align 8
  %call2_401dae = tail call %struct.Memory* @sub_407ac0._Z14test_variable1Ii22custom_divide_variableIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3825, %struct.Memory* %call2_401d92)
  %3830 = load i64, i64* %RBP.i, align 8
  %3831 = add i64 %3830, -68
  %3832 = load i64, i64* %3, align 8
  %3833 = add i64 %3832, 3
  store i64 %3833, i64* %3, align 8
  %3834 = inttoptr i64 %3831 to i32*
  %3835 = load i32, i32* %3834, align 4
  %3836 = zext i32 %3835 to i64
  store i64 %3836, i64* %RDX.i4028, align 8
  %3837 = add i64 %3830, -72
  %3838 = add i64 %3832, 6
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i32*
  %3840 = load i32, i32* %3839, align 4
  %3841 = zext i32 %3840 to i64
  store i64 %3841, i64* %RCX.i4032, align 8
  %3842 = add i64 %3830, -76
  %3843 = add i64 %3832, 10
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3842 to i32*
  %3845 = load i32, i32* %3844, align 4
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %242, align 8
  %3847 = add i64 %3830, -80
  %3848 = add i64 %3832, 14
  store i64 %3848, i64* %3, align 8
  %3849 = inttoptr i64 %3847 to i32*
  %3850 = load i32, i32* %3849, align 4
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %473, align 8
  %3852 = load i64, i64* %6, align 8
  store i64 %3852, i64* %RDI.i4036.pre-phi, align 8
  %3853 = add i64 %3832, 24
  store i64 %3853, i64* %3, align 8
  %3854 = inttoptr i64 %3852 to i64*
  store i64 4277522, i64* %3854, align 8
  %3855 = load i64, i64* %RBP.i, align 8
  %3856 = add i64 %3855, -312
  %3857 = load i64, i64* %3, align 8
  %3858 = add i64 %3857, 7
  store i64 %3858, i64* %3, align 8
  %3859 = inttoptr i64 %3856 to i64*
  %3860 = load i64, i64* %3859, align 8
  store i64 %3860, i64* %RDI.i4036.pre-phi, align 8
  %3861 = add i64 %3855, -248
  %3862 = add i64 %3857, 13
  store i64 %3862, i64* %3, align 8
  %3863 = inttoptr i64 %3861 to i32*
  %3864 = load i32, i32* %3863, align 4
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %RSI.i3042, align 8
  %3866 = add i64 %3857, 23957
  %3867 = add i64 %3857, 18
  %3868 = load i64, i64* %6, align 8
  %3869 = add i64 %3868, -8
  %3870 = inttoptr i64 %3869 to i64*
  store i64 %3867, i64* %3870, align 8
  store i64 %3869, i64* %6, align 8
  store i64 %3866, i64* %3, align 8
  %call2_401dd8 = tail call %struct.Memory* @sub_407b60._Z14test_variable4Ii31custom_divide_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3866, %struct.Memory* %call2_401dae)
  %3871 = load i64, i64* %RBP.i, align 8
  %3872 = add i64 %3871, -68
  %3873 = load i64, i64* %3, align 8
  %3874 = add i64 %3873, 3
  store i64 %3874, i64* %3, align 8
  %3875 = inttoptr i64 %3872 to i32*
  %3876 = load i32, i32* %3875, align 4
  %3877 = zext i32 %3876 to i64
  store i64 %3877, i64* %RDX.i4028, align 8
  %3878 = add i64 %3871, -72
  %3879 = add i64 %3873, 6
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3878 to i32*
  %3881 = load i32, i32* %3880, align 4
  %3882 = zext i32 %3881 to i64
  store i64 %3882, i64* %RCX.i4032, align 8
  %3883 = add i64 %3871, -76
  %3884 = add i64 %3873, 10
  store i64 %3884, i64* %3, align 8
  %3885 = inttoptr i64 %3883 to i32*
  %3886 = load i32, i32* %3885, align 4
  %3887 = zext i32 %3886 to i64
  store i64 %3887, i64* %242, align 8
  %3888 = add i64 %3871, -80
  %3889 = add i64 %3873, 14
  store i64 %3889, i64* %3, align 8
  %3890 = inttoptr i64 %3888 to i32*
  %3891 = load i32, i32* %3890, align 4
  %3892 = zext i32 %3891 to i64
  store i64 %3892, i64* %473, align 8
  %3893 = load i64, i64* %6, align 8
  store i64 %3893, i64* %RDI.i4036.pre-phi, align 8
  %3894 = add i64 %3873, 24
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to i64*
  store i64 4277557, i64* %3895, align 8
  %3896 = load i64, i64* %RBP.i, align 8
  %3897 = add i64 %3896, -312
  %3898 = load i64, i64* %3, align 8
  %3899 = add i64 %3898, 7
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3897 to i64*
  %3901 = load i64, i64* %3900, align 8
  store i64 %3901, i64* %RDI.i4036.pre-phi, align 8
  %3902 = add i64 %3896, -248
  %3903 = add i64 %3898, 13
  store i64 %3903, i64* %3, align 8
  %3904 = inttoptr i64 %3902 to i32*
  %3905 = load i32, i32* %3904, align 4
  %3906 = zext i32 %3905 to i64
  store i64 %3906, i64* %RSI.i3042, align 8
  %3907 = add i64 %3898, 24123
  %3908 = add i64 %3898, 18
  %3909 = load i64, i64* %6, align 8
  %3910 = add i64 %3909, -8
  %3911 = inttoptr i64 %3910 to i64*
  store i64 %3908, i64* %3911, align 8
  store i64 %3910, i64* %6, align 8
  store i64 %3907, i64* %3, align 8
  %call2_401e02 = tail call %struct.Memory* @sub_407c30._Z14test_variable4Ii32custom_divide_multiple_variable2IiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3907, %struct.Memory* %call2_401dd8)
  %3912 = load i64, i64* %RBP.i, align 8
  %3913 = add i64 %3912, -68
  %3914 = load i64, i64* %3, align 8
  %3915 = add i64 %3914, 3
  store i64 %3915, i64* %3, align 8
  %3916 = inttoptr i64 %3913 to i32*
  %3917 = load i32, i32* %3916, align 4
  %3918 = zext i32 %3917 to i64
  store i64 %3918, i64* %RDX.i4028, align 8
  %3919 = add i64 %3912, -72
  %3920 = add i64 %3914, 6
  store i64 %3920, i64* %3, align 8
  %3921 = inttoptr i64 %3919 to i32*
  %3922 = load i32, i32* %3921, align 4
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RCX.i4032, align 8
  %3924 = add i64 %3912, -76
  %3925 = add i64 %3914, 10
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i32*
  %3927 = load i32, i32* %3926, align 4
  %3928 = zext i32 %3927 to i64
  store i64 %3928, i64* %242, align 8
  %3929 = add i64 %3912, -80
  %3930 = add i64 %3914, 14
  store i64 %3930, i64* %3, align 8
  %3931 = inttoptr i64 %3929 to i32*
  %3932 = load i32, i32* %3931, align 4
  %3933 = zext i32 %3932 to i64
  store i64 %3933, i64* %473, align 8
  %3934 = load i64, i64* %6, align 8
  store i64 %3934, i64* %RDI.i4036.pre-phi, align 8
  %3935 = add i64 %3914, 24
  store i64 %3935, i64* %3, align 8
  %3936 = inttoptr i64 %3934 to i64*
  store i64 4277593, i64* %3936, align 8
  %3937 = load i64, i64* %RBP.i, align 8
  %3938 = add i64 %3937, -312
  %3939 = load i64, i64* %3, align 8
  %3940 = add i64 %3939, 7
  store i64 %3940, i64* %3, align 8
  %3941 = inttoptr i64 %3938 to i64*
  %3942 = load i64, i64* %3941, align 8
  store i64 %3942, i64* %RDI.i4036.pre-phi, align 8
  %3943 = add i64 %3937, -248
  %3944 = add i64 %3939, 13
  store i64 %3944, i64* %3, align 8
  %3945 = inttoptr i64 %3943 to i32*
  %3946 = load i32, i32* %3945, align 4
  %3947 = zext i32 %3946 to i64
  store i64 %3947, i64* %RSI.i3042, align 8
  %3948 = add i64 %3939, 24289
  %3949 = add i64 %3939, 18
  %3950 = load i64, i64* %6, align 8
  %3951 = add i64 %3950, -8
  %3952 = inttoptr i64 %3951 to i64*
  store i64 %3949, i64* %3952, align 8
  store i64 %3951, i64* %6, align 8
  store i64 %3948, i64* %3, align 8
  %call2_401e2c = tail call %struct.Memory* @sub_407d00._Z14test_variable4Ii30custom_mixed_multiple_variableIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %3948, %struct.Memory* %call2_401e02)
  %3953 = load i64, i64* %RBP.i, align 8
  %3954 = add i64 %3953, -68
  %3955 = load i64, i64* %3, align 8
  %3956 = add i64 %3955, 3
  store i64 %3956, i64* %3, align 8
  %3957 = inttoptr i64 %3954 to i32*
  %3958 = load i32, i32* %3957, align 4
  %3959 = zext i32 %3958 to i64
  store i64 %3959, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41457a_type* @G__0x41457a to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41457a_type* @G__0x41457a to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %3960 = add i64 %3953, -312
  %3961 = add i64 %3955, 17
  store i64 %3961, i64* %3, align 8
  %3962 = inttoptr i64 %3960 to i64*
  %3963 = load i64, i64* %3962, align 8
  store i64 %3963, i64* %RDI.i4036.pre-phi, align 8
  %3964 = add i64 %3953, -248
  %3965 = add i64 %3955, 23
  store i64 %3965, i64* %3, align 8
  %3966 = inttoptr i64 %3964 to i32*
  %3967 = load i32, i32* %3966, align 4
  %3968 = zext i32 %3967 to i64
  store i64 %3968, i64* %RSI.i3042, align 8
  %3969 = add i64 %3955, 24479
  %3970 = add i64 %3955, 28
  %3971 = load i64, i64* %6, align 8
  %3972 = add i64 %3971, -8
  %3973 = inttoptr i64 %3972 to i64*
  store i64 %3970, i64* %3973, align 8
  store i64 %3972, i64* %6, align 8
  store i64 %3969, i64* %3, align 8
  %call2_401e48 = tail call %struct.Memory* @sub_407dd0._Z14test_variable1Ii19custom_variable_andIiEEvPT_iS2_PKc(%struct.State* %0, i64 %3969, %struct.Memory* %call2_401e2c)
  %3974 = load i64, i64* %RBP.i, align 8
  %3975 = add i64 %3974, -68
  %3976 = load i64, i64* %3, align 8
  %3977 = add i64 %3976, 3
  store i64 %3977, i64* %3, align 8
  %3978 = inttoptr i64 %3975 to i32*
  %3979 = load i32, i32* %3978, align 4
  %3980 = zext i32 %3979 to i64
  store i64 %3980, i64* %RDX.i4028, align 8
  %3981 = add i64 %3974, -72
  %3982 = add i64 %3976, 6
  store i64 %3982, i64* %3, align 8
  %3983 = inttoptr i64 %3981 to i32*
  %3984 = load i32, i32* %3983, align 4
  %3985 = zext i32 %3984 to i64
  store i64 %3985, i64* %RCX.i4032, align 8
  %3986 = add i64 %3974, -76
  %3987 = add i64 %3976, 10
  store i64 %3987, i64* %3, align 8
  %3988 = inttoptr i64 %3986 to i32*
  %3989 = load i32, i32* %3988, align 4
  %3990 = zext i32 %3989 to i64
  store i64 %3990, i64* %242, align 8
  %3991 = add i64 %3974, -80
  %3992 = add i64 %3976, 14
  store i64 %3992, i64* %3, align 8
  %3993 = inttoptr i64 %3991 to i32*
  %3994 = load i32, i32* %3993, align 4
  %3995 = zext i32 %3994 to i64
  store i64 %3995, i64* %473, align 8
  %3996 = load i64, i64* %6, align 8
  store i64 %3996, i64* %RDI.i4036.pre-phi, align 8
  %3997 = add i64 %3976, 24
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i64*
  store i64 4277648, i64* %3998, align 8
  %3999 = load i64, i64* %RBP.i, align 8
  %4000 = add i64 %3999, -312
  %4001 = load i64, i64* %3, align 8
  %4002 = add i64 %4001, 7
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4000 to i64*
  %4004 = load i64, i64* %4003, align 8
  store i64 %4004, i64* %RDI.i4036.pre-phi, align 8
  %4005 = add i64 %3999, -248
  %4006 = add i64 %4001, 13
  store i64 %4006, i64* %3, align 8
  %4007 = inttoptr i64 %4005 to i32*
  %4008 = load i32, i32* %4007, align 4
  %4009 = zext i32 %4008 to i64
  store i64 %4009, i64* %RSI.i3042, align 8
  %4010 = add i64 %4001, 24587
  %4011 = add i64 %4001, 18
  %4012 = load i64, i64* %6, align 8
  %4013 = add i64 %4012, -8
  %4014 = inttoptr i64 %4013 to i64*
  store i64 %4011, i64* %4014, align 8
  store i64 %4013, i64* %6, align 8
  store i64 %4010, i64* %3, align 8
  %call2_401e72 = tail call %struct.Memory* @sub_407e70._Z14test_variable4Ii28custom_multiple_variable_andIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4010, %struct.Memory* %call2_401e48)
  %4015 = load i64, i64* %RBP.i, align 8
  %4016 = add i64 %4015, -68
  %4017 = load i64, i64* %3, align 8
  %4018 = add i64 %4017, 3
  store i64 %4018, i64* %3, align 8
  %4019 = inttoptr i64 %4016 to i32*
  %4020 = load i32, i32* %4019, align 4
  %4021 = zext i32 %4020 to i64
  store i64 %4021, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145af_type* @G__0x4145af to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145af_type* @G__0x4145af to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4022 = add i64 %4015, -312
  %4023 = add i64 %4017, 17
  store i64 %4023, i64* %3, align 8
  %4024 = inttoptr i64 %4022 to i64*
  %4025 = load i64, i64* %4024, align 8
  store i64 %4025, i64* %RDI.i4036.pre-phi, align 8
  %4026 = add i64 %4015, -248
  %4027 = add i64 %4017, 23
  store i64 %4027, i64* %3, align 8
  %4028 = inttoptr i64 %4026 to i32*
  %4029 = load i32, i32* %4028, align 4
  %4030 = zext i32 %4029 to i64
  store i64 %4030, i64* %RSI.i3042, align 8
  %4031 = add i64 %4017, 24777
  %4032 = add i64 %4017, 28
  %4033 = load i64, i64* %6, align 8
  %4034 = add i64 %4033, -8
  %4035 = inttoptr i64 %4034 to i64*
  store i64 %4032, i64* %4035, align 8
  store i64 %4034, i64* %6, align 8
  store i64 %4031, i64* %3, align 8
  %call2_401e8e = tail call %struct.Memory* @sub_407f40._Z14test_variable1Ii18custom_variable_orIiEEvPT_iS2_PKc(%struct.State* %0, i64 %4031, %struct.Memory* %call2_401e72)
  %4036 = load i64, i64* %RBP.i, align 8
  %4037 = add i64 %4036, -68
  %4038 = load i64, i64* %3, align 8
  %4039 = add i64 %4038, 3
  store i64 %4039, i64* %3, align 8
  %4040 = inttoptr i64 %4037 to i32*
  %4041 = load i32, i32* %4040, align 4
  %4042 = zext i32 %4041 to i64
  store i64 %4042, i64* %RDX.i4028, align 8
  %4043 = add i64 %4036, -72
  %4044 = add i64 %4038, 6
  store i64 %4044, i64* %3, align 8
  %4045 = inttoptr i64 %4043 to i32*
  %4046 = load i32, i32* %4045, align 4
  %4047 = zext i32 %4046 to i64
  store i64 %4047, i64* %RCX.i4032, align 8
  %4048 = add i64 %4036, -76
  %4049 = add i64 %4038, 10
  store i64 %4049, i64* %3, align 8
  %4050 = inttoptr i64 %4048 to i32*
  %4051 = load i32, i32* %4050, align 4
  %4052 = zext i32 %4051 to i64
  store i64 %4052, i64* %242, align 8
  %4053 = add i64 %4036, -80
  %4054 = add i64 %4038, 14
  store i64 %4054, i64* %3, align 8
  %4055 = inttoptr i64 %4053 to i32*
  %4056 = load i32, i32* %4055, align 4
  %4057 = zext i32 %4056 to i64
  store i64 %4057, i64* %473, align 8
  %4058 = load i64, i64* %6, align 8
  store i64 %4058, i64* %RDI.i4036.pre-phi, align 8
  %4059 = add i64 %4038, 24
  store i64 %4059, i64* %3, align 8
  %4060 = inttoptr i64 %4058 to i64*
  store i64 4277700, i64* %4060, align 8
  %4061 = load i64, i64* %RBP.i, align 8
  %4062 = add i64 %4061, -312
  %4063 = load i64, i64* %3, align 8
  %4064 = add i64 %4063, 7
  store i64 %4064, i64* %3, align 8
  %4065 = inttoptr i64 %4062 to i64*
  %4066 = load i64, i64* %4065, align 8
  store i64 %4066, i64* %RDI.i4036.pre-phi, align 8
  %4067 = add i64 %4061, -248
  %4068 = add i64 %4063, 13
  store i64 %4068, i64* %3, align 8
  %4069 = inttoptr i64 %4067 to i32*
  %4070 = load i32, i32* %4069, align 4
  %4071 = zext i32 %4070 to i64
  store i64 %4071, i64* %RSI.i3042, align 8
  %4072 = add i64 %4063, 24885
  %4073 = add i64 %4063, 18
  %4074 = load i64, i64* %6, align 8
  %4075 = add i64 %4074, -8
  %4076 = inttoptr i64 %4075 to i64*
  store i64 %4073, i64* %4076, align 8
  store i64 %4075, i64* %6, align 8
  store i64 %4072, i64* %3, align 8
  %call2_401eb8 = tail call %struct.Memory* @sub_407fe0._Z14test_variable4Ii27custom_multiple_variable_orIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4072, %struct.Memory* %call2_401e8e)
  %4077 = load i64, i64* %RBP.i, align 8
  %4078 = add i64 %4077, -68
  %4079 = load i64, i64* %3, align 8
  %4080 = add i64 %4079, 3
  store i64 %4080, i64* %3, align 8
  %4081 = inttoptr i64 %4078 to i32*
  %4082 = load i32, i32* %4081, align 4
  %4083 = zext i32 %4082 to i64
  store i64 %4083, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145e2_type* @G__0x4145e2 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145e2_type* @G__0x4145e2 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4084 = add i64 %4077, -312
  %4085 = add i64 %4079, 17
  store i64 %4085, i64* %3, align 8
  %4086 = inttoptr i64 %4084 to i64*
  %4087 = load i64, i64* %4086, align 8
  store i64 %4087, i64* %RDI.i4036.pre-phi, align 8
  %4088 = add i64 %4077, -248
  %4089 = add i64 %4079, 23
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4088 to i32*
  %4091 = load i32, i32* %4090, align 4
  %4092 = zext i32 %4091 to i64
  store i64 %4092, i64* %RSI.i3042, align 8
  %4093 = add i64 %4079, 25075
  %4094 = add i64 %4079, 28
  %4095 = load i64, i64* %6, align 8
  %4096 = add i64 %4095, -8
  %4097 = inttoptr i64 %4096 to i64*
  store i64 %4094, i64* %4097, align 8
  store i64 %4096, i64* %6, align 8
  store i64 %4093, i64* %3, align 8
  %call2_401ed4 = tail call %struct.Memory* @sub_4080b0._Z14test_variable1Ii19custom_variable_xorIiEEvPT_iS2_PKc(%struct.State* %0, i64 %4093, %struct.Memory* %call2_401eb8)
  %4098 = load i64, i64* %RBP.i, align 8
  %4099 = add i64 %4098, -68
  %4100 = load i64, i64* %3, align 8
  %4101 = add i64 %4100, 3
  store i64 %4101, i64* %3, align 8
  %4102 = inttoptr i64 %4099 to i32*
  %4103 = load i32, i32* %4102, align 4
  %4104 = zext i32 %4103 to i64
  store i64 %4104, i64* %RDX.i4028, align 8
  %4105 = add i64 %4098, -72
  %4106 = add i64 %4100, 6
  store i64 %4106, i64* %3, align 8
  %4107 = inttoptr i64 %4105 to i32*
  %4108 = load i32, i32* %4107, align 4
  %4109 = zext i32 %4108 to i64
  store i64 %4109, i64* %RCX.i4032, align 8
  %4110 = add i64 %4098, -76
  %4111 = add i64 %4100, 10
  store i64 %4111, i64* %3, align 8
  %4112 = inttoptr i64 %4110 to i32*
  %4113 = load i32, i32* %4112, align 4
  %4114 = zext i32 %4113 to i64
  store i64 %4114, i64* %242, align 8
  %4115 = add i64 %4098, -80
  %4116 = add i64 %4100, 14
  store i64 %4116, i64* %3, align 8
  %4117 = inttoptr i64 %4115 to i32*
  %4118 = load i32, i32* %4117, align 4
  %4119 = zext i32 %4118 to i64
  store i64 %4119, i64* %473, align 8
  %4120 = load i64, i64* %6, align 8
  store i64 %4120, i64* %RDI.i4036.pre-phi, align 8
  %4121 = add i64 %4100, 24
  store i64 %4121, i64* %3, align 8
  %4122 = inttoptr i64 %4120 to i64*
  store i64 4277752, i64* %4122, align 8
  %4123 = load i64, i64* %RBP.i, align 8
  %4124 = add i64 %4123, -312
  %4125 = load i64, i64* %3, align 8
  %4126 = add i64 %4125, 7
  store i64 %4126, i64* %3, align 8
  %4127 = inttoptr i64 %4124 to i64*
  %4128 = load i64, i64* %4127, align 8
  store i64 %4128, i64* %RDI.i4036.pre-phi, align 8
  %4129 = add i64 %4123, -248
  %4130 = add i64 %4125, 13
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i32*
  %4132 = load i32, i32* %4131, align 4
  %4133 = zext i32 %4132 to i64
  store i64 %4133, i64* %RSI.i3042, align 8
  %4134 = add i64 %4125, 25183
  %4135 = add i64 %4125, 18
  %4136 = load i64, i64* %6, align 8
  %4137 = add i64 %4136, -8
  %4138 = inttoptr i64 %4137 to i64*
  store i64 %4135, i64* %4138, align 8
  store i64 %4137, i64* %6, align 8
  store i64 %4134, i64* %3, align 8
  %call2_401efe = tail call %struct.Memory* @sub_408150._Z14test_variable4Ii28custom_multiple_variable_xorIiEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4134, %struct.Memory* %call2_401ed4)
  %4139 = load i64, i64* %3, align 8
  %4140 = load double, double* bitcast (%G_0x21817c__rip__4202252__type* @G_0x21817c__rip__4202252_ to double*), align 8
  %4141 = tail call double @llvm.trunc.f64(double %4140)
  %4142 = tail call double @llvm.fabs.f64(double %4141)
  %4143 = fcmp ogt double %4142, 0x43E0000000000000
  %4144 = fptosi double %4141 to i64
  %4145 = and i64 %4144, 4294967295
  %4146 = select i1 %4143, i64 0, i64 %4145
  store i64 %4146, i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6588c0_type* @G__0x6588c0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %4147 = load i64, i64* %RBP.i, align 8
  %4148 = add i64 %4147, -328
  %4149 = add i64 %4139, 32
  store i64 %4149, i64* %3, align 8
  %4150 = inttoptr i64 %4148 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295) to i32) to i64), i64* %4150, align 8
  %4151 = load i32, i32* %EAX.i4015, align 4
  %4152 = zext i32 %4151 to i64
  %4153 = load i64, i64* %3, align 8
  store i64 %4152, i64* %RDX.i4028, align 8
  %4154 = add i64 %4153, 25341
  %4155 = add i64 %4153, 7
  %4156 = load i64, i64* %6, align 8
  %4157 = add i64 %4156, -8
  %4158 = inttoptr i64 %4157 to i64*
  store i64 %4155, i64* %4158, align 8
  store i64 %4157, i64* %6, align 8
  store i64 %4154, i64* %3, align 8
  %call2_401f25 = tail call %struct.Memory* @sub_408220._Z4fillIPjjEvT_S1_T0_(%struct.State* %0, i64 %4154, %struct.Memory* %call2_401efe)
  %4159 = load i64, i64* %RBP.i, align 8
  %4160 = add i64 %4159, -40
  %4161 = load i64, i64* %3, align 8
  %4162 = add i64 %4161, 6
  store i64 %4162, i64* %3, align 8
  %4163 = inttoptr i64 %4160 to double*
  %4164 = load double, double* %4163, align 8
  %4165 = tail call double @llvm.trunc.f64(double %4164)
  %4166 = tail call double @llvm.fabs.f64(double %4165)
  %4167 = fcmp ogt double %4166, 0x43E0000000000000
  %4168 = fptosi double %4165 to i64
  %4169 = select i1 %4167, i64 -9223372036854775808, i64 %4168
  store i64 %4169, i64* %RSI.i3042, align 8
  %4170 = and i64 %4169, 4294967295
  store i64 %4170, i64* %RAX.i4030.pre-phi, align 8
  %4171 = add i64 %4159, -84
  %4172 = trunc i64 %4169 to i32
  %4173 = add i64 %4161, 11
  store i64 %4173, i64* %3, align 8
  %4174 = inttoptr i64 %4171 to i32*
  store i32 %4172, i32* %4174, align 4
  %4175 = load i64, i64* %RBP.i, align 8
  %4176 = add i64 %4175, -84
  %4177 = load i64, i64* %3, align 8
  %4178 = add i64 %4177, 3
  store i64 %4178, i64* %3, align 8
  %4179 = inttoptr i64 %4176 to i32*
  %4180 = load i32, i32* %4179, align 4
  %4181 = shl i32 %4180, 1
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RAX.i4030.pre-phi, align 8
  %4183 = icmp ult i32 %4181, %4180
  %4184 = zext i1 %4183 to i8
  store i8 %4184, i8* %26, align 1
  %4185 = and i32 %4181, 254
  %4186 = tail call i32 @llvm.ctpop.i32(i32 %4185)
  %4187 = trunc i32 %4186 to i8
  %4188 = and i8 %4187, 1
  %4189 = xor i8 %4188, 1
  store i8 %4189, i8* %33, align 1
  %4190 = lshr i32 %4180, 3
  %4191 = trunc i32 %4190 to i8
  %4192 = and i8 %4191, 1
  store i8 %4192, i8* %39, align 1
  %4193 = icmp eq i32 %4181, 0
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %42, align 1
  %4195 = lshr i32 %4180, 30
  %4196 = and i32 %4195, 1
  %4197 = trunc i32 %4196 to i8
  store i8 %4197, i8* %45, align 1
  %4198 = lshr i32 %4180, 31
  %4199 = xor i32 %4196, %4198
  %4200 = trunc i32 %4199 to i8
  store i8 %4200, i8* %51, align 1
  %4201 = add i64 %4175, -88
  %4202 = add i64 %4177, 8
  store i64 %4202, i64* %3, align 8
  %4203 = inttoptr i64 %4201 to i32*
  store i32 %4181, i32* %4203, align 4
  %4204 = load i64, i64* %RBP.i, align 8
  %4205 = add i64 %4204, -84
  %4206 = load i64, i64* %3, align 8
  %4207 = add i64 %4206, 3
  store i64 %4207, i64* %3, align 8
  %4208 = inttoptr i64 %4205 to i32*
  %4209 = load i32, i32* %4208, align 4
  %4210 = add i32 %4209, 2
  %4211 = zext i32 %4210 to i64
  store i64 %4211, i64* %RAX.i4030.pre-phi, align 8
  %4212 = icmp ugt i32 %4209, -3
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %26, align 1
  %4214 = and i32 %4210, 255
  %4215 = tail call i32 @llvm.ctpop.i32(i32 %4214)
  %4216 = trunc i32 %4215 to i8
  %4217 = and i8 %4216, 1
  %4218 = xor i8 %4217, 1
  store i8 %4218, i8* %33, align 1
  %4219 = xor i32 %4209, %4210
  %4220 = lshr i32 %4219, 4
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  store i8 %4222, i8* %39, align 1
  %4223 = icmp eq i32 %4210, 0
  %4224 = zext i1 %4223 to i8
  store i8 %4224, i8* %42, align 1
  %4225 = lshr i32 %4210, 31
  %4226 = trunc i32 %4225 to i8
  store i8 %4226, i8* %45, align 1
  %4227 = lshr i32 %4209, 31
  %4228 = xor i32 %4225, %4227
  %4229 = add nuw nsw i32 %4228, %4225
  %4230 = icmp eq i32 %4229, 2
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %51, align 1
  %4232 = add i64 %4204, -92
  %4233 = add i64 %4206, 9
  store i64 %4233, i64* %3, align 8
  %4234 = inttoptr i64 %4232 to i32*
  store i32 %4210, i32* %4234, align 4
  %4235 = load i64, i64* %RBP.i, align 8
  %4236 = add i64 %4235, -84
  %4237 = load i64, i64* %3, align 8
  %4238 = add i64 %4237, 3
  store i64 %4238, i64* %3, align 8
  %4239 = inttoptr i64 %4236 to i32*
  %4240 = load i32, i32* %4239, align 4
  %4241 = zext i32 %4240 to i64
  store i64 %4241, i64* %RAX.i4030.pre-phi, align 8
  %4242 = add i64 %4235, -88
  %4243 = add i64 %4237, 6
  store i64 %4243, i64* %3, align 8
  %4244 = inttoptr i64 %4242 to i32*
  %4245 = load i32, i32* %4244, align 4
  %4246 = zext i32 %4245 to i64
  store i64 %4246, i64* %RCX.i4032, align 8
  %4247 = add i64 %4235, -92
  %4248 = add i64 %4237, 9
  store i64 %4248, i64* %3, align 8
  %4249 = inttoptr i64 %4247 to i32*
  %4250 = load i32, i32* %4249, align 4
  %4251 = zext i32 %4250 to i64
  store i64 %4251, i64* %RDX.i4028, align 8
  %4252 = add i64 %4235, -332
  %4253 = add i64 %4237, 15
  store i64 %4253, i64* %3, align 8
  %4254 = inttoptr i64 %4252 to i32*
  store i32 %4240, i32* %4254, align 4
  %4255 = load i32, i32* %ECX.i3567, align 4
  %4256 = zext i32 %4255 to i64
  %4257 = load i64, i64* %3, align 8
  store i64 %4256, i64* %RAX.i4030.pre-phi, align 8
  %4258 = load i64, i64* %RBP.i, align 8
  %4259 = add i64 %4258, -268
  %4260 = add i64 %4257, 8
  store i64 %4260, i64* %3, align 8
  %4261 = inttoptr i64 %4259 to i32*
  %4262 = load i32, i32* %4261, align 4
  %4263 = zext i32 %4262 to i64
  store i64 %4263, i64* %RCX.i4032, align 8
  %4264 = add i64 %4258, -336
  %4265 = load i32, i32* %EDX.i4025, align 4
  %4266 = add i64 %4257, 14
  store i64 %4266, i64* %3, align 8
  %4267 = inttoptr i64 %4264 to i32*
  store i32 %4265, i32* %4267, align 4
  %4268 = load i32, i32* %ECX.i3567, align 4
  %4269 = zext i32 %4268 to i64
  %4270 = load i64, i64* %3, align 8
  store i64 %4269, i64* %RDX.i4028, align 8
  %4271 = load i64, i64* %RBP.i, align 8
  %4272 = add i64 %4271, -336
  %4273 = add i64 %4270, 9
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4272 to i32*
  %4275 = load i32, i32* %4274, align 4
  %4276 = zext i32 %4275 to i64
  store i64 %4276, i64* %242, align 8
  %4277 = add i64 %4270, 12
  store i64 %4277, i64* %3, align 8
  %4278 = load i32, i32* %371, align 8
  %4279 = zext i32 %4278 to i64
  %4280 = shl nuw i64 %4269, 32
  %4281 = or i64 %4280, %4279
  %4282 = udiv i64 %4281, %4276
  %4283 = and i64 %4282, 4294967295
  %4284 = icmp eq i64 %4282, %4283
  br i1 %4284, label %4287, label %4285

; <label>:4285:                                   ; preds = %routine_idivl__ecx.exit
  %4286 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4277, %struct.Memory* %call2_401f25)
  %.pre18 = load i64, i64* %RBP.i, align 8
  %.pre19 = load i64, i64* %3, align 8
  %.pre20 = load i32, i32* %EAX.i4015, align 4
  br label %routine_divl__r8d.exit

; <label>:4287:                                   ; preds = %routine_idivl__ecx.exit
  %4288 = urem i64 %4281, %4276
  %4289 = getelementptr inbounds %union.anon, %union.anon* %.pre-phi, i64 0, i32 0
  store i64 %4282, i64* %4289, align 8
  store i64 %4288, i64* %RDX.i4028, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %4290 = trunc i64 %4282 to i32
  br label %routine_divl__r8d.exit

routine_divl__r8d.exit:                           ; preds = %4287, %4285
  %4291 = phi i32 [ %.pre20, %4285 ], [ %4290, %4287 ]
  %4292 = phi i64 [ %.pre19, %4285 ], [ %4277, %4287 ]
  %4293 = phi i64 [ %.pre18, %4285 ], [ %4271, %4287 ]
  %4294 = phi %struct.Memory* [ %4286, %4285 ], [ %call2_401f25, %4287 ]
  %4295 = add i64 %4293, -332
  %4296 = add i64 %4292, 6
  store i64 %4296, i64* %3, align 8
  %4297 = inttoptr i64 %4295 to i32*
  %4298 = load i32, i32* %4297, align 4
  %4299 = add i32 %4291, %4298
  %4300 = zext i32 %4299 to i64
  store i64 %4300, i64* %RDX.i4028, align 8
  %4301 = icmp ult i32 %4299, %4298
  %4302 = icmp ult i32 %4299, %4291
  %4303 = or i1 %4301, %4302
  %4304 = zext i1 %4303 to i8
  store i8 %4304, i8* %26, align 1
  %4305 = and i32 %4299, 255
  %4306 = tail call i32 @llvm.ctpop.i32(i32 %4305)
  %4307 = trunc i32 %4306 to i8
  %4308 = and i8 %4307, 1
  %4309 = xor i8 %4308, 1
  store i8 %4309, i8* %33, align 1
  %4310 = xor i32 %4291, %4298
  %4311 = xor i32 %4310, %4299
  %4312 = lshr i32 %4311, 4
  %4313 = trunc i32 %4312 to i8
  %4314 = and i8 %4313, 1
  store i8 %4314, i8* %39, align 1
  %4315 = icmp eq i32 %4299, 0
  %4316 = zext i1 %4315 to i8
  store i8 %4316, i8* %42, align 1
  %4317 = lshr i32 %4299, 31
  %4318 = trunc i32 %4317 to i8
  store i8 %4318, i8* %45, align 1
  %4319 = lshr i32 %4298, 31
  %4320 = lshr i32 %4291, 31
  %4321 = xor i32 %4317, %4319
  %4322 = xor i32 %4317, %4320
  %4323 = add nuw nsw i32 %4321, %4322
  %4324 = icmp eq i32 %4323, 2
  %4325 = zext i1 %4324 to i8
  store i8 %4325, i8* %51, align 1
  %4326 = add i64 %4293, -96
  %4327 = add i64 %4292, 11
  store i64 %4327, i64* %3, align 8
  %4328 = inttoptr i64 %4326 to i32*
  store i32 %4299, i32* %4328, align 4
  %4329 = load i64, i64* %RBP.i, align 8
  %4330 = add i64 %4329, -84
  %4331 = load i64, i64* %3, align 8
  %4332 = add i64 %4331, 3
  store i64 %4332, i64* %3, align 8
  %4333 = inttoptr i64 %4330 to i32*
  %4334 = load i32, i32* %4333, align 4
  %4335 = zext i32 %4334 to i64
  store i64 %4335, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4143fc_type* @G__0x4143fc to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4143fc_type* @G__0x4143fc to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4336 = add i64 %4329, -328
  %4337 = add i64 %4331, 17
  store i64 %4337, i64* %3, align 8
  %4338 = inttoptr i64 %4336 to i64*
  %4339 = load i64, i64* %4338, align 8
  store i64 %4339, i64* %RDI.i4036.pre-phi, align 8
  %4340 = add i64 %4329, -248
  %4341 = add i64 %4331, 23
  store i64 %4341, i64* %3, align 8
  %4342 = inttoptr i64 %4340 to i32*
  %4343 = load i32, i32* %4342, align 4
  %4344 = zext i32 %4343 to i64
  store i64 %4344, i64* %RSI.i3042, align 8
  %4345 = add i64 %4331, 25318
  %4346 = add i64 %4331, 28
  %4347 = load i64, i64* %6, align 8
  %4348 = add i64 %4347, -8
  %4349 = inttoptr i64 %4348 to i64*
  store i64 %4346, i64* %4349, align 8
  store i64 %4348, i64* %6, align 8
  store i64 %4345, i64* %3, align 8
  %call2_401f91 = tail call %struct.Memory* @sub_408260._Z14test_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4345, %struct.Memory* %4294)
  %4350 = load i64, i64* %RBP.i, align 8
  %4351 = add i64 %4350, -84
  %4352 = load i64, i64* %3, align 8
  %4353 = add i64 %4352, 3
  store i64 %4353, i64* %3, align 8
  %4354 = inttoptr i64 %4351 to i32*
  %4355 = load i32, i32* %4354, align 4
  %4356 = zext i32 %4355 to i64
  store i64 %4356, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414412_type* @G__0x414412 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414412_type* @G__0x414412 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4357 = add i64 %4350, -328
  %4358 = add i64 %4352, 17
  store i64 %4358, i64* %3, align 8
  %4359 = inttoptr i64 %4357 to i64*
  %4360 = load i64, i64* %4359, align 8
  store i64 %4360, i64* %RDI.i4036.pre-phi, align 8
  %4361 = add i64 %4350, -248
  %4362 = add i64 %4352, 23
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  %4364 = load i32, i32* %4363, align 4
  %4365 = zext i32 %4364 to i64
  store i64 %4365, i64* %RSI.i3042, align 8
  %4366 = add i64 %4352, 25450
  %4367 = add i64 %4352, 28
  %4368 = load i64, i64* %6, align 8
  %4369 = add i64 %4368, -8
  %4370 = inttoptr i64 %4369 to i64*
  store i64 %4367, i64* %4370, align 8
  store i64 %4369, i64* %6, align 8
  store i64 %4366, i64* %3, align 8
  %call2_401fad = tail call %struct.Memory* @sub_408300._Z22test_hoisted_variable1Ij19custom_add_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4366, %struct.Memory* %call2_401f91)
  %4371 = load i64, i64* %RBP.i, align 8
  %4372 = add i64 %4371, -84
  %4373 = load i64, i64* %3, align 8
  %4374 = add i64 %4373, 3
  store i64 %4374, i64* %3, align 8
  %4375 = inttoptr i64 %4372 to i32*
  %4376 = load i32, i32* %4375, align 4
  %4377 = zext i32 %4376 to i64
  store i64 %4377, i64* %RDX.i4028, align 8
  %4378 = add i64 %4371, -88
  %4379 = add i64 %4373, 6
  store i64 %4379, i64* %3, align 8
  %4380 = inttoptr i64 %4378 to i32*
  %4381 = load i32, i32* %4380, align 4
  %4382 = zext i32 %4381 to i64
  store i64 %4382, i64* %RCX.i4032, align 8
  %4383 = add i64 %4371, -92
  %4384 = add i64 %4373, 10
  store i64 %4384, i64* %3, align 8
  %4385 = inttoptr i64 %4383 to i32*
  %4386 = load i32, i32* %4385, align 4
  %4387 = zext i32 %4386 to i64
  store i64 %4387, i64* %242, align 8
  %4388 = add i64 %4371, -96
  %4389 = add i64 %4373, 14
  store i64 %4389, i64* %3, align 8
  %4390 = inttoptr i64 %4388 to i32*
  %4391 = load i32, i32* %4390, align 4
  %4392 = zext i32 %4391 to i64
  store i64 %4392, i64* %473, align 8
  %4393 = load i64, i64* %6, align 8
  store i64 %4393, i64* %RDI.i4036.pre-phi, align 8
  %4394 = add i64 %4373, 24
  store i64 %4394, i64* %3, align 8
  %4395 = inttoptr i64 %4393 to i64*
  store i64 4277296, i64* %4395, align 8
  %4396 = load i64, i64* %RBP.i, align 8
  %4397 = add i64 %4396, -328
  %4398 = load i64, i64* %3, align 8
  %4399 = add i64 %4398, 7
  store i64 %4399, i64* %3, align 8
  %4400 = inttoptr i64 %4397 to i64*
  %4401 = load i64, i64* %4400, align 8
  store i64 %4401, i64* %RDI.i4036.pre-phi, align 8
  %4402 = add i64 %4396, -248
  %4403 = add i64 %4398, 13
  store i64 %4403, i64* %3, align 8
  %4404 = inttoptr i64 %4402 to i32*
  %4405 = load i32, i32* %4404, align 4
  %4406 = zext i32 %4405 to i64
  store i64 %4406, i64* %RSI.i3042, align 8
  %4407 = add i64 %4398, 25574
  %4408 = add i64 %4398, 18
  %4409 = load i64, i64* %6, align 8
  %4410 = add i64 %4409, -8
  %4411 = inttoptr i64 %4410 to i64*
  store i64 %4408, i64* %4411, align 8
  store i64 %4410, i64* %6, align 8
  store i64 %4407, i64* %3, align 8
  %call2_401fd7 = tail call %struct.Memory* @sub_4083b0._Z14test_variable4Ij28custom_add_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4407, %struct.Memory* %call2_401fad)
  %4412 = load i64, i64* %RBP.i, align 8
  %4413 = add i64 %4412, -84
  %4414 = load i64, i64* %3, align 8
  %4415 = add i64 %4414, 3
  store i64 %4415, i64* %3, align 8
  %4416 = inttoptr i64 %4413 to i32*
  %4417 = load i32, i32* %4416, align 4
  %4418 = zext i32 %4417 to i64
  store i64 %4418, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414450_type* @G__0x414450 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414450_type* @G__0x414450 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4419 = add i64 %4412, -328
  %4420 = add i64 %4414, 17
  store i64 %4420, i64* %3, align 8
  %4421 = inttoptr i64 %4419 to i64*
  %4422 = load i64, i64* %4421, align 8
  store i64 %4422, i64* %RDI.i4036.pre-phi, align 8
  %4423 = add i64 %4412, -248
  %4424 = add i64 %4414, 23
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to i32*
  %4426 = load i32, i32* %4425, align 4
  %4427 = zext i32 %4426 to i64
  store i64 %4427, i64* %RSI.i3042, align 8
  %4428 = add i64 %4414, 25764
  %4429 = add i64 %4414, 28
  %4430 = load i64, i64* %6, align 8
  %4431 = add i64 %4430, -8
  %4432 = inttoptr i64 %4431 to i64*
  store i64 %4429, i64* %4432, align 8
  store i64 %4431, i64* %6, align 8
  store i64 %4428, i64* %3, align 8
  %call2_401ff3 = tail call %struct.Memory* @sub_408480._Z14test_variable1Ij19custom_sub_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4428, %struct.Memory* %call2_401fd7)
  %4433 = load i64, i64* %RBP.i, align 8
  %4434 = add i64 %4433, -84
  %4435 = load i64, i64* %3, align 8
  %4436 = add i64 %4435, 3
  store i64 %4436, i64* %3, align 8
  %4437 = inttoptr i64 %4434 to i32*
  %4438 = load i32, i32* %4437, align 4
  %4439 = zext i32 %4438 to i64
  store i64 %4439, i64* %RDX.i4028, align 8
  %4440 = add i64 %4433, -88
  %4441 = add i64 %4435, 6
  store i64 %4441, i64* %3, align 8
  %4442 = inttoptr i64 %4440 to i32*
  %4443 = load i32, i32* %4442, align 4
  %4444 = zext i32 %4443 to i64
  store i64 %4444, i64* %RCX.i4032, align 8
  %4445 = add i64 %4433, -92
  %4446 = add i64 %4435, 10
  store i64 %4446, i64* %3, align 8
  %4447 = inttoptr i64 %4445 to i32*
  %4448 = load i32, i32* %4447, align 4
  %4449 = zext i32 %4448 to i64
  store i64 %4449, i64* %242, align 8
  %4450 = add i64 %4433, -96
  %4451 = add i64 %4435, 14
  store i64 %4451, i64* %3, align 8
  %4452 = inttoptr i64 %4450 to i32*
  %4453 = load i32, i32* %4452, align 4
  %4454 = zext i32 %4453 to i64
  store i64 %4454, i64* %473, align 8
  %4455 = load i64, i64* %6, align 8
  store i64 %4455, i64* %RDI.i4036.pre-phi, align 8
  %4456 = add i64 %4435, 24
  store i64 %4456, i64* %3, align 8
  %4457 = inttoptr i64 %4455 to i64*
  store i64 4277355, i64* %4457, align 8
  %4458 = load i64, i64* %RBP.i, align 8
  %4459 = add i64 %4458, -328
  %4460 = load i64, i64* %3, align 8
  %4461 = add i64 %4460, 7
  store i64 %4461, i64* %3, align 8
  %4462 = inttoptr i64 %4459 to i64*
  %4463 = load i64, i64* %4462, align 8
  store i64 %4463, i64* %RDI.i4036.pre-phi, align 8
  %4464 = add i64 %4458, -248
  %4465 = add i64 %4460, 13
  store i64 %4465, i64* %3, align 8
  %4466 = inttoptr i64 %4464 to i32*
  %4467 = load i32, i32* %4466, align 4
  %4468 = zext i32 %4467 to i64
  store i64 %4468, i64* %RSI.i3042, align 8
  %4469 = add i64 %4460, 25872
  %4470 = add i64 %4460, 18
  %4471 = load i64, i64* %6, align 8
  %4472 = add i64 %4471, -8
  %4473 = inttoptr i64 %4472 to i64*
  store i64 %4470, i64* %4473, align 8
  store i64 %4472, i64* %6, align 8
  store i64 %4469, i64* %3, align 8
  %call2_40201d = tail call %struct.Memory* @sub_408520._Z14test_variable4Ij28custom_sub_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4469, %struct.Memory* %call2_401ff3)
  %4474 = load i64, i64* %RBP.i, align 8
  %4475 = add i64 %4474, -84
  %4476 = load i64, i64* %3, align 8
  %4477 = add i64 %4476, 3
  store i64 %4477, i64* %3, align 8
  %4478 = inttoptr i64 %4475 to i32*
  %4479 = load i32, i32* %4478, align 4
  %4480 = zext i32 %4479 to i64
  store i64 %4480, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414490_type* @G__0x414490 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414490_type* @G__0x414490 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4481 = add i64 %4474, -328
  %4482 = add i64 %4476, 17
  store i64 %4482, i64* %3, align 8
  %4483 = inttoptr i64 %4481 to i64*
  %4484 = load i64, i64* %4483, align 8
  store i64 %4484, i64* %RDI.i4036.pre-phi, align 8
  %4485 = add i64 %4474, -248
  %4486 = add i64 %4476, 23
  store i64 %4486, i64* %3, align 8
  %4487 = inttoptr i64 %4485 to i32*
  %4488 = load i32, i32* %4487, align 4
  %4489 = zext i32 %4488 to i64
  store i64 %4489, i64* %RSI.i3042, align 8
  %4490 = add i64 %4476, 26062
  %4491 = add i64 %4476, 28
  %4492 = load i64, i64* %6, align 8
  %4493 = add i64 %4492, -8
  %4494 = inttoptr i64 %4493 to i64*
  store i64 %4491, i64* %4494, align 8
  store i64 %4493, i64* %6, align 8
  store i64 %4490, i64* %3, align 8
  %call2_402039 = tail call %struct.Memory* @sub_4085f0._Z14test_variable1Ij24custom_multiply_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4490, %struct.Memory* %call2_40201d)
  %4495 = load i64, i64* %RBP.i, align 8
  %4496 = add i64 %4495, -84
  %4497 = load i64, i64* %3, align 8
  %4498 = add i64 %4497, 3
  store i64 %4498, i64* %3, align 8
  %4499 = inttoptr i64 %4496 to i32*
  %4500 = load i32, i32* %4499, align 4
  %4501 = zext i32 %4500 to i64
  store i64 %4501, i64* %RDX.i4028, align 8
  %4502 = add i64 %4495, -88
  %4503 = add i64 %4497, 6
  store i64 %4503, i64* %3, align 8
  %4504 = inttoptr i64 %4502 to i32*
  %4505 = load i32, i32* %4504, align 4
  %4506 = zext i32 %4505 to i64
  store i64 %4506, i64* %RCX.i4032, align 8
  %4507 = add i64 %4495, -92
  %4508 = add i64 %4497, 10
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i32*
  %4510 = load i32, i32* %4509, align 4
  %4511 = zext i32 %4510 to i64
  store i64 %4511, i64* %242, align 8
  %4512 = add i64 %4495, -96
  %4513 = add i64 %4497, 14
  store i64 %4513, i64* %3, align 8
  %4514 = inttoptr i64 %4512 to i32*
  %4515 = load i32, i32* %4514, align 4
  %4516 = zext i32 %4515 to i64
  store i64 %4516, i64* %473, align 8
  %4517 = load i64, i64* %6, align 8
  store i64 %4517, i64* %RDI.i4036.pre-phi, align 8
  %4518 = add i64 %4497, 24
  store i64 %4518, i64* %3, align 8
  %4519 = inttoptr i64 %4517 to i64*
  store i64 4277419, i64* %4519, align 8
  %4520 = load i64, i64* %RBP.i, align 8
  %4521 = add i64 %4520, -328
  %4522 = load i64, i64* %3, align 8
  %4523 = add i64 %4522, 7
  store i64 %4523, i64* %3, align 8
  %4524 = inttoptr i64 %4521 to i64*
  %4525 = load i64, i64* %4524, align 8
  store i64 %4525, i64* %RDI.i4036.pre-phi, align 8
  %4526 = add i64 %4520, -248
  %4527 = add i64 %4522, 13
  store i64 %4527, i64* %3, align 8
  %4528 = inttoptr i64 %4526 to i32*
  %4529 = load i32, i32* %4528, align 4
  %4530 = zext i32 %4529 to i64
  store i64 %4530, i64* %RSI.i3042, align 8
  %4531 = add i64 %4522, 26170
  %4532 = add i64 %4522, 18
  %4533 = load i64, i64* %6, align 8
  %4534 = add i64 %4533, -8
  %4535 = inttoptr i64 %4534 to i64*
  store i64 %4532, i64* %4535, align 8
  store i64 %4534, i64* %6, align 8
  store i64 %4531, i64* %3, align 8
  %call2_402063 = tail call %struct.Memory* @sub_408690._Z14test_variable4Ij33custom_multiply_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4531, %struct.Memory* %call2_402039)
  %4536 = load i64, i64* %RBP.i, align 8
  %4537 = add i64 %4536, -84
  %4538 = load i64, i64* %3, align 8
  %4539 = add i64 %4538, 3
  store i64 %4539, i64* %3, align 8
  %4540 = inttoptr i64 %4537 to i32*
  %4541 = load i32, i32* %4540, align 4
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RDX.i4028, align 8
  %4543 = add i64 %4536, -88
  %4544 = add i64 %4538, 6
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4543 to i32*
  %4546 = load i32, i32* %4545, align 4
  %4547 = zext i32 %4546 to i64
  store i64 %4547, i64* %RCX.i4032, align 8
  %4548 = add i64 %4536, -92
  %4549 = add i64 %4538, 10
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i32*
  %4551 = load i32, i32* %4550, align 4
  %4552 = zext i32 %4551 to i64
  store i64 %4552, i64* %242, align 8
  %4553 = add i64 %4536, -96
  %4554 = add i64 %4538, 14
  store i64 %4554, i64* %3, align 8
  %4555 = inttoptr i64 %4553 to i32*
  %4556 = load i32, i32* %4555, align 4
  %4557 = zext i32 %4556 to i64
  store i64 %4557, i64* %473, align 8
  %4558 = load i64, i64* %6, align 8
  store i64 %4558, i64* %RDI.i4036.pre-phi, align 8
  %4559 = add i64 %4538, 24
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to i64*
  store i64 4277457, i64* %4560, align 8
  %4561 = load i64, i64* %RBP.i, align 8
  %4562 = add i64 %4561, -328
  %4563 = load i64, i64* %3, align 8
  %4564 = add i64 %4563, 7
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4562 to i64*
  %4566 = load i64, i64* %4565, align 8
  store i64 %4566, i64* %RDI.i4036.pre-phi, align 8
  %4567 = add i64 %4561, -248
  %4568 = add i64 %4563, 13
  store i64 %4568, i64* %3, align 8
  %4569 = inttoptr i64 %4567 to i32*
  %4570 = load i32, i32* %4569, align 4
  %4571 = zext i32 %4570 to i64
  store i64 %4571, i64* %RSI.i3042, align 8
  %4572 = add i64 %4563, 26336
  %4573 = add i64 %4563, 18
  %4574 = load i64, i64* %6, align 8
  %4575 = add i64 %4574, -8
  %4576 = inttoptr i64 %4575 to i64*
  store i64 %4573, i64* %4576, align 8
  store i64 %4575, i64* %6, align 8
  store i64 %4572, i64* %3, align 8
  %call2_40208d = tail call %struct.Memory* @sub_408760._Z14test_variable4Ij34custom_multiply_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4572, %struct.Memory* %call2_402063)
  %4577 = load i64, i64* %RBP.i, align 8
  %4578 = add i64 %4577, -84
  %4579 = load i64, i64* %3, align 8
  %4580 = add i64 %4579, 3
  store i64 %4580, i64* %3, align 8
  %4581 = inttoptr i64 %4578 to i32*
  %4582 = load i32, i32* %4581, align 4
  %4583 = zext i32 %4582 to i64
  store i64 %4583, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4144f8_type* @G__0x4144f8 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4144f8_type* @G__0x4144f8 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4584 = add i64 %4577, -328
  %4585 = add i64 %4579, 17
  store i64 %4585, i64* %3, align 8
  %4586 = inttoptr i64 %4584 to i64*
  %4587 = load i64, i64* %4586, align 8
  store i64 %4587, i64* %RDI.i4036.pre-phi, align 8
  %4588 = add i64 %4577, -248
  %4589 = add i64 %4579, 23
  store i64 %4589, i64* %3, align 8
  %4590 = inttoptr i64 %4588 to i32*
  %4591 = load i32, i32* %4590, align 4
  %4592 = zext i32 %4591 to i64
  store i64 %4592, i64* %RSI.i3042, align 8
  %4593 = add i64 %4579, 26526
  %4594 = add i64 %4579, 28
  %4595 = load i64, i64* %6, align 8
  %4596 = add i64 %4595, -8
  %4597 = inttoptr i64 %4596 to i64*
  store i64 %4594, i64* %4597, align 8
  store i64 %4596, i64* %6, align 8
  store i64 %4593, i64* %3, align 8
  %call2_4020a9 = tail call %struct.Memory* @sub_408830._Z14test_variable1Ij22custom_divide_variableIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4593, %struct.Memory* %call2_40208d)
  %4598 = load i64, i64* %RBP.i, align 8
  %4599 = add i64 %4598, -84
  %4600 = load i64, i64* %3, align 8
  %4601 = add i64 %4600, 3
  store i64 %4601, i64* %3, align 8
  %4602 = inttoptr i64 %4599 to i32*
  %4603 = load i32, i32* %4602, align 4
  %4604 = zext i32 %4603 to i64
  store i64 %4604, i64* %RDX.i4028, align 8
  %4605 = add i64 %4598, -88
  %4606 = add i64 %4600, 6
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i32*
  %4608 = load i32, i32* %4607, align 4
  %4609 = zext i32 %4608 to i64
  store i64 %4609, i64* %RCX.i4032, align 8
  %4610 = add i64 %4598, -92
  %4611 = add i64 %4600, 10
  store i64 %4611, i64* %3, align 8
  %4612 = inttoptr i64 %4610 to i32*
  %4613 = load i32, i32* %4612, align 4
  %4614 = zext i32 %4613 to i64
  store i64 %4614, i64* %242, align 8
  %4615 = add i64 %4598, -96
  %4616 = add i64 %4600, 14
  store i64 %4616, i64* %3, align 8
  %4617 = inttoptr i64 %4615 to i32*
  %4618 = load i32, i32* %4617, align 4
  %4619 = zext i32 %4618 to i64
  store i64 %4619, i64* %473, align 8
  %4620 = load i64, i64* %6, align 8
  store i64 %4620, i64* %RDI.i4036.pre-phi, align 8
  %4621 = add i64 %4600, 24
  store i64 %4621, i64* %3, align 8
  %4622 = inttoptr i64 %4620 to i64*
  store i64 4277521, i64* %4622, align 8
  %4623 = load i64, i64* %RBP.i, align 8
  %4624 = add i64 %4623, -328
  %4625 = load i64, i64* %3, align 8
  %4626 = add i64 %4625, 7
  store i64 %4626, i64* %3, align 8
  %4627 = inttoptr i64 %4624 to i64*
  %4628 = load i64, i64* %4627, align 8
  store i64 %4628, i64* %RDI.i4036.pre-phi, align 8
  %4629 = add i64 %4623, -248
  %4630 = add i64 %4625, 13
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4629 to i32*
  %4632 = load i32, i32* %4631, align 4
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RSI.i3042, align 8
  %4634 = add i64 %4625, 26634
  %4635 = add i64 %4625, 18
  %4636 = load i64, i64* %6, align 8
  %4637 = add i64 %4636, -8
  %4638 = inttoptr i64 %4637 to i64*
  store i64 %4635, i64* %4638, align 8
  store i64 %4637, i64* %6, align 8
  store i64 %4634, i64* %3, align 8
  %call2_4020d3 = tail call %struct.Memory* @sub_4088d0._Z14test_variable4Ij31custom_divide_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4634, %struct.Memory* %call2_4020a9)
  %4639 = load i64, i64* %RBP.i, align 8
  %4640 = add i64 %4639, -84
  %4641 = load i64, i64* %3, align 8
  %4642 = add i64 %4641, 3
  store i64 %4642, i64* %3, align 8
  %4643 = inttoptr i64 %4640 to i32*
  %4644 = load i32, i32* %4643, align 4
  %4645 = zext i32 %4644 to i64
  store i64 %4645, i64* %RDX.i4028, align 8
  %4646 = add i64 %4639, -88
  %4647 = add i64 %4641, 6
  store i64 %4647, i64* %3, align 8
  %4648 = inttoptr i64 %4646 to i32*
  %4649 = load i32, i32* %4648, align 4
  %4650 = zext i32 %4649 to i64
  store i64 %4650, i64* %RCX.i4032, align 8
  %4651 = add i64 %4639, -92
  %4652 = add i64 %4641, 10
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4651 to i32*
  %4654 = load i32, i32* %4653, align 4
  %4655 = zext i32 %4654 to i64
  store i64 %4655, i64* %242, align 8
  %4656 = add i64 %4639, -96
  %4657 = add i64 %4641, 14
  store i64 %4657, i64* %3, align 8
  %4658 = inttoptr i64 %4656 to i32*
  %4659 = load i32, i32* %4658, align 4
  %4660 = zext i32 %4659 to i64
  store i64 %4660, i64* %473, align 8
  %4661 = load i64, i64* %6, align 8
  store i64 %4661, i64* %RDI.i4036.pre-phi, align 8
  %4662 = add i64 %4641, 24
  store i64 %4662, i64* %3, align 8
  %4663 = inttoptr i64 %4661 to i64*
  store i64 4277556, i64* %4663, align 8
  %4664 = load i64, i64* %RBP.i, align 8
  %4665 = add i64 %4664, -328
  %4666 = load i64, i64* %3, align 8
  %4667 = add i64 %4666, 7
  store i64 %4667, i64* %3, align 8
  %4668 = inttoptr i64 %4665 to i64*
  %4669 = load i64, i64* %4668, align 8
  store i64 %4669, i64* %RDI.i4036.pre-phi, align 8
  %4670 = add i64 %4664, -248
  %4671 = add i64 %4666, 13
  store i64 %4671, i64* %3, align 8
  %4672 = inttoptr i64 %4670 to i32*
  %4673 = load i32, i32* %4672, align 4
  %4674 = zext i32 %4673 to i64
  store i64 %4674, i64* %RSI.i3042, align 8
  %4675 = add i64 %4666, 26800
  %4676 = add i64 %4666, 18
  %4677 = load i64, i64* %6, align 8
  %4678 = add i64 %4677, -8
  %4679 = inttoptr i64 %4678 to i64*
  store i64 %4676, i64* %4679, align 8
  store i64 %4678, i64* %6, align 8
  store i64 %4675, i64* %3, align 8
  %call2_4020fd = tail call %struct.Memory* @sub_4089a0._Z14test_variable4Ij32custom_divide_multiple_variable2IjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4675, %struct.Memory* %call2_4020d3)
  %4680 = load i64, i64* %RBP.i, align 8
  %4681 = add i64 %4680, -84
  %4682 = load i64, i64* %3, align 8
  %4683 = add i64 %4682, 3
  store i64 %4683, i64* %3, align 8
  %4684 = inttoptr i64 %4681 to i32*
  %4685 = load i32, i32* %4684, align 4
  %4686 = zext i32 %4685 to i64
  store i64 %4686, i64* %RDX.i4028, align 8
  %4687 = add i64 %4680, -88
  %4688 = add i64 %4682, 6
  store i64 %4688, i64* %3, align 8
  %4689 = inttoptr i64 %4687 to i32*
  %4690 = load i32, i32* %4689, align 4
  %4691 = zext i32 %4690 to i64
  store i64 %4691, i64* %RCX.i4032, align 8
  %4692 = add i64 %4680, -92
  %4693 = add i64 %4682, 10
  store i64 %4693, i64* %3, align 8
  %4694 = inttoptr i64 %4692 to i32*
  %4695 = load i32, i32* %4694, align 4
  %4696 = zext i32 %4695 to i64
  store i64 %4696, i64* %242, align 8
  %4697 = add i64 %4680, -96
  %4698 = add i64 %4682, 14
  store i64 %4698, i64* %3, align 8
  %4699 = inttoptr i64 %4697 to i32*
  %4700 = load i32, i32* %4699, align 4
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %473, align 8
  %4702 = load i64, i64* %6, align 8
  store i64 %4702, i64* %RDI.i4036.pre-phi, align 8
  %4703 = add i64 %4682, 24
  store i64 %4703, i64* %3, align 8
  %4704 = inttoptr i64 %4702 to i64*
  store i64 4277592, i64* %4704, align 8
  %4705 = load i64, i64* %RBP.i, align 8
  %4706 = add i64 %4705, -328
  %4707 = load i64, i64* %3, align 8
  %4708 = add i64 %4707, 7
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4706 to i64*
  %4710 = load i64, i64* %4709, align 8
  store i64 %4710, i64* %RDI.i4036.pre-phi, align 8
  %4711 = add i64 %4705, -248
  %4712 = add i64 %4707, 13
  store i64 %4712, i64* %3, align 8
  %4713 = inttoptr i64 %4711 to i32*
  %4714 = load i32, i32* %4713, align 4
  %4715 = zext i32 %4714 to i64
  store i64 %4715, i64* %RSI.i3042, align 8
  %4716 = add i64 %4707, 26966
  %4717 = add i64 %4707, 18
  %4718 = load i64, i64* %6, align 8
  %4719 = add i64 %4718, -8
  %4720 = inttoptr i64 %4719 to i64*
  store i64 %4717, i64* %4720, align 8
  store i64 %4719, i64* %6, align 8
  store i64 %4716, i64* %3, align 8
  %call2_402127 = tail call %struct.Memory* @sub_408a70._Z14test_variable4Ij30custom_mixed_multiple_variableIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4716, %struct.Memory* %call2_4020fd)
  %4721 = load i64, i64* %RBP.i, align 8
  %4722 = add i64 %4721, -84
  %4723 = load i64, i64* %3, align 8
  %4724 = add i64 %4723, 3
  store i64 %4724, i64* %3, align 8
  %4725 = inttoptr i64 %4722 to i32*
  %4726 = load i32, i32* %4725, align 4
  %4727 = zext i32 %4726 to i64
  store i64 %4727, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414579_type* @G__0x414579 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414579_type* @G__0x414579 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4728 = add i64 %4721, -328
  %4729 = add i64 %4723, 17
  store i64 %4729, i64* %3, align 8
  %4730 = inttoptr i64 %4728 to i64*
  %4731 = load i64, i64* %4730, align 8
  store i64 %4731, i64* %RDI.i4036.pre-phi, align 8
  %4732 = add i64 %4721, -248
  %4733 = add i64 %4723, 23
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = zext i32 %4735 to i64
  store i64 %4736, i64* %RSI.i3042, align 8
  %4737 = add i64 %4723, 27156
  %4738 = add i64 %4723, 28
  %4739 = load i64, i64* %6, align 8
  %4740 = add i64 %4739, -8
  %4741 = inttoptr i64 %4740 to i64*
  store i64 %4738, i64* %4741, align 8
  store i64 %4740, i64* %6, align 8
  store i64 %4737, i64* %3, align 8
  %call2_402143 = tail call %struct.Memory* @sub_408b40._Z14test_variable1Ij19custom_variable_andIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4737, %struct.Memory* %call2_402127)
  %4742 = load i64, i64* %RBP.i, align 8
  %4743 = add i64 %4742, -84
  %4744 = load i64, i64* %3, align 8
  %4745 = add i64 %4744, 3
  store i64 %4745, i64* %3, align 8
  %4746 = inttoptr i64 %4743 to i32*
  %4747 = load i32, i32* %4746, align 4
  %4748 = zext i32 %4747 to i64
  store i64 %4748, i64* %RDX.i4028, align 8
  %4749 = add i64 %4742, -88
  %4750 = add i64 %4744, 6
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4749 to i32*
  %4752 = load i32, i32* %4751, align 4
  %4753 = zext i32 %4752 to i64
  store i64 %4753, i64* %RCX.i4032, align 8
  %4754 = add i64 %4742, -92
  %4755 = add i64 %4744, 10
  store i64 %4755, i64* %3, align 8
  %4756 = inttoptr i64 %4754 to i32*
  %4757 = load i32, i32* %4756, align 4
  %4758 = zext i32 %4757 to i64
  store i64 %4758, i64* %242, align 8
  %4759 = add i64 %4742, -96
  %4760 = add i64 %4744, 14
  store i64 %4760, i64* %3, align 8
  %4761 = inttoptr i64 %4759 to i32*
  %4762 = load i32, i32* %4761, align 4
  %4763 = zext i32 %4762 to i64
  store i64 %4763, i64* %473, align 8
  %4764 = load i64, i64* %6, align 8
  store i64 %4764, i64* %RDI.i4036.pre-phi, align 8
  %4765 = add i64 %4744, 24
  store i64 %4765, i64* %3, align 8
  %4766 = inttoptr i64 %4764 to i64*
  store i64 4277647, i64* %4766, align 8
  %4767 = load i64, i64* %RBP.i, align 8
  %4768 = add i64 %4767, -328
  %4769 = load i64, i64* %3, align 8
  %4770 = add i64 %4769, 7
  store i64 %4770, i64* %3, align 8
  %4771 = inttoptr i64 %4768 to i64*
  %4772 = load i64, i64* %4771, align 8
  store i64 %4772, i64* %RDI.i4036.pre-phi, align 8
  %4773 = add i64 %4767, -248
  %4774 = add i64 %4769, 13
  store i64 %4774, i64* %3, align 8
  %4775 = inttoptr i64 %4773 to i32*
  %4776 = load i32, i32* %4775, align 4
  %4777 = zext i32 %4776 to i64
  store i64 %4777, i64* %RSI.i3042, align 8
  %4778 = add i64 %4769, 27264
  %4779 = add i64 %4769, 18
  %4780 = load i64, i64* %6, align 8
  %4781 = add i64 %4780, -8
  %4782 = inttoptr i64 %4781 to i64*
  store i64 %4779, i64* %4782, align 8
  store i64 %4781, i64* %6, align 8
  store i64 %4778, i64* %3, align 8
  %call2_40216d = tail call %struct.Memory* @sub_408be0._Z14test_variable4Ij28custom_multiple_variable_andIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4778, %struct.Memory* %call2_402143)
  %4783 = load i64, i64* %RBP.i, align 8
  %4784 = add i64 %4783, -84
  %4785 = load i64, i64* %3, align 8
  %4786 = add i64 %4785, 3
  store i64 %4786, i64* %3, align 8
  %4787 = inttoptr i64 %4784 to i32*
  %4788 = load i32, i32* %4787, align 4
  %4789 = zext i32 %4788 to i64
  store i64 %4789, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145ae_type* @G__0x4145ae to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145ae_type* @G__0x4145ae to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4790 = add i64 %4783, -328
  %4791 = add i64 %4785, 17
  store i64 %4791, i64* %3, align 8
  %4792 = inttoptr i64 %4790 to i64*
  %4793 = load i64, i64* %4792, align 8
  store i64 %4793, i64* %RDI.i4036.pre-phi, align 8
  %4794 = add i64 %4783, -248
  %4795 = add i64 %4785, 23
  store i64 %4795, i64* %3, align 8
  %4796 = inttoptr i64 %4794 to i32*
  %4797 = load i32, i32* %4796, align 4
  %4798 = zext i32 %4797 to i64
  store i64 %4798, i64* %RSI.i3042, align 8
  %4799 = add i64 %4785, 27454
  %4800 = add i64 %4785, 28
  %4801 = load i64, i64* %6, align 8
  %4802 = add i64 %4801, -8
  %4803 = inttoptr i64 %4802 to i64*
  store i64 %4800, i64* %4803, align 8
  store i64 %4802, i64* %6, align 8
  store i64 %4799, i64* %3, align 8
  %call2_402189 = tail call %struct.Memory* @sub_408cb0._Z14test_variable1Ij18custom_variable_orIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4799, %struct.Memory* %call2_40216d)
  %4804 = load i64, i64* %RBP.i, align 8
  %4805 = add i64 %4804, -84
  %4806 = load i64, i64* %3, align 8
  %4807 = add i64 %4806, 3
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4805 to i32*
  %4809 = load i32, i32* %4808, align 4
  %4810 = zext i32 %4809 to i64
  store i64 %4810, i64* %RDX.i4028, align 8
  %4811 = add i64 %4804, -88
  %4812 = add i64 %4806, 6
  store i64 %4812, i64* %3, align 8
  %4813 = inttoptr i64 %4811 to i32*
  %4814 = load i32, i32* %4813, align 4
  %4815 = zext i32 %4814 to i64
  store i64 %4815, i64* %RCX.i4032, align 8
  %4816 = add i64 %4804, -92
  %4817 = add i64 %4806, 10
  store i64 %4817, i64* %3, align 8
  %4818 = inttoptr i64 %4816 to i32*
  %4819 = load i32, i32* %4818, align 4
  %4820 = zext i32 %4819 to i64
  store i64 %4820, i64* %242, align 8
  %4821 = add i64 %4804, -96
  %4822 = add i64 %4806, 14
  store i64 %4822, i64* %3, align 8
  %4823 = inttoptr i64 %4821 to i32*
  %4824 = load i32, i32* %4823, align 4
  %4825 = zext i32 %4824 to i64
  store i64 %4825, i64* %473, align 8
  %4826 = load i64, i64* %6, align 8
  store i64 %4826, i64* %RDI.i4036.pre-phi, align 8
  %4827 = add i64 %4806, 24
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4826 to i64*
  store i64 4277699, i64* %4828, align 8
  %4829 = load i64, i64* %RBP.i, align 8
  %4830 = add i64 %4829, -328
  %4831 = load i64, i64* %3, align 8
  %4832 = add i64 %4831, 7
  store i64 %4832, i64* %3, align 8
  %4833 = inttoptr i64 %4830 to i64*
  %4834 = load i64, i64* %4833, align 8
  store i64 %4834, i64* %RDI.i4036.pre-phi, align 8
  %4835 = add i64 %4829, -248
  %4836 = add i64 %4831, 13
  store i64 %4836, i64* %3, align 8
  %4837 = inttoptr i64 %4835 to i32*
  %4838 = load i32, i32* %4837, align 4
  %4839 = zext i32 %4838 to i64
  store i64 %4839, i64* %RSI.i3042, align 8
  %4840 = add i64 %4831, 27562
  %4841 = add i64 %4831, 18
  %4842 = load i64, i64* %6, align 8
  %4843 = add i64 %4842, -8
  %4844 = inttoptr i64 %4843 to i64*
  store i64 %4841, i64* %4844, align 8
  store i64 %4843, i64* %6, align 8
  store i64 %4840, i64* %3, align 8
  %call2_4021b3 = tail call %struct.Memory* @sub_408d50._Z14test_variable4Ij27custom_multiple_variable_orIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4840, %struct.Memory* %call2_402189)
  %4845 = load i64, i64* %RBP.i, align 8
  %4846 = add i64 %4845, -84
  %4847 = load i64, i64* %3, align 8
  %4848 = add i64 %4847, 3
  store i64 %4848, i64* %3, align 8
  %4849 = inttoptr i64 %4846 to i32*
  %4850 = load i32, i32* %4849, align 4
  %4851 = zext i32 %4850 to i64
  store i64 %4851, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4145e1_type* @G__0x4145e1 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4145e1_type* @G__0x4145e1 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %4852 = add i64 %4845, -328
  %4853 = add i64 %4847, 17
  store i64 %4853, i64* %3, align 8
  %4854 = inttoptr i64 %4852 to i64*
  %4855 = load i64, i64* %4854, align 8
  store i64 %4855, i64* %RDI.i4036.pre-phi, align 8
  %4856 = add i64 %4845, -248
  %4857 = add i64 %4847, 23
  store i64 %4857, i64* %3, align 8
  %4858 = inttoptr i64 %4856 to i32*
  %4859 = load i32, i32* %4858, align 4
  %4860 = zext i32 %4859 to i64
  store i64 %4860, i64* %RSI.i3042, align 8
  %4861 = add i64 %4847, 27752
  %4862 = add i64 %4847, 28
  %4863 = load i64, i64* %6, align 8
  %4864 = add i64 %4863, -8
  %4865 = inttoptr i64 %4864 to i64*
  store i64 %4862, i64* %4865, align 8
  store i64 %4864, i64* %6, align 8
  store i64 %4861, i64* %3, align 8
  %call2_4021cf = tail call %struct.Memory* @sub_408e20._Z14test_variable1Ij19custom_variable_xorIjEEvPT_iS2_PKc(%struct.State* %0, i64 %4861, %struct.Memory* %call2_4021b3)
  %4866 = load i64, i64* %RBP.i, align 8
  %4867 = add i64 %4866, -84
  %4868 = load i64, i64* %3, align 8
  %4869 = add i64 %4868, 3
  store i64 %4869, i64* %3, align 8
  %4870 = inttoptr i64 %4867 to i32*
  %4871 = load i32, i32* %4870, align 4
  %4872 = zext i32 %4871 to i64
  store i64 %4872, i64* %RDX.i4028, align 8
  %4873 = add i64 %4866, -88
  %4874 = add i64 %4868, 6
  store i64 %4874, i64* %3, align 8
  %4875 = inttoptr i64 %4873 to i32*
  %4876 = load i32, i32* %4875, align 4
  %4877 = zext i32 %4876 to i64
  store i64 %4877, i64* %RCX.i4032, align 8
  %4878 = add i64 %4866, -92
  %4879 = add i64 %4868, 10
  store i64 %4879, i64* %3, align 8
  %4880 = inttoptr i64 %4878 to i32*
  %4881 = load i32, i32* %4880, align 4
  %4882 = zext i32 %4881 to i64
  store i64 %4882, i64* %242, align 8
  %4883 = add i64 %4866, -96
  %4884 = add i64 %4868, 14
  store i64 %4884, i64* %3, align 8
  %4885 = inttoptr i64 %4883 to i32*
  %4886 = load i32, i32* %4885, align 4
  %4887 = zext i32 %4886 to i64
  store i64 %4887, i64* %473, align 8
  %4888 = load i64, i64* %6, align 8
  store i64 %4888, i64* %RDI.i4036.pre-phi, align 8
  %4889 = add i64 %4868, 24
  store i64 %4889, i64* %3, align 8
  %4890 = inttoptr i64 %4888 to i64*
  store i64 4277751, i64* %4890, align 8
  %4891 = load i64, i64* %RBP.i, align 8
  %4892 = add i64 %4891, -328
  %4893 = load i64, i64* %3, align 8
  %4894 = add i64 %4893, 7
  store i64 %4894, i64* %3, align 8
  %4895 = inttoptr i64 %4892 to i64*
  %4896 = load i64, i64* %4895, align 8
  store i64 %4896, i64* %RDI.i4036.pre-phi, align 8
  %4897 = add i64 %4891, -248
  %4898 = add i64 %4893, 13
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4897 to i32*
  %4900 = load i32, i32* %4899, align 4
  %4901 = zext i32 %4900 to i64
  store i64 %4901, i64* %RSI.i3042, align 8
  %4902 = add i64 %4893, 27860
  %4903 = add i64 %4893, 18
  %4904 = load i64, i64* %6, align 8
  %4905 = add i64 %4904, -8
  %4906 = inttoptr i64 %4905 to i64*
  store i64 %4903, i64* %4906, align 8
  store i64 %4905, i64* %6, align 8
  store i64 %4902, i64* %3, align 8
  %call2_4021f9 = tail call %struct.Memory* @sub_408ec0._Z14test_variable4Ij28custom_multiple_variable_xorIjEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %4902, %struct.Memory* %call2_4021cf)
  %4907 = load i64, i64* %3, align 8
  %4908 = load double, double* bitcast (%G_0x217e82__rip__4203014__type* @G_0x217e82__rip__4203014_ to double*), align 8
  store double %4908, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %4909 = tail call double @llvm.trunc.f64(double %4908)
  %4910 = tail call double @llvm.fabs.f64(double %4909)
  %4911 = fcmp ogt double %4910, 0x43E0000000000000
  %4912 = fptosi double %4909 to i64
  %4913 = select i1 %4911, i64 -9223372036854775808, i64 %4912
  store i64 %4913, i64* %RDX.i4028, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295), i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x650bc0_type* @G__0x650bc0 to i64), i64 4294967295) to i32) to i64), i64* %RSI.i3042, align 8
  %4914 = load i64, i64* %RBP.i, align 8
  %4915 = add i64 %4914, -344
  %4916 = add i64 %4907, 34
  store i64 %4916, i64* %3, align 8
  %4917 = inttoptr i64 %4915 to i64*
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295) to i32) to i64), i64* %4917, align 8
  %4918 = load i64, i64* %3, align 8
  %4919 = add i64 %4918, 28016
  %4920 = add i64 %4918, 5
  %4921 = load i64, i64* %6, align 8
  %4922 = add i64 %4921, -8
  %4923 = inttoptr i64 %4922 to i64*
  store i64 %4920, i64* %4923, align 8
  store i64 %4922, i64* %6, align 8
  store i64 %4919, i64* %3, align 8
  %call2_402220 = tail call %struct.Memory* @sub_408f90._Z4fillIPllEvT_S1_T0_(%struct.State* %0, i64 %4919, %struct.Memory* %call2_4021f9)
  %4924 = load i64, i64* %RBP.i, align 8
  %4925 = add i64 %4924, -40
  %4926 = load i64, i64* %3, align 8
  %4927 = add i64 %4926, 6
  store i64 %4927, i64* %3, align 8
  %4928 = inttoptr i64 %4925 to double*
  %4929 = load double, double* %4928, align 8
  %4930 = tail call double @llvm.trunc.f64(double %4929)
  %4931 = tail call double @llvm.fabs.f64(double %4930)
  %4932 = fcmp ogt double %4931, 0x43E0000000000000
  %4933 = fptosi double %4930 to i64
  %4934 = select i1 %4932, i64 -9223372036854775808, i64 %4933
  store i64 %4934, i64* %RDX.i4028, align 8
  %4935 = add i64 %4924, -104
  %4936 = add i64 %4926, 10
  store i64 %4936, i64* %3, align 8
  %4937 = inttoptr i64 %4935 to i64*
  store i64 %4934, i64* %4937, align 8
  %4938 = load i64, i64* %RBP.i, align 8
  %4939 = add i64 %4938, -104
  %4940 = load i64, i64* %3, align 8
  %4941 = add i64 %4940, 4
  store i64 %4941, i64* %3, align 8
  %4942 = inttoptr i64 %4939 to i64*
  %4943 = load i64, i64* %4942, align 8
  %4944 = shl i64 %4943, 1
  store i64 %4944, i64* %RDX.i4028, align 8
  %4945 = icmp ult i64 %4944, %4943
  %4946 = zext i1 %4945 to i8
  store i8 %4946, i8* %26, align 1
  %4947 = trunc i64 %4944 to i32
  %4948 = and i32 %4947, 254
  %4949 = tail call i32 @llvm.ctpop.i32(i32 %4948)
  %4950 = trunc i32 %4949 to i8
  %4951 = and i8 %4950, 1
  %4952 = xor i8 %4951, 1
  store i8 %4952, i8* %33, align 1
  %4953 = lshr i64 %4943, 3
  %4954 = trunc i64 %4953 to i8
  %4955 = and i8 %4954, 1
  store i8 %4955, i8* %39, align 1
  %4956 = icmp eq i64 %4944, 0
  %4957 = zext i1 %4956 to i8
  store i8 %4957, i8* %42, align 1
  %4958 = lshr i64 %4943, 62
  %4959 = and i64 %4958, 1
  %4960 = trunc i64 %4959 to i8
  store i8 %4960, i8* %45, align 1
  %4961 = lshr i64 %4943, 63
  %4962 = xor i64 %4959, %4961
  %4963 = trunc i64 %4962 to i8
  store i8 %4963, i8* %51, align 1
  %4964 = add i64 %4938, -112
  %4965 = add i64 %4940, 11
  store i64 %4965, i64* %3, align 8
  %4966 = inttoptr i64 %4964 to i64*
  store i64 %4944, i64* %4966, align 8
  %4967 = load i64, i64* %RBP.i, align 8
  %4968 = add i64 %4967, -104
  %4969 = load i64, i64* %3, align 8
  %4970 = add i64 %4969, 4
  store i64 %4970, i64* %3, align 8
  %4971 = inttoptr i64 %4968 to i64*
  %4972 = load i64, i64* %4971, align 8
  %4973 = add i64 %4972, 2
  store i64 %4973, i64* %RDX.i4028, align 8
  %4974 = icmp ugt i64 %4972, -3
  %4975 = zext i1 %4974 to i8
  store i8 %4975, i8* %26, align 1
  %4976 = trunc i64 %4973 to i32
  %4977 = and i32 %4976, 255
  %4978 = tail call i32 @llvm.ctpop.i32(i32 %4977)
  %4979 = trunc i32 %4978 to i8
  %4980 = and i8 %4979, 1
  %4981 = xor i8 %4980, 1
  store i8 %4981, i8* %33, align 1
  %4982 = xor i64 %4972, %4973
  %4983 = lshr i64 %4982, 4
  %4984 = trunc i64 %4983 to i8
  %4985 = and i8 %4984, 1
  store i8 %4985, i8* %39, align 1
  %4986 = icmp eq i64 %4973, 0
  %4987 = zext i1 %4986 to i8
  store i8 %4987, i8* %42, align 1
  %4988 = lshr i64 %4973, 63
  %4989 = trunc i64 %4988 to i8
  store i8 %4989, i8* %45, align 1
  %4990 = lshr i64 %4972, 63
  %4991 = xor i64 %4988, %4990
  %4992 = add nuw nsw i64 %4991, %4988
  %4993 = icmp eq i64 %4992, 2
  %4994 = zext i1 %4993 to i8
  store i8 %4994, i8* %51, align 1
  %4995 = add i64 %4967, -120
  %4996 = add i64 %4969, 12
  store i64 %4996, i64* %3, align 8
  %4997 = inttoptr i64 %4995 to i64*
  store i64 %4973, i64* %4997, align 8
  %4998 = load i64, i64* %RBP.i, align 8
  %4999 = add i64 %4998, -104
  %5000 = load i64, i64* %3, align 8
  %5001 = add i64 %5000, 4
  store i64 %5001, i64* %3, align 8
  %5002 = inttoptr i64 %4999 to i64*
  %5003 = load i64, i64* %5002, align 8
  store i64 %5003, i64* %RDX.i4028, align 8
  %5004 = add i64 %4998, -112
  %5005 = add i64 %5000, 8
  store i64 %5005, i64* %3, align 8
  %5006 = inttoptr i64 %5004 to i64*
  %5007 = load i64, i64* %5006, align 8
  store i64 %5007, i64* %RAX.i4030.pre-phi, align 8
  %5008 = add i64 %4998, -120
  %5009 = add i64 %5000, 12
  store i64 %5009, i64* %3, align 8
  %5010 = inttoptr i64 %5008 to i64*
  %5011 = load i64, i64* %5010, align 8
  store i64 %5011, i64* %RSI.i3042, align 8
  %5012 = add i64 %4998, -352
  %5013 = add i64 %5000, 19
  store i64 %5013, i64* %3, align 8
  %5014 = inttoptr i64 %5012 to i64*
  store i64 %5003, i64* %5014, align 8
  %5015 = load i64, i64* %3, align 8
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5017 = load i64, i64* %5016, align 8
  %5018 = ashr i64 %5017, 63
  store i64 %5018, i64* %370, align 8
  %5019 = load i64, i64* %RSI.i3042, align 8
  %5020 = add i64 %5015, 5
  store i64 %5020, i64* %3, align 8
  %5021 = sext i64 %5019 to i128
  %5022 = and i128 %5021, -18446744073709551616
  %5023 = zext i64 %5018 to i128
  %5024 = shl nuw i128 %5023, 64
  %5025 = zext i64 %5017 to i128
  %5026 = or i128 %5024, %5025
  %5027 = zext i64 %5019 to i128
  %5028 = or i128 %5022, %5027
  %5029 = sdiv i128 %5026, %5028
  %5030 = trunc i128 %5029 to i64
  %5031 = and i128 %5029, 18446744073709551615
  %5032 = sext i64 %5030 to i128
  %5033 = and i128 %5032, -18446744073709551616
  %5034 = or i128 %5033, %5031
  %5035 = icmp eq i128 %5029, %5034
  br i1 %5035, label %5038, label %5036

; <label>:5036:                                   ; preds = %routine_divl__r8d.exit
  %5037 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5020, %struct.Memory* %call2_402220)
  %.pre21 = load i64, i64* %3, align 8
  %.pre22 = load i64, i64* %RAX.i4030.pre-phi, align 8
  br label %routine_idivq__rsi.exit

; <label>:5038:                                   ; preds = %routine_divl__r8d.exit
  %5039 = srem i128 %5026, %5028
  %5040 = trunc i128 %5039 to i64
  store i64 %5030, i64* %5016, align 8
  store i64 %5040, i64* %370, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %5038, %5036
  %5041 = phi i64 [ %.pre22, %5036 ], [ %5030, %5038 ]
  %5042 = phi i64 [ %.pre21, %5036 ], [ %5020, %5038 ]
  %5043 = phi %struct.Memory* [ %5037, %5036 ], [ %call2_402220, %5038 ]
  %5044 = load i64, i64* %RBP.i, align 8
  %5045 = add i64 %5044, -352
  %5046 = add i64 %5042, 7
  store i64 %5046, i64* %3, align 8
  %5047 = inttoptr i64 %5045 to i64*
  %5048 = load i64, i64* %5047, align 8
  %5049 = add i64 %5041, %5048
  store i64 %5049, i64* %RDX.i4028, align 8
  %5050 = icmp ult i64 %5049, %5048
  %5051 = icmp ult i64 %5049, %5041
  %5052 = or i1 %5050, %5051
  %5053 = zext i1 %5052 to i8
  store i8 %5053, i8* %26, align 1
  %5054 = trunc i64 %5049 to i32
  %5055 = and i32 %5054, 255
  %5056 = tail call i32 @llvm.ctpop.i32(i32 %5055)
  %5057 = trunc i32 %5056 to i8
  %5058 = and i8 %5057, 1
  %5059 = xor i8 %5058, 1
  store i8 %5059, i8* %33, align 1
  %5060 = xor i64 %5041, %5048
  %5061 = xor i64 %5060, %5049
  %5062 = lshr i64 %5061, 4
  %5063 = trunc i64 %5062 to i8
  %5064 = and i8 %5063, 1
  store i8 %5064, i8* %39, align 1
  %5065 = icmp eq i64 %5049, 0
  %5066 = zext i1 %5065 to i8
  store i8 %5066, i8* %42, align 1
  %5067 = lshr i64 %5049, 63
  %5068 = trunc i64 %5067 to i8
  store i8 %5068, i8* %45, align 1
  %5069 = lshr i64 %5048, 63
  %5070 = lshr i64 %5041, 63
  %5071 = xor i64 %5067, %5069
  %5072 = xor i64 %5067, %5070
  %5073 = add nuw nsw i64 %5071, %5072
  %5074 = icmp eq i64 %5073, 2
  %5075 = zext i1 %5074 to i8
  store i8 %5075, i8* %51, align 1
  %5076 = add i64 %5044, -128
  %5077 = add i64 %5042, 14
  store i64 %5077, i64* %3, align 8
  %5078 = inttoptr i64 %5076 to i64*
  store i64 %5049, i64* %5078, align 8
  %5079 = load i64, i64* %RBP.i, align 8
  %5080 = add i64 %5079, -104
  %5081 = load i64, i64* %3, align 8
  %5082 = add i64 %5081, 4
  store i64 %5082, i64* %3, align 8
  %5083 = inttoptr i64 %5080 to i64*
  %5084 = load i64, i64* %5083, align 8
  store i64 %5084, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414617_type* @G__0x414617 to i64), i64 4294967295), i64* %RCX.i4032, align 8
  %5085 = add i64 %5079, -344
  %5086 = add i64 %5081, 16
  store i64 %5086, i64* %3, align 8
  %5087 = inttoptr i64 %5085 to i64*
  %5088 = load i64, i64* %5087, align 8
  store i64 %5088, i64* %RDI.i4036.pre-phi, align 8
  %5089 = add i64 %5079, -248
  %5090 = add i64 %5081, 22
  store i64 %5090, i64* %3, align 8
  %5091 = inttoptr i64 %5089 to i32*
  %5092 = load i32, i32* %5091, align 4
  %5093 = zext i32 %5092 to i64
  store i64 %5093, i64* %RSI.i3042, align 8
  %5094 = add i64 %5081, 28004
  %5095 = add i64 %5081, 27
  %5096 = load i64, i64* %6, align 8
  %5097 = add i64 %5096, -8
  %5098 = inttoptr i64 %5097 to i64*
  store i64 %5095, i64* %5098, align 8
  store i64 %5097, i64* %6, align 8
  store i64 %5094, i64* %3, align 8
  %call2_402282 = tail call %struct.Memory* @sub_408fd0._Z14test_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5094, %struct.Memory* %5043)
  %5099 = load i64, i64* %RBP.i, align 8
  %5100 = add i64 %5099, -104
  %5101 = load i64, i64* %3, align 8
  %5102 = add i64 %5101, 4
  store i64 %5102, i64* %3, align 8
  %5103 = inttoptr i64 %5100 to i64*
  %5104 = load i64, i64* %5103, align 8
  store i64 %5104, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41462d_type* @G__0x41462d to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41462d_type* @G__0x41462d to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5105 = add i64 %5099, -344
  %5106 = add i64 %5101, 18
  store i64 %5106, i64* %3, align 8
  %5107 = inttoptr i64 %5105 to i64*
  %5108 = load i64, i64* %5107, align 8
  store i64 %5108, i64* %RDI.i4036.pre-phi, align 8
  %5109 = add i64 %5099, -248
  %5110 = add i64 %5101, 24
  store i64 %5110, i64* %3, align 8
  %5111 = inttoptr i64 %5109 to i32*
  %5112 = load i32, i32* %5111, align 4
  %5113 = zext i32 %5112 to i64
  store i64 %5113, i64* %RSI.i3042, align 8
  %5114 = add i64 %5101, 28153
  %5115 = add i64 %5101, 29
  %5116 = load i64, i64* %6, align 8
  %5117 = add i64 %5116, -8
  %5118 = inttoptr i64 %5117 to i64*
  store i64 %5115, i64* %5118, align 8
  store i64 %5117, i64* %6, align 8
  store i64 %5114, i64* %3, align 8
  %call2_40229f = tail call %struct.Memory* @sub_409080._Z22test_hoisted_variable1Il19custom_add_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5114, %struct.Memory* %call2_402282)
  %5119 = load i64, i64* %RBP.i, align 8
  %5120 = add i64 %5119, -104
  %5121 = load i64, i64* %3, align 8
  %5122 = add i64 %5121, 4
  store i64 %5122, i64* %3, align 8
  %5123 = inttoptr i64 %5120 to i64*
  %5124 = load i64, i64* %5123, align 8
  store i64 %5124, i64* %RDX.i4028, align 8
  %5125 = add i64 %5119, -112
  %5126 = add i64 %5121, 8
  store i64 %5126, i64* %3, align 8
  %5127 = inttoptr i64 %5125 to i64*
  %5128 = load i64, i64* %5127, align 8
  store i64 %5128, i64* %RCX.i4032, align 8
  %5129 = add i64 %5119, -120
  %5130 = add i64 %5121, 12
  store i64 %5130, i64* %3, align 8
  %5131 = inttoptr i64 %5129 to i64*
  %5132 = load i64, i64* %5131, align 8
  store i64 %5132, i64* %242, align 8
  %5133 = add i64 %5119, -128
  %5134 = add i64 %5121, 16
  store i64 %5134, i64* %3, align 8
  %5135 = inttoptr i64 %5133 to i64*
  %5136 = load i64, i64* %5135, align 8
  store i64 %5136, i64* %473, align 8
  %5137 = load i64, i64* %6, align 8
  store i64 %5137, i64* %RAX.i4030.pre-phi, align 8
  %5138 = add i64 %5121, 26
  store i64 %5138, i64* %3, align 8
  %5139 = inttoptr i64 %5137 to i64*
  store i64 4277835, i64* %5139, align 8
  %5140 = load i64, i64* %RBP.i, align 8
  %5141 = add i64 %5140, -344
  %5142 = load i64, i64* %3, align 8
  %5143 = add i64 %5142, 7
  store i64 %5143, i64* %3, align 8
  %5144 = inttoptr i64 %5141 to i64*
  %5145 = load i64, i64* %5144, align 8
  store i64 %5145, i64* %RDI.i4036.pre-phi, align 8
  %5146 = add i64 %5140, -248
  %5147 = add i64 %5142, 13
  store i64 %5147, i64* %3, align 8
  %5148 = inttoptr i64 %5146 to i32*
  %5149 = load i32, i32* %5148, align 4
  %5150 = zext i32 %5149 to i64
  store i64 %5150, i64* %RSI.i3042, align 8
  %5151 = add i64 %5142, 28274
  %5152 = add i64 %5142, 18
  %5153 = load i64, i64* %6, align 8
  %5154 = add i64 %5153, -8
  %5155 = inttoptr i64 %5154 to i64*
  store i64 %5152, i64* %5155, align 8
  store i64 %5154, i64* %6, align 8
  store i64 %5151, i64* %3, align 8
  %call2_4022cb = tail call %struct.Memory* @sub_409130._Z14test_variable4Il28custom_add_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5151, %struct.Memory* %call2_40229f)
  %5156 = load i64, i64* %RBP.i, align 8
  %5157 = add i64 %5156, -104
  %5158 = load i64, i64* %3, align 8
  %5159 = add i64 %5158, 4
  store i64 %5159, i64* %3, align 8
  %5160 = inttoptr i64 %5157 to i64*
  %5161 = load i64, i64* %5160, align 8
  store i64 %5161, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x41466b_type* @G__0x41466b to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x41466b_type* @G__0x41466b to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5162 = add i64 %5156, -344
  %5163 = add i64 %5158, 18
  store i64 %5163, i64* %3, align 8
  %5164 = inttoptr i64 %5162 to i64*
  %5165 = load i64, i64* %5164, align 8
  store i64 %5165, i64* %RDI.i4036.pre-phi, align 8
  %5166 = add i64 %5156, -248
  %5167 = add i64 %5158, 24
  store i64 %5167, i64* %3, align 8
  %5168 = inttoptr i64 %5166 to i32*
  %5169 = load i32, i32* %5168, align 4
  %5170 = zext i32 %5169 to i64
  store i64 %5170, i64* %RSI.i3042, align 8
  %5171 = add i64 %5158, 28464
  %5172 = add i64 %5158, 29
  %5173 = load i64, i64* %6, align 8
  %5174 = add i64 %5173, -8
  %5175 = inttoptr i64 %5174 to i64*
  store i64 %5172, i64* %5175, align 8
  store i64 %5174, i64* %6, align 8
  store i64 %5171, i64* %3, align 8
  %call2_4022e8 = tail call %struct.Memory* @sub_409200._Z14test_variable1Il19custom_sub_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5171, %struct.Memory* %call2_4022cb)
  %5176 = load i64, i64* %RBP.i, align 8
  %5177 = add i64 %5176, -104
  %5178 = load i64, i64* %3, align 8
  %5179 = add i64 %5178, 4
  store i64 %5179, i64* %3, align 8
  %5180 = inttoptr i64 %5177 to i64*
  %5181 = load i64, i64* %5180, align 8
  store i64 %5181, i64* %RDX.i4028, align 8
  %5182 = add i64 %5176, -112
  %5183 = add i64 %5178, 8
  store i64 %5183, i64* %3, align 8
  %5184 = inttoptr i64 %5182 to i64*
  %5185 = load i64, i64* %5184, align 8
  store i64 %5185, i64* %RCX.i4032, align 8
  %5186 = add i64 %5176, -120
  %5187 = add i64 %5178, 12
  store i64 %5187, i64* %3, align 8
  %5188 = inttoptr i64 %5186 to i64*
  %5189 = load i64, i64* %5188, align 8
  store i64 %5189, i64* %242, align 8
  %5190 = add i64 %5176, -128
  %5191 = add i64 %5178, 16
  store i64 %5191, i64* %3, align 8
  %5192 = inttoptr i64 %5190 to i64*
  %5193 = load i64, i64* %5192, align 8
  store i64 %5193, i64* %473, align 8
  %5194 = load i64, i64* %6, align 8
  store i64 %5194, i64* %RAX.i4030.pre-phi, align 8
  %5195 = add i64 %5178, 26
  store i64 %5195, i64* %3, align 8
  %5196 = inttoptr i64 %5194 to i64*
  store i64 4277894, i64* %5196, align 8
  %5197 = load i64, i64* %RBP.i, align 8
  %5198 = add i64 %5197, -344
  %5199 = load i64, i64* %3, align 8
  %5200 = add i64 %5199, 7
  store i64 %5200, i64* %3, align 8
  %5201 = inttoptr i64 %5198 to i64*
  %5202 = load i64, i64* %5201, align 8
  store i64 %5202, i64* %RDI.i4036.pre-phi, align 8
  %5203 = add i64 %5197, -248
  %5204 = add i64 %5199, 13
  store i64 %5204, i64* %3, align 8
  %5205 = inttoptr i64 %5203 to i32*
  %5206 = load i32, i32* %5205, align 4
  %5207 = zext i32 %5206 to i64
  store i64 %5207, i64* %RSI.i3042, align 8
  %5208 = add i64 %5199, 28585
  %5209 = add i64 %5199, 18
  %5210 = load i64, i64* %6, align 8
  %5211 = add i64 %5210, -8
  %5212 = inttoptr i64 %5211 to i64*
  store i64 %5209, i64* %5212, align 8
  store i64 %5211, i64* %6, align 8
  store i64 %5208, i64* %3, align 8
  %call2_402314 = tail call %struct.Memory* @sub_4092b0._Z14test_variable4Il28custom_sub_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5208, %struct.Memory* %call2_4022e8)
  %5213 = load i64, i64* %RBP.i, align 8
  %5214 = add i64 %5213, -104
  %5215 = load i64, i64* %3, align 8
  %5216 = add i64 %5215, 4
  store i64 %5216, i64* %3, align 8
  %5217 = inttoptr i64 %5214 to i64*
  %5218 = load i64, i64* %5217, align 8
  store i64 %5218, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4146ab_type* @G__0x4146ab to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4146ab_type* @G__0x4146ab to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5219 = add i64 %5213, -344
  %5220 = add i64 %5215, 18
  store i64 %5220, i64* %3, align 8
  %5221 = inttoptr i64 %5219 to i64*
  %5222 = load i64, i64* %5221, align 8
  store i64 %5222, i64* %RDI.i4036.pre-phi, align 8
  %5223 = add i64 %5213, -248
  %5224 = add i64 %5215, 24
  store i64 %5224, i64* %3, align 8
  %5225 = inttoptr i64 %5223 to i32*
  %5226 = load i32, i32* %5225, align 4
  %5227 = zext i32 %5226 to i64
  store i64 %5227, i64* %RSI.i3042, align 8
  %5228 = add i64 %5215, 28775
  %5229 = add i64 %5215, 29
  %5230 = load i64, i64* %6, align 8
  %5231 = add i64 %5230, -8
  %5232 = inttoptr i64 %5231 to i64*
  store i64 %5229, i64* %5232, align 8
  store i64 %5231, i64* %6, align 8
  store i64 %5228, i64* %3, align 8
  %call2_402331 = tail call %struct.Memory* @sub_409380._Z14test_variable1Il24custom_multiply_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5228, %struct.Memory* %call2_402314)
  %5233 = load i64, i64* %RBP.i, align 8
  %5234 = add i64 %5233, -104
  %5235 = load i64, i64* %3, align 8
  %5236 = add i64 %5235, 4
  store i64 %5236, i64* %3, align 8
  %5237 = inttoptr i64 %5234 to i64*
  %5238 = load i64, i64* %5237, align 8
  store i64 %5238, i64* %RDX.i4028, align 8
  %5239 = add i64 %5233, -112
  %5240 = add i64 %5235, 8
  store i64 %5240, i64* %3, align 8
  %5241 = inttoptr i64 %5239 to i64*
  %5242 = load i64, i64* %5241, align 8
  store i64 %5242, i64* %RCX.i4032, align 8
  %5243 = add i64 %5233, -120
  %5244 = add i64 %5235, 12
  store i64 %5244, i64* %3, align 8
  %5245 = inttoptr i64 %5243 to i64*
  %5246 = load i64, i64* %5245, align 8
  store i64 %5246, i64* %242, align 8
  %5247 = add i64 %5233, -128
  %5248 = add i64 %5235, 16
  store i64 %5248, i64* %3, align 8
  %5249 = inttoptr i64 %5247 to i64*
  %5250 = load i64, i64* %5249, align 8
  store i64 %5250, i64* %473, align 8
  %5251 = load i64, i64* %6, align 8
  store i64 %5251, i64* %RAX.i4030.pre-phi, align 8
  %5252 = add i64 %5235, 26
  store i64 %5252, i64* %3, align 8
  %5253 = inttoptr i64 %5251 to i64*
  store i64 4277958, i64* %5253, align 8
  %5254 = load i64, i64* %RBP.i, align 8
  %5255 = add i64 %5254, -344
  %5256 = load i64, i64* %3, align 8
  %5257 = add i64 %5256, 7
  store i64 %5257, i64* %3, align 8
  %5258 = inttoptr i64 %5255 to i64*
  %5259 = load i64, i64* %5258, align 8
  store i64 %5259, i64* %RDI.i4036.pre-phi, align 8
  %5260 = add i64 %5254, -248
  %5261 = add i64 %5256, 13
  store i64 %5261, i64* %3, align 8
  %5262 = inttoptr i64 %5260 to i32*
  %5263 = load i32, i32* %5262, align 4
  %5264 = zext i32 %5263 to i64
  store i64 %5264, i64* %RSI.i3042, align 8
  %5265 = add i64 %5256, 28896
  %5266 = add i64 %5256, 18
  %5267 = load i64, i64* %6, align 8
  %5268 = add i64 %5267, -8
  %5269 = inttoptr i64 %5268 to i64*
  store i64 %5266, i64* %5269, align 8
  store i64 %5268, i64* %6, align 8
  store i64 %5265, i64* %3, align 8
  %call2_40235d = tail call %struct.Memory* @sub_409430._Z14test_variable4Il33custom_multiply_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5265, %struct.Memory* %call2_402331)
  %5270 = load i64, i64* %RBP.i, align 8
  %5271 = add i64 %5270, -104
  %5272 = load i64, i64* %3, align 8
  %5273 = add i64 %5272, 4
  store i64 %5273, i64* %3, align 8
  %5274 = inttoptr i64 %5271 to i64*
  %5275 = load i64, i64* %5274, align 8
  store i64 %5275, i64* %RDX.i4028, align 8
  %5276 = add i64 %5270, -112
  %5277 = add i64 %5272, 8
  store i64 %5277, i64* %3, align 8
  %5278 = inttoptr i64 %5276 to i64*
  %5279 = load i64, i64* %5278, align 8
  store i64 %5279, i64* %RCX.i4032, align 8
  %5280 = add i64 %5270, -120
  %5281 = add i64 %5272, 12
  store i64 %5281, i64* %3, align 8
  %5282 = inttoptr i64 %5280 to i64*
  %5283 = load i64, i64* %5282, align 8
  store i64 %5283, i64* %242, align 8
  %5284 = add i64 %5270, -128
  %5285 = add i64 %5272, 16
  store i64 %5285, i64* %3, align 8
  %5286 = inttoptr i64 %5284 to i64*
  %5287 = load i64, i64* %5286, align 8
  store i64 %5287, i64* %473, align 8
  %5288 = load i64, i64* %6, align 8
  store i64 %5288, i64* %RAX.i4030.pre-phi, align 8
  %5289 = add i64 %5272, 26
  store i64 %5289, i64* %3, align 8
  %5290 = inttoptr i64 %5288 to i64*
  store i64 4277996, i64* %5290, align 8
  %5291 = load i64, i64* %RBP.i, align 8
  %5292 = add i64 %5291, -344
  %5293 = load i64, i64* %3, align 8
  %5294 = add i64 %5293, 7
  store i64 %5294, i64* %3, align 8
  %5295 = inttoptr i64 %5292 to i64*
  %5296 = load i64, i64* %5295, align 8
  store i64 %5296, i64* %RDI.i4036.pre-phi, align 8
  %5297 = add i64 %5291, -248
  %5298 = add i64 %5293, 13
  store i64 %5298, i64* %3, align 8
  %5299 = inttoptr i64 %5297 to i32*
  %5300 = load i32, i32* %5299, align 4
  %5301 = zext i32 %5300 to i64
  store i64 %5301, i64* %RSI.i3042, align 8
  %5302 = add i64 %5293, 29060
  %5303 = add i64 %5293, 18
  %5304 = load i64, i64* %6, align 8
  %5305 = add i64 %5304, -8
  %5306 = inttoptr i64 %5305 to i64*
  store i64 %5303, i64* %5306, align 8
  store i64 %5305, i64* %6, align 8
  store i64 %5302, i64* %3, align 8
  %call2_402389 = tail call %struct.Memory* @sub_409500._Z14test_variable4Il34custom_multiply_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5302, %struct.Memory* %call2_40235d)
  %5307 = load i64, i64* %RBP.i, align 8
  %5308 = add i64 %5307, -104
  %5309 = load i64, i64* %3, align 8
  %5310 = add i64 %5309, 4
  store i64 %5310, i64* %3, align 8
  %5311 = inttoptr i64 %5308 to i64*
  %5312 = load i64, i64* %5311, align 8
  store i64 %5312, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414713_type* @G__0x414713 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414713_type* @G__0x414713 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5313 = add i64 %5307, -344
  %5314 = add i64 %5309, 18
  store i64 %5314, i64* %3, align 8
  %5315 = inttoptr i64 %5313 to i64*
  %5316 = load i64, i64* %5315, align 8
  store i64 %5316, i64* %RDI.i4036.pre-phi, align 8
  %5317 = add i64 %5307, -248
  %5318 = add i64 %5309, 24
  store i64 %5318, i64* %3, align 8
  %5319 = inttoptr i64 %5317 to i32*
  %5320 = load i32, i32* %5319, align 4
  %5321 = zext i32 %5320 to i64
  store i64 %5321, i64* %RSI.i3042, align 8
  %5322 = add i64 %5309, 29250
  %5323 = add i64 %5309, 29
  %5324 = load i64, i64* %6, align 8
  %5325 = add i64 %5324, -8
  %5326 = inttoptr i64 %5325 to i64*
  store i64 %5323, i64* %5326, align 8
  store i64 %5325, i64* %6, align 8
  store i64 %5322, i64* %3, align 8
  %call2_4023a6 = tail call %struct.Memory* @sub_4095d0._Z14test_variable1Il22custom_divide_variableIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5322, %struct.Memory* %call2_402389)
  %5327 = load i64, i64* %RBP.i, align 8
  %5328 = add i64 %5327, -104
  %5329 = load i64, i64* %3, align 8
  %5330 = add i64 %5329, 4
  store i64 %5330, i64* %3, align 8
  %5331 = inttoptr i64 %5328 to i64*
  %5332 = load i64, i64* %5331, align 8
  store i64 %5332, i64* %RDX.i4028, align 8
  %5333 = add i64 %5327, -112
  %5334 = add i64 %5329, 8
  store i64 %5334, i64* %3, align 8
  %5335 = inttoptr i64 %5333 to i64*
  %5336 = load i64, i64* %5335, align 8
  store i64 %5336, i64* %RCX.i4032, align 8
  %5337 = add i64 %5327, -120
  %5338 = add i64 %5329, 12
  store i64 %5338, i64* %3, align 8
  %5339 = inttoptr i64 %5337 to i64*
  %5340 = load i64, i64* %5339, align 8
  store i64 %5340, i64* %242, align 8
  %5341 = add i64 %5327, -128
  %5342 = add i64 %5329, 16
  store i64 %5342, i64* %3, align 8
  %5343 = inttoptr i64 %5341 to i64*
  %5344 = load i64, i64* %5343, align 8
  store i64 %5344, i64* %473, align 8
  %5345 = load i64, i64* %6, align 8
  store i64 %5345, i64* %RAX.i4030.pre-phi, align 8
  %5346 = add i64 %5329, 26
  store i64 %5346, i64* %3, align 8
  %5347 = inttoptr i64 %5345 to i64*
  store i64 4278060, i64* %5347, align 8
  %5348 = load i64, i64* %RBP.i, align 8
  %5349 = add i64 %5348, -344
  %5350 = load i64, i64* %3, align 8
  %5351 = add i64 %5350, 7
  store i64 %5351, i64* %3, align 8
  %5352 = inttoptr i64 %5349 to i64*
  %5353 = load i64, i64* %5352, align 8
  store i64 %5353, i64* %RDI.i4036.pre-phi, align 8
  %5354 = add i64 %5348, -248
  %5355 = add i64 %5350, 13
  store i64 %5355, i64* %3, align 8
  %5356 = inttoptr i64 %5354 to i32*
  %5357 = load i32, i32* %5356, align 4
  %5358 = zext i32 %5357 to i64
  store i64 %5358, i64* %RSI.i3042, align 8
  %5359 = add i64 %5350, 29371
  %5360 = add i64 %5350, 18
  %5361 = load i64, i64* %6, align 8
  %5362 = add i64 %5361, -8
  %5363 = inttoptr i64 %5362 to i64*
  store i64 %5360, i64* %5363, align 8
  store i64 %5362, i64* %6, align 8
  store i64 %5359, i64* %3, align 8
  %call2_4023d2 = tail call %struct.Memory* @sub_409680._Z14test_variable4Il31custom_divide_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5359, %struct.Memory* %call2_4023a6)
  %5364 = load i64, i64* %RBP.i, align 8
  %5365 = add i64 %5364, -104
  %5366 = load i64, i64* %3, align 8
  %5367 = add i64 %5366, 4
  store i64 %5367, i64* %3, align 8
  %5368 = inttoptr i64 %5365 to i64*
  %5369 = load i64, i64* %5368, align 8
  store i64 %5369, i64* %RDX.i4028, align 8
  %5370 = add i64 %5364, -112
  %5371 = add i64 %5366, 8
  store i64 %5371, i64* %3, align 8
  %5372 = inttoptr i64 %5370 to i64*
  %5373 = load i64, i64* %5372, align 8
  store i64 %5373, i64* %RCX.i4032, align 8
  %5374 = add i64 %5364, -120
  %5375 = add i64 %5366, 12
  store i64 %5375, i64* %3, align 8
  %5376 = inttoptr i64 %5374 to i64*
  %5377 = load i64, i64* %5376, align 8
  store i64 %5377, i64* %242, align 8
  %5378 = add i64 %5364, -128
  %5379 = add i64 %5366, 16
  store i64 %5379, i64* %3, align 8
  %5380 = inttoptr i64 %5378 to i64*
  %5381 = load i64, i64* %5380, align 8
  store i64 %5381, i64* %473, align 8
  %5382 = load i64, i64* %6, align 8
  store i64 %5382, i64* %RAX.i4030.pre-phi, align 8
  %5383 = add i64 %5366, 26
  store i64 %5383, i64* %3, align 8
  %5384 = inttoptr i64 %5382 to i64*
  store i64 4278095, i64* %5384, align 8
  %5385 = load i64, i64* %RBP.i, align 8
  %5386 = add i64 %5385, -344
  %5387 = load i64, i64* %3, align 8
  %5388 = add i64 %5387, 7
  store i64 %5388, i64* %3, align 8
  %5389 = inttoptr i64 %5386 to i64*
  %5390 = load i64, i64* %5389, align 8
  store i64 %5390, i64* %RDI.i4036.pre-phi, align 8
  %5391 = add i64 %5385, -248
  %5392 = add i64 %5387, 13
  store i64 %5392, i64* %3, align 8
  %5393 = inttoptr i64 %5391 to i32*
  %5394 = load i32, i32* %5393, align 4
  %5395 = zext i32 %5394 to i64
  store i64 %5395, i64* %RSI.i3042, align 8
  %5396 = add i64 %5387, 29535
  %5397 = add i64 %5387, 18
  %5398 = load i64, i64* %6, align 8
  %5399 = add i64 %5398, -8
  %5400 = inttoptr i64 %5399 to i64*
  store i64 %5397, i64* %5400, align 8
  store i64 %5399, i64* %6, align 8
  store i64 %5396, i64* %3, align 8
  %call2_4023fe = tail call %struct.Memory* @sub_409750._Z14test_variable4Il32custom_divide_multiple_variable2IlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5396, %struct.Memory* %call2_4023d2)
  %5401 = load i64, i64* %RBP.i, align 8
  %5402 = add i64 %5401, -104
  %5403 = load i64, i64* %3, align 8
  %5404 = add i64 %5403, 4
  store i64 %5404, i64* %3, align 8
  %5405 = inttoptr i64 %5402 to i64*
  %5406 = load i64, i64* %5405, align 8
  store i64 %5406, i64* %RDX.i4028, align 8
  %5407 = add i64 %5401, -112
  %5408 = add i64 %5403, 8
  store i64 %5408, i64* %3, align 8
  %5409 = inttoptr i64 %5407 to i64*
  %5410 = load i64, i64* %5409, align 8
  store i64 %5410, i64* %RCX.i4032, align 8
  %5411 = add i64 %5401, -120
  %5412 = add i64 %5403, 12
  store i64 %5412, i64* %3, align 8
  %5413 = inttoptr i64 %5411 to i64*
  %5414 = load i64, i64* %5413, align 8
  store i64 %5414, i64* %242, align 8
  %5415 = add i64 %5401, -128
  %5416 = add i64 %5403, 16
  store i64 %5416, i64* %3, align 8
  %5417 = inttoptr i64 %5415 to i64*
  %5418 = load i64, i64* %5417, align 8
  store i64 %5418, i64* %473, align 8
  %5419 = load i64, i64* %6, align 8
  store i64 %5419, i64* %RAX.i4030.pre-phi, align 8
  %5420 = add i64 %5403, 26
  store i64 %5420, i64* %3, align 8
  %5421 = inttoptr i64 %5419 to i64*
  store i64 4278131, i64* %5421, align 8
  %5422 = load i64, i64* %RBP.i, align 8
  %5423 = add i64 %5422, -344
  %5424 = load i64, i64* %3, align 8
  %5425 = add i64 %5424, 7
  store i64 %5425, i64* %3, align 8
  %5426 = inttoptr i64 %5423 to i64*
  %5427 = load i64, i64* %5426, align 8
  store i64 %5427, i64* %RDI.i4036.pre-phi, align 8
  %5428 = add i64 %5422, -248
  %5429 = add i64 %5424, 13
  store i64 %5429, i64* %3, align 8
  %5430 = inttoptr i64 %5428 to i32*
  %5431 = load i32, i32* %5430, align 4
  %5432 = zext i32 %5431 to i64
  store i64 %5432, i64* %RSI.i3042, align 8
  %5433 = add i64 %5424, 29699
  %5434 = add i64 %5424, 18
  %5435 = load i64, i64* %6, align 8
  %5436 = add i64 %5435, -8
  %5437 = inttoptr i64 %5436 to i64*
  store i64 %5434, i64* %5437, align 8
  store i64 %5436, i64* %6, align 8
  store i64 %5433, i64* %3, align 8
  %call2_40242a = tail call %struct.Memory* @sub_409820._Z14test_variable4Il30custom_mixed_multiple_variableIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5433, %struct.Memory* %call2_4023fe)
  %5438 = load i64, i64* %RBP.i, align 8
  %5439 = add i64 %5438, -104
  %5440 = load i64, i64* %3, align 8
  %5441 = add i64 %5440, 4
  store i64 %5441, i64* %3, align 8
  %5442 = inttoptr i64 %5439 to i64*
  %5443 = load i64, i64* %5442, align 8
  store i64 %5443, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x414794_type* @G__0x414794 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x414794_type* @G__0x414794 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5444 = add i64 %5438, -344
  %5445 = add i64 %5440, 18
  store i64 %5445, i64* %3, align 8
  %5446 = inttoptr i64 %5444 to i64*
  %5447 = load i64, i64* %5446, align 8
  store i64 %5447, i64* %RDI.i4036.pre-phi, align 8
  %5448 = add i64 %5438, -248
  %5449 = add i64 %5440, 24
  store i64 %5449, i64* %3, align 8
  %5450 = inttoptr i64 %5448 to i32*
  %5451 = load i32, i32* %5450, align 4
  %5452 = zext i32 %5451 to i64
  store i64 %5452, i64* %RSI.i3042, align 8
  %5453 = add i64 %5440, 29889
  %5454 = add i64 %5440, 29
  %5455 = load i64, i64* %6, align 8
  %5456 = add i64 %5455, -8
  %5457 = inttoptr i64 %5456 to i64*
  store i64 %5454, i64* %5457, align 8
  store i64 %5456, i64* %6, align 8
  store i64 %5453, i64* %3, align 8
  %call2_402447 = tail call %struct.Memory* @sub_4098f0._Z14test_variable1Il19custom_variable_andIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5453, %struct.Memory* %call2_40242a)
  %5458 = load i64, i64* %RBP.i, align 8
  %5459 = add i64 %5458, -104
  %5460 = load i64, i64* %3, align 8
  %5461 = add i64 %5460, 4
  store i64 %5461, i64* %3, align 8
  %5462 = inttoptr i64 %5459 to i64*
  %5463 = load i64, i64* %5462, align 8
  store i64 %5463, i64* %RDX.i4028, align 8
  %5464 = add i64 %5458, -112
  %5465 = add i64 %5460, 8
  store i64 %5465, i64* %3, align 8
  %5466 = inttoptr i64 %5464 to i64*
  %5467 = load i64, i64* %5466, align 8
  store i64 %5467, i64* %RCX.i4032, align 8
  %5468 = add i64 %5458, -120
  %5469 = add i64 %5460, 12
  store i64 %5469, i64* %3, align 8
  %5470 = inttoptr i64 %5468 to i64*
  %5471 = load i64, i64* %5470, align 8
  store i64 %5471, i64* %242, align 8
  %5472 = add i64 %5458, -128
  %5473 = add i64 %5460, 16
  store i64 %5473, i64* %3, align 8
  %5474 = inttoptr i64 %5472 to i64*
  %5475 = load i64, i64* %5474, align 8
  store i64 %5475, i64* %473, align 8
  %5476 = load i64, i64* %6, align 8
  store i64 %5476, i64* %RAX.i4030.pre-phi, align 8
  %5477 = add i64 %5460, 26
  store i64 %5477, i64* %3, align 8
  %5478 = inttoptr i64 %5476 to i64*
  store i64 4278186, i64* %5478, align 8
  %5479 = load i64, i64* %RBP.i, align 8
  %5480 = add i64 %5479, -344
  %5481 = load i64, i64* %3, align 8
  %5482 = add i64 %5481, 7
  store i64 %5482, i64* %3, align 8
  %5483 = inttoptr i64 %5480 to i64*
  %5484 = load i64, i64* %5483, align 8
  store i64 %5484, i64* %RDI.i4036.pre-phi, align 8
  %5485 = add i64 %5479, -248
  %5486 = add i64 %5481, 13
  store i64 %5486, i64* %3, align 8
  %5487 = inttoptr i64 %5485 to i32*
  %5488 = load i32, i32* %5487, align 4
  %5489 = zext i32 %5488 to i64
  store i64 %5489, i64* %RSI.i3042, align 8
  %5490 = add i64 %5481, 30010
  %5491 = add i64 %5481, 18
  %5492 = load i64, i64* %6, align 8
  %5493 = add i64 %5492, -8
  %5494 = inttoptr i64 %5493 to i64*
  store i64 %5491, i64* %5494, align 8
  store i64 %5493, i64* %6, align 8
  store i64 %5490, i64* %3, align 8
  %call2_402473 = tail call %struct.Memory* @sub_4099a0._Z14test_variable4Il28custom_multiple_variable_andIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5490, %struct.Memory* %call2_402447)
  %5495 = load i64, i64* %RBP.i, align 8
  %5496 = add i64 %5495, -104
  %5497 = load i64, i64* %3, align 8
  %5498 = add i64 %5497, 4
  store i64 %5498, i64* %3, align 8
  %5499 = inttoptr i64 %5496 to i64*
  %5500 = load i64, i64* %5499, align 8
  store i64 %5500, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4147c9_type* @G__0x4147c9 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4147c9_type* @G__0x4147c9 to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5501 = add i64 %5495, -344
  %5502 = add i64 %5497, 18
  store i64 %5502, i64* %3, align 8
  %5503 = inttoptr i64 %5501 to i64*
  %5504 = load i64, i64* %5503, align 8
  store i64 %5504, i64* %RDI.i4036.pre-phi, align 8
  %5505 = add i64 %5495, -248
  %5506 = add i64 %5497, 24
  store i64 %5506, i64* %3, align 8
  %5507 = inttoptr i64 %5505 to i32*
  %5508 = load i32, i32* %5507, align 4
  %5509 = zext i32 %5508 to i64
  store i64 %5509, i64* %RSI.i3042, align 8
  %5510 = add i64 %5497, 30200
  %5511 = add i64 %5497, 29
  %5512 = load i64, i64* %6, align 8
  %5513 = add i64 %5512, -8
  %5514 = inttoptr i64 %5513 to i64*
  store i64 %5511, i64* %5514, align 8
  store i64 %5513, i64* %6, align 8
  store i64 %5510, i64* %3, align 8
  %call2_402490 = tail call %struct.Memory* @sub_409a70._Z14test_variable1Il18custom_variable_orIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5510, %struct.Memory* %call2_402473)
  %5515 = load i64, i64* %RBP.i, align 8
  %5516 = add i64 %5515, -104
  %5517 = load i64, i64* %3, align 8
  %5518 = add i64 %5517, 4
  store i64 %5518, i64* %3, align 8
  %5519 = inttoptr i64 %5516 to i64*
  %5520 = load i64, i64* %5519, align 8
  store i64 %5520, i64* %RDX.i4028, align 8
  %5521 = add i64 %5515, -112
  %5522 = add i64 %5517, 8
  store i64 %5522, i64* %3, align 8
  %5523 = inttoptr i64 %5521 to i64*
  %5524 = load i64, i64* %5523, align 8
  store i64 %5524, i64* %RCX.i4032, align 8
  %5525 = add i64 %5515, -120
  %5526 = add i64 %5517, 12
  store i64 %5526, i64* %3, align 8
  %5527 = inttoptr i64 %5525 to i64*
  %5528 = load i64, i64* %5527, align 8
  store i64 %5528, i64* %242, align 8
  %5529 = add i64 %5515, -128
  %5530 = add i64 %5517, 16
  store i64 %5530, i64* %3, align 8
  %5531 = inttoptr i64 %5529 to i64*
  %5532 = load i64, i64* %5531, align 8
  store i64 %5532, i64* %473, align 8
  %5533 = load i64, i64* %6, align 8
  store i64 %5533, i64* %RAX.i4030.pre-phi, align 8
  %5534 = add i64 %5517, 26
  store i64 %5534, i64* %3, align 8
  %5535 = inttoptr i64 %5533 to i64*
  store i64 4278238, i64* %5535, align 8
  %5536 = load i64, i64* %RBP.i, align 8
  %5537 = add i64 %5536, -344
  %5538 = load i64, i64* %3, align 8
  %5539 = add i64 %5538, 7
  store i64 %5539, i64* %3, align 8
  %5540 = inttoptr i64 %5537 to i64*
  %5541 = load i64, i64* %5540, align 8
  store i64 %5541, i64* %RDI.i4036.pre-phi, align 8
  %5542 = add i64 %5536, -248
  %5543 = add i64 %5538, 13
  store i64 %5543, i64* %3, align 8
  %5544 = inttoptr i64 %5542 to i32*
  %5545 = load i32, i32* %5544, align 4
  %5546 = zext i32 %5545 to i64
  store i64 %5546, i64* %RSI.i3042, align 8
  %5547 = add i64 %5538, 30321
  %5548 = add i64 %5538, 18
  %5549 = load i64, i64* %6, align 8
  %5550 = add i64 %5549, -8
  %5551 = inttoptr i64 %5550 to i64*
  store i64 %5548, i64* %5551, align 8
  store i64 %5550, i64* %6, align 8
  store i64 %5547, i64* %3, align 8
  %call2_4024bc = tail call %struct.Memory* @sub_409b20._Z14test_variable4Il27custom_multiple_variable_orIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5547, %struct.Memory* %call2_402490)
  %5552 = load i64, i64* %RBP.i, align 8
  %5553 = add i64 %5552, -104
  %5554 = load i64, i64* %3, align 8
  %5555 = add i64 %5554, 4
  store i64 %5555, i64* %3, align 8
  %5556 = inttoptr i64 %5553 to i64*
  %5557 = load i64, i64* %5556, align 8
  store i64 %5557, i64* %RDX.i4028, align 8
  store i64 and (i64 ptrtoint (%G__0x4147fc_type* @G__0x4147fc to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x4147fc_type* @G__0x4147fc to i64), i64 4294967295) to i32) to i64), i64* %RCX.i4032, align 8
  %5558 = add i64 %5552, -344
  %5559 = add i64 %5554, 18
  store i64 %5559, i64* %3, align 8
  %5560 = inttoptr i64 %5558 to i64*
  %5561 = load i64, i64* %5560, align 8
  store i64 %5561, i64* %RDI.i4036.pre-phi, align 8
  %5562 = add i64 %5552, -248
  %5563 = add i64 %5554, 24
  store i64 %5563, i64* %3, align 8
  %5564 = inttoptr i64 %5562 to i32*
  %5565 = load i32, i32* %5564, align 4
  %5566 = zext i32 %5565 to i64
  store i64 %5566, i64* %RSI.i3042, align 8
  %5567 = add i64 %5554, 30511
  %5568 = add i64 %5554, 29
  %5569 = load i64, i64* %6, align 8
  %5570 = add i64 %5569, -8
  %5571 = inttoptr i64 %5570 to i64*
  store i64 %5568, i64* %5571, align 8
  store i64 %5570, i64* %6, align 8
  store i64 %5567, i64* %3, align 8
  %call2_4024d9 = tail call %struct.Memory* @sub_409bf0._Z14test_variable1Il19custom_variable_xorIlEEvPT_iS2_PKc(%struct.State* %0, i64 %5567, %struct.Memory* %call2_4024bc)
  %5572 = load i64, i64* %RBP.i, align 8
  %5573 = add i64 %5572, -104
  %5574 = load i64, i64* %3, align 8
  %5575 = add i64 %5574, 4
  store i64 %5575, i64* %3, align 8
  %5576 = inttoptr i64 %5573 to i64*
  %5577 = load i64, i64* %5576, align 8
  store i64 %5577, i64* %RDX.i4028, align 8
  %5578 = add i64 %5572, -112
  %5579 = add i64 %5574, 8
  store i64 %5579, i64* %3, align 8
  %5580 = inttoptr i64 %5578 to i64*
  %5581 = load i64, i64* %5580, align 8
  store i64 %5581, i64* %RCX.i4032, align 8
  %5582 = add i64 %5572, -120
  %5583 = add i64 %5574, 12
  store i64 %5583, i64* %3, align 8
  %5584 = inttoptr i64 %5582 to i64*
  %5585 = load i64, i64* %5584, align 8
  store i64 %5585, i64* %242, align 8
  %5586 = add i64 %5572, -128
  %5587 = add i64 %5574, 16
  store i64 %5587, i64* %3, align 8
  %5588 = inttoptr i64 %5586 to i64*
  %5589 = load i64, i64* %5588, align 8
  store i64 %5589, i64* %473, align 8
  %5590 = load i64, i64* %6, align 8
  store i64 %5590, i64* %RAX.i4030.pre-phi, align 8
  %5591 = add i64 %5574, 26
  store i64 %5591, i64* %3, align 8
  %5592 = inttoptr i64 %5590 to i64*
  store i64 4278290, i64* %5592, align 8
  %5593 = load i64, i64* %RBP.i, align 8
  %5594 = add i64 %5593, -344
  %5595 = load i64, i64* %3, align 8
  %5596 = add i64 %5595, 7
  store i64 %5596, i64* %3, align 8
  %5597 = inttoptr i64 %5594 to i64*
  %5598 = load i64, i64* %5597, align 8
  store i64 %5598, i64* %RDI.i4036.pre-phi, align 8
  %5599 = add i64 %5593, -248
  %5600 = add i64 %5595, 13
  store i64 %5600, i64* %3, align 8
  %5601 = inttoptr i64 %5599 to i32*
  %5602 = load i32, i32* %5601, align 4
  %5603 = zext i32 %5602 to i64
  store i64 %5603, i64* %RSI.i3042, align 8
  %5604 = add i64 %5595, 30632
  %5605 = add i64 %5595, 18
  %5606 = load i64, i64* %6, align 8
  %5607 = add i64 %5606, -8
  %5608 = inttoptr i64 %5607 to i64*
  store i64 %5605, i64* %5608, align 8
  store i64 %5607, i64* %6, align 8
  store i64 %5604, i64* %3, align 8
  %call2_402505 = tail call %struct.Memory* @sub_409ca0._Z14test_variable4Il28custom_multiple_variable_xorIlEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5604, %struct.Memory* %call2_4024d9)
  %5609 = load i64, i64* %3, align 8
  %5610 = load double, double* bitcast (%G_0x217b76__rip__4203794__type* @G_0x217b76__rip__4203794_ to double*), align 8
  store double %5610, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5612 = bitcast %union.VectorReg* %5611 to i8*
  %5613 = load double, double* bitcast (%G_0x11926__rip__4203802__type* @G_0x11926__rip__4203802_ to double*), align 8
  %5614 = bitcast %union.VectorReg* %5611 to double*
  store double %5613, double* %5614, align 1
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %5616 = bitcast i64* %5615 to double*
  store double 0.000000e+00, double* %5616, align 1
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5618 = bitcast %union.VectorReg* %5617 to i8*
  %5619 = bitcast [32 x %union.VectorReg]* %52 to <2 x i32>*
  %5620 = bitcast double %5610 to <2 x i32>
  %5621 = bitcast i64* %57 to <2 x i32>*
  %5622 = extractelement <2 x i32> %5620, i32 0
  %5623 = bitcast %union.VectorReg* %5617 to i32*
  store i32 %5622, i32* %5623, align 1
  %5624 = extractelement <2 x i32> %5620, i32 1
  %5625 = getelementptr inbounds i8, i8* %5618, i64 4
  %5626 = bitcast i8* %5625 to i32*
  store i32 %5624, i32* %5626, align 1
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %5628 = bitcast i64* %5627 to i32*
  store i32 0, i32* %5628, align 1
  %5629 = getelementptr inbounds i8, i8* %5618, i64 12
  %5630 = bitcast i8* %5629 to i32*
  store i32 0, i32* %5630, align 1
  %5631 = bitcast %union.VectorReg* %5617 to double*
  %5632 = load double, double* %5631, align 1
  %5633 = fsub double %5632, %5613
  store double %5633, double* %5631, align 1
  %5634 = tail call double @llvm.trunc.f64(double %5633)
  %5635 = tail call double @llvm.fabs.f64(double %5634)
  %5636 = fcmp ogt double %5635, 0x43E0000000000000
  %5637 = fptosi double %5634 to i64
  store i64 -9223372036854775808, i64* %RCX.i4032, align 8
  %.op = xor i64 %5637, -9223372036854775808
  %5638 = select i1 %5636, i64 0, i64 %.op
  store i64 %5638, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %5639 = trunc i64 %5638 to i32
  %5640 = and i32 %5639, 255
  %5641 = tail call i32 @llvm.ctpop.i32(i32 %5640)
  %5642 = trunc i32 %5641 to i8
  %5643 = and i8 %5642, 1
  %5644 = xor i8 %5643, 1
  store i8 %5644, i8* %33, align 1
  %5645 = icmp eq i64 %5638, 0
  %5646 = zext i1 %5645 to i8
  store i8 %5646, i8* %42, align 1
  %5647 = lshr i64 %5638, 63
  %5648 = trunc i64 %5647 to i8
  store i8 %5648, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5649 = tail call double @llvm.trunc.f64(double %5610)
  %5650 = tail call double @llvm.fabs.f64(double %5649)
  %5651 = fcmp ogt double %5650, 0x43E0000000000000
  %5652 = fptosi double %5649 to i64
  %5653 = select i1 %5651, i64 -9223372036854775808, i64 %5652
  store i64 %5653, i64* %RDX.i4028, align 8
  %5654 = add i64 %5609, 50
  store i64 %5654, i64* %3, align 8
  %5655 = fcmp uno double %5613, %5610
  br i1 %5655, label %5656, label %5666

; <label>:5656:                                   ; preds = %routine_idivq__rsi.exit
  %5657 = fadd double %5613, %5610
  %5658 = bitcast double %5657 to i64
  %5659 = and i64 %5658, 9221120237041090560
  %5660 = icmp eq i64 %5659, 9218868437227405312
  %5661 = and i64 %5658, 2251799813685247
  %5662 = icmp ne i64 %5661, 0
  %5663 = and i1 %5660, %5662
  br i1 %5663, label %5664, label %5672

; <label>:5664:                                   ; preds = %5656
  %5665 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5654, %struct.Memory* %call2_402505)
  %.pre23 = load i64, i64* %RDX.i4028, align 8
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i8, i8* %26, align 1
  %.pre26 = load i8, i8* %42, align 1
  %.pre27 = load i64, i64* %RAX.i4030.pre-phi, align 8
  %.pre28 = load i64, i64* %RCX.i4032, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:5666:                                   ; preds = %routine_idivq__rsi.exit
  %5667 = fcmp ogt double %5613, %5610
  br i1 %5667, label %5672, label %5668

; <label>:5668:                                   ; preds = %5666
  %5669 = fcmp olt double %5613, %5610
  br i1 %5669, label %5672, label %5670

; <label>:5670:                                   ; preds = %5668
  %5671 = fcmp oeq double %5613, %5610
  br i1 %5671, label %5672, label %5676

; <label>:5672:                                   ; preds = %5670, %5668, %5666, %5656
  %5673 = phi i8 [ 0, %5666 ], [ 0, %5668 ], [ 1, %5670 ], [ 1, %5656 ]
  %5674 = phi i8 [ 0, %5666 ], [ 0, %5668 ], [ 0, %5670 ], [ 1, %5656 ]
  %5675 = phi i8 [ 0, %5666 ], [ 1, %5668 ], [ 0, %5670 ], [ 1, %5656 ]
  store i8 %5673, i8* %42, align 1
  store i8 %5674, i8* %33, align 1
  store i8 %5675, i8* %26, align 1
  br label %5676

; <label>:5676:                                   ; preds = %5672, %5670
  %5677 = phi i8 [ %5673, %5672 ], [ %5646, %5670 ]
  %5678 = phi i8 [ %5675, %5672 ], [ 0, %5670 ]
  store i8 0, i8* %51, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %39, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %5676, %5664
  %5679 = phi i64 [ %.pre28, %5664 ], [ -9223372036854775808, %5676 ]
  %5680 = phi i64 [ %.pre27, %5664 ], [ %5638, %5676 ]
  %5681 = phi i8 [ %.pre26, %5664 ], [ %5677, %5676 ]
  %5682 = phi i8 [ %.pre25, %5664 ], [ %5678, %5676 ]
  %5683 = phi i64 [ %.pre24, %5664 ], [ %5654, %5676 ]
  %5684 = phi i64 [ %.pre23, %5664 ], [ %5653, %5676 ]
  %5685 = phi %struct.Memory* [ %5665, %5664 ], [ %call2_402505, %5676 ]
  %5686 = or i8 %5681, %5682
  %5687 = icmp eq i8 %5686, 0
  %5688 = select i1 %5687, i64 %5684, i64 %5680
  store i64 %5688, i64* %RAX.i4030.pre-phi, align 8
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64 4294967295) to i32) to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 and (i64 ptrtoint (%G__0x6411c0_type* @G__0x6411c0 to i64), i64 4294967295), i64* %RSI.i3042, align 8
  store i64 %5688, i64* %RDX.i4028, align 8
  %5689 = load i64, i64* %RBP.i, align 8
  %5690 = add i64 %5689, -360
  %5691 = add i64 %5683, 26
  store i64 %5691, i64* %3, align 8
  %5692 = inttoptr i64 %5690 to i64*
  store i64 %5679, i64* %5692, align 8
  %5693 = load i64, i64* %RBP.i, align 8
  %5694 = add i64 %5693, -368
  %5695 = load i64, i64* %3, align 8
  %5696 = add i64 %5695, 8
  store i64 %5696, i64* %3, align 8
  %5697 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5611, i64 0, i32 0, i32 0, i32 0, i64 0
  %5698 = load i64, i64* %5697, align 1
  %5699 = inttoptr i64 %5694 to i64*
  store i64 %5698, i64* %5699, align 8
  %5700 = load i64, i64* %3, align 8
  %5701 = add i64 %5700, 30738
  %5702 = add i64 %5700, 5
  %5703 = load i64, i64* %6, align 8
  %5704 = add i64 %5703, -8
  %5705 = inttoptr i64 %5704 to i64*
  store i64 %5702, i64* %5705, align 8
  store i64 %5704, i64* %6, align 8
  store i64 %5701, i64* %3, align 8
  %call2_40255e = tail call %struct.Memory* @sub_409d70._Z4fillIPmmEvT_S1_T0_(%struct.State* %0, i64 %5701, %struct.Memory* %5685)
  %5706 = load i64, i64* %RBP.i, align 8
  %5707 = add i64 %5706, -40
  %5708 = load i64, i64* %3, align 8
  %5709 = add i64 %5708, 5
  store i64 %5709, i64* %3, align 8
  %5710 = inttoptr i64 %5707 to double*
  %5711 = load double, double* %5710, align 8
  store double %5711, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %5712 = bitcast double %5711 to <2 x i32>
  %5713 = extractelement <2 x i32> %5712, i32 0
  %5714 = bitcast %union.VectorReg* %5611 to i32*
  store i32 %5713, i32* %5714, align 1
  %5715 = extractelement <2 x i32> %5712, i32 1
  %5716 = getelementptr inbounds i8, i8* %5612, i64 4
  %5717 = bitcast i8* %5716 to i32*
  store i32 %5715, i32* %5717, align 1
  %5718 = bitcast i64* %5615 to i32*
  store i32 0, i32* %5718, align 1
  %5719 = getelementptr inbounds i8, i8* %5612, i64 12
  %5720 = bitcast i8* %5719 to i32*
  store i32 0, i32* %5720, align 1
  %5721 = add i64 %5706, -368
  %5722 = add i64 %5708, 16
  store i64 %5722, i64* %3, align 8
  %5723 = inttoptr i64 %5721 to double*
  %5724 = load double, double* %5723, align 8
  store double %5724, double* %5631, align 1
  %5725 = bitcast i64* %5627 to double*
  store double 0.000000e+00, double* %5725, align 1
  %5726 = load double, double* %5614, align 1
  %5727 = fsub double %5726, %5724
  store double %5727, double* %5614, align 1
  %5728 = tail call double @llvm.trunc.f64(double %5727)
  %5729 = tail call double @llvm.fabs.f64(double %5728)
  %5730 = fcmp ogt double %5729, 0x43E0000000000000
  %5731 = fptosi double %5728 to i64
  %5732 = select i1 %5730, i64 -9223372036854775808, i64 %5731
  store i64 %5732, i64* %RAX.i4030.pre-phi, align 8
  %5733 = add i64 %5706, -360
  %5734 = add i64 %5708, 32
  store i64 %5734, i64* %3, align 8
  %5735 = inttoptr i64 %5733 to i64*
  %5736 = load i64, i64* %5735, align 8
  store i64 %5736, i64* %RCX.i4032, align 8
  %5737 = xor i64 %5736, %5732
  store i64 %5737, i64* %RAX.i4030.pre-phi, align 8
  store i8 0, i8* %26, align 1
  %5738 = trunc i64 %5737 to i32
  %5739 = and i32 %5738, 255
  %5740 = tail call i32 @llvm.ctpop.i32(i32 %5739)
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  %5743 = xor i8 %5742, 1
  store i8 %5743, i8* %33, align 1
  %5744 = icmp eq i64 %5737, 0
  %5745 = zext i1 %5744 to i8
  store i8 %5745, i8* %42, align 1
  %5746 = lshr i64 %5737, 63
  %5747 = trunc i64 %5746 to i8
  store i8 %5747, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  %5748 = tail call double @llvm.trunc.f64(double %5711)
  %5749 = tail call double @llvm.fabs.f64(double %5748)
  %5750 = fcmp ogt double %5749, 0x43E0000000000000
  %5751 = fptosi double %5748 to i64
  %5752 = select i1 %5750, i64 -9223372036854775808, i64 %5751
  store i64 %5752, i64* %RDX.i4028, align 8
  %5753 = add i64 %5708, 44
  store i64 %5753, i64* %3, align 8
  %5754 = fcmp uno double %5724, %5711
  br i1 %5754, label %5755, label %5765

; <label>:5755:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %5756 = fadd double %5724, %5711
  %5757 = bitcast double %5756 to i64
  %5758 = and i64 %5757, 9221120237041090560
  %5759 = icmp eq i64 %5758, 9218868437227405312
  %5760 = and i64 %5757, 2251799813685247
  %5761 = icmp ne i64 %5760, 0
  %5762 = and i1 %5759, %5761
  br i1 %5762, label %5763, label %5771

; <label>:5763:                                   ; preds = %5755
  %5764 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5753, %struct.Memory* %call2_40255e)
  %.pre29 = load i64, i64* %RDX.i4028, align 8
  %.pre30 = load i64, i64* %3, align 8
  %.pre31 = load i8, i8* %26, align 1
  %.pre32 = load i8, i8* %42, align 1
  %.pre33 = load i64, i64* %RAX.i4030.pre-phi, align 8
  %.pre34 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm2.exit

; <label>:5765:                                   ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %5766 = fcmp ogt double %5724, %5711
  br i1 %5766, label %5771, label %5767

; <label>:5767:                                   ; preds = %5765
  %5768 = fcmp olt double %5724, %5711
  br i1 %5768, label %5771, label %5769

; <label>:5769:                                   ; preds = %5767
  %5770 = fcmp oeq double %5724, %5711
  br i1 %5770, label %5771, label %5775

; <label>:5771:                                   ; preds = %5769, %5767, %5765, %5755
  %5772 = phi i8 [ 0, %5765 ], [ 0, %5767 ], [ 1, %5769 ], [ 1, %5755 ]
  %5773 = phi i8 [ 0, %5765 ], [ 0, %5767 ], [ 0, %5769 ], [ 1, %5755 ]
  %5774 = phi i8 [ 0, %5765 ], [ 1, %5767 ], [ 0, %5769 ], [ 1, %5755 ]
  store i8 %5772, i8* %42, align 1
  store i8 %5773, i8* %33, align 1
  store i8 %5774, i8* %26, align 1
  br label %5775

; <label>:5775:                                   ; preds = %5771, %5769
  %5776 = phi i8 [ %5772, %5771 ], [ %5745, %5769 ]
  %5777 = phi i8 [ %5774, %5771 ], [ 0, %5769 ]
  store i8 0, i8* %51, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %39, align 1
  br label %routine_ucomisd__xmm0___xmm2.exit

routine_ucomisd__xmm0___xmm2.exit:                ; preds = %5775, %5763
  %5778 = phi i64 [ %.pre34, %5763 ], [ %5706, %5775 ]
  %5779 = phi i64 [ %.pre33, %5763 ], [ %5737, %5775 ]
  %5780 = phi i8 [ %.pre32, %5763 ], [ %5776, %5775 ]
  %5781 = phi i8 [ %.pre31, %5763 ], [ %5777, %5775 ]
  %5782 = phi i64 [ %.pre30, %5763 ], [ %5753, %5775 ]
  %5783 = phi i64 [ %.pre29, %5763 ], [ %5752, %5775 ]
  %5784 = phi %struct.Memory* [ %5764, %5763 ], [ %call2_40255e, %5775 ]
  %5785 = or i8 %5780, %5781
  %5786 = icmp eq i8 %5785, 0
  %5787 = select i1 %5786, i64 %5783, i64 %5779
  store i64 %5787, i64* %RAX.i4030.pre-phi, align 8
  %5788 = add i64 %5778, -136
  %5789 = add i64 %5782, 11
  store i64 %5789, i64* %3, align 8
  %5790 = inttoptr i64 %5788 to i64*
  store i64 %5787, i64* %5790, align 8
  %5791 = load i64, i64* %RBP.i, align 8
  %5792 = add i64 %5791, -136
  %5793 = load i64, i64* %3, align 8
  %5794 = add i64 %5793, 7
  store i64 %5794, i64* %3, align 8
  %5795 = inttoptr i64 %5792 to i64*
  %5796 = load i64, i64* %5795, align 8
  %5797 = shl i64 %5796, 1
  %5798 = icmp slt i64 %5796, 0
  %5799 = icmp slt i64 %5797, 0
  %5800 = xor i1 %5798, %5799
  store i64 %5797, i64* %RAX.i4030.pre-phi, align 8
  %.lobit = lshr i64 %5796, 63
  %5801 = trunc i64 %.lobit to i8
  store i8 %5801, i8* %26, align 1
  %5802 = trunc i64 %5797 to i32
  %5803 = and i32 %5802, 254
  %5804 = tail call i32 @llvm.ctpop.i32(i32 %5803)
  %5805 = trunc i32 %5804 to i8
  %5806 = and i8 %5805, 1
  %5807 = xor i8 %5806, 1
  store i8 %5807, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5808 = icmp eq i64 %5797, 0
  %5809 = zext i1 %5808 to i8
  store i8 %5809, i8* %42, align 1
  %5810 = lshr i64 %5796, 62
  %5811 = trunc i64 %5810 to i8
  %5812 = and i8 %5811, 1
  store i8 %5812, i8* %45, align 1
  %5813 = zext i1 %5800 to i8
  store i8 %5813, i8* %51, align 1
  %5814 = add i64 %5791, -144
  %5815 = add i64 %5793, 18
  store i64 %5815, i64* %3, align 8
  %5816 = inttoptr i64 %5814 to i64*
  store i64 %5797, i64* %5816, align 8
  %5817 = load i64, i64* %RBP.i, align 8
  %5818 = add i64 %5817, -136
  %5819 = load i64, i64* %3, align 8
  %5820 = add i64 %5819, 7
  store i64 %5820, i64* %3, align 8
  %5821 = inttoptr i64 %5818 to i64*
  %5822 = load i64, i64* %5821, align 8
  %5823 = add i64 %5822, 2
  store i64 %5823, i64* %RAX.i4030.pre-phi, align 8
  %5824 = icmp ugt i64 %5822, -3
  %5825 = zext i1 %5824 to i8
  store i8 %5825, i8* %26, align 1
  %5826 = trunc i64 %5823 to i32
  %5827 = and i32 %5826, 255
  %5828 = tail call i32 @llvm.ctpop.i32(i32 %5827)
  %5829 = trunc i32 %5828 to i8
  %5830 = and i8 %5829, 1
  %5831 = xor i8 %5830, 1
  store i8 %5831, i8* %33, align 1
  %5832 = xor i64 %5822, %5823
  %5833 = lshr i64 %5832, 4
  %5834 = trunc i64 %5833 to i8
  %5835 = and i8 %5834, 1
  store i8 %5835, i8* %39, align 1
  %5836 = icmp eq i64 %5823, 0
  %5837 = zext i1 %5836 to i8
  store i8 %5837, i8* %42, align 1
  %5838 = lshr i64 %5823, 63
  %5839 = trunc i64 %5838 to i8
  store i8 %5839, i8* %45, align 1
  %5840 = lshr i64 %5822, 63
  %5841 = xor i64 %5838, %5840
  %5842 = add nuw nsw i64 %5841, %5838
  %5843 = icmp eq i64 %5842, 2
  %5844 = zext i1 %5843 to i8
  store i8 %5844, i8* %51, align 1
  %5845 = add i64 %5817, -152
  %5846 = add i64 %5819, 18
  store i64 %5846, i64* %3, align 8
  %5847 = inttoptr i64 %5845 to i64*
  store i64 %5823, i64* %5847, align 8
  %5848 = load i64, i64* %RBP.i, align 8
  %5849 = add i64 %5848, -136
  %5850 = load i64, i64* %3, align 8
  %5851 = add i64 %5850, 7
  store i64 %5851, i64* %3, align 8
  %5852 = inttoptr i64 %5849 to i64*
  %5853 = load i64, i64* %5852, align 8
  store i64 %5853, i64* %RAX.i4030.pre-phi, align 8
  %5854 = add i64 %5848, -144
  %5855 = add i64 %5850, 14
  store i64 %5855, i64* %3, align 8
  %5856 = inttoptr i64 %5854 to i64*
  %5857 = load i64, i64* %5856, align 8
  store i64 %5857, i64* %RDX.i4028, align 8
  %5858 = add i64 %5848, -376
  %5859 = add i64 %5850, 21
  store i64 %5859, i64* %3, align 8
  %5860 = inttoptr i64 %5858 to i64*
  store i64 %5853, i64* %5860, align 8
  %5861 = load i64, i64* %RDX.i4028, align 8
  %5862 = load i64, i64* %3, align 8
  store i64 %5861, i64* %RAX.i4030.pre-phi, align 8
  store i64 0, i64* %356, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %33, align 1
  store i8 1, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  store i8 0, i8* %39, align 1
  store i64 0, i64* %RDX.i4028, align 8
  %5863 = load i64, i64* %RBP.i, align 8
  %5864 = add i64 %5863, -152
  %5865 = add i64 %5862, 16
  store i64 %5865, i64* %3, align 8
  %5866 = inttoptr i64 %5864 to i64*
  %5867 = load i64, i64* %5866, align 8
  %div = udiv i64 %5861, %5867
  %5868 = urem i64 %5861, %5867
  store i64 %div, i64* %5016, align 8
  store i64 %5868, i64* %370, align 8
  store i8 0, i8* %26, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %51, align 1
  %5869 = add i64 %5863, -376
  %5870 = add i64 %5862, 23
  store i64 %5870, i64* %3, align 8
  %5871 = inttoptr i64 %5869 to i64*
  %5872 = load i64, i64* %5871, align 8
  %5873 = add i64 %div, %5872
  store i64 %5873, i64* %RSI.i3042, align 8
  %5874 = icmp ult i64 %5873, %5872
  %5875 = icmp ult i64 %5873, %div
  %5876 = or i1 %5874, %5875
  %5877 = zext i1 %5876 to i8
  store i8 %5877, i8* %26, align 1
  %5878 = trunc i64 %5873 to i32
  %5879 = and i32 %5878, 255
  %5880 = tail call i32 @llvm.ctpop.i32(i32 %5879)
  %5881 = trunc i32 %5880 to i8
  %5882 = and i8 %5881, 1
  %5883 = xor i8 %5882, 1
  store i8 %5883, i8* %33, align 1
  %5884 = xor i64 %div, %5872
  %5885 = xor i64 %5884, %5873
  %5886 = lshr i64 %5885, 4
  %5887 = trunc i64 %5886 to i8
  %5888 = and i8 %5887, 1
  store i8 %5888, i8* %39, align 1
  %5889 = icmp eq i64 %5873, 0
  %5890 = zext i1 %5889 to i8
  store i8 %5890, i8* %42, align 1
  %5891 = lshr i64 %5873, 63
  %5892 = trunc i64 %5891 to i8
  store i8 %5892, i8* %45, align 1
  %5893 = lshr i64 %5872, 63
  %5894 = lshr i64 %div, 63
  %5895 = xor i64 %5891, %5893
  %5896 = xor i64 %5891, %5894
  %5897 = add nuw nsw i64 %5895, %5896
  %5898 = icmp eq i64 %5897, 2
  %5899 = zext i1 %5898 to i8
  store i8 %5899, i8* %51, align 1
  %5900 = add i64 %5863, -160
  %5901 = add i64 %5862, 33
  store i64 %5901, i64* %3, align 8
  %5902 = inttoptr i64 %5900 to i64*
  store i64 %5873, i64* %5902, align 8
  %5903 = load i64, i64* %RBP.i, align 8
  %5904 = add i64 %5903, -136
  %5905 = load i64, i64* %3, align 8
  %5906 = add i64 %5905, 7
  store i64 %5906, i64* %3, align 8
  %5907 = inttoptr i64 %5904 to i64*
  %5908 = load i64, i64* %5907, align 8
  store i64 %5908, i64* %RAX.i4030.pre-phi, align 8
  %5909 = add i64 %5903, -216
  %5910 = add i64 %5905, 14
  store i64 %5910, i64* %3, align 8
  %5911 = inttoptr i64 %5909 to i64*
  %5912 = load i64, i64* %5911, align 8
  store i64 %5912, i64* %RDI.i4036.pre-phi, align 8
  %5913 = add i64 %5903, -220
  %5914 = add i64 %5905, 20
  store i64 %5914, i64* %3, align 8
  %5915 = inttoptr i64 %5913 to i32*
  %5916 = load i32, i32* %5915, align 4
  %5917 = zext i32 %5916 to i64
  store i64 %5917, i64* %RSI.i3042, align 8
  store i64 %5908, i64* %RDX.i4028, align 8
  %5918 = add i64 %5903, -232
  %5919 = add i64 %5905, 30
  store i64 %5919, i64* %3, align 8
  %5920 = inttoptr i64 %5918 to i64*
  %5921 = load i64, i64* %5920, align 8
  store i64 %5921, i64* %RCX.i4032, align 8
  %5922 = add i64 %5905, 30652
  %5923 = add i64 %5905, 35
  %5924 = load i64, i64* %6, align 8
  %5925 = add i64 %5924, -8
  %5926 = inttoptr i64 %5925 to i64*
  store i64 %5923, i64* %5926, align 8
  store i64 %5925, i64* %6, align 8
  store i64 %5922, i64* %3, align 8
  %call2_402612 = tail call %struct.Memory* @sub_409db0._Z14test_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %5922, %struct.Memory* %5784)
  %5927 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41462c_type* @G__0x41462c to i64), i64* %RCX.i4032, align 8
  %5928 = load i64, i64* %RBP.i, align 8
  %5929 = add i64 %5928, -136
  %5930 = add i64 %5927, 32
  store i64 %5930, i64* %3, align 8
  %5931 = inttoptr i64 %5929 to i64*
  %5932 = load i64, i64* %5931, align 8
  store i64 %5932, i64* %RDX.i4028, align 8
  %5933 = add i64 %5927, 30793
  %5934 = add i64 %5927, 37
  %5935 = load i64, i64* %6, align 8
  %5936 = add i64 %5935, -8
  %5937 = inttoptr i64 %5936 to i64*
  store i64 %5934, i64* %5937, align 8
  store i64 %5936, i64* %6, align 8
  store i64 %5933, i64* %3, align 8
  %call2_402637 = tail call %struct.Memory* @sub_409e60._Z22test_hoisted_variable1Im19custom_add_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %5933, %struct.Memory* %call2_402612)
  %5938 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41464a_type* @G__0x41464a to i64), i64* %RAX.i4030.pre-phi, align 8
  %5939 = load i64, i64* %RBP.i, align 8
  %5940 = add i64 %5939, -136
  %5941 = add i64 %5938, 32
  store i64 %5941, i64* %3, align 8
  %5942 = inttoptr i64 %5940 to i64*
  %5943 = load i64, i64* %5942, align 8
  store i64 %5943, i64* %RDX.i4028, align 8
  %5944 = add i64 %5939, -144
  %5945 = add i64 %5938, 39
  store i64 %5945, i64* %3, align 8
  %5946 = inttoptr i64 %5944 to i64*
  %5947 = load i64, i64* %5946, align 8
  store i64 %5947, i64* %RCX.i4032, align 8
  %5948 = add i64 %5939, -152
  %5949 = add i64 %5938, 46
  store i64 %5949, i64* %3, align 8
  %5950 = inttoptr i64 %5948 to i64*
  %5951 = load i64, i64* %5950, align 8
  store i64 %5951, i64* %242, align 8
  %5952 = add i64 %5939, -160
  %5953 = add i64 %5938, 53
  store i64 %5953, i64* %3, align 8
  %5954 = inttoptr i64 %5952 to i64*
  %5955 = load i64, i64* %5954, align 8
  store i64 %5955, i64* %473, align 8
  %5956 = bitcast i64* %6 to i64**
  %5957 = load i64*, i64** %5956, align 8
  %5958 = add i64 %5938, 57
  store i64 %5958, i64* %3, align 8
  store i64 ptrtoint (%G__0x41464a_type* @G__0x41464a to i64), i64* %5957, align 8
  %5959 = load i64, i64* %3, align 8
  %5960 = add i64 %5959, 30875
  %5961 = add i64 %5959, 5
  %5962 = load i64, i64* %6, align 8
  %5963 = add i64 %5962, -8
  %5964 = inttoptr i64 %5963 to i64*
  store i64 %5961, i64* %5964, align 8
  store i64 %5963, i64* %6, align 8
  store i64 %5960, i64* %3, align 8
  %call2_402675 = tail call %struct.Memory* @sub_409f10._Z14test_variable4Im28custom_add_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5960, %struct.Memory* %call2_402637)
  %5965 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41466a_type* @G__0x41466a to i64), i64* %RCX.i4032, align 8
  %5966 = load i64, i64* %RBP.i, align 8
  %5967 = add i64 %5966, -136
  %5968 = add i64 %5965, 32
  store i64 %5968, i64* %3, align 8
  %5969 = inttoptr i64 %5967 to i64*
  %5970 = load i64, i64* %5969, align 8
  store i64 %5970, i64* %RDX.i4028, align 8
  %5971 = add i64 %5965, 31078
  %5972 = add i64 %5965, 37
  %5973 = load i64, i64* %6, align 8
  %5974 = add i64 %5973, -8
  %5975 = inttoptr i64 %5974 to i64*
  store i64 %5972, i64* %5975, align 8
  store i64 %5974, i64* %6, align 8
  store i64 %5971, i64* %3, align 8
  %call2_40269a = tail call %struct.Memory* @sub_409fe0._Z14test_variable1Im19custom_sub_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %5971, %struct.Memory* %call2_402675)
  %5976 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414685_type* @G__0x414685 to i64), i64* %RAX.i4030.pre-phi, align 8
  %5977 = load i64, i64* %RBP.i, align 8
  %5978 = add i64 %5977, -136
  %5979 = add i64 %5976, 32
  store i64 %5979, i64* %3, align 8
  %5980 = inttoptr i64 %5978 to i64*
  %5981 = load i64, i64* %5980, align 8
  store i64 %5981, i64* %RDX.i4028, align 8
  %5982 = add i64 %5977, -144
  %5983 = add i64 %5976, 39
  store i64 %5983, i64* %3, align 8
  %5984 = inttoptr i64 %5982 to i64*
  %5985 = load i64, i64* %5984, align 8
  store i64 %5985, i64* %RCX.i4032, align 8
  %5986 = add i64 %5977, -152
  %5987 = add i64 %5976, 46
  store i64 %5987, i64* %3, align 8
  %5988 = inttoptr i64 %5986 to i64*
  %5989 = load i64, i64* %5988, align 8
  store i64 %5989, i64* %242, align 8
  %5990 = add i64 %5977, -160
  %5991 = add i64 %5976, 53
  store i64 %5991, i64* %3, align 8
  %5992 = inttoptr i64 %5990 to i64*
  %5993 = load i64, i64* %5992, align 8
  store i64 %5993, i64* %473, align 8
  %5994 = load i64*, i64** %5956, align 8
  %5995 = add i64 %5976, 57
  store i64 %5995, i64* %3, align 8
  store i64 ptrtoint (%G__0x414685_type* @G__0x414685 to i64), i64* %5994, align 8
  %5996 = load i64, i64* %3, align 8
  %5997 = add i64 %5996, 31160
  %5998 = add i64 %5996, 5
  %5999 = load i64, i64* %6, align 8
  %6000 = add i64 %5999, -8
  %6001 = inttoptr i64 %6000 to i64*
  store i64 %5998, i64* %6001, align 8
  store i64 %6000, i64* %6, align 8
  store i64 %5997, i64* %3, align 8
  %call2_4026d8 = tail call %struct.Memory* @sub_40a090._Z14test_variable4Im28custom_sub_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %5997, %struct.Memory* %call2_40269a)
  %6002 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4146aa_type* @G__0x4146aa to i64), i64* %RCX.i4032, align 8
  %6003 = load i64, i64* %RBP.i, align 8
  %6004 = add i64 %6003, -136
  %6005 = add i64 %6002, 32
  store i64 %6005, i64* %3, align 8
  %6006 = inttoptr i64 %6004 to i64*
  %6007 = load i64, i64* %6006, align 8
  store i64 %6007, i64* %RDX.i4028, align 8
  %6008 = add i64 %6002, 31363
  %6009 = add i64 %6002, 37
  %6010 = load i64, i64* %6, align 8
  %6011 = add i64 %6010, -8
  %6012 = inttoptr i64 %6011 to i64*
  store i64 %6009, i64* %6012, align 8
  store i64 %6011, i64* %6, align 8
  store i64 %6008, i64* %3, align 8
  %call2_4026fd = tail call %struct.Memory* @sub_40a160._Z14test_variable1Im24custom_multiply_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %6008, %struct.Memory* %call2_4026d8)
  %6013 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4146c5_type* @G__0x4146c5 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6014 = load i64, i64* %RBP.i, align 8
  %6015 = add i64 %6014, -136
  %6016 = add i64 %6013, 32
  store i64 %6016, i64* %3, align 8
  %6017 = inttoptr i64 %6015 to i64*
  %6018 = load i64, i64* %6017, align 8
  store i64 %6018, i64* %RDX.i4028, align 8
  %6019 = add i64 %6014, -144
  %6020 = add i64 %6013, 39
  store i64 %6020, i64* %3, align 8
  %6021 = inttoptr i64 %6019 to i64*
  %6022 = load i64, i64* %6021, align 8
  store i64 %6022, i64* %RCX.i4032, align 8
  %6023 = add i64 %6014, -152
  %6024 = add i64 %6013, 46
  store i64 %6024, i64* %3, align 8
  %6025 = inttoptr i64 %6023 to i64*
  %6026 = load i64, i64* %6025, align 8
  store i64 %6026, i64* %242, align 8
  %6027 = add i64 %6014, -160
  %6028 = add i64 %6013, 53
  store i64 %6028, i64* %3, align 8
  %6029 = inttoptr i64 %6027 to i64*
  %6030 = load i64, i64* %6029, align 8
  store i64 %6030, i64* %473, align 8
  %6031 = load i64*, i64** %5956, align 8
  %6032 = add i64 %6013, 57
  store i64 %6032, i64* %3, align 8
  store i64 ptrtoint (%G__0x4146c5_type* @G__0x4146c5 to i64), i64* %6031, align 8
  %6033 = load i64, i64* %3, align 8
  %6034 = add i64 %6033, 31445
  %6035 = add i64 %6033, 5
  %6036 = load i64, i64* %6, align 8
  %6037 = add i64 %6036, -8
  %6038 = inttoptr i64 %6037 to i64*
  store i64 %6035, i64* %6038, align 8
  store i64 %6037, i64* %6, align 8
  store i64 %6034, i64* %3, align 8
  %call2_40273b = tail call %struct.Memory* @sub_40a210._Z14test_variable4Im33custom_multiply_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6034, %struct.Memory* %call2_4026fd)
  %6039 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4146eb_type* @G__0x4146eb to i64), i64* %RAX.i4030.pre-phi, align 8
  %6040 = load i64, i64* %RBP.i, align 8
  %6041 = add i64 %6040, -136
  %6042 = add i64 %6039, 32
  store i64 %6042, i64* %3, align 8
  %6043 = inttoptr i64 %6041 to i64*
  %6044 = load i64, i64* %6043, align 8
  store i64 %6044, i64* %RDX.i4028, align 8
  %6045 = add i64 %6040, -144
  %6046 = add i64 %6039, 39
  store i64 %6046, i64* %3, align 8
  %6047 = inttoptr i64 %6045 to i64*
  %6048 = load i64, i64* %6047, align 8
  store i64 %6048, i64* %RCX.i4032, align 8
  %6049 = add i64 %6040, -152
  %6050 = add i64 %6039, 46
  store i64 %6050, i64* %3, align 8
  %6051 = inttoptr i64 %6049 to i64*
  %6052 = load i64, i64* %6051, align 8
  store i64 %6052, i64* %242, align 8
  %6053 = add i64 %6040, -160
  %6054 = add i64 %6039, 53
  store i64 %6054, i64* %3, align 8
  %6055 = inttoptr i64 %6053 to i64*
  %6056 = load i64, i64* %6055, align 8
  store i64 %6056, i64* %473, align 8
  %6057 = load i64*, i64** %5956, align 8
  %6058 = add i64 %6039, 57
  store i64 %6058, i64* %3, align 8
  store i64 ptrtoint (%G__0x4146eb_type* @G__0x4146eb to i64), i64* %6057, align 8
  %6059 = load i64, i64* %3, align 8
  %6060 = add i64 %6059, 31591
  %6061 = add i64 %6059, 5
  %6062 = load i64, i64* %6, align 8
  %6063 = add i64 %6062, -8
  %6064 = inttoptr i64 %6063 to i64*
  store i64 %6061, i64* %6064, align 8
  store i64 %6063, i64* %6, align 8
  store i64 %6060, i64* %3, align 8
  %call2_402779 = tail call %struct.Memory* @sub_40a2e0._Z14test_variable4Im34custom_multiply_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6060, %struct.Memory* %call2_40273b)
  %6065 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414712_type* @G__0x414712 to i64), i64* %RCX.i4032, align 8
  %6066 = load i64, i64* %RBP.i, align 8
  %6067 = add i64 %6066, -136
  %6068 = add i64 %6065, 32
  store i64 %6068, i64* %3, align 8
  %6069 = inttoptr i64 %6067 to i64*
  %6070 = load i64, i64* %6069, align 8
  store i64 %6070, i64* %RDX.i4028, align 8
  %6071 = add i64 %6065, 31794
  %6072 = add i64 %6065, 37
  %6073 = load i64, i64* %6, align 8
  %6074 = add i64 %6073, -8
  %6075 = inttoptr i64 %6074 to i64*
  store i64 %6072, i64* %6075, align 8
  store i64 %6074, i64* %6, align 8
  store i64 %6071, i64* %3, align 8
  %call2_40279e = tail call %struct.Memory* @sub_40a3b0._Z14test_variable1Im22custom_divide_variableImEEvPT_iS2_PKc(%struct.State* %0, i64 %6071, %struct.Memory* %call2_402779)
  %6076 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41472b_type* @G__0x41472b to i64), i64* %RAX.i4030.pre-phi, align 8
  %6077 = load i64, i64* %RBP.i, align 8
  %6078 = add i64 %6077, -136
  %6079 = add i64 %6076, 32
  store i64 %6079, i64* %3, align 8
  %6080 = inttoptr i64 %6078 to i64*
  %6081 = load i64, i64* %6080, align 8
  store i64 %6081, i64* %RDX.i4028, align 8
  %6082 = add i64 %6077, -144
  %6083 = add i64 %6076, 39
  store i64 %6083, i64* %3, align 8
  %6084 = inttoptr i64 %6082 to i64*
  %6085 = load i64, i64* %6084, align 8
  store i64 %6085, i64* %RCX.i4032, align 8
  %6086 = add i64 %6077, -152
  %6087 = add i64 %6076, 46
  store i64 %6087, i64* %3, align 8
  %6088 = inttoptr i64 %6086 to i64*
  %6089 = load i64, i64* %6088, align 8
  store i64 %6089, i64* %242, align 8
  %6090 = add i64 %6077, -160
  %6091 = add i64 %6076, 53
  store i64 %6091, i64* %3, align 8
  %6092 = inttoptr i64 %6090 to i64*
  %6093 = load i64, i64* %6092, align 8
  store i64 %6093, i64* %473, align 8
  %6094 = load i64*, i64** %5956, align 8
  %6095 = add i64 %6076, 57
  store i64 %6095, i64* %3, align 8
  store i64 ptrtoint (%G__0x41472b_type* @G__0x41472b to i64), i64* %6094, align 8
  %6096 = load i64, i64* %3, align 8
  %6097 = add i64 %6096, 31876
  %6098 = add i64 %6096, 5
  %6099 = load i64, i64* %6, align 8
  %6100 = add i64 %6099, -8
  %6101 = inttoptr i64 %6100 to i64*
  store i64 %6098, i64* %6101, align 8
  store i64 %6100, i64* %6, align 8
  store i64 %6097, i64* %3, align 8
  %call2_4027dc = tail call %struct.Memory* @sub_40a460._Z14test_variable4Im31custom_divide_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6097, %struct.Memory* %call2_40279e)
  %6102 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41474e_type* @G__0x41474e to i64), i64* %RAX.i4030.pre-phi, align 8
  %6103 = load i64, i64* %RBP.i, align 8
  %6104 = add i64 %6103, -136
  %6105 = add i64 %6102, 32
  store i64 %6105, i64* %3, align 8
  %6106 = inttoptr i64 %6104 to i64*
  %6107 = load i64, i64* %6106, align 8
  store i64 %6107, i64* %RDX.i4028, align 8
  %6108 = add i64 %6103, -144
  %6109 = add i64 %6102, 39
  store i64 %6109, i64* %3, align 8
  %6110 = inttoptr i64 %6108 to i64*
  %6111 = load i64, i64* %6110, align 8
  store i64 %6111, i64* %RCX.i4032, align 8
  %6112 = add i64 %6103, -152
  %6113 = add i64 %6102, 46
  store i64 %6113, i64* %3, align 8
  %6114 = inttoptr i64 %6112 to i64*
  %6115 = load i64, i64* %6114, align 8
  store i64 %6115, i64* %242, align 8
  %6116 = add i64 %6103, -160
  %6117 = add i64 %6102, 53
  store i64 %6117, i64* %3, align 8
  %6118 = inttoptr i64 %6116 to i64*
  %6119 = load i64, i64* %6118, align 8
  store i64 %6119, i64* %473, align 8
  %6120 = load i64*, i64** %5956, align 8
  %6121 = add i64 %6102, 57
  store i64 %6121, i64* %3, align 8
  store i64 ptrtoint (%G__0x41474e_type* @G__0x41474e to i64), i64* %6120, align 8
  %6122 = load i64, i64* %3, align 8
  %6123 = add i64 %6122, 32022
  %6124 = add i64 %6122, 5
  %6125 = load i64, i64* %6, align 8
  %6126 = add i64 %6125, -8
  %6127 = inttoptr i64 %6126 to i64*
  store i64 %6124, i64* %6127, align 8
  store i64 %6126, i64* %6, align 8
  store i64 %6123, i64* %3, align 8
  %call2_40281a = tail call %struct.Memory* @sub_40a530._Z14test_variable4Im32custom_divide_multiple_variable2ImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6123, %struct.Memory* %call2_4027dc)
  %6128 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414772_type* @G__0x414772 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6129 = load i64, i64* %RBP.i, align 8
  %6130 = add i64 %6129, -136
  %6131 = add i64 %6128, 32
  store i64 %6131, i64* %3, align 8
  %6132 = inttoptr i64 %6130 to i64*
  %6133 = load i64, i64* %6132, align 8
  store i64 %6133, i64* %RDX.i4028, align 8
  %6134 = add i64 %6129, -144
  %6135 = add i64 %6128, 39
  store i64 %6135, i64* %3, align 8
  %6136 = inttoptr i64 %6134 to i64*
  %6137 = load i64, i64* %6136, align 8
  store i64 %6137, i64* %RCX.i4032, align 8
  %6138 = add i64 %6129, -152
  %6139 = add i64 %6128, 46
  store i64 %6139, i64* %3, align 8
  %6140 = inttoptr i64 %6138 to i64*
  %6141 = load i64, i64* %6140, align 8
  store i64 %6141, i64* %242, align 8
  %6142 = add i64 %6129, -160
  %6143 = add i64 %6128, 53
  store i64 %6143, i64* %3, align 8
  %6144 = inttoptr i64 %6142 to i64*
  %6145 = load i64, i64* %6144, align 8
  store i64 %6145, i64* %473, align 8
  %6146 = load i64*, i64** %5956, align 8
  %6147 = add i64 %6128, 57
  store i64 %6147, i64* %3, align 8
  store i64 ptrtoint (%G__0x414772_type* @G__0x414772 to i64), i64* %6146, align 8
  %6148 = load i64, i64* %3, align 8
  %6149 = add i64 %6148, 32168
  %6150 = add i64 %6148, 5
  %6151 = load i64, i64* %6, align 8
  %6152 = add i64 %6151, -8
  %6153 = inttoptr i64 %6152 to i64*
  store i64 %6150, i64* %6153, align 8
  store i64 %6152, i64* %6, align 8
  store i64 %6149, i64* %3, align 8
  %call2_402858 = tail call %struct.Memory* @sub_40a600._Z14test_variable4Im30custom_mixed_multiple_variableImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6149, %struct.Memory* %call2_40281a)
  %6154 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414793_type* @G__0x414793 to i64), i64* %RCX.i4032, align 8
  %6155 = load i64, i64* %RBP.i, align 8
  %6156 = add i64 %6155, -136
  %6157 = add i64 %6154, 32
  store i64 %6157, i64* %3, align 8
  %6158 = inttoptr i64 %6156 to i64*
  %6159 = load i64, i64* %6158, align 8
  store i64 %6159, i64* %RDX.i4028, align 8
  %6160 = add i64 %6154, 32371
  %6161 = add i64 %6154, 37
  %6162 = load i64, i64* %6, align 8
  %6163 = add i64 %6162, -8
  %6164 = inttoptr i64 %6163 to i64*
  store i64 %6161, i64* %6164, align 8
  store i64 %6163, i64* %6, align 8
  store i64 %6160, i64* %3, align 8
  %call2_40287d = tail call %struct.Memory* @sub_40a6d0._Z14test_variable1Im19custom_variable_andImEEvPT_iS2_PKc(%struct.State* %0, i64 %6160, %struct.Memory* %call2_402858)
  %6165 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147a9_type* @G__0x4147a9 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6166 = load i64, i64* %RBP.i, align 8
  %6167 = add i64 %6166, -136
  %6168 = add i64 %6165, 32
  store i64 %6168, i64* %3, align 8
  %6169 = inttoptr i64 %6167 to i64*
  %6170 = load i64, i64* %6169, align 8
  store i64 %6170, i64* %RDX.i4028, align 8
  %6171 = add i64 %6166, -144
  %6172 = add i64 %6165, 39
  store i64 %6172, i64* %3, align 8
  %6173 = inttoptr i64 %6171 to i64*
  %6174 = load i64, i64* %6173, align 8
  store i64 %6174, i64* %RCX.i4032, align 8
  %6175 = add i64 %6166, -152
  %6176 = add i64 %6165, 46
  store i64 %6176, i64* %3, align 8
  %6177 = inttoptr i64 %6175 to i64*
  %6178 = load i64, i64* %6177, align 8
  store i64 %6178, i64* %242, align 8
  %6179 = add i64 %6166, -160
  %6180 = add i64 %6165, 53
  store i64 %6180, i64* %3, align 8
  %6181 = inttoptr i64 %6179 to i64*
  %6182 = load i64, i64* %6181, align 8
  store i64 %6182, i64* %473, align 8
  %6183 = load i64*, i64** %5956, align 8
  %6184 = add i64 %6165, 57
  store i64 %6184, i64* %3, align 8
  store i64 ptrtoint (%G__0x4147a9_type* @G__0x4147a9 to i64), i64* %6183, align 8
  %6185 = load i64, i64* %3, align 8
  %6186 = add i64 %6185, 32453
  %6187 = add i64 %6185, 5
  %6188 = load i64, i64* %6, align 8
  %6189 = add i64 %6188, -8
  %6190 = inttoptr i64 %6189 to i64*
  store i64 %6187, i64* %6190, align 8
  store i64 %6189, i64* %6, align 8
  store i64 %6186, i64* %3, align 8
  %call2_4028bb = tail call %struct.Memory* @sub_40a780._Z14test_variable4Im28custom_multiple_variable_andImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6186, %struct.Memory* %call2_40287d)
  %6191 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147c8_type* @G__0x4147c8 to i64), i64* %RCX.i4032, align 8
  %6192 = load i64, i64* %RBP.i, align 8
  %6193 = add i64 %6192, -136
  %6194 = add i64 %6191, 32
  store i64 %6194, i64* %3, align 8
  %6195 = inttoptr i64 %6193 to i64*
  %6196 = load i64, i64* %6195, align 8
  store i64 %6196, i64* %RDX.i4028, align 8
  %6197 = add i64 %6191, 32656
  %6198 = add i64 %6191, 37
  %6199 = load i64, i64* %6, align 8
  %6200 = add i64 %6199, -8
  %6201 = inttoptr i64 %6200 to i64*
  store i64 %6198, i64* %6201, align 8
  store i64 %6200, i64* %6, align 8
  store i64 %6197, i64* %3, align 8
  %call2_4028e0 = tail call %struct.Memory* @sub_40a850._Z14test_variable1Im18custom_variable_orImEEvPT_iS2_PKc(%struct.State* %0, i64 %6197, %struct.Memory* %call2_4028bb)
  %6202 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147dd_type* @G__0x4147dd to i64), i64* %RAX.i4030.pre-phi, align 8
  %6203 = load i64, i64* %RBP.i, align 8
  %6204 = add i64 %6203, -136
  %6205 = add i64 %6202, 32
  store i64 %6205, i64* %3, align 8
  %6206 = inttoptr i64 %6204 to i64*
  %6207 = load i64, i64* %6206, align 8
  store i64 %6207, i64* %RDX.i4028, align 8
  %6208 = add i64 %6203, -144
  %6209 = add i64 %6202, 39
  store i64 %6209, i64* %3, align 8
  %6210 = inttoptr i64 %6208 to i64*
  %6211 = load i64, i64* %6210, align 8
  store i64 %6211, i64* %RCX.i4032, align 8
  %6212 = add i64 %6203, -152
  %6213 = add i64 %6202, 46
  store i64 %6213, i64* %3, align 8
  %6214 = inttoptr i64 %6212 to i64*
  %6215 = load i64, i64* %6214, align 8
  store i64 %6215, i64* %242, align 8
  %6216 = add i64 %6203, -160
  %6217 = add i64 %6202, 53
  store i64 %6217, i64* %3, align 8
  %6218 = inttoptr i64 %6216 to i64*
  %6219 = load i64, i64* %6218, align 8
  store i64 %6219, i64* %473, align 8
  %6220 = load i64*, i64** %5956, align 8
  %6221 = add i64 %6202, 57
  store i64 %6221, i64* %3, align 8
  store i64 ptrtoint (%G__0x4147dd_type* @G__0x4147dd to i64), i64* %6220, align 8
  %6222 = load i64, i64* %3, align 8
  %6223 = add i64 %6222, 32738
  %6224 = add i64 %6222, 5
  %6225 = load i64, i64* %6, align 8
  %6226 = add i64 %6225, -8
  %6227 = inttoptr i64 %6226 to i64*
  store i64 %6224, i64* %6227, align 8
  store i64 %6226, i64* %6, align 8
  store i64 %6223, i64* %3, align 8
  %call2_40291e = tail call %struct.Memory* @sub_40a900._Z14test_variable4Im27custom_multiple_variable_orImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6223, %struct.Memory* %call2_4028e0)
  %6228 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4147fb_type* @G__0x4147fb to i64), i64* %RCX.i4032, align 8
  %6229 = load i64, i64* %RBP.i, align 8
  %6230 = add i64 %6229, -136
  %6231 = add i64 %6228, 32
  store i64 %6231, i64* %3, align 8
  %6232 = inttoptr i64 %6230 to i64*
  %6233 = load i64, i64* %6232, align 8
  store i64 %6233, i64* %RDX.i4028, align 8
  %6234 = add i64 %6228, 32941
  %6235 = add i64 %6228, 37
  %6236 = load i64, i64* %6, align 8
  %6237 = add i64 %6236, -8
  %6238 = inttoptr i64 %6237 to i64*
  store i64 %6235, i64* %6238, align 8
  store i64 %6237, i64* %6, align 8
  store i64 %6234, i64* %3, align 8
  %call2_402943 = tail call %struct.Memory* @sub_40a9d0._Z14test_variable1Im19custom_variable_xorImEEvPT_iS2_PKc(%struct.State* %0, i64 %6234, %struct.Memory* %call2_40291e)
  %6239 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x6317c0_type* @G__0x6317c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414811_type* @G__0x414811 to i64), i64* %RAX.i4030.pre-phi, align 8
  %6240 = load i64, i64* %RBP.i, align 8
  %6241 = add i64 %6240, -136
  %6242 = add i64 %6239, 32
  store i64 %6242, i64* %3, align 8
  %6243 = inttoptr i64 %6241 to i64*
  %6244 = load i64, i64* %6243, align 8
  store i64 %6244, i64* %RDX.i4028, align 8
  %6245 = add i64 %6240, -144
  %6246 = add i64 %6239, 39
  store i64 %6246, i64* %3, align 8
  %6247 = inttoptr i64 %6245 to i64*
  %6248 = load i64, i64* %6247, align 8
  store i64 %6248, i64* %RCX.i4032, align 8
  %6249 = add i64 %6240, -152
  %6250 = add i64 %6239, 46
  store i64 %6250, i64* %3, align 8
  %6251 = inttoptr i64 %6249 to i64*
  %6252 = load i64, i64* %6251, align 8
  store i64 %6252, i64* %242, align 8
  %6253 = add i64 %6240, -160
  %6254 = add i64 %6239, 53
  store i64 %6254, i64* %3, align 8
  %6255 = inttoptr i64 %6253 to i64*
  %6256 = load i64, i64* %6255, align 8
  store i64 %6256, i64* %473, align 8
  %6257 = load i64*, i64** %5956, align 8
  %6258 = add i64 %6239, 57
  store i64 %6258, i64* %3, align 8
  store i64 ptrtoint (%G__0x414811_type* @G__0x414811 to i64), i64* %6257, align 8
  %6259 = load i64, i64* %3, align 8
  %6260 = add i64 %6259, 33023
  %6261 = add i64 %6259, 5
  %6262 = load i64, i64* %6, align 8
  %6263 = add i64 %6262, -8
  %6264 = inttoptr i64 %6263 to i64*
  store i64 %6261, i64* %6264, align 8
  store i64 %6263, i64* %6, align 8
  store i64 %6260, i64* %3, align 8
  %call2_402981 = tail call %struct.Memory* @sub_40aa80._Z14test_variable4Im28custom_multiple_variable_xorImEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6260, %struct.Memory* %call2_402943)
  %6265 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RAX.i4030.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64* %RCX.i4032, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 32000)) to i8), i8* %26, align 1
  %6266 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000) to i32), i32 255))
  %6267 = trunc i32 %6266 to i8
  %6268 = and i8 %6267, 1
  %6269 = xor i8 %6268, 1
  store i8 %6269, i8* %33, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000)), i64 4) to i8), i8 1), i8* %39, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 0) to i8), i8* %42, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 63) to i8), i8* %45, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 63), i64 lshr (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64 63)), i64 2) to i8), i8* %51, align 1
  %6270 = load double, double* bitcast (%G_0x61a088_type* @G_0x61a088 to double*), align 8
  %6271 = bitcast double %6270 to <2 x i32>
  %6272 = fptrunc double %6270 to float
  %6273 = bitcast [32 x %union.VectorReg]* %52 to float*
  store float %6272, float* %6273, align 1
  %6274 = extractelement <2 x i32> %6271, i32 1
  %6275 = getelementptr inbounds i8, i8* %53, i64 4
  %6276 = bitcast i8* %6275 to i32*
  store i32 %6274, i32* %6276, align 1
  %6277 = bitcast i64* %57 to i32*
  store i32 0, i32* %6277, align 1
  %6278 = getelementptr inbounds i8, i8* %53, i64 12
  %6279 = bitcast i8* %6278 to i32*
  store i32 0, i32* %6279, align 1
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64 32000), i64* %RSI.i3042, align 8
  %6280 = add i64 %6265, 33226
  %6281 = add i64 %6265, 44
  %6282 = load i64, i64* %6, align 8
  %6283 = add i64 %6282, -8
  %6284 = inttoptr i64 %6283 to i64*
  store i64 %6281, i64* %6284, align 8
  store i64 %6283, i64* %6, align 8
  store i64 %6280, i64* %3, align 8
  %call2_4029ad = tail call %struct.Memory* @sub_40ab50._Z4fillIPffEvT_S1_T0_(%struct.State* %0, i64 %6280, %struct.Memory* %call2_402981)
  %6285 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414830_type* @G__0x414830 to i64), i64* %RDX.i4028, align 8
  %6286 = load i32, i32* bitcast (%G_0x1149d__rip__4205011__type* @G_0x1149d__rip__4205011_ to i32*), align 8
  %6287 = bitcast [32 x %union.VectorReg]* %52 to i32*
  store i32 %6286, i32* %6287, align 1
  %6288 = bitcast i8* %6275 to float*
  store float 0.000000e+00, float* %6288, align 1
  %6289 = bitcast i64* %57 to float*
  store float 0.000000e+00, float* %6289, align 1
  %6290 = bitcast i8* %6278 to float*
  store float 0.000000e+00, float* %6290, align 1
  %6291 = load i64, i64* %RBP.i, align 8
  %6292 = add i64 %6291, -40
  %6293 = add i64 %6285, 38
  store i64 %6293, i64* %3, align 8
  %6294 = inttoptr i64 %6292 to double*
  %6295 = load double, double* %6294, align 8
  %6296 = bitcast double %6295 to <2 x i32>
  %6297 = bitcast i64* %5615 to <2 x i32>*
  %6298 = fptrunc double %6295 to float
  %6299 = bitcast %union.VectorReg* %5611 to float*
  store float %6298, float* %6299, align 1
  %6300 = extractelement <2 x i32> %6296, i32 1
  store i32 %6300, i32* %5717, align 1
  %6301 = add i64 %6291, -164
  %6302 = add i64 %6285, 50
  store i64 %6302, i64* %3, align 8
  %6303 = bitcast %union.VectorReg* %5611 to <2 x float>*
  %6304 = load <2 x float>, <2 x float>* %6303, align 1
  %6305 = extractelement <2 x float> %6304, i32 0
  %6306 = inttoptr i64 %6301 to float*
  store float %6305, float* %6306, align 4
  %6307 = load i64, i64* %3, align 8
  %6308 = load <2 x i32>, <2 x i32>* %5619, align 1
  %6309 = load <2 x i32>, <2 x i32>* %5621, align 1
  %6310 = extractelement <2 x i32> %6308, i32 0
  store i32 %6310, i32* %5714, align 1
  %6311 = extractelement <2 x i32> %6308, i32 1
  store i32 %6311, i32* %5717, align 1
  %6312 = extractelement <2 x i32> %6309, i32 0
  store i32 %6312, i32* %5718, align 1
  %6313 = extractelement <2 x i32> %6309, i32 1
  store i32 %6313, i32* %5720, align 1
  %6314 = load i64, i64* %RBP.i, align 8
  %6315 = add i64 %6314, -164
  %6316 = add i64 %6307, 11
  store i64 %6316, i64* %3, align 8
  %6317 = load <2 x float>, <2 x float>* %6303, align 1
  %6318 = load <2 x i32>, <2 x i32>* %6297, align 1
  %6319 = inttoptr i64 %6315 to float*
  %6320 = load float, float* %6319, align 4
  %6321 = extractelement <2 x float> %6317, i32 0
  %6322 = fmul float %6321, %6320
  store float %6322, float* %6299, align 1
  %6323 = bitcast <2 x float> %6317 to <2 x i32>
  %6324 = extractelement <2 x i32> %6323, i32 1
  store i32 %6324, i32* %5717, align 1
  %6325 = extractelement <2 x i32> %6318, i32 0
  store i32 %6325, i32* %5718, align 1
  %6326 = extractelement <2 x i32> %6318, i32 1
  store i32 %6326, i32* %5720, align 1
  %6327 = add i64 %6314, -168
  %6328 = add i64 %6307, 19
  store i64 %6328, i64* %3, align 8
  %6329 = load <2 x float>, <2 x float>* %6303, align 1
  %6330 = extractelement <2 x float> %6329, i32 0
  %6331 = inttoptr i64 %6327 to float*
  store float %6330, float* %6331, align 4
  %6332 = load i64, i64* %RBP.i, align 8
  %6333 = add i64 %6332, -164
  %6334 = load i64, i64* %3, align 8
  %6335 = add i64 %6334, 8
  store i64 %6335, i64* %3, align 8
  %6336 = bitcast [32 x %union.VectorReg]* %52 to <2 x float>*
  %6337 = load <2 x float>, <2 x float>* %6336, align 1
  %6338 = load <2 x i32>, <2 x i32>* %5621, align 1
  %6339 = inttoptr i64 %6333 to float*
  %6340 = load float, float* %6339, align 4
  %6341 = extractelement <2 x float> %6337, i32 0
  %6342 = fadd float %6341, %6340
  store float %6342, float* %6273, align 1
  %6343 = bitcast <2 x float> %6337 to <2 x i32>
  %6344 = extractelement <2 x i32> %6343, i32 1
  store i32 %6344, i32* %6276, align 1
  %6345 = extractelement <2 x i32> %6338, i32 0
  store i32 %6345, i32* %6277, align 1
  %6346 = extractelement <2 x i32> %6338, i32 1
  store i32 %6346, i32* %6279, align 1
  %6347 = add i64 %6332, -172
  %6348 = add i64 %6334, 16
  store i64 %6348, i64* %3, align 8
  %6349 = load <2 x float>, <2 x float>* %6336, align 1
  %6350 = extractelement <2 x float> %6349, i32 0
  %6351 = inttoptr i64 %6347 to float*
  store float %6350, float* %6351, align 4
  %6352 = load i64, i64* %RBP.i, align 8
  %6353 = add i64 %6352, -164
  %6354 = load i64, i64* %3, align 8
  %6355 = add i64 %6354, 8
  store i64 %6355, i64* %3, align 8
  %6356 = inttoptr i64 %6353 to i32*
  %6357 = load i32, i32* %6356, align 4
  store i32 %6357, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6358 = add i64 %6352, -168
  %6359 = add i64 %6354, 16
  store i64 %6359, i64* %3, align 8
  %6360 = inttoptr i64 %6358 to i32*
  %6361 = load i32, i32* %6360, align 4
  store i32 %6361, i32* %5714, align 1
  %6362 = bitcast i8* %5716 to float*
  store float 0.000000e+00, float* %6362, align 1
  %6363 = bitcast i64* %5615 to float*
  store float 0.000000e+00, float* %6363, align 1
  %6364 = bitcast i8* %5719 to float*
  store float 0.000000e+00, float* %6364, align 1
  %6365 = add i64 %6352, -172
  %6366 = add i64 %6354, 24
  store i64 %6366, i64* %3, align 8
  %6367 = load <2 x float>, <2 x float>* %6303, align 1
  %6368 = load <2 x i32>, <2 x i32>* %6297, align 1
  %6369 = inttoptr i64 %6365 to float*
  %6370 = load float, float* %6369, align 4
  %6371 = extractelement <2 x float> %6367, i32 0
  %6372 = fdiv float %6371, %6370
  store float %6372, float* %6299, align 1
  %6373 = bitcast <2 x float> %6367 to <2 x i32>
  %6374 = extractelement <2 x i32> %6373, i32 1
  store i32 %6374, i32* %5717, align 1
  %6375 = extractelement <2 x i32> %6368, i32 0
  store i32 %6375, i32* %5718, align 1
  %6376 = extractelement <2 x i32> %6368, i32 1
  store i32 %6376, i32* %5720, align 1
  %6377 = load <2 x float>, <2 x float>* %6336, align 1
  %6378 = load <2 x i32>, <2 x i32>* %5621, align 1
  %6379 = load <2 x float>, <2 x float>* %6303, align 1
  %6380 = extractelement <2 x float> %6377, i32 0
  %6381 = extractelement <2 x float> %6379, i32 0
  %6382 = fadd float %6380, %6381
  store float %6382, float* %6273, align 1
  %6383 = bitcast <2 x float> %6377 to <2 x i32>
  %6384 = extractelement <2 x i32> %6383, i32 1
  store i32 %6384, i32* %6276, align 1
  %6385 = extractelement <2 x i32> %6378, i32 0
  store i32 %6385, i32* %6277, align 1
  %6386 = extractelement <2 x i32> %6378, i32 1
  store i32 %6386, i32* %6279, align 1
  %6387 = add i64 %6352, -176
  %6388 = add i64 %6354, 36
  store i64 %6388, i64* %3, align 8
  %6389 = load <2 x float>, <2 x float>* %6336, align 1
  %6390 = extractelement <2 x float> %6389, i32 0
  %6391 = inttoptr i64 %6387 to float*
  store float %6390, float* %6391, align 4
  %6392 = load i64, i64* %RBP.i, align 8
  %6393 = add i64 %6392, -164
  %6394 = load i64, i64* %3, align 8
  %6395 = add i64 %6394, 8
  store i64 %6395, i64* %3, align 8
  %6396 = inttoptr i64 %6393 to i32*
  %6397 = load i32, i32* %6396, align 4
  store i32 %6397, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6398 = add i64 %6394, 33125
  %6399 = add i64 %6394, 13
  %6400 = load i64, i64* %6, align 8
  %6401 = add i64 %6400, -8
  %6402 = inttoptr i64 %6401 to i64*
  store i64 %6399, i64* %6402, align 8
  store i64 %6401, i64* %6, align 8
  store i64 %6398, i64* %3, align 8
  %call2_402a33 = tail call %struct.Memory* @sub_40ab90._Z14test_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6398, %struct.Memory* %call2_4029ad)
  %6403 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414843_type* @G__0x414843 to i64), i64* %RDX.i4028, align 8
  %6404 = load i64, i64* %RBP.i, align 8
  %6405 = add i64 %6404, -164
  %6406 = add i64 %6403, 33
  store i64 %6406, i64* %3, align 8
  %6407 = inttoptr i64 %6405 to i32*
  %6408 = load i32, i32* %6407, align 4
  store i32 %6408, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6409 = add i64 %6403, 33288
  %6410 = add i64 %6403, 38
  %6411 = load i64, i64* %6, align 8
  %6412 = add i64 %6411, -8
  %6413 = inttoptr i64 %6412 to i64*
  store i64 %6410, i64* %6413, align 8
  store i64 %6412, i64* %6, align 8
  store i64 %6409, i64* %3, align 8
  %call2_402a59 = tail call %struct.Memory* @sub_40ac40._Z22test_hoisted_variable1If19custom_add_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6409, %struct.Memory* %call2_402a33)
  %6414 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41485e_type* @G__0x41485e to i64), i64* %RDX.i4028, align 8
  %6415 = load i64, i64* %RBP.i, align 8
  %6416 = add i64 %6415, -164
  %6417 = add i64 %6414, 33
  store i64 %6417, i64* %3, align 8
  %6418 = inttoptr i64 %6416 to i32*
  %6419 = load i32, i32* %6418, align 4
  store i32 %6419, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6420 = add i64 %6415, -168
  %6421 = add i64 %6414, 41
  store i64 %6421, i64* %3, align 8
  %6422 = inttoptr i64 %6420 to i32*
  %6423 = load i32, i32* %6422, align 4
  store i32 %6423, i32* %5714, align 1
  store float 0.000000e+00, float* %6362, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  %6424 = add i64 %6415, -172
  %6425 = add i64 %6414, 49
  store i64 %6425, i64* %3, align 8
  %6426 = inttoptr i64 %6424 to i32*
  %6427 = load i32, i32* %6426, align 4
  store i32 %6427, i32* %5623, align 1
  %6428 = bitcast i8* %5625 to float*
  store float 0.000000e+00, float* %6428, align 1
  %6429 = bitcast i64* %5627 to float*
  store float 0.000000e+00, float* %6429, align 1
  %6430 = bitcast i8* %5629 to float*
  store float 0.000000e+00, float* %6430, align 1
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %6432 = bitcast %union.VectorReg* %6431 to i8*
  %6433 = add i64 %6415, -176
  %6434 = add i64 %6414, 57
  store i64 %6434, i64* %3, align 8
  %6435 = inttoptr i64 %6433 to i32*
  %6436 = load i32, i32* %6435, align 4
  %6437 = bitcast %union.VectorReg* %6431 to i32*
  store i32 %6436, i32* %6437, align 1
  %6438 = getelementptr inbounds i8, i8* %6432, i64 4
  %6439 = bitcast i8* %6438 to float*
  store float 0.000000e+00, float* %6439, align 1
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %6441 = bitcast i64* %6440 to float*
  store float 0.000000e+00, float* %6441, align 1
  %6442 = getelementptr inbounds i8, i8* %6432, i64 12
  %6443 = bitcast i8* %6442 to float*
  store float 0.000000e+00, float* %6443, align 1
  %6444 = add i64 %6414, 33442
  %6445 = add i64 %6414, 62
  %6446 = load i64, i64* %6, align 8
  %6447 = add i64 %6446, -8
  %6448 = inttoptr i64 %6447 to i64*
  store i64 %6445, i64* %6448, align 8
  store i64 %6447, i64* %6, align 8
  store i64 %6444, i64* %3, align 8
  %call2_402a97 = tail call %struct.Memory* @sub_40ad00._Z14test_variable4If28custom_add_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6444, %struct.Memory* %call2_402a59)
  %6449 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41487b_type* @G__0x41487b to i64), i64* %RDX.i4028, align 8
  %6450 = load i64, i64* %RBP.i, align 8
  %6451 = add i64 %6450, -164
  %6452 = add i64 %6449, 33
  store i64 %6452, i64* %3, align 8
  %6453 = inttoptr i64 %6451 to i32*
  %6454 = load i32, i32* %6453, align 4
  store i32 %6454, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6455 = add i64 %6449, 33604
  %6456 = add i64 %6449, 38
  %6457 = load i64, i64* %6, align 8
  %6458 = add i64 %6457, -8
  %6459 = inttoptr i64 %6458 to i64*
  store i64 %6456, i64* %6459, align 8
  store i64 %6458, i64* %6, align 8
  store i64 %6455, i64* %3, align 8
  %call2_402abd = tail call %struct.Memory* @sub_40ade0._Z14test_variable1If19custom_sub_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6455, %struct.Memory* %call2_402a97)
  %6460 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414893_type* @G__0x414893 to i64), i64* %RDX.i4028, align 8
  %6461 = load i64, i64* %RBP.i, align 8
  %6462 = add i64 %6461, -164
  %6463 = add i64 %6460, 33
  store i64 %6463, i64* %3, align 8
  %6464 = inttoptr i64 %6462 to i32*
  %6465 = load i32, i32* %6464, align 4
  store i32 %6465, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6466 = add i64 %6461, -168
  %6467 = add i64 %6460, 41
  store i64 %6467, i64* %3, align 8
  %6468 = inttoptr i64 %6466 to i32*
  %6469 = load i32, i32* %6468, align 4
  store i32 %6469, i32* %5714, align 1
  store float 0.000000e+00, float* %6362, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  %6470 = add i64 %6461, -172
  %6471 = add i64 %6460, 49
  store i64 %6471, i64* %3, align 8
  %6472 = inttoptr i64 %6470 to i32*
  %6473 = load i32, i32* %6472, align 4
  store i32 %6473, i32* %5623, align 1
  store float 0.000000e+00, float* %6428, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  %6474 = add i64 %6461, -176
  %6475 = add i64 %6460, 57
  store i64 %6475, i64* %3, align 8
  %6476 = inttoptr i64 %6474 to i32*
  %6477 = load i32, i32* %6476, align 4
  store i32 %6477, i32* %6437, align 1
  store float 0.000000e+00, float* %6439, align 1
  store float 0.000000e+00, float* %6441, align 1
  store float 0.000000e+00, float* %6443, align 1
  %6478 = add i64 %6460, 33742
  %6479 = add i64 %6460, 62
  %6480 = load i64, i64* %6, align 8
  %6481 = add i64 %6480, -8
  %6482 = inttoptr i64 %6481 to i64*
  store i64 %6479, i64* %6482, align 8
  store i64 %6481, i64* %6, align 8
  store i64 %6478, i64* %3, align 8
  %call2_402afb = tail call %struct.Memory* @sub_40ae90._Z14test_variable4If28custom_sub_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6478, %struct.Memory* %call2_402abd)
  %6483 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4148b5_type* @G__0x4148b5 to i64), i64* %RDX.i4028, align 8
  %6484 = load i64, i64* %RBP.i, align 8
  %6485 = add i64 %6484, -164
  %6486 = add i64 %6483, 33
  store i64 %6486, i64* %3, align 8
  %6487 = inttoptr i64 %6485 to i32*
  %6488 = load i32, i32* %6487, align 4
  store i32 %6488, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6489 = add i64 %6483, 33904
  %6490 = add i64 %6483, 38
  %6491 = load i64, i64* %6, align 8
  %6492 = add i64 %6491, -8
  %6493 = inttoptr i64 %6492 to i64*
  store i64 %6490, i64* %6493, align 8
  store i64 %6492, i64* %6, align 8
  store i64 %6489, i64* %3, align 8
  %call2_402b21 = tail call %struct.Memory* @sub_40af70._Z14test_variable1If24custom_multiply_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6489, %struct.Memory* %call2_402afb)
  %6494 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4148cd_type* @G__0x4148cd to i64), i64* %RDX.i4028, align 8
  %6495 = load i64, i64* %RBP.i, align 8
  %6496 = add i64 %6495, -164
  %6497 = add i64 %6494, 33
  store i64 %6497, i64* %3, align 8
  %6498 = inttoptr i64 %6496 to i32*
  %6499 = load i32, i32* %6498, align 4
  store i32 %6499, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6500 = add i64 %6495, -168
  %6501 = add i64 %6494, 41
  store i64 %6501, i64* %3, align 8
  %6502 = inttoptr i64 %6500 to i32*
  %6503 = load i32, i32* %6502, align 4
  store i32 %6503, i32* %5714, align 1
  store float 0.000000e+00, float* %6362, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  %6504 = add i64 %6495, -172
  %6505 = add i64 %6494, 49
  store i64 %6505, i64* %3, align 8
  %6506 = inttoptr i64 %6504 to i32*
  %6507 = load i32, i32* %6506, align 4
  store i32 %6507, i32* %5623, align 1
  store float 0.000000e+00, float* %6428, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  %6508 = add i64 %6495, -176
  %6509 = add i64 %6494, 57
  store i64 %6509, i64* %3, align 8
  %6510 = inttoptr i64 %6508 to i32*
  %6511 = load i32, i32* %6510, align 4
  store i32 %6511, i32* %6437, align 1
  store float 0.000000e+00, float* %6439, align 1
  store float 0.000000e+00, float* %6441, align 1
  store float 0.000000e+00, float* %6443, align 1
  %6512 = add i64 %6494, 34042
  %6513 = add i64 %6494, 62
  %6514 = load i64, i64* %6, align 8
  %6515 = add i64 %6514, -8
  %6516 = inttoptr i64 %6515 to i64*
  store i64 %6513, i64* %6516, align 8
  store i64 %6515, i64* %6, align 8
  store i64 %6512, i64* %3, align 8
  %call2_402b5f = tail call %struct.Memory* @sub_40b020._Z14test_variable4If33custom_multiply_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6512, %struct.Memory* %call2_402b21)
  %6517 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4148f0_type* @G__0x4148f0 to i64), i64* %RDX.i4028, align 8
  %6518 = load i64, i64* %RBP.i, align 8
  %6519 = add i64 %6518, -164
  %6520 = add i64 %6517, 33
  store i64 %6520, i64* %3, align 8
  %6521 = inttoptr i64 %6519 to i32*
  %6522 = load i32, i32* %6521, align 4
  store i32 %6522, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6523 = add i64 %6518, -168
  %6524 = add i64 %6517, 41
  store i64 %6524, i64* %3, align 8
  %6525 = inttoptr i64 %6523 to i32*
  %6526 = load i32, i32* %6525, align 4
  store i32 %6526, i32* %5714, align 1
  store float 0.000000e+00, float* %6362, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  %6527 = add i64 %6518, -172
  %6528 = add i64 %6517, 49
  store i64 %6528, i64* %3, align 8
  %6529 = inttoptr i64 %6527 to i32*
  %6530 = load i32, i32* %6529, align 4
  store i32 %6530, i32* %5623, align 1
  store float 0.000000e+00, float* %6428, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  %6531 = add i64 %6518, -176
  %6532 = add i64 %6517, 57
  store i64 %6532, i64* %3, align 8
  %6533 = inttoptr i64 %6531 to i32*
  %6534 = load i32, i32* %6533, align 4
  store i32 %6534, i32* %6437, align 1
  store float 0.000000e+00, float* %6439, align 1
  store float 0.000000e+00, float* %6441, align 1
  store float 0.000000e+00, float* %6443, align 1
  %6535 = add i64 %6517, 34204
  %6536 = add i64 %6517, 62
  %6537 = load i64, i64* %6, align 8
  %6538 = add i64 %6537, -8
  %6539 = inttoptr i64 %6538 to i64*
  store i64 %6536, i64* %6539, align 8
  store i64 %6538, i64* %6, align 8
  store i64 %6535, i64* %3, align 8
  %call2_402b9d = tail call %struct.Memory* @sub_40b100._Z14test_variable4If34custom_multiply_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6535, %struct.Memory* %call2_402b5f)
  %6540 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414914_type* @G__0x414914 to i64), i64* %RDX.i4028, align 8
  %6541 = load i64, i64* %RBP.i, align 8
  %6542 = add i64 %6541, -164
  %6543 = add i64 %6540, 33
  store i64 %6543, i64* %3, align 8
  %6544 = inttoptr i64 %6542 to i32*
  %6545 = load i32, i32* %6544, align 4
  store i32 %6545, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6546 = add i64 %6540, 34366
  %6547 = add i64 %6540, 38
  %6548 = load i64, i64* %6, align 8
  %6549 = add i64 %6548, -8
  %6550 = inttoptr i64 %6549 to i64*
  store i64 %6547, i64* %6550, align 8
  store i64 %6549, i64* %6, align 8
  store i64 %6546, i64* %3, align 8
  %call2_402bc3 = tail call %struct.Memory* @sub_40b1e0._Z14test_variable1If22custom_divide_variableIfEEvPT_iS2_PKc(%struct.State* %0, i64 %6546, %struct.Memory* %call2_402b9d)
  %6551 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41492a_type* @G__0x41492a to i64), i64* %RDX.i4028, align 8
  %6552 = load i64, i64* %RBP.i, align 8
  %6553 = add i64 %6552, -164
  %6554 = add i64 %6551, 33
  store i64 %6554, i64* %3, align 8
  %6555 = inttoptr i64 %6553 to i32*
  %6556 = load i32, i32* %6555, align 4
  store i32 %6556, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6557 = add i64 %6552, -168
  %6558 = add i64 %6551, 41
  store i64 %6558, i64* %3, align 8
  %6559 = inttoptr i64 %6557 to i32*
  %6560 = load i32, i32* %6559, align 4
  store i32 %6560, i32* %5714, align 1
  store float 0.000000e+00, float* %6362, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  %6561 = add i64 %6552, -172
  %6562 = add i64 %6551, 49
  store i64 %6562, i64* %3, align 8
  %6563 = inttoptr i64 %6561 to i32*
  %6564 = load i32, i32* %6563, align 4
  store i32 %6564, i32* %5623, align 1
  store float 0.000000e+00, float* %6428, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  %6565 = add i64 %6552, -176
  %6566 = add i64 %6551, 57
  store i64 %6566, i64* %3, align 8
  %6567 = inttoptr i64 %6565 to i32*
  %6568 = load i32, i32* %6567, align 4
  store i32 %6568, i32* %6437, align 1
  store float 0.000000e+00, float* %6439, align 1
  store float 0.000000e+00, float* %6441, align 1
  store float 0.000000e+00, float* %6443, align 1
  %6569 = add i64 %6551, 34504
  %6570 = add i64 %6551, 62
  %6571 = load i64, i64* %6, align 8
  %6572 = add i64 %6571, -8
  %6573 = inttoptr i64 %6572 to i64*
  store i64 %6570, i64* %6573, align 8
  store i64 %6572, i64* %6, align 8
  store i64 %6569, i64* %3, align 8
  %call2_402c01 = tail call %struct.Memory* @sub_40b290._Z14test_variable4If31custom_divide_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6569, %struct.Memory* %call2_402bc3)
  %6574 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41494a_type* @G__0x41494a to i64), i64* %RDX.i4028, align 8
  %6575 = load i64, i64* %RBP.i, align 8
  %6576 = add i64 %6575, -164
  %6577 = add i64 %6574, 33
  store i64 %6577, i64* %3, align 8
  %6578 = inttoptr i64 %6576 to i32*
  %6579 = load i32, i32* %6578, align 4
  store i32 %6579, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6580 = add i64 %6575, -168
  %6581 = add i64 %6574, 41
  store i64 %6581, i64* %3, align 8
  %6582 = inttoptr i64 %6580 to i32*
  %6583 = load i32, i32* %6582, align 4
  store i32 %6583, i32* %5714, align 1
  store float 0.000000e+00, float* %6362, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  %6584 = add i64 %6575, -172
  %6585 = add i64 %6574, 49
  store i64 %6585, i64* %3, align 8
  %6586 = inttoptr i64 %6584 to i32*
  %6587 = load i32, i32* %6586, align 4
  store i32 %6587, i32* %5623, align 1
  store float 0.000000e+00, float* %6428, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  %6588 = add i64 %6575, -176
  %6589 = add i64 %6574, 57
  store i64 %6589, i64* %3, align 8
  %6590 = inttoptr i64 %6588 to i32*
  %6591 = load i32, i32* %6590, align 4
  store i32 %6591, i32* %6437, align 1
  store float 0.000000e+00, float* %6439, align 1
  store float 0.000000e+00, float* %6441, align 1
  store float 0.000000e+00, float* %6443, align 1
  %6592 = add i64 %6574, 34666
  %6593 = add i64 %6574, 62
  %6594 = load i64, i64* %6, align 8
  %6595 = add i64 %6594, -8
  %6596 = inttoptr i64 %6595 to i64*
  store i64 %6593, i64* %6596, align 8
  store i64 %6595, i64* %6, align 8
  store i64 %6592, i64* %3, align 8
  %call2_402c3f = tail call %struct.Memory* @sub_40b370._Z14test_variable4If32custom_divide_multiple_variable2IfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6592, %struct.Memory* %call2_402c01)
  %6597 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x629ac0_type* @G__0x629ac0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41496b_type* @G__0x41496b to i64), i64* %RDX.i4028, align 8
  %6598 = load i64, i64* %RBP.i, align 8
  %6599 = add i64 %6598, -164
  %6600 = add i64 %6597, 33
  store i64 %6600, i64* %3, align 8
  %6601 = inttoptr i64 %6599 to i32*
  %6602 = load i32, i32* %6601, align 4
  store i32 %6602, i32* %6287, align 1
  store float 0.000000e+00, float* %6288, align 1
  store float 0.000000e+00, float* %6289, align 1
  store float 0.000000e+00, float* %6290, align 1
  %6603 = add i64 %6598, -168
  %6604 = add i64 %6597, 41
  store i64 %6604, i64* %3, align 8
  %6605 = inttoptr i64 %6603 to i32*
  %6606 = load i32, i32* %6605, align 4
  store i32 %6606, i32* %5714, align 1
  store float 0.000000e+00, float* %6362, align 1
  store float 0.000000e+00, float* %6363, align 1
  store float 0.000000e+00, float* %6364, align 1
  %6607 = add i64 %6598, -172
  %6608 = add i64 %6597, 49
  store i64 %6608, i64* %3, align 8
  %6609 = inttoptr i64 %6607 to i32*
  %6610 = load i32, i32* %6609, align 4
  store i32 %6610, i32* %5623, align 1
  store float 0.000000e+00, float* %6428, align 1
  store float 0.000000e+00, float* %6429, align 1
  store float 0.000000e+00, float* %6430, align 1
  %6611 = add i64 %6598, -176
  %6612 = add i64 %6597, 57
  store i64 %6612, i64* %3, align 8
  %6613 = inttoptr i64 %6611 to i32*
  %6614 = load i32, i32* %6613, align 4
  store i32 %6614, i32* %6437, align 1
  store float 0.000000e+00, float* %6439, align 1
  store float 0.000000e+00, float* %6441, align 1
  store float 0.000000e+00, float* %6443, align 1
  %6615 = add i64 %6597, 34828
  %6616 = add i64 %6597, 62
  %6617 = load i64, i64* %6, align 8
  %6618 = add i64 %6617, -8
  %6619 = inttoptr i64 %6618 to i64*
  store i64 %6616, i64* %6619, align 8
  store i64 %6618, i64* %6, align 8
  store i64 %6615, i64* %3, align 8
  %call2_402c7d = tail call %struct.Memory* @sub_40b450._Z14test_variable4If30custom_mixed_multiple_variableIfEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6615, %struct.Memory* %call2_402c3f)
  %6620 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RAX.i4030.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64* %RCX.i4032, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 64000)) to i8), i8* %26, align 1
  %6621 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000) to i32), i32 255))
  %6622 = trunc i32 %6621 to i8
  %6623 = and i8 %6622, 1
  %6624 = xor i8 %6623, 1
  store i8 %6624, i8* %33, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000)), i64 4) to i8), i8 1), i8* %39, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 0) to i8), i8* %42, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 63) to i8), i8* %45, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 63), i64 lshr (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64 63)), i64 2) to i8), i8* %51, align 1
  %6625 = load i64, i64* bitcast (%G_0x61a088_type* @G_0x61a088 to i64*), align 8
  store i64 %6625, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 add (i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64 64000), i64* %RSI.i3042, align 8
  %6626 = add i64 %6620, 34990
  %6627 = add i64 %6620, 40
  %6628 = load i64, i64* %6, align 8
  %6629 = add i64 %6628, -8
  %6630 = inttoptr i64 %6629 to i64*
  store i64 %6627, i64* %6630, align 8
  store i64 %6629, i64* %6, align 8
  store i64 %6626, i64* %3, align 8
  %call2_402ca5 = tail call %struct.Memory* @sub_40b530._Z4fillIPddEvT_S1_T0_(%struct.State* %0, i64 %6626, %struct.Memory* %call2_402c7d)
  %6631 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414989_type* @G__0x414989 to i64), i64* %RDX.i4028, align 8
  %6632 = load i64, i64* bitcast (%G_0x1116d__rip__4205771__type* @G_0x1116d__rip__4205771_ to i64*), align 8
  store i64 %6632, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6633 = load i64, i64* %RBP.i, align 8
  %6634 = add i64 %6633, -40
  %6635 = add i64 %6631, 38
  store i64 %6635, i64* %3, align 8
  %6636 = inttoptr i64 %6634 to i64*
  %6637 = load i64, i64* %6636, align 8
  %6638 = add i64 %6633, -184
  %6639 = add i64 %6631, 46
  store i64 %6639, i64* %3, align 8
  %6640 = inttoptr i64 %6638 to i64*
  store i64 %6637, i64* %6640, align 8
  %6641 = load i64, i64* %3, align 8
  %6642 = load <2 x i32>, <2 x i32>* %5619, align 1
  %6643 = load <2 x i32>, <2 x i32>* %5621, align 1
  %6644 = extractelement <2 x i32> %6642, i32 0
  store i32 %6644, i32* %5714, align 1
  %6645 = extractelement <2 x i32> %6642, i32 1
  store i32 %6645, i32* %5717, align 1
  %6646 = extractelement <2 x i32> %6643, i32 0
  store i32 %6646, i32* %5718, align 1
  %6647 = extractelement <2 x i32> %6643, i32 1
  store i32 %6647, i32* %5720, align 1
  %6648 = load i64, i64* %RBP.i, align 8
  %6649 = add i64 %6648, -184
  %6650 = add i64 %6641, 11
  store i64 %6650, i64* %3, align 8
  %6651 = load double, double* %5614, align 1
  %6652 = inttoptr i64 %6649 to double*
  %6653 = load double, double* %6652, align 8
  %6654 = fmul double %6651, %6653
  store double %6654, double* %5614, align 1
  %6655 = add i64 %6648, -192
  %6656 = add i64 %6641, 19
  store i64 %6656, i64* %3, align 8
  %6657 = inttoptr i64 %6655 to double*
  store double %6654, double* %6657, align 8
  %6658 = load i64, i64* %RBP.i, align 8
  %6659 = add i64 %6658, -184
  %6660 = load i64, i64* %3, align 8
  %6661 = add i64 %6660, 8
  store i64 %6661, i64* %3, align 8
  %6662 = load double, double* %55, align 1
  %6663 = inttoptr i64 %6659 to double*
  %6664 = load double, double* %6663, align 8
  %6665 = fadd double %6662, %6664
  store double %6665, double* %55, align 1
  %6666 = add i64 %6658, -200
  %6667 = add i64 %6660, 16
  store i64 %6667, i64* %3, align 8
  %6668 = inttoptr i64 %6666 to double*
  store double %6665, double* %6668, align 8
  %6669 = load i64, i64* %RBP.i, align 8
  %6670 = add i64 %6669, -184
  %6671 = load i64, i64* %3, align 8
  %6672 = add i64 %6671, 8
  store i64 %6672, i64* %3, align 8
  %6673 = inttoptr i64 %6670 to double*
  %6674 = load double, double* %6673, align 8
  store double %6674, double* %55, align 1
  store double 0.000000e+00, double* %58, align 1
  %6675 = add i64 %6669, -192
  %6676 = add i64 %6671, 16
  store i64 %6676, i64* %3, align 8
  %6677 = inttoptr i64 %6675 to double*
  %6678 = load double, double* %6677, align 8
  store double %6678, double* %5614, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6679 = add i64 %6669, -200
  %6680 = add i64 %6671, 24
  store i64 %6680, i64* %3, align 8
  %6681 = inttoptr i64 %6679 to double*
  %6682 = load double, double* %6681, align 8
  %6683 = fdiv double %6678, %6682
  store double %6683, double* %5614, align 1
  store i64 0, i64* %5615, align 1
  %6684 = fadd double %6674, %6683
  store double %6684, double* %55, align 1
  store i64 0, i64* %57, align 1
  %6685 = add i64 %6669, -208
  %6686 = add i64 %6671, 36
  store i64 %6686, i64* %3, align 8
  %6687 = inttoptr i64 %6685 to double*
  store double %6684, double* %6687, align 8
  %6688 = load i64, i64* %RBP.i, align 8
  %6689 = add i64 %6688, -184
  %6690 = load i64, i64* %3, align 8
  %6691 = add i64 %6690, 8
  store i64 %6691, i64* %3, align 8
  %6692 = inttoptr i64 %6689 to i64*
  %6693 = load i64, i64* %6692, align 8
  store i64 %6693, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6694 = add i64 %6690, 34897
  %6695 = add i64 %6690, 13
  %6696 = load i64, i64* %6, align 8
  %6697 = add i64 %6696, -8
  %6698 = inttoptr i64 %6697 to i64*
  store i64 %6695, i64* %6698, align 8
  store i64 %6697, i64* %6, align 8
  store i64 %6694, i64* %3, align 8
  %call2_402d27 = tail call %struct.Memory* @sub_40b570._Z14test_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6694, %struct.Memory* %call2_402ca5)
  %6699 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x41499d_type* @G__0x41499d to i64), i64* %RDX.i4028, align 8
  %6700 = load i64, i64* %RBP.i, align 8
  %6701 = add i64 %6700, -184
  %6702 = add i64 %6699, 33
  store i64 %6702, i64* %3, align 8
  %6703 = inttoptr i64 %6701 to i64*
  %6704 = load i64, i64* %6703, align 8
  store i64 %6704, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6705 = add i64 %6699, 35060
  %6706 = add i64 %6699, 38
  %6707 = load i64, i64* %6, align 8
  %6708 = add i64 %6707, -8
  %6709 = inttoptr i64 %6708 to i64*
  store i64 %6706, i64* %6709, align 8
  store i64 %6708, i64* %6, align 8
  store i64 %6705, i64* %3, align 8
  %call2_402d4d = tail call %struct.Memory* @sub_40b620._Z22test_hoisted_variable1Id19custom_add_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6705, %struct.Memory* %call2_402d27)
  %6710 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4149b9_type* @G__0x4149b9 to i64), i64* %RDX.i4028, align 8
  %6711 = load i64, i64* %RBP.i, align 8
  %6712 = add i64 %6711, -184
  %6713 = add i64 %6710, 33
  store i64 %6713, i64* %3, align 8
  %6714 = inttoptr i64 %6712 to i64*
  %6715 = load i64, i64* %6714, align 8
  store i64 %6715, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6716 = add i64 %6711, -192
  %6717 = add i64 %6710, 41
  store i64 %6717, i64* %3, align 8
  %6718 = inttoptr i64 %6716 to i64*
  %6719 = load i64, i64* %6718, align 8
  store i64 %6719, i64* %5697, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6720 = add i64 %6711, -200
  %6721 = add i64 %6710, 49
  store i64 %6721, i64* %3, align 8
  %6722 = inttoptr i64 %6720 to i64*
  %6723 = load i64, i64* %6722, align 8
  %6724 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %5617, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %6723, i64* %6724, align 1
  store double 0.000000e+00, double* %5725, align 1
  %6725 = add i64 %6711, -208
  %6726 = add i64 %6710, 57
  store i64 %6726, i64* %3, align 8
  %6727 = inttoptr i64 %6725 to i64*
  %6728 = load i64, i64* %6727, align 8
  %6729 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %6431, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %6728, i64* %6729, align 1
  %6730 = bitcast i64* %6440 to double*
  store double 0.000000e+00, double* %6730, align 1
  %6731 = add i64 %6710, 35214
  %6732 = add i64 %6710, 62
  %6733 = load i64, i64* %6, align 8
  %6734 = add i64 %6733, -8
  %6735 = inttoptr i64 %6734 to i64*
  store i64 %6732, i64* %6735, align 8
  store i64 %6734, i64* %6, align 8
  store i64 %6731, i64* %3, align 8
  %call2_402d8b = tail call %struct.Memory* @sub_40b6e0._Z14test_variable4Id28custom_add_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6731, %struct.Memory* %call2_402d4d)
  %6736 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4149d7_type* @G__0x4149d7 to i64), i64* %RDX.i4028, align 8
  %6737 = load i64, i64* %RBP.i, align 8
  %6738 = add i64 %6737, -184
  %6739 = add i64 %6736, 33
  store i64 %6739, i64* %3, align 8
  %6740 = inttoptr i64 %6738 to i64*
  %6741 = load i64, i64* %6740, align 8
  store i64 %6741, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6742 = add i64 %6736, 35376
  %6743 = add i64 %6736, 38
  %6744 = load i64, i64* %6, align 8
  %6745 = add i64 %6744, -8
  %6746 = inttoptr i64 %6745 to i64*
  store i64 %6743, i64* %6746, align 8
  store i64 %6745, i64* %6, align 8
  store i64 %6742, i64* %3, align 8
  %call2_402db1 = tail call %struct.Memory* @sub_40b7c0._Z14test_variable1Id19custom_sub_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6742, %struct.Memory* %call2_402d8b)
  %6747 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x4149f0_type* @G__0x4149f0 to i64), i64* %RDX.i4028, align 8
  %6748 = load i64, i64* %RBP.i, align 8
  %6749 = add i64 %6748, -184
  %6750 = add i64 %6747, 33
  store i64 %6750, i64* %3, align 8
  %6751 = inttoptr i64 %6749 to i64*
  %6752 = load i64, i64* %6751, align 8
  store i64 %6752, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6753 = add i64 %6748, -192
  %6754 = add i64 %6747, 41
  store i64 %6754, i64* %3, align 8
  %6755 = inttoptr i64 %6753 to i64*
  %6756 = load i64, i64* %6755, align 8
  store i64 %6756, i64* %5697, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6757 = add i64 %6748, -200
  %6758 = add i64 %6747, 49
  store i64 %6758, i64* %3, align 8
  %6759 = inttoptr i64 %6757 to i64*
  %6760 = load i64, i64* %6759, align 8
  store i64 %6760, i64* %6724, align 1
  store double 0.000000e+00, double* %5725, align 1
  %6761 = add i64 %6748, -208
  %6762 = add i64 %6747, 57
  store i64 %6762, i64* %3, align 8
  %6763 = inttoptr i64 %6761 to i64*
  %6764 = load i64, i64* %6763, align 8
  store i64 %6764, i64* %6729, align 1
  store double 0.000000e+00, double* %6730, align 1
  %6765 = add i64 %6747, 35514
  %6766 = add i64 %6747, 62
  %6767 = load i64, i64* %6, align 8
  %6768 = add i64 %6767, -8
  %6769 = inttoptr i64 %6768 to i64*
  store i64 %6766, i64* %6769, align 8
  store i64 %6768, i64* %6, align 8
  store i64 %6765, i64* %3, align 8
  %call2_402def = tail call %struct.Memory* @sub_40b870._Z14test_variable4Id28custom_sub_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6765, %struct.Memory* %call2_402db1)
  %6770 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a13_type* @G__0x414a13 to i64), i64* %RDX.i4028, align 8
  %6771 = load i64, i64* %RBP.i, align 8
  %6772 = add i64 %6771, -184
  %6773 = add i64 %6770, 33
  store i64 %6773, i64* %3, align 8
  %6774 = inttoptr i64 %6772 to i64*
  %6775 = load i64, i64* %6774, align 8
  store i64 %6775, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6776 = add i64 %6770, 35676
  %6777 = add i64 %6770, 38
  %6778 = load i64, i64* %6, align 8
  %6779 = add i64 %6778, -8
  %6780 = inttoptr i64 %6779 to i64*
  store i64 %6777, i64* %6780, align 8
  store i64 %6779, i64* %6, align 8
  store i64 %6776, i64* %3, align 8
  %call2_402e15 = tail call %struct.Memory* @sub_40b950._Z14test_variable1Id24custom_multiply_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6776, %struct.Memory* %call2_402def)
  %6781 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a2c_type* @G__0x414a2c to i64), i64* %RDX.i4028, align 8
  %6782 = load i64, i64* %RBP.i, align 8
  %6783 = add i64 %6782, -184
  %6784 = add i64 %6781, 33
  store i64 %6784, i64* %3, align 8
  %6785 = inttoptr i64 %6783 to i64*
  %6786 = load i64, i64* %6785, align 8
  store i64 %6786, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6787 = add i64 %6782, -192
  %6788 = add i64 %6781, 41
  store i64 %6788, i64* %3, align 8
  %6789 = inttoptr i64 %6787 to i64*
  %6790 = load i64, i64* %6789, align 8
  store i64 %6790, i64* %5697, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6791 = add i64 %6782, -200
  %6792 = add i64 %6781, 49
  store i64 %6792, i64* %3, align 8
  %6793 = inttoptr i64 %6791 to i64*
  %6794 = load i64, i64* %6793, align 8
  store i64 %6794, i64* %6724, align 1
  store double 0.000000e+00, double* %5725, align 1
  %6795 = add i64 %6782, -208
  %6796 = add i64 %6781, 57
  store i64 %6796, i64* %3, align 8
  %6797 = inttoptr i64 %6795 to i64*
  %6798 = load i64, i64* %6797, align 8
  store i64 %6798, i64* %6729, align 1
  store double 0.000000e+00, double* %6730, align 1
  %6799 = add i64 %6781, 35814
  %6800 = add i64 %6781, 62
  %6801 = load i64, i64* %6, align 8
  %6802 = add i64 %6801, -8
  %6803 = inttoptr i64 %6802 to i64*
  store i64 %6800, i64* %6803, align 8
  store i64 %6802, i64* %6, align 8
  store i64 %6799, i64* %3, align 8
  %call2_402e53 = tail call %struct.Memory* @sub_40ba00._Z14test_variable4Id33custom_multiply_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6799, %struct.Memory* %call2_402e15)
  %6804 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a50_type* @G__0x414a50 to i64), i64* %RDX.i4028, align 8
  %6805 = load i64, i64* %RBP.i, align 8
  %6806 = add i64 %6805, -184
  %6807 = add i64 %6804, 33
  store i64 %6807, i64* %3, align 8
  %6808 = inttoptr i64 %6806 to i64*
  %6809 = load i64, i64* %6808, align 8
  store i64 %6809, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6810 = add i64 %6805, -192
  %6811 = add i64 %6804, 41
  store i64 %6811, i64* %3, align 8
  %6812 = inttoptr i64 %6810 to i64*
  %6813 = load i64, i64* %6812, align 8
  store i64 %6813, i64* %5697, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6814 = add i64 %6805, -200
  %6815 = add i64 %6804, 49
  store i64 %6815, i64* %3, align 8
  %6816 = inttoptr i64 %6814 to i64*
  %6817 = load i64, i64* %6816, align 8
  store i64 %6817, i64* %6724, align 1
  store double 0.000000e+00, double* %5725, align 1
  %6818 = add i64 %6805, -208
  %6819 = add i64 %6804, 57
  store i64 %6819, i64* %3, align 8
  %6820 = inttoptr i64 %6818 to i64*
  %6821 = load i64, i64* %6820, align 8
  store i64 %6821, i64* %6729, align 1
  store double 0.000000e+00, double* %6730, align 1
  %6822 = add i64 %6804, 35976
  %6823 = add i64 %6804, 62
  %6824 = load i64, i64* %6, align 8
  %6825 = add i64 %6824, -8
  %6826 = inttoptr i64 %6825 to i64*
  store i64 %6823, i64* %6826, align 8
  store i64 %6825, i64* %6, align 8
  store i64 %6822, i64* %3, align 8
  %call2_402e91 = tail call %struct.Memory* @sub_40bae0._Z14test_variable4Id34custom_multiply_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6822, %struct.Memory* %call2_402e53)
  %6827 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a75_type* @G__0x414a75 to i64), i64* %RDX.i4028, align 8
  %6828 = load i64, i64* %RBP.i, align 8
  %6829 = add i64 %6828, -184
  %6830 = add i64 %6827, 33
  store i64 %6830, i64* %3, align 8
  %6831 = inttoptr i64 %6829 to i64*
  %6832 = load i64, i64* %6831, align 8
  store i64 %6832, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6833 = add i64 %6827, 36138
  %6834 = add i64 %6827, 38
  %6835 = load i64, i64* %6, align 8
  %6836 = add i64 %6835, -8
  %6837 = inttoptr i64 %6836 to i64*
  store i64 %6834, i64* %6837, align 8
  store i64 %6836, i64* %6, align 8
  store i64 %6833, i64* %3, align 8
  %call2_402eb7 = tail call %struct.Memory* @sub_40bbc0._Z14test_variable1Id22custom_divide_variableIdEEvPT_iS2_PKc(%struct.State* %0, i64 %6833, %struct.Memory* %call2_402e91)
  %6838 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414a8c_type* @G__0x414a8c to i64), i64* %RDX.i4028, align 8
  %6839 = load i64, i64* %RBP.i, align 8
  %6840 = add i64 %6839, -184
  %6841 = add i64 %6838, 33
  store i64 %6841, i64* %3, align 8
  %6842 = inttoptr i64 %6840 to i64*
  %6843 = load i64, i64* %6842, align 8
  store i64 %6843, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6844 = add i64 %6839, -192
  %6845 = add i64 %6838, 41
  store i64 %6845, i64* %3, align 8
  %6846 = inttoptr i64 %6844 to i64*
  %6847 = load i64, i64* %6846, align 8
  store i64 %6847, i64* %5697, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6848 = add i64 %6839, -200
  %6849 = add i64 %6838, 49
  store i64 %6849, i64* %3, align 8
  %6850 = inttoptr i64 %6848 to i64*
  %6851 = load i64, i64* %6850, align 8
  store i64 %6851, i64* %6724, align 1
  store double 0.000000e+00, double* %5725, align 1
  %6852 = add i64 %6839, -208
  %6853 = add i64 %6838, 57
  store i64 %6853, i64* %3, align 8
  %6854 = inttoptr i64 %6852 to i64*
  %6855 = load i64, i64* %6854, align 8
  store i64 %6855, i64* %6729, align 1
  store double 0.000000e+00, double* %6730, align 1
  %6856 = add i64 %6838, 36276
  %6857 = add i64 %6838, 62
  %6858 = load i64, i64* %6, align 8
  %6859 = add i64 %6858, -8
  %6860 = inttoptr i64 %6859 to i64*
  store i64 %6857, i64* %6860, align 8
  store i64 %6859, i64* %6, align 8
  store i64 %6856, i64* %3, align 8
  %call2_402ef5 = tail call %struct.Memory* @sub_40bc70._Z14test_variable4Id31custom_divide_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6856, %struct.Memory* %call2_402eb7)
  %6861 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414aad_type* @G__0x414aad to i64), i64* %RDX.i4028, align 8
  %6862 = load i64, i64* %RBP.i, align 8
  %6863 = add i64 %6862, -184
  %6864 = add i64 %6861, 33
  store i64 %6864, i64* %3, align 8
  %6865 = inttoptr i64 %6863 to i64*
  %6866 = load i64, i64* %6865, align 8
  store i64 %6866, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6867 = add i64 %6862, -192
  %6868 = add i64 %6861, 41
  store i64 %6868, i64* %3, align 8
  %6869 = inttoptr i64 %6867 to i64*
  %6870 = load i64, i64* %6869, align 8
  store i64 %6870, i64* %5697, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6871 = add i64 %6862, -200
  %6872 = add i64 %6861, 49
  store i64 %6872, i64* %3, align 8
  %6873 = inttoptr i64 %6871 to i64*
  %6874 = load i64, i64* %6873, align 8
  store i64 %6874, i64* %6724, align 1
  store double 0.000000e+00, double* %5725, align 1
  %6875 = add i64 %6862, -208
  %6876 = add i64 %6861, 57
  store i64 %6876, i64* %3, align 8
  %6877 = inttoptr i64 %6875 to i64*
  %6878 = load i64, i64* %6877, align 8
  store i64 %6878, i64* %6729, align 1
  store double 0.000000e+00, double* %6730, align 1
  %6879 = add i64 %6861, 36438
  %6880 = add i64 %6861, 62
  %6881 = load i64, i64* %6, align 8
  %6882 = add i64 %6881, -8
  %6883 = inttoptr i64 %6882 to i64*
  store i64 %6880, i64* %6883, align 8
  store i64 %6882, i64* %6, align 8
  store i64 %6879, i64* %3, align 8
  %call2_402f33 = tail call %struct.Memory* @sub_40bd50._Z14test_variable4Id32custom_divide_multiple_variable2IdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6879, %struct.Memory* %call2_402ef5)
  %6884 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x61a0c0_type* @G__0x61a0c0 to i64), i64* %RDI.i4036.pre-phi, align 8
  store i64 8000, i64* %RSI.i3042, align 8
  store i64 ptrtoint (%G__0x414acf_type* @G__0x414acf to i64), i64* %RDX.i4028, align 8
  %6885 = load i64, i64* %RBP.i, align 8
  %6886 = add i64 %6885, -184
  %6887 = add i64 %6884, 33
  store i64 %6887, i64* %3, align 8
  %6888 = inttoptr i64 %6886 to i64*
  %6889 = load i64, i64* %6888, align 8
  store i64 %6889, i64* %56, align 1
  store double 0.000000e+00, double* %58, align 1
  %6890 = add i64 %6885, -192
  %6891 = add i64 %6884, 41
  store i64 %6891, i64* %3, align 8
  %6892 = inttoptr i64 %6890 to i64*
  %6893 = load i64, i64* %6892, align 8
  store i64 %6893, i64* %5697, align 1
  store double 0.000000e+00, double* %5616, align 1
  %6894 = add i64 %6885, -200
  %6895 = add i64 %6884, 49
  store i64 %6895, i64* %3, align 8
  %6896 = inttoptr i64 %6894 to i64*
  %6897 = load i64, i64* %6896, align 8
  store i64 %6897, i64* %6724, align 1
  store double 0.000000e+00, double* %5725, align 1
  %6898 = add i64 %6885, -208
  %6899 = add i64 %6884, 57
  store i64 %6899, i64* %3, align 8
  %6900 = inttoptr i64 %6898 to i64*
  %6901 = load i64, i64* %6900, align 8
  store i64 %6901, i64* %6729, align 1
  store double 0.000000e+00, double* %6730, align 1
  %6902 = add i64 %6884, 36600
  %6903 = add i64 %6884, 62
  %6904 = load i64, i64* %6, align 8
  %6905 = add i64 %6904, -8
  %6906 = inttoptr i64 %6905 to i64*
  store i64 %6903, i64* %6906, align 8
  store i64 %6905, i64* %6, align 8
  store i64 %6902, i64* %3, align 8
  %call2_402f71 = tail call %struct.Memory* @sub_40be30._Z14test_variable4Id30custom_mixed_multiple_variableIdEEvPT_iS2_S2_S2_S2_PKc(%struct.State* %0, i64 %6902, %struct.Memory* %call2_402f33)
  %6907 = load i64, i64* %3, align 8
  store i64 0, i64* %RAX.i4030.pre-phi, align 8
  %6908 = load i64, i64* %6, align 8
  %6909 = add i64 %6908, 368
  store i64 %6909, i64* %6, align 8
  %6910 = icmp ugt i64 %6908, -369
  %6911 = zext i1 %6910 to i8
  store i8 %6911, i8* %26, align 1
  %6912 = trunc i64 %6909 to i32
  %6913 = and i32 %6912, 255
  %6914 = tail call i32 @llvm.ctpop.i32(i32 %6913)
  %6915 = trunc i32 %6914 to i8
  %6916 = and i8 %6915, 1
  %6917 = xor i8 %6916, 1
  store i8 %6917, i8* %33, align 1
  %6918 = xor i64 %6908, 16
  %6919 = xor i64 %6918, %6909
  %6920 = lshr i64 %6919, 4
  %6921 = trunc i64 %6920 to i8
  %6922 = and i8 %6921, 1
  store i8 %6922, i8* %39, align 1
  %6923 = icmp eq i64 %6909, 0
  %6924 = zext i1 %6923 to i8
  store i8 %6924, i8* %42, align 1
  %6925 = lshr i64 %6909, 63
  %6926 = trunc i64 %6925 to i8
  store i8 %6926, i8* %45, align 1
  %6927 = lshr i64 %6908, 63
  %6928 = xor i64 %6925, %6927
  %6929 = add nuw nsw i64 %6928, %6925
  %6930 = icmp eq i64 %6929, 2
  %6931 = zext i1 %6930 to i8
  store i8 %6931, i8* %51, align 1
  %6932 = add i64 %6907, 10
  store i64 %6932, i64* %3, align 8
  %6933 = add i64 %6908, 376
  %6934 = inttoptr i64 %6909 to i64*
  %6935 = load i64, i64* %6934, align 8
  store i64 %6935, i64* %RBX.i885, align 8
  store i64 %6933, i64* %6, align 8
  %6936 = add i64 %6907, 12
  store i64 %6936, i64* %3, align 8
  %6937 = add i64 %6908, 384
  %6938 = inttoptr i64 %6933 to i64*
  %6939 = load i64, i64* %6938, align 8
  store i64 %6939, i64* %R14.i837, align 8
  store i64 %6937, i64* %6, align 8
  %6940 = add i64 %6907, 13
  store i64 %6940, i64* %3, align 8
  %6941 = add i64 %6908, 392
  %6942 = inttoptr i64 %6937 to i64*
  %6943 = load i64, i64* %6942, align 8
  store i64 %6943, i64* %RBP.i, align 8
  store i64 %6941, i64* %6, align 8
  %6944 = add i64 %6907, 14
  store i64 %6944, i64* %3, align 8
  %6945 = inttoptr i64 %6941 to i64*
  %6946 = load i64, i64* %6945, align 8
  store i64 %6946, i64* %3, align 8
  %6947 = add i64 %6908, 400
  store i64 %6947, i64* %6, align 8
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
