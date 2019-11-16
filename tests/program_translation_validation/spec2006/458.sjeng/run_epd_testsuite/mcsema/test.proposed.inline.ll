; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400388__init_type = type <{ [23 x i8] }>
%seg_4003a0__text_type = type <{ [354 x i8] }>
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%seg_601018__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
%seg_400514__fini_type = type <{ [9 x i8] }>
%seg_400520__rodata_type = type <{ [4 x i8] }>
%seg_400524__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400558__eh_frame_type = type <{ [208 x i8] }>
%G_0x22ae3a__rip__type = type <{ [4 x i8] }>
%G_0x22b1f8__rip__type = type <{ [4 x i8] }>
%G_0x22b2e8__rip__type = type <{ [4 x i8] }>
%G_0x2377dc__rip__type = type <{ [4 x i8] }>
%G_0x24cb8__rip__type = type <{ [4 x i8] }>
%G_0x24cc4__rip__type = type <{ [4 x i8] }>
%G_0x24d2c__rip__type = type <{ [8 x i8] }>
%G_0x24d7c__rip__type = type <{ [4 x i8] }>
%G_0x460cfe__rip__type = type <{ [4 x i8] }>
%G_0x460de2__rip__type = type <{ [4 x i8] }>
%G_0x460ea0__rip__type = type <{ [4 x i8] }>
%G_0x462ab1__rip__type = type <{ [4 x i8] }>
%G_0x46306d__rip__type = type <{ [4 x i8] }>
%G_0x4685d4__rip__type = type <{ [4 x i8] }>
%G_0x47d464__rip__type = type <{ [4 x i8] }>
%G_0x48329a__rip__type = type <{ [4 x i8] }>
%G_0x483560__rip__type = type <{ [4 x i8] }>
%G_0x483894__rip__type = type <{ [4 x i8] }>
%G_0x483916__rip__type = type <{ [4 x i8] }>
%G_0x49d228__rip__type = type <{ [4 x i8] }>
%G_0x62da80_type = type <{ [8 x i8] }>
%G_0x62da90_type = type <{ [8 x i8] }>
%G_0x62e4f8_type = type <{ [4 x i8] }>
%G_0x62ea18_type = type <{ [4 x i8] }>
%G_0x633b54_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661c0_type = type <{ [4 x i8] }>
%G__0x4284bf_type = type <{ [8 x i8] }>
%G__0x4284d8_type = type <{ [8 x i8] }>
%G__0x4284ed_type = type <{ [4 x i8] }>
%G__0x42850a_type = type <{ [4 x i8] }>
%G__0x428540_type = type <{ [4 x i8] }>
%G__0x42857c_type = type <{ [4 x i8] }>
%G__0x4285af_type = type <{ [4 x i8] }>
%G__0x4285ec_type = type <{ [8 x i8] }>
%G__0x428602_type = type <{ [8 x i8] }>
%G__0x428631_type = type <{ [8 x i8] }>
%G__0x428642_type = type <{ [8 x i8] }>
%G__0x428657_type = type <{ [8 x i8] }>
%G__0x429b3b_type = type <{ [8 x i8] }>
%G__0x429bef_type = type <{ [8 x i8] }>
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

@switch.table = private unnamed_addr constant [4 x i32] [i32 2048, i32 3072, i32 0, i32 1024]
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
@seg_400388__init = internal constant %seg_400388__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05e\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4003a0__text = internal constant %seg_4003a0__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\00\05@\00H\C7\C1\90\04@\00H\C7\C7\88\04@\00\FF\15&\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\D1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\BF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\9E\09 \00UH\8D-\9E\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\C7\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@seg_400514__fini = internal constant %seg_400514__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400520__rodata = internal constant %seg_400520__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400524__eh_frame_hdr = internal constant %seg_400524__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x22ae3a__rip_ = global %G_0x22ae3a__rip__type zeroinitializer
@G_0x22b1f8__rip_ = global %G_0x22b1f8__rip__type zeroinitializer
@G_0x22b2e8__rip_ = global %G_0x22b2e8__rip__type zeroinitializer
@G_0x2377dc__rip_ = global %G_0x2377dc__rip__type zeroinitializer
@G_0x24cb8__rip_ = global %G_0x24cb8__rip__type zeroinitializer
@G_0x24cc4__rip_ = global %G_0x24cc4__rip__type zeroinitializer
@G_0x24d2c__rip_ = global %G_0x24d2c__rip__type zeroinitializer
@G_0x24d7c__rip_ = global %G_0x24d7c__rip__type zeroinitializer
@G_0x460cfe__rip_ = global %G_0x460cfe__rip__type zeroinitializer
@G_0x460de2__rip_ = global %G_0x460de2__rip__type zeroinitializer
@G_0x460ea0__rip_ = global %G_0x460ea0__rip__type zeroinitializer
@G_0x462ab1__rip_ = global %G_0x462ab1__rip__type zeroinitializer
@G_0x46306d__rip_ = global %G_0x46306d__rip__type zeroinitializer
@G_0x4685d4__rip_ = global %G_0x4685d4__rip__type zeroinitializer
@G_0x47d464__rip_ = global %G_0x47d464__rip__type zeroinitializer
@G_0x48329a__rip_ = global %G_0x48329a__rip__type zeroinitializer
@G_0x483560__rip_ = global %G_0x483560__rip__type zeroinitializer
@G_0x483894__rip_ = global %G_0x483894__rip__type zeroinitializer
@G_0x483916__rip_ = global %G_0x483916__rip__type zeroinitializer
@G_0x49d228__rip_ = global %G_0x49d228__rip__type zeroinitializer
@G_0x62da80 = global %G_0x62da80_type zeroinitializer
@G_0x62da90 = global %G_0x62da90_type zeroinitializer
@G_0x62e4f8 = global %G_0x62e4f8_type zeroinitializer
@G_0x62ea18 = global %G_0x62ea18_type zeroinitializer
@G_0x633b54 = global %G_0x633b54_type zeroinitializer
@G_0x8661bc = global %G_0x8661bc_type zeroinitializer
@G_0x8661c0 = global %G_0x8661c0_type zeroinitializer
@G__0x4284bf = global %G__0x4284bf_type zeroinitializer
@G__0x4284d8 = global %G__0x4284d8_type zeroinitializer
@G__0x4284ed = global %G__0x4284ed_type zeroinitializer
@G__0x42850a = global %G__0x42850a_type zeroinitializer
@G__0x428540 = global %G__0x428540_type zeroinitializer
@G__0x42857c = global %G__0x42857c_type zeroinitializer
@G__0x4285af = global %G__0x4285af_type zeroinitializer
@G__0x4285ec = global %G__0x4285ec_type zeroinitializer
@G__0x428602 = global %G__0x428602_type zeroinitializer
@G__0x428631 = global %G__0x428631_type zeroinitializer
@G__0x428642 = global %G__0x428642_type zeroinitializer
@G__0x428657 = global %G__0x428657_type zeroinitializer
@G__0x429b3b = global %G__0x429b3b_type zeroinitializer
@G__0x429bef = global %G__0x429bef_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare i32 @__remill_fpu_exception_test_and_clear(i32, i32)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #0

; Function Attrs: nounwind readnone
declare double @llvm.nearbyint.f64(double) #1

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #1

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.trunc.v4f64(<4 x double>) #1

; Function Attrs: nounwind readnone
declare float @llvm.nearbyint.f32(float) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #1

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #1

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

declare double @atan(double) local_unnamed_addr

declare double @cos(double) local_unnamed_addr

declare double @sin(double) local_unnamed_addr

declare double @sqrt(double) local_unnamed_addr

declare double @tan(double) local_unnamed_addr

declare extern_weak x86_64_sysvcc i64 @abort()

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare extern_weak x86_64_sysvcc i64 @asin(i64)

declare extern_weak x86_64_sysvcc i64 @atof(i64)

declare extern_weak x86_64_sysvcc i64 @atoi(i64)

declare extern_weak x86_64_sysvcc i64 @atol(i64)

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @clock()

declare extern_weak x86_64_sysvcc i64 @cosf(i64)

declare extern_weak x86_64_sysvcc i64 @exit(i64)

declare extern_weak x86_64_sysvcc i64 @exp(i64)

declare extern_weak x86_64_sysvcc i64 @fflush(i64)

declare extern_weak x86_64_sysvcc i64 @floor(i64)

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @fwrite(i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @getchar()

declare extern_weak x86_64_sysvcc i64 @gettimeofday(i64, i64)

declare extern_weak x86_64_sysvcc i64 @__isoc99_fscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @__isoc99_scanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare extern_weak x86_64_sysvcc i64 @lrand48()

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare extern_weak x86_64_sysvcc i64 @memalign(i64, i64)

declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @perror(i64)

declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @putchar(i64)

declare extern_weak x86_64_sysvcc i64 @puts(i64)

declare extern_weak x86_64_sysvcc i64 @rand()

declare extern_weak x86_64_sysvcc i64 @random()

declare extern_weak x86_64_sysvcc i64 @realloc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @seed48(i64)

declare extern_weak x86_64_sysvcc i64 @sinf(i64)

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @srand(i64)

declare extern_weak x86_64_sysvcc i64 @strcat(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcmp(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strcpy(i64, i64)

declare extern_weak x86_64_sysvcc i64 @strdup(i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strtoll(i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @time(i64)

declare extern_weak x86_64_sysvcc i64 @ungetc(i64, i64)

declare extern_weak x86_64_sysvcc i64 @pthread_join(i64, i64)

declare extern_weak x86_64_sysvcc i64 @pthread_create(i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @sub_422e30.rinput(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400da0.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400cf0.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_402cc0.setup_epd_line(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4204c0.clear_tt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_420600.initialize_hash(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4223c0.display_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4243e0.interrupt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41a940.think(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_404070.eval(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_403380.check_solution(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @run_epd_testsuite(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_403490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC.i = bitcast %union.anon* %6 to i64*
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %RBP.i
  %11 = load i64, i64* %PC.i
  %12 = add i64 %11, 1
  store i64 %12, i64* %PC.i
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %10, i64* %16
  store i64 %15, i64* %13, align 8
  store %struct.Memory* %loadMem_403490, %struct.Memory** %MEMORY
  %loadMem_403491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i8 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i8
  %27 = load i64, i64* %PC.i7
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i7
  store i64 %26, i64* %RBP.i9, align 8
  store %struct.Memory* %loadMem_403491, %struct.Memory** %MEMORY
  %loadMem_403494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i18 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i18
  %36 = load i64, i64* %PC.i17
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i17
  %38 = sub i64 %35, 8304
  store i64 %38, i64* %RSP.i18, align 8
  %39 = icmp ult i64 %35, 8304
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %41, align 1
  %42 = trunc i64 %38 to i32
  %43 = and i32 %42, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %47, i8* %48, align 1
  %49 = xor i64 8304, %35
  %50 = xor i64 %49, %38
  %51 = lshr i64 %50, 4
  %52 = trunc i64 %51 to i8
  %53 = and i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %53, i8* %54, align 1
  %55 = icmp eq i64 %38, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %38, 63
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1
  %61 = lshr i64 %35, 63
  %62 = xor i64 %58, %61
  %63 = add i64 %62, %61
  %64 = icmp eq i64 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1
  store %struct.Memory* %loadMem_403494, %struct.Memory** %MEMORY
  %loadMem_40349b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i40 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i39
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i39
  store i64 ptrtoint (%G__0x4284bf_type* @G__0x4284bf to i64), i64* %RDI.i40, align 8
  store %struct.Memory* %loadMem_40349b, %struct.Memory** %MEMORY
  %loadMem_4034a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i51
  %82 = sub i64 %81, 8148
  %83 = load i64, i64* %PC.i50
  %84 = add i64 %83, 10
  store i64 %84, i64* %PC.i50
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_4034a5, %struct.Memory** %MEMORY
  %loadMem_4034af = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i97
  %93 = sub i64 %92, 8152
  %94 = load i64, i64* %PC.i96
  %95 = add i64 %94, 10
  store i64 %95, i64* %PC.i96
  %96 = inttoptr i64 %93 to i32*
  store i32 0, i32* %96
  store %struct.Memory* %loadMem_4034af, %struct.Memory** %MEMORY
  %loadMem_4034b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %103 = bitcast %union.anon* %102 to %struct.anon.2*
  %AL.i107 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %103, i32 0, i32 0
  %104 = load i64, i64* %PC.i106
  %105 = add i64 %104, 2
  store i64 %105, i64* %PC.i106
  store i8 0, i8* %AL.i107, align 1
  store %struct.Memory* %loadMem_4034b9, %struct.Memory** %MEMORY
  %loadMem1_4034bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %PC.i133
  %110 = add i64 %109, -10251
  %111 = load i64, i64* %PC.i133
  %112 = add i64 %111, 5
  %113 = load i64, i64* %PC.i133
  %114 = add i64 %113, 5
  store i64 %114, i64* %PC.i133
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %112, i64* %118
  store i64 %117, i64* %115, align 8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %110, i64* %119, align 8
  store %struct.Memory* %loadMem1_4034bb, %struct.Memory** %MEMORY
  %loadMem2_4034bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4034bb = load i64, i64* %3
  %120 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4034bb)
  store %struct.Memory* %120, %struct.Memory** %MEMORY
  %loadMem_4034c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RSI.i172 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %PC.i171
  %128 = add i64 %127, 5
  store i64 %128, i64* %PC.i171
  store i64 256, i64* %RSI.i172, align 8
  store %struct.Memory* %loadMem_4034c0, %struct.Memory** %MEMORY
  %loadMem_4034c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 11
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i195
  %139 = sub i64 %138, 6112
  %140 = load i64, i64* %PC.i193
  %141 = add i64 %140, 7
  store i64 %141, i64* %PC.i193
  store i64 %139, i64* %RDI.i194, align 8
  store %struct.Memory* %loadMem_4034c5, %struct.Memory** %MEMORY
  %loadMem_4034cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %PC.i255
  %149 = add i64 %148, 8
  store i64 %149, i64* %PC.i255
  %150 = load i64, i64* bitcast (%G_0x62da90_type* @G_0x62da90 to i64*)
  store i64 %150, i64* %RDX.i256, align 8
  store %struct.Memory* %loadMem_4034cc, %struct.Memory** %MEMORY
  %loadMem_4034d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %156 to i32*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i318
  %161 = sub i64 %160, 8180
  %162 = load i32, i32* %EAX.i317
  %163 = zext i32 %162 to i64
  %164 = load i64, i64* %PC.i316
  %165 = add i64 %164, 6
  store i64 %165, i64* %PC.i316
  %166 = inttoptr i64 %161 to i32*
  store i32 %162, i32* %166
  store %struct.Memory* %loadMem_4034d4, %struct.Memory** %MEMORY
  %loadMem1_4034da = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %PC.i387
  %171 = add i64 %170, 129366
  %172 = load i64, i64* %PC.i387
  %173 = add i64 %172, 5
  %174 = load i64, i64* %PC.i387
  %175 = add i64 %174, 5
  store i64 %175, i64* %PC.i387
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %173, i64* %179
  store i64 %178, i64* %176, align 8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %171, i64* %180, align 8
  store %struct.Memory* %loadMem1_4034da, %struct.Memory** %MEMORY
  %loadMem2_4034da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4034da = load i64, i64* %3
  %call2_4034da = call %struct.Memory* @sub_422e30.rinput(%struct.State* %0, i64 %loadPC_4034da, %struct.Memory* %loadMem2_4034da)
  store %struct.Memory* %call2_4034da, %struct.Memory** %MEMORY
  %loadMem_4034df = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %RDI.i536 = bitcast %union.anon* %186 to i64*
  %187 = load i64, i64* %PC.i535
  %188 = add i64 %187, 10
  store i64 %188, i64* %PC.i535
  store i64 ptrtoint (%G__0x4284d8_type* @G__0x4284d8 to i64), i64* %RDI.i536, align 8
  store %struct.Memory* %loadMem_4034df, %struct.Memory** %MEMORY
  %loadMem_4034e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 33
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %195 = bitcast %union.anon* %194 to %struct.anon.2*
  %AL.i549 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %195, i32 0, i32 0
  %196 = load i64, i64* %PC.i548
  %197 = add i64 %196, 2
  store i64 %197, i64* %PC.i548
  store i8 0, i8* %AL.i549, align 1
  store %struct.Memory* %loadMem_4034e9, %struct.Memory** %MEMORY
  %loadMem1_4034eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %200 to i64*
  %201 = load i64, i64* %PC.i565
  %202 = add i64 %201, -10299
  %203 = load i64, i64* %PC.i565
  %204 = add i64 %203, 5
  %205 = load i64, i64* %PC.i565
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC.i565
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %204, i64* %210
  store i64 %209, i64* %207, align 8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %202, i64* %211, align 8
  store %struct.Memory* %loadMem1_4034eb, %struct.Memory** %MEMORY
  %loadMem2_4034eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4034eb = load i64, i64* %3
  %212 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4034eb)
  store %struct.Memory* %212, %struct.Memory** %MEMORY
  %loadMem_4034f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 9
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RSI.i564 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %PC.i563
  %220 = add i64 %219, 5
  store i64 %220, i64* %PC.i563
  store i64 256, i64* %RSI.i564, align 8
  store %struct.Memory* %loadMem_4034f0, %struct.Memory** %MEMORY
  %loadMem_4034f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RDI.i561 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 15
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %229 to i64*
  %230 = load i64, i64* %RBP.i562
  %231 = sub i64 %230, 2016
  %232 = load i64, i64* %PC.i560
  %233 = add i64 %232, 7
  store i64 %233, i64* %PC.i560
  store i64 %231, i64* %RDI.i561, align 8
  store %struct.Memory* %loadMem_4034f5, %struct.Memory** %MEMORY
  %loadMem_4034fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 7
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %PC.i558
  %241 = add i64 %240, 8
  store i64 %241, i64* %PC.i558
  %242 = load i64, i64* bitcast (%G_0x62da90_type* @G_0x62da90 to i64*)
  store i64 %242, i64* %RDX.i559, align 8
  store %struct.Memory* %loadMem_4034fc, %struct.Memory** %MEMORY
  %loadMem_403504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %EAX.i556 = bitcast %union.anon* %248 to i32*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i557
  %253 = sub i64 %252, 8184
  %254 = load i32, i32* %EAX.i556
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %PC.i555
  %257 = add i64 %256, 6
  store i64 %257, i64* %PC.i555
  %258 = inttoptr i64 %253 to i32*
  store i32 %254, i32* %258
  store %struct.Memory* %loadMem_403504, %struct.Memory** %MEMORY
  %loadMem1_40350a = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %PC.i554
  %263 = add i64 %262, 129318
  %264 = load i64, i64* %PC.i554
  %265 = add i64 %264, 5
  %266 = load i64, i64* %PC.i554
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC.i554
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %265, i64* %271
  store i64 %270, i64* %268, align 8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %263, i64* %272, align 8
  store %struct.Memory* %loadMem1_40350a, %struct.Memory** %MEMORY
  %loadMem2_40350a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40350a = load i64, i64* %3
  %call2_40350a = call %struct.Memory* @sub_422e30.rinput(%struct.State* %0, i64 %loadPC_40350a, %struct.Memory* %loadMem2_40350a)
  store %struct.Memory* %call2_40350a, %struct.Memory** %MEMORY
  %loadMem_40350f = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 11
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RDI.i552 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %RBP.i553
  %283 = sub i64 %282, 2016
  %284 = load i64, i64* %PC.i551
  %285 = add i64 %284, 7
  store i64 %285, i64* %PC.i551
  store i64 %283, i64* %RDI.i552, align 8
  store %struct.Memory* %loadMem_40350f, %struct.Memory** %MEMORY
  %loadMem1_403516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %PC.i550
  %290 = add i64 %289, -10118
  %291 = load i64, i64* %PC.i550
  %292 = add i64 %291, 5
  %293 = load i64, i64* %PC.i550
  %294 = add i64 %293, 5
  store i64 %294, i64* %PC.i550
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = add i64 %296, -8
  %298 = inttoptr i64 %297 to i64*
  store i64 %292, i64* %298
  store i64 %297, i64* %295, align 8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %290, i64* %299, align 8
  store %struct.Memory* %loadMem1_403516, %struct.Memory** %MEMORY
  %loadMem2_403516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403516 = load i64, i64* %3
  %300 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atol to i64), %struct.Memory* %loadMem2_403516)
  store %struct.Memory* %300, %struct.Memory** %MEMORY
  %loadMem_40351b = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 11
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RDI.i547 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %PC.i546
  %308 = add i64 %307, 10
  store i64 %308, i64* %PC.i546
  store i64 ptrtoint (%G__0x429bef_type* @G__0x429bef to i64), i64* %RDI.i547, align 8
  store %struct.Memory* %loadMem_40351b, %struct.Memory** %MEMORY
  %loadMem_403525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %EAX.i544 = bitcast %union.anon* %314 to i32*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 9
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RSI.i545 = bitcast %union.anon* %317 to i64*
  %318 = load i32, i32* %EAX.i544
  %319 = zext i32 %318 to i64
  %320 = load i64, i64* %PC.i543
  %321 = add i64 %320, 2
  store i64 %321, i64* %PC.i543
  %322 = and i64 %319, 4294967295
  store i64 %322, i64* %RSI.i545, align 8
  store %struct.Memory* %loadMem_403525, %struct.Memory** %MEMORY
  %loadMem_403527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 9
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %ESI.i541 = bitcast %union.anon* %328 to i32*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 15
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %331 to i64*
  %332 = load i64, i64* %RBP.i542
  %333 = sub i64 %332, 8120
  %334 = load i32, i32* %ESI.i541
  %335 = zext i32 %334 to i64
  %336 = load i64, i64* %PC.i540
  %337 = add i64 %336, 6
  store i64 %337, i64* %PC.i540
  %338 = inttoptr i64 %333 to i32*
  store i32 %334, i32* %338
  store %struct.Memory* %loadMem_403527, %struct.Memory** %MEMORY
  %loadMem_40352d = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %345 = bitcast %union.anon* %344 to %struct.anon.2*
  %AL.i539 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %345, i32 0, i32 0
  %346 = load i64, i64* %PC.i538
  %347 = add i64 %346, 2
  store i64 %347, i64* %PC.i538
  store i8 0, i8* %AL.i539, align 1
  store %struct.Memory* %loadMem_40352d, %struct.Memory** %MEMORY
  %loadMem1_40352f = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %PC.i537
  %352 = add i64 %351, -10367
  %353 = load i64, i64* %PC.i537
  %354 = add i64 %353, 5
  %355 = load i64, i64* %PC.i537
  %356 = add i64 %355, 5
  store i64 %356, i64* %PC.i537
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %354, i64* %360
  store i64 %359, i64* %357, align 8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %352, i64* %361, align 8
  store %struct.Memory* %loadMem1_40352f, %struct.Memory** %MEMORY
  %loadMem2_40352f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40352f = load i64, i64* %3
  %362 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_40352f)
  store %struct.Memory* %362, %struct.Memory** %MEMORY
  %loadMem_403534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 9
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RSI.i534 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %PC.i533
  %370 = add i64 %369, 10
  store i64 %370, i64* %PC.i533
  store i64 ptrtoint (%G__0x429b3b_type* @G__0x429b3b to i64), i64* %RSI.i534, align 8
  store %struct.Memory* %loadMem_403534, %struct.Memory** %MEMORY
  %loadMem_40353e = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 11
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RDI.i531 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 15
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %RBP.i532
  %381 = sub i64 %380, 6112
  %382 = load i64, i64* %PC.i530
  %383 = add i64 %382, 7
  store i64 %383, i64* %PC.i530
  store i64 %381, i64* %RDI.i531, align 8
  store %struct.Memory* %loadMem_40353e, %struct.Memory** %MEMORY
  %loadMem_403545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RBP.i529
  %394 = sub i64 %393, 8120
  %395 = load i64, i64* %PC.i527
  %396 = add i64 %395, 7
  store i64 %396, i64* %PC.i527
  %397 = inttoptr i64 %394 to i32*
  %398 = load i32, i32* %397
  %399 = sext i32 %398 to i64
  %400 = mul i64 %399, 100
  %401 = trunc i64 %400 to i32
  %402 = and i64 %400, 4294967295
  store i64 %402, i64* %RCX.i528, align 8
  %403 = shl i64 %400, 32
  %404 = ashr exact i64 %403, 32
  %405 = icmp ne i64 %404, %400
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %406, i8* %407, align 1
  %408 = and i32 %401, 255
  %409 = call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %412, i8* %413, align 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %414, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %415, align 1
  %416 = lshr i32 %401, 31
  %417 = trunc i32 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %417, i8* %418, align 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %406, i8* %419, align 1
  store %struct.Memory* %loadMem_403545, %struct.Memory** %MEMORY
  %loadMem_40354c = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %ECX.i525 = bitcast %union.anon* %425 to i32*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 15
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RBP.i526
  %430 = sub i64 %429, 8120
  %431 = load i32, i32* %ECX.i525
  %432 = zext i32 %431 to i64
  %433 = load i64, i64* %PC.i524
  %434 = add i64 %433, 6
  store i64 %434, i64* %PC.i524
  %435 = inttoptr i64 %430 to i32*
  store i32 %431, i32* %435
  store %struct.Memory* %loadMem_40354c, %struct.Memory** %MEMORY
  %loadMem_403552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %EAX.i522 = bitcast %union.anon* %441 to i32*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 15
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i523
  %446 = sub i64 %445, 8188
  %447 = load i32, i32* %EAX.i522
  %448 = zext i32 %447 to i64
  %449 = load i64, i64* %PC.i521
  %450 = add i64 %449, 6
  store i64 %450, i64* %PC.i521
  %451 = inttoptr i64 %446 to i32*
  store i32 %447, i32* %451
  store %struct.Memory* %loadMem_403552, %struct.Memory** %MEMORY
  %loadMem1_403558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %PC.i520
  %456 = add i64 %455, -10168
  %457 = load i64, i64* %PC.i520
  %458 = add i64 %457, 5
  %459 = load i64, i64* %PC.i520
  %460 = add i64 %459, 5
  store i64 %460, i64* %PC.i520
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %462 = load i64, i64* %461, align 8
  %463 = add i64 %462, -8
  %464 = inttoptr i64 %463 to i64*
  store i64 %458, i64* %464
  store i64 %463, i64* %461, align 8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %456, i64* %465, align 8
  store %struct.Memory* %loadMem1_403558, %struct.Memory** %MEMORY
  %loadMem2_403558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403558 = load i64, i64* %3
  %call2_403558 = call %struct.Memory* @sub_400da0.fopen_plt(%struct.State* %0, i64 %loadPC_403558, %struct.Memory* %loadMem2_403558)
  store %struct.Memory* %call2_403558, %struct.Memory** %MEMORY
  %loadMem_40355d = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 15
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %RBP.i519
  %476 = sub i64 %475, 8
  %477 = load i64, i64* %RAX.i518
  %478 = load i64, i64* %PC.i517
  %479 = add i64 %478, 4
  store i64 %479, i64* %PC.i517
  %480 = inttoptr i64 %476 to i64*
  store i64 %477, i64* %480
  store %struct.Memory* %loadMem_40355d, %struct.Memory** %MEMORY
  br label %block_.L_403561

block_.L_403561:                                  ; preds = %block_.L_40396f, %entry
  %loadMem_403561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 9
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %RSI.i516 = bitcast %union.anon* %486 to i64*
  %487 = load i64, i64* %PC.i515
  %488 = add i64 %487, 5
  store i64 %488, i64* %PC.i515
  store i64 2000, i64* %RSI.i516, align 8
  store %struct.Memory* %loadMem_403561, %struct.Memory** %MEMORY
  %loadMem_403566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 11
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RDI.i513 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 15
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %497 to i64*
  %498 = load i64, i64* %RBP.i514
  %499 = sub i64 %498, 2016
  %500 = load i64, i64* %PC.i512
  %501 = add i64 %500, 7
  store i64 %501, i64* %PC.i512
  store i64 %499, i64* %RDI.i513, align 8
  store %struct.Memory* %loadMem_403566, %struct.Memory** %MEMORY
  %loadMem_40356d = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 7
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 15
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RBP.i511
  %512 = sub i64 %511, 8
  %513 = load i64, i64* %PC.i509
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC.i509
  %515 = inttoptr i64 %512 to i64*
  %516 = load i64, i64* %515
  store i64 %516, i64* %RDX.i510, align 8
  store %struct.Memory* %loadMem_40356d, %struct.Memory** %MEMORY
  %loadMem1_403571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %519 to i64*
  %520 = load i64, i64* %PC.i508
  %521 = add i64 %520, -10369
  %522 = load i64, i64* %PC.i508
  %523 = add i64 %522, 5
  %524 = load i64, i64* %PC.i508
  %525 = add i64 %524, 5
  store i64 %525, i64* %PC.i508
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = add i64 %527, -8
  %529 = inttoptr i64 %528 to i64*
  store i64 %523, i64* %529
  store i64 %528, i64* %526, align 8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %521, i64* %530, align 8
  store %struct.Memory* %loadMem1_403571, %struct.Memory** %MEMORY
  %loadMem2_403571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403571 = load i64, i64* %3
  %call2_403571 = call %struct.Memory* @sub_400cf0.fgets_plt(%struct.State* %0, i64 %loadPC_403571, %struct.Memory* %loadMem2_403571)
  store %struct.Memory* %call2_403571, %struct.Memory** %MEMORY
  %loadMem_403576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %RAX.i507
  %538 = load i64, i64* %PC.i506
  %539 = add i64 %538, 4
  store i64 %539, i64* %PC.i506
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %540, align 1
  %541 = trunc i64 %537 to i32
  %542 = and i32 %541, 255
  %543 = call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %546, i8* %547, align 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %548, align 1
  %549 = icmp eq i64 %537, 0
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %550, i8* %551, align 1
  %552 = lshr i64 %537, 63
  %553 = trunc i64 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %553, i8* %554, align 1
  %555 = lshr i64 %537, 63
  %556 = xor i64 %552, %555
  %557 = add i64 %556, %555
  %558 = icmp eq i64 %557, 2
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %559, i8* %560, align 1
  store %struct.Memory* %loadMem_403576, %struct.Memory** %MEMORY
  %loadMem_40357a = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %PC.i505
  %565 = add i64 %564, 1053
  %566 = load i64, i64* %PC.i505
  %567 = add i64 %566, 6
  %568 = load i64, i64* %PC.i505
  %569 = add i64 %568, 6
  store i64 %569, i64* %PC.i505
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %571 = load i8, i8* %570, align 1
  store i8 %571, i8* %BRANCH_TAKEN, align 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %573 = icmp ne i8 %571, 0
  %574 = select i1 %573, i64 %565, i64 %567
  store i64 %574, i64* %572, align 8
  store %struct.Memory* %loadMem_40357a, %struct.Memory** %MEMORY
  %loadBr_40357a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40357a = icmp eq i8 %loadBr_40357a, 1
  br i1 %cmpBr_40357a, label %block_.L_403997, label %block_403580

block_403580:                                     ; preds = %block_.L_403561
  %loadMem_403580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 11
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RDI.i503 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 15
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RBP.i504
  %585 = sub i64 %584, 2016
  %586 = load i64, i64* %PC.i502
  %587 = add i64 %586, 7
  store i64 %587, i64* %PC.i502
  store i64 %585, i64* %RDI.i503, align 8
  store %struct.Memory* %loadMem_403580, %struct.Memory** %MEMORY
  %loadMem_403587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RBP.i501
  %598 = sub i64 %597, 8148
  %599 = load i64, i64* %PC.i499
  %600 = add i64 %599, 6
  store i64 %600, i64* %PC.i499
  %601 = inttoptr i64 %598 to i32*
  %602 = load i32, i32* %601
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_403587, %struct.Memory** %MEMORY
  %loadMem_40358d = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 1
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %RAX.i498
  %611 = load i64, i64* %PC.i497
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC.i497
  %613 = trunc i64 %610 to i32
  %614 = add i32 1, %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX.i498, align 8
  %616 = icmp ult i32 %614, %613
  %617 = icmp ult i32 %614, 1
  %618 = or i1 %616, %617
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %619, i8* %620, align 1
  %621 = and i32 %614, 255
  %622 = call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %625, i8* %626, align 1
  %627 = xor i64 1, %610
  %628 = trunc i64 %627 to i32
  %629 = xor i32 %628, %614
  %630 = lshr i32 %629, 4
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %632, i8* %633, align 1
  %634 = icmp eq i32 %614, 0
  %635 = zext i1 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %635, i8* %636, align 1
  %637 = lshr i32 %614, 31
  %638 = trunc i32 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %638, i8* %639, align 1
  %640 = lshr i32 %613, 31
  %641 = xor i32 %637, %640
  %642 = add i32 %641, %637
  %643 = icmp eq i32 %642, 2
  %644 = zext i1 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %644, i8* %645, align 1
  store %struct.Memory* %loadMem_40358d, %struct.Memory** %MEMORY
  %loadMem_403590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %651 to i32*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RBP.i496
  %656 = sub i64 %655, 8148
  %657 = load i32, i32* %EAX.i495
  %658 = zext i32 %657 to i64
  %659 = load i64, i64* %PC.i494
  %660 = add i64 %659, 6
  store i64 %660, i64* %PC.i494
  %661 = inttoptr i64 %656 to i32*
  store i32 %657, i32* %661
  store %struct.Memory* %loadMem_403590, %struct.Memory** %MEMORY
  %loadMem1_403596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %PC.i493
  %666 = add i64 %665, -2262
  %667 = load i64, i64* %PC.i493
  %668 = add i64 %667, 5
  %669 = load i64, i64* %PC.i493
  %670 = add i64 %669, 5
  store i64 %670, i64* %PC.i493
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %672 = load i64, i64* %671, align 8
  %673 = add i64 %672, -8
  %674 = inttoptr i64 %673 to i64*
  store i64 %668, i64* %674
  store i64 %673, i64* %671, align 8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %666, i64* %675, align 8
  store %struct.Memory* %loadMem1_403596, %struct.Memory** %MEMORY
  %loadMem2_403596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403596 = load i64, i64* %3
  %call2_403596 = call %struct.Memory* @sub_402cc0.setup_epd_line(%struct.State* %0, i64 %loadPC_403596, %struct.Memory* %loadMem2_403596)
  store %struct.Memory* %call2_403596, %struct.Memory** %MEMORY
  %loadMem_40359b = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %PC.i491
  %683 = add i64 %682, 5
  store i64 %683, i64* %PC.i491
  store i64 1, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_40359b, %struct.Memory** %MEMORY
  %loadMem_4035a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 5
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %ECX.i489 = bitcast %union.anon* %689 to i32*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 5
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %692 to i64*
  %693 = load i64, i64* %RCX.i490
  %694 = load i32, i32* %ECX.i489
  %695 = zext i32 %694 to i64
  %696 = load i64, i64* %PC.i488
  %697 = add i64 %696, 2
  store i64 %697, i64* %PC.i488
  %698 = xor i64 %695, %693
  %699 = trunc i64 %698 to i32
  %700 = and i64 %698, 4294967295
  store i64 %700, i64* %RCX.i490, align 8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %701, align 1
  %702 = and i32 %699, 255
  %703 = call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %706, i8* %707, align 1
  %708 = icmp eq i32 %699, 0
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %709, i8* %710, align 1
  %711 = lshr i32 %699, 31
  %712 = trunc i32 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %712, i8* %713, align 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %714, align 1
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %715, align 1
  store %struct.Memory* %loadMem_4035a0, %struct.Memory** %MEMORY
  %loadMem_4035a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %PC.i487
  %720 = add i64 %719, 8
  store i64 %720, i64* %PC.i487
  %721 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*)
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %722, align 1
  %723 = and i32 %721, 255
  %724 = call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %727, i8* %728, align 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %729, align 1
  %730 = icmp eq i32 %721, 0
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %731, i8* %732, align 1
  %733 = lshr i32 %721, 31
  %734 = trunc i32 %733 to i8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %734, i8* %735, align 1
  %736 = lshr i32 %721, 31
  %737 = xor i32 %733, %736
  %738 = add i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %740, i8* %741, align 1
  store %struct.Memory* %loadMem_4035a2, %struct.Memory** %MEMORY
  %loadMem_4035aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 5
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %ECX.i485 = bitcast %union.anon* %747 to i32*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 1
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %750 to i64*
  %751 = load i32, i32* %ECX.i485
  %752 = zext i32 %751 to i64
  %753 = load i64, i64* %PC.i484
  %754 = add i64 %753, 3
  store i64 %754, i64* %PC.i484
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %756 = load i8, i8* %755, align 1
  %757 = icmp eq i8 %756, 0
  %758 = load i64, i64* %RAX.i486, align 8
  %759 = select i1 %757, i64 %752, i64 %758
  %760 = and i64 %759, 4294967295
  store i64 %760, i64* %RAX.i486, align 8
  store %struct.Memory* %loadMem_4035aa, %struct.Memory** %MEMORY
  %loadMem_4035ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 33
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 1
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %EAX.i483 = bitcast %union.anon* %766 to i32*
  %767 = load i32, i32* %EAX.i483
  %768 = zext i32 %767 to i64
  %769 = load i64, i64* %PC.i482
  %770 = add i64 %769, 7
  store i64 %770, i64* %PC.i482
  store i32 %767, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*)
  store %struct.Memory* %loadMem_4035ad, %struct.Memory** %MEMORY
  %loadMem1_4035b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %PC.i481
  %775 = add i64 %774, 118540
  %776 = load i64, i64* %PC.i481
  %777 = add i64 %776, 5
  %778 = load i64, i64* %PC.i481
  %779 = add i64 %778, 5
  store i64 %779, i64* %PC.i481
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = add i64 %781, -8
  %783 = inttoptr i64 %782 to i64*
  store i64 %777, i64* %783
  store i64 %782, i64* %780, align 8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %775, i64* %784, align 8
  store %struct.Memory* %loadMem1_4035b4, %struct.Memory** %MEMORY
  %loadMem2_4035b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4035b4 = load i64, i64* %3
  %call2_4035b4 = call %struct.Memory* @sub_4204c0.clear_tt(%struct.State* %0, i64 %loadPC_4035b4, %struct.Memory* %loadMem2_4035b4)
  store %struct.Memory* %call2_4035b4, %struct.Memory** %MEMORY
  %loadMem1_4035b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %PC.i480
  %789 = add i64 %788, 118855
  %790 = load i64, i64* %PC.i480
  %791 = add i64 %790, 5
  %792 = load i64, i64* %PC.i480
  %793 = add i64 %792, 5
  store i64 %793, i64* %PC.i480
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %795 = load i64, i64* %794, align 8
  %796 = add i64 %795, -8
  %797 = inttoptr i64 %796 to i64*
  store i64 %791, i64* %797
  store i64 %796, i64* %794, align 8
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %789, i64* %798, align 8
  store %struct.Memory* %loadMem1_4035b9, %struct.Memory** %MEMORY
  %loadMem2_4035b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4035b9 = load i64, i64* %3
  %call2_4035b9 = call %struct.Memory* @sub_420600.initialize_hash(%struct.State* %0, i64 %loadPC_4035b9, %struct.Memory* %loadMem2_4035b9)
  store %struct.Memory* %call2_4035b9, %struct.Memory** %MEMORY
  %loadMem_4035be = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 9
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RSI.i479 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %PC.i478
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC.i478
  store i64 1, i64* %RSI.i479, align 8
  store %struct.Memory* %loadMem_4035be, %struct.Memory** %MEMORY
  %loadMem_4035c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 33
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 11
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RDI.i477 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %PC.i476
  %814 = add i64 %813, 8
  store i64 %814, i64* %PC.i476
  %815 = load i64, i64* bitcast (%G_0x62da80_type* @G_0x62da80 to i64*)
  store i64 %815, i64* %RDI.i477, align 8
  store %struct.Memory* %loadMem_4035c3, %struct.Memory** %MEMORY
  %loadMem1_4035cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %PC.i475
  %820 = add i64 %819, 126453
  %821 = load i64, i64* %PC.i475
  %822 = add i64 %821, 5
  %823 = load i64, i64* %PC.i475
  %824 = add i64 %823, 5
  store i64 %824, i64* %PC.i475
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %826 = load i64, i64* %825, align 8
  %827 = add i64 %826, -8
  %828 = inttoptr i64 %827 to i64*
  store i64 %822, i64* %828
  store i64 %827, i64* %825, align 8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %820, i64* %829, align 8
  store %struct.Memory* %loadMem1_4035cb, %struct.Memory** %MEMORY
  %loadMem2_4035cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4035cb = load i64, i64* %3
  %call2_4035cb = call %struct.Memory* @sub_4223c0.display_board(%struct.State* %0, i64 %loadPC_4035cb, %struct.Memory* %loadMem2_4035cb)
  store %struct.Memory* %call2_4035cb, %struct.Memory** %MEMORY
  %loadMem_4035d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %PC.i474
  %834 = add i64 %833, 11
  store i64 %834, i64* %PC.i474
  store i32 0, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*)
  store %struct.Memory* %loadMem_4035d0, %struct.Memory** %MEMORY
  %loadMem1_4035db = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %PC.i473
  %839 = add i64 %838, 134661
  %840 = load i64, i64* %PC.i473
  %841 = add i64 %840, 5
  %842 = load i64, i64* %PC.i473
  %843 = add i64 %842, 5
  store i64 %843, i64* %PC.i473
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %845 = load i64, i64* %844, align 8
  %846 = add i64 %845, -8
  %847 = inttoptr i64 %846 to i64*
  store i64 %841, i64* %847
  store i64 %846, i64* %844, align 8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %839, i64* %848, align 8
  store %struct.Memory* %loadMem1_4035db, %struct.Memory** %MEMORY
  %loadMem2_4035db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4035db = load i64, i64* %3
  %call2_4035db = call %struct.Memory* @sub_4243e0.interrupt(%struct.State* %0, i64 %loadPC_4035db, %struct.Memory* %loadMem2_4035db)
  store %struct.Memory* %call2_4035db, %struct.Memory** %MEMORY
  %loadMem_4035e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 1
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %EAX.i472 = bitcast %union.anon* %854 to i32*
  %855 = load i32, i32* %EAX.i472
  %856 = zext i32 %855 to i64
  %857 = load i64, i64* %PC.i471
  %858 = add i64 %857, 3
  store i64 %858, i64* %PC.i471
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %859, align 1
  %860 = and i32 %855, 255
  %861 = call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %864, i8* %865, align 1
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %866, align 1
  %867 = icmp eq i32 %855, 0
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %868, i8* %869, align 1
  %870 = lshr i32 %855, 31
  %871 = trunc i32 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %871, i8* %872, align 1
  %873 = lshr i32 %855, 31
  %874 = xor i32 %870, %873
  %875 = add i32 %874, %873
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %877, i8* %878, align 1
  store %struct.Memory* %loadMem_4035e0, %struct.Memory** %MEMORY
  %loadMem_4035e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %881 to i64*
  %882 = load i64, i64* %PC.i470
  %883 = add i64 %882, 31
  %884 = load i64, i64* %PC.i470
  %885 = add i64 %884, 6
  %886 = load i64, i64* %PC.i470
  %887 = add i64 %886, 6
  store i64 %887, i64* %PC.i470
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %889 = load i8, i8* %888, align 1
  store i8 %889, i8* %BRANCH_TAKEN, align 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %891 = icmp ne i8 %889, 0
  %892 = select i1 %891, i64 %883, i64 %885
  store i64 %892, i64* %890, align 8
  store %struct.Memory* %loadMem_4035e3, %struct.Memory** %MEMORY
  %loadBr_4035e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035e3 = icmp eq i8 %loadBr_4035e3, 1
  br i1 %cmpBr_4035e3, label %block_.L_403602, label %block_4035e9

block_4035e9:                                     ; preds = %block_403580
  %loadMem_4035e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 9
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RSI.i469 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %PC.i468
  %900 = add i64 %899, 5
  store i64 %900, i64* %PC.i468
  store i64 256, i64* %RSI.i469, align 8
  store %struct.Memory* %loadMem_4035e9, %struct.Memory** %MEMORY
  %loadMem_4035ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 11
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RDI.i466 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 15
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RBP.i467
  %911 = sub i64 %910, 8112
  %912 = load i64, i64* %PC.i465
  %913 = add i64 %912, 7
  store i64 %913, i64* %PC.i465
  store i64 %911, i64* %RDI.i466, align 8
  store %struct.Memory* %loadMem_4035ee, %struct.Memory** %MEMORY
  %loadMem_4035f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 7
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %919 to i64*
  %920 = load i64, i64* %PC.i463
  %921 = add i64 %920, 8
  store i64 %921, i64* %PC.i463
  %922 = load i64, i64* bitcast (%G_0x62da90_type* @G_0x62da90 to i64*)
  store i64 %922, i64* %RDX.i464, align 8
  store %struct.Memory* %loadMem_4035f5, %struct.Memory** %MEMORY
  %loadMem1_4035fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %PC.i462
  %927 = add i64 %926, 129075
  %928 = load i64, i64* %PC.i462
  %929 = add i64 %928, 5
  %930 = load i64, i64* %PC.i462
  %931 = add i64 %930, 5
  store i64 %931, i64* %PC.i462
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %933 = load i64, i64* %932, align 8
  %934 = add i64 %933, -8
  %935 = inttoptr i64 %934 to i64*
  store i64 %929, i64* %935
  store i64 %934, i64* %932, align 8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %927, i64* %936, align 8
  store %struct.Memory* %loadMem1_4035fd, %struct.Memory** %MEMORY
  %loadMem2_4035fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4035fd = load i64, i64* %3
  %call2_4035fd = call %struct.Memory* @sub_422e30.rinput(%struct.State* %0, i64 %loadPC_4035fd, %struct.Memory* %loadMem2_4035fd)
  store %struct.Memory* %call2_4035fd, %struct.Memory** %MEMORY
  br label %block_.L_403602

block_.L_403602:                                  ; preds = %block_4035e9, %block_403580
  %loadMem_403602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 11
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RDI.i461 = bitcast %union.anon* %942 to i64*
  %943 = load i64, i64* %PC.i460
  %944 = add i64 %943, 10
  store i64 %944, i64* %PC.i460
  store i64 ptrtoint (%G__0x4285ec_type* @G__0x4285ec to i64), i64* %RDI.i461, align 8
  store %struct.Memory* %loadMem_403602, %struct.Memory** %MEMORY
  %loadMem_40360c = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %949 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %948, i64 0, i64 0
  %YMM0.i459 = bitcast %union.VectorReg* %949 to %"class.std::bitset"*
  %950 = bitcast %"class.std::bitset"* %YMM0.i459 to i8*
  %951 = load i64, i64* %PC.i458
  %952 = add i64 %951, ptrtoint (%G_0x24d7c__rip__type* @G_0x24d7c__rip_ to i64)
  %953 = load i64, i64* %PC.i458
  %954 = add i64 %953, 8
  store i64 %954, i64* %PC.i458
  %955 = inttoptr i64 %952 to float*
  %956 = load float, float* %955
  %957 = bitcast i8* %950 to float*
  store float %956, float* %957, align 1
  %958 = getelementptr inbounds i8, i8* %950, i64 4
  %959 = bitcast i8* %958 to float*
  store float 0.000000e+00, float* %959, align 1
  %960 = getelementptr inbounds i8, i8* %950, i64 8
  %961 = bitcast i8* %960 to float*
  store float 0.000000e+00, float* %961, align 1
  %962 = getelementptr inbounds i8, i8* %950, i64 12
  %963 = bitcast i8* %962 to float*
  store float 0.000000e+00, float* %963, align 1
  store %struct.Memory* %loadMem_40360c, %struct.Memory** %MEMORY
  %loadMem_403614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 1
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 15
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %972 to i64*
  %973 = load i64, i64* %RBP.i457
  %974 = sub i64 %973, 8120
  %975 = load i64, i64* %PC.i455
  %976 = add i64 %975, 6
  store i64 %976, i64* %PC.i455
  %977 = inttoptr i64 %974 to i32*
  %978 = load i32, i32* %977
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_403614, %struct.Memory** %MEMORY
  %loadMem_40361a = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %982 to i64*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 1
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %EAX.i454 = bitcast %union.anon* %985 to i32*
  %986 = load i64, i64* %PC.i453
  %987 = add i64 %986, ptrtoint (%G_0x483560__rip__type* @G_0x483560__rip_ to i64)
  %988 = load i32, i32* %EAX.i454
  %989 = zext i32 %988 to i64
  %990 = load i64, i64* %PC.i453
  %991 = add i64 %990, 6
  store i64 %991, i64* %PC.i453
  %992 = inttoptr i64 %987 to i32*
  store i32 %988, i32* %992
  store %struct.Memory* %loadMem_40361a, %struct.Memory** %MEMORY
  %loadMem_403620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 15
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RBP.i452
  %1003 = sub i64 %1002, 8176
  %1004 = load i64, i64* %PC.i450
  %1005 = add i64 %1004, 7
  store i64 %1005, i64* %PC.i450
  store i64 %1003, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_403620, %struct.Memory** %MEMORY
  %loadMem_403627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 11
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RDI.i448 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 15
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %1014 to i64*
  %1015 = load i64, i64* %RBP.i449
  %1016 = sub i64 %1015, 8200
  %1017 = load i64, i64* %RDI.i448
  %1018 = load i64, i64* %PC.i447
  %1019 = add i64 %1018, 7
  store i64 %1019, i64* %PC.i447
  %1020 = inttoptr i64 %1016 to i64*
  store i64 %1017, i64* %1020
  store %struct.Memory* %loadMem_403627, %struct.Memory** %MEMORY
  %loadMem_40362e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 5
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 11
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RDI.i446 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %RCX.i445
  %1031 = load i64, i64* %PC.i444
  %1032 = add i64 %1031, 3
  store i64 %1032, i64* %PC.i444
  store i64 %1030, i64* %RDI.i446, align 8
  store %struct.Memory* %loadMem_40362e, %struct.Memory** %MEMORY
  %loadMem_403631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 15
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1039, i64 0, i64 0
  %XMM0.i443 = bitcast %union.VectorReg* %1040 to %union.vec128_t*
  %1041 = load i64, i64* %RBP.i442
  %1042 = sub i64 %1041, 8204
  %1043 = bitcast %union.vec128_t* %XMM0.i443 to i8*
  %1044 = load i64, i64* %PC.i441
  %1045 = add i64 %1044, 8
  store i64 %1045, i64* %PC.i441
  %1046 = bitcast i8* %1043 to <2 x float>*
  %1047 = load <2 x float>, <2 x float>* %1046, align 1
  %1048 = extractelement <2 x float> %1047, i32 0
  %1049 = inttoptr i64 %1042 to float*
  store float %1048, float* %1049
  store %struct.Memory* %loadMem_403631, %struct.Memory** %MEMORY
  %loadMem1_403639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1052 to i64*
  %1053 = load i64, i64* %PC.i440
  %1054 = add i64 %1053, 94983
  %1055 = load i64, i64* %PC.i440
  %1056 = add i64 %1055, 5
  %1057 = load i64, i64* %PC.i440
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %PC.i440
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1060 = load i64, i64* %1059, align 8
  %1061 = add i64 %1060, -8
  %1062 = inttoptr i64 %1061 to i64*
  store i64 %1056, i64* %1062
  store i64 %1061, i64* %1059, align 8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1054, i64* %1063, align 8
  store %struct.Memory* %loadMem1_403639, %struct.Memory** %MEMORY
  %loadMem2_403639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403639 = load i64, i64* %3
  %call2_403639 = call %struct.Memory* @sub_41a940.think(%struct.State* %0, i64 %loadPC_403639, %struct.Memory* %loadMem2_403639)
  store %struct.Memory* %call2_403639, %struct.Memory** %MEMORY
  %loadMem_40363e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 33
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 5
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RBP.i439
  %1074 = sub i64 %1073, 8160
  %1075 = load i64, i64* %PC.i437
  %1076 = add i64 %1075, 7
  store i64 %1076, i64* %PC.i437
  %1077 = inttoptr i64 %1074 to i64*
  %1078 = load i64, i64* %1077
  store i64 %1078, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_40363e, %struct.Memory** %MEMORY
  %loadMem_403645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 5
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 15
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %RBP.i436
  %1089 = sub i64 %1088, 8128
  %1090 = load i64, i64* %RCX.i435
  %1091 = load i64, i64* %PC.i434
  %1092 = add i64 %1091, 7
  store i64 %1092, i64* %PC.i434
  %1093 = inttoptr i64 %1089 to i64*
  store i64 %1090, i64* %1093
  store %struct.Memory* %loadMem_403645, %struct.Memory** %MEMORY
  %loadMem_40364c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 15
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1100, i64 0, i64 0
  %YMM0.i433 = bitcast %union.VectorReg* %1101 to %"class.std::bitset"*
  %1102 = bitcast %"class.std::bitset"* %YMM0.i433 to i8*
  %1103 = load i64, i64* %RBP.i432
  %1104 = sub i64 %1103, 8176
  %1105 = load i64, i64* %PC.i431
  %1106 = add i64 %1105, 7
  store i64 %1106, i64* %PC.i431
  %1107 = inttoptr i64 %1104 to float*
  %1108 = load float, float* %1107
  %1109 = add i64 %1104, 4
  %1110 = inttoptr i64 %1109 to float*
  %1111 = load float, float* %1110
  %1112 = add i64 %1104, 8
  %1113 = inttoptr i64 %1112 to float*
  %1114 = load float, float* %1113
  %1115 = add i64 %1104, 12
  %1116 = inttoptr i64 %1115 to float*
  %1117 = load float, float* %1116
  %1118 = bitcast i8* %1102 to float*
  store float %1108, float* %1118, align 1
  %1119 = getelementptr inbounds i8, i8* %1102, i64 4
  %1120 = bitcast i8* %1119 to float*
  store float %1111, float* %1120, align 1
  %1121 = getelementptr inbounds i8, i8* %1102, i64 8
  %1122 = bitcast i8* %1121 to float*
  store float %1114, float* %1122, align 1
  %1123 = getelementptr inbounds i8, i8* %1102, i64 12
  %1124 = bitcast i8* %1123 to float*
  store float %1117, float* %1124, align 1
  store %struct.Memory* %loadMem_40364c, %struct.Memory** %MEMORY
  %loadMem_403653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 15
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1132 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1131, i64 0, i64 0
  %XMM0.i430 = bitcast %union.VectorReg* %1132 to %union.vec128_t*
  %1133 = load i64, i64* %RBP.i429
  %1134 = sub i64 %1133, 8144
  %1135 = bitcast %union.vec128_t* %XMM0.i430 to i8*
  %1136 = load i64, i64* %PC.i428
  %1137 = add i64 %1136, 7
  store i64 %1137, i64* %PC.i428
  %1138 = bitcast i8* %1135 to <2 x float>*
  %1139 = load <2 x float>, <2 x float>* %1138, align 1
  %1140 = getelementptr inbounds i8, i8* %1135, i64 8
  %1141 = bitcast i8* %1140 to <2 x float>*
  %1142 = load <2 x float>, <2 x float>* %1141, align 1
  %1143 = extractelement <2 x float> %1139, i32 0
  %1144 = inttoptr i64 %1134 to float*
  store float %1143, float* %1144
  %1145 = add i64 %1134, 4
  %1146 = extractelement <2 x float> %1139, i32 1
  %1147 = inttoptr i64 %1145 to float*
  store float %1146, float* %1147
  %1148 = add i64 %1134, 8
  %1149 = extractelement <2 x float> %1142, i32 0
  %1150 = inttoptr i64 %1148 to float*
  store float %1149, float* %1150
  %1151 = add i64 %1134, 12
  %1152 = extractelement <2 x float> %1142, i32 1
  %1153 = inttoptr i64 %1151 to float*
  store float %1152, float* %1153
  store %struct.Memory* %loadMem_403653, %struct.Memory** %MEMORY
  %loadMem_40365a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 1
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %PC.i426
  %1161 = add i64 %1160, ptrtoint (%G_0x460ea0__rip__type* @G_0x460ea0__rip_ to i64)
  %1162 = load i64, i64* %PC.i426
  %1163 = add i64 %1162, 6
  store i64 %1163, i64* %PC.i426
  %1164 = inttoptr i64 %1161 to i32*
  %1165 = load i32, i32* %1164
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_40365a, %struct.Memory** %MEMORY
  %loadMem_403660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1171 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1170, i64 0, i64 0
  %YMM0.i425 = bitcast %union.VectorReg* %1171 to %"class.std::bitset"*
  %1172 = bitcast %"class.std::bitset"* %YMM0.i425 to i8*
  %1173 = load i64, i64* %PC.i424
  %1174 = add i64 %1173, ptrtoint (%G_0x2377dc__rip__type* @G_0x2377dc__rip_ to i64)
  %1175 = load i64, i64* %PC.i424
  %1176 = add i64 %1175, 8
  store i64 %1176, i64* %PC.i424
  %1177 = bitcast i8* %1172 to <2 x i32>*
  %1178 = load <2 x i32>, <2 x i32>* %1177, align 1
  %1179 = getelementptr inbounds i8, i8* %1172, i64 8
  %1180 = bitcast i8* %1179 to <2 x i32>*
  %1181 = load <2 x i32>, <2 x i32>* %1180, align 1
  %1182 = inttoptr i64 %1174 to i32*
  %1183 = load i32, i32* %1182
  %1184 = sitofp i32 %1183 to float
  %1185 = bitcast i8* %1172 to float*
  store float %1184, float* %1185, align 1
  %1186 = extractelement <2 x i32> %1178, i32 1
  %1187 = getelementptr inbounds i8, i8* %1172, i64 4
  %1188 = bitcast i8* %1187 to i32*
  store i32 %1186, i32* %1188, align 1
  %1189 = extractelement <2 x i32> %1181, i32 0
  %1190 = bitcast i8* %1179 to i32*
  store i32 %1189, i32* %1190, align 1
  %1191 = extractelement <2 x i32> %1181, i32 1
  %1192 = getelementptr inbounds i8, i8* %1172, i64 12
  %1193 = bitcast i8* %1192 to i32*
  store i32 %1191, i32* %1193, align 1
  store %struct.Memory* %loadMem_403660, %struct.Memory** %MEMORY
  %loadMem_403668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 1
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %EAX.i422 = bitcast %union.anon* %1199 to i32*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1200, i64 0, i64 1
  %YMM1.i423 = bitcast %union.VectorReg* %1201 to %"class.std::bitset"*
  %1202 = bitcast %"class.std::bitset"* %YMM1.i423 to i8*
  %1203 = load i32, i32* %EAX.i422
  %1204 = zext i32 %1203 to i64
  %1205 = load i64, i64* %PC.i421
  %1206 = add i64 %1205, 4
  store i64 %1206, i64* %PC.i421
  %1207 = bitcast i8* %1202 to <2 x i32>*
  %1208 = load <2 x i32>, <2 x i32>* %1207, align 1
  %1209 = getelementptr inbounds i8, i8* %1202, i64 8
  %1210 = bitcast i8* %1209 to <2 x i32>*
  %1211 = load <2 x i32>, <2 x i32>* %1210, align 1
  %1212 = sitofp i32 %1203 to float
  %1213 = bitcast i8* %1202 to float*
  store float %1212, float* %1213, align 1
  %1214 = extractelement <2 x i32> %1208, i32 1
  %1215 = getelementptr inbounds i8, i8* %1202, i64 4
  %1216 = bitcast i8* %1215 to i32*
  store i32 %1214, i32* %1216, align 1
  %1217 = extractelement <2 x i32> %1211, i32 0
  %1218 = bitcast i8* %1209 to i32*
  store i32 %1217, i32* %1218, align 1
  %1219 = extractelement <2 x i32> %1211, i32 1
  %1220 = getelementptr inbounds i8, i8* %1202, i64 12
  %1221 = bitcast i8* %1220 to i32*
  store i32 %1219, i32* %1221, align 1
  store %struct.Memory* %loadMem_403668, %struct.Memory** %MEMORY
  %loadMem_40366c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1225, i64 0, i64 0
  %YMM0.i419 = bitcast %union.VectorReg* %1226 to %"class.std::bitset"*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1227, i64 0, i64 1
  %XMM1.i420 = bitcast %union.VectorReg* %1228 to %union.vec128_t*
  %1229 = bitcast %"class.std::bitset"* %YMM0.i419 to i8*
  %1230 = bitcast %"class.std::bitset"* %YMM0.i419 to i8*
  %1231 = bitcast %union.vec128_t* %XMM1.i420 to i8*
  %1232 = load i64, i64* %PC.i418
  %1233 = add i64 %1232, 4
  store i64 %1233, i64* %PC.i418
  %1234 = bitcast i8* %1230 to <2 x float>*
  %1235 = load <2 x float>, <2 x float>* %1234, align 1
  %1236 = getelementptr inbounds i8, i8* %1230, i64 8
  %1237 = bitcast i8* %1236 to <2 x i32>*
  %1238 = load <2 x i32>, <2 x i32>* %1237, align 1
  %1239 = bitcast i8* %1231 to <2 x float>*
  %1240 = load <2 x float>, <2 x float>* %1239, align 1
  %1241 = extractelement <2 x float> %1235, i32 0
  %1242 = extractelement <2 x float> %1240, i32 0
  %1243 = fdiv float %1241, %1242
  %1244 = bitcast i8* %1229 to float*
  store float %1243, float* %1244, align 1
  %1245 = bitcast <2 x float> %1235 to <2 x i32>
  %1246 = extractelement <2 x i32> %1245, i32 1
  %1247 = getelementptr inbounds i8, i8* %1229, i64 4
  %1248 = bitcast i8* %1247 to i32*
  store i32 %1246, i32* %1248, align 1
  %1249 = extractelement <2 x i32> %1238, i32 0
  %1250 = getelementptr inbounds i8, i8* %1229, i64 8
  %1251 = bitcast i8* %1250 to i32*
  store i32 %1249, i32* %1251, align 1
  %1252 = extractelement <2 x i32> %1238, i32 1
  %1253 = getelementptr inbounds i8, i8* %1229, i64 12
  %1254 = bitcast i8* %1253 to i32*
  store i32 %1252, i32* %1254, align 1
  store %struct.Memory* %loadMem_40366c, %struct.Memory** %MEMORY
  %loadMem_403670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1258, i64 0, i64 0
  %YMM0.i416 = bitcast %union.VectorReg* %1259 to %"class.std::bitset"*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1260, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %1261 to %union.vec128_t*
  %1262 = bitcast %"class.std::bitset"* %YMM0.i416 to i8*
  %1263 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %1264 = load i64, i64* %PC.i415
  %1265 = add i64 %1264, 4
  store i64 %1265, i64* %PC.i415
  %1266 = bitcast i8* %1263 to <2 x float>*
  %1267 = load <2 x float>, <2 x float>* %1266, align 1
  %1268 = extractelement <2 x float> %1267, i32 0
  %1269 = fpext float %1268 to double
  %1270 = bitcast i8* %1262 to double*
  store double %1269, double* %1270, align 1
  store %struct.Memory* %loadMem_403670, %struct.Memory** %MEMORY
  %loadMem_403674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1274, i64 0, i64 1
  %YMM1.i414 = bitcast %union.VectorReg* %1275 to %"class.std::bitset"*
  %1276 = bitcast %"class.std::bitset"* %YMM1.i414 to i8*
  %1277 = load i64, i64* %PC.i413
  %1278 = add i64 %1277, ptrtoint (%G_0x24d2c__rip__type* @G_0x24d2c__rip_ to i64)
  %1279 = load i64, i64* %PC.i413
  %1280 = add i64 %1279, 8
  store i64 %1280, i64* %PC.i413
  %1281 = inttoptr i64 %1278 to double*
  %1282 = load double, double* %1281
  %1283 = bitcast i8* %1276 to double*
  store double %1282, double* %1283, align 1
  %1284 = getelementptr inbounds i8, i8* %1276, i64 8
  %1285 = bitcast i8* %1284 to double*
  store double 0.000000e+00, double* %1285, align 1
  store %struct.Memory* %loadMem_403674, %struct.Memory** %MEMORY
  %loadMem_40367c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1289, i64 0, i64 0
  %YMM0.i411 = bitcast %union.VectorReg* %1290 to %"class.std::bitset"*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1291, i64 0, i64 1
  %XMM1.i412 = bitcast %union.VectorReg* %1292 to %union.vec128_t*
  %1293 = bitcast %"class.std::bitset"* %YMM0.i411 to i8*
  %1294 = bitcast %"class.std::bitset"* %YMM0.i411 to i8*
  %1295 = bitcast %union.vec128_t* %XMM1.i412 to i8*
  %1296 = load i64, i64* %PC.i410
  %1297 = add i64 %1296, 4
  store i64 %1297, i64* %PC.i410
  %1298 = bitcast i8* %1294 to double*
  %1299 = load double, double* %1298, align 1
  %1300 = getelementptr inbounds i8, i8* %1294, i64 8
  %1301 = bitcast i8* %1300 to i64*
  %1302 = load i64, i64* %1301, align 1
  %1303 = bitcast i8* %1295 to double*
  %1304 = load double, double* %1303, align 1
  %1305 = fmul double %1299, %1304
  %1306 = bitcast i8* %1293 to double*
  store double %1305, double* %1306, align 1
  %1307 = getelementptr inbounds i8, i8* %1293, i64 8
  %1308 = bitcast i8* %1307 to i64*
  store i64 %1302, i64* %1308, align 1
  store %struct.Memory* %loadMem_40367c, %struct.Memory** %MEMORY
  %loadMem_403680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1312, i64 0, i64 0
  %YMM0.i408 = bitcast %union.VectorReg* %1313 to %"class.std::bitset"*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1314, i64 0, i64 0
  %XMM0.i409 = bitcast %union.VectorReg* %1315 to %union.vec128_t*
  %1316 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %1317 = bitcast %union.vec128_t* %XMM0.i409 to i8*
  %1318 = load i64, i64* %PC.i407
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %PC.i407
  %1320 = bitcast i8* %1316 to <2 x i32>*
  %1321 = load <2 x i32>, <2 x i32>* %1320, align 1
  %1322 = getelementptr inbounds i8, i8* %1316, i64 8
  %1323 = bitcast i8* %1322 to <2 x i32>*
  %1324 = load <2 x i32>, <2 x i32>* %1323, align 1
  %1325 = bitcast i8* %1317 to double*
  %1326 = load double, double* %1325, align 1
  %1327 = fptrunc double %1326 to float
  %1328 = bitcast i8* %1316 to float*
  store float %1327, float* %1328, align 1
  %1329 = extractelement <2 x i32> %1321, i32 1
  %1330 = getelementptr inbounds i8, i8* %1316, i64 4
  %1331 = bitcast i8* %1330 to i32*
  store i32 %1329, i32* %1331, align 1
  %1332 = extractelement <2 x i32> %1324, i32 0
  %1333 = bitcast i8* %1322 to i32*
  store i32 %1332, i32* %1333, align 1
  %1334 = extractelement <2 x i32> %1324, i32 1
  %1335 = getelementptr inbounds i8, i8* %1316, i64 12
  %1336 = bitcast i8* %1335 to i32*
  store i32 %1334, i32* %1336, align 1
  store %struct.Memory* %loadMem_403680, %struct.Memory** %MEMORY
  %loadMem_403684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1340, i64 0, i64 0
  %YMM0.i405 = bitcast %union.VectorReg* %1341 to %"class.std::bitset"*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1342, i64 0, i64 0
  %XMM0.i406 = bitcast %union.VectorReg* %1343 to %union.vec128_t*
  %1344 = bitcast %"class.std::bitset"* %YMM0.i405 to i8*
  %1345 = bitcast %union.vec128_t* %XMM0.i406 to i8*
  %1346 = load i64, i64* %PC.i404
  %1347 = add i64 %1346, 4
  store i64 %1347, i64* %PC.i404
  %1348 = bitcast i8* %1345 to <2 x float>*
  %1349 = load <2 x float>, <2 x float>* %1348, align 1
  %1350 = extractelement <2 x float> %1349, i32 0
  %1351 = fpext float %1350 to double
  %1352 = bitcast i8* %1344 to double*
  store double %1351, double* %1352, align 1
  store %struct.Memory* %loadMem_403684, %struct.Memory** %MEMORY
  %loadMem_403688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 7
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RDX.i403 = bitcast %union.anon* %1358 to i64*
  %1359 = load i64, i64* %PC.i402
  %1360 = add i64 %1359, 5
  store i64 %1360, i64* %PC.i402
  store i64 and (i64 ptrtoint (%G__0x4284ed_type* @G__0x4284ed to i64), i64 4294967295), i64* %RDX.i403, align 8
  store %struct.Memory* %loadMem_403688, %struct.Memory** %MEMORY
  %loadMem_40368d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 7
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %EDX.i400 = bitcast %union.anon* %1366 to i32*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 11
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RDI.i401 = bitcast %union.anon* %1369 to i64*
  %1370 = load i32, i32* %EDX.i400
  %1371 = zext i32 %1370 to i64
  %1372 = load i64, i64* %PC.i399
  %1373 = add i64 %1372, 2
  store i64 %1373, i64* %PC.i399
  %1374 = and i64 %1371, 4294967295
  store i64 %1374, i64* %RDI.i401, align 8
  store %struct.Memory* %loadMem_40368d, %struct.Memory** %MEMORY
  %loadMem_40368f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 9
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %1381 = bitcast %union.anon* %1380 to %struct.anon.2*
  %SIL.i398 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1381, i32 0, i32 0
  %1382 = load i64, i64* %PC.i397
  %1383 = add i64 %1382, 3
  store i64 %1383, i64* %PC.i397
  store i8 1, i8* %SIL.i398, align 1
  store %struct.Memory* %loadMem_40368f, %struct.Memory** %MEMORY
  %loadMem_403692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 9
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %1390 = bitcast %union.anon* %1389 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1390, i32 0, i32 0
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 15
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %1393 to i64*
  %1394 = load i64, i64* %RBP.i396
  %1395 = sub i64 %1394, 8205
  %1396 = load i8, i8* %SIL.i
  %1397 = zext i8 %1396 to i64
  %1398 = load i64, i64* %PC.i395
  %1399 = add i64 %1398, 7
  store i64 %1399, i64* %PC.i395
  %1400 = inttoptr i64 %1395 to i8*
  store i8 %1396, i8* %1400
  store %struct.Memory* %loadMem_403692, %struct.Memory** %MEMORY
  %loadMem_403699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 1
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %EAX.i393 = bitcast %union.anon* %1406 to i32*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 9
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RSI.i394 = bitcast %union.anon* %1409 to i64*
  %1410 = load i32, i32* %EAX.i393
  %1411 = zext i32 %1410 to i64
  %1412 = load i64, i64* %PC.i392
  %1413 = add i64 %1412, 2
  store i64 %1413, i64* %PC.i392
  %1414 = and i64 %1411, 4294967295
  store i64 %1414, i64* %RSI.i394, align 8
  store %struct.Memory* %loadMem_403699, %struct.Memory** %MEMORY
  %loadMem_40369b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 33
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 1
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %1421 = bitcast %union.anon* %1420 to %struct.anon.2*
  %AL.i390 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1421, i32 0, i32 0
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 15
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %1424 to i64*
  %1425 = load i64, i64* %RBP.i391
  %1426 = sub i64 %1425, 8205
  %1427 = load i64, i64* %PC.i389
  %1428 = add i64 %1427, 6
  store i64 %1428, i64* %PC.i389
  %1429 = inttoptr i64 %1426 to i8*
  %1430 = load i8, i8* %1429
  store i8 %1430, i8* %AL.i390, align 1
  store %struct.Memory* %loadMem_40369b, %struct.Memory** %MEMORY
  %loadMem1_4036a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %PC.i388
  %1435 = add i64 %1434, -10737
  %1436 = load i64, i64* %PC.i388
  %1437 = add i64 %1436, 5
  %1438 = load i64, i64* %PC.i388
  %1439 = add i64 %1438, 5
  store i64 %1439, i64* %PC.i388
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1441 = load i64, i64* %1440, align 8
  %1442 = add i64 %1441, -8
  %1443 = inttoptr i64 %1442 to i64*
  store i64 %1437, i64* %1443
  store i64 %1442, i64* %1440, align 8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1435, i64* %1444, align 8
  store %struct.Memory* %loadMem1_4036a1, %struct.Memory** %MEMORY
  %loadMem2_4036a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4036a1 = load i64, i64* %3
  %1445 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4036a1)
  store %struct.Memory* %1445, %struct.Memory** %MEMORY
  %loadMem_4036a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 7
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RDX.i386 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %PC.i385
  %1453 = add i64 %1452, ptrtoint (%G_0x47d464__rip__type* @G_0x47d464__rip_ to i64)
  %1454 = load i64, i64* %PC.i385
  %1455 = add i64 %1454, 6
  store i64 %1455, i64* %PC.i385
  %1456 = inttoptr i64 %1453 to i32*
  %1457 = load i32, i32* %1456
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RDX.i386, align 8
  store %struct.Memory* %loadMem_4036a6, %struct.Memory** %MEMORY
  %loadMem_4036ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 7
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %EDX.i383 = bitcast %union.anon* %1464 to i32*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 5
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %1467 to i64*
  %1468 = load i32, i32* %EDX.i383
  %1469 = zext i32 %1468 to i64
  %1470 = load i64, i64* %PC.i382
  %1471 = add i64 %1470, 2
  store i64 %1471, i64* %PC.i382
  %1472 = and i64 %1469, 4294967295
  store i64 %1472, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_4036ac, %struct.Memory** %MEMORY
  %loadMem_4036ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 5
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %ECX.i380 = bitcast %union.anon* %1478 to i32*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 7
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %1481 to i64*
  %1482 = load i32, i32* %ECX.i380
  %1483 = zext i32 %1482 to i64
  %1484 = load i64, i64* %PC.i379
  %1485 = add i64 %1484, 2
  store i64 %1485, i64* %PC.i379
  %1486 = and i64 %1483, 4294967295
  store i64 %1486, i64* %RDX.i381, align 8
  store %struct.Memory* %loadMem_4036ae, %struct.Memory** %MEMORY
  %loadMem_4036b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 9
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RSI.i378 = bitcast %union.anon* %1492 to i64*
  %1493 = load i64, i64* %PC.i377
  %1494 = add i64 %1493, ptrtoint (%G_0x22ae3a__rip__type* @G_0x22ae3a__rip_ to i64)
  %1495 = load i64, i64* %PC.i377
  %1496 = add i64 %1495, 6
  store i64 %1496, i64* %PC.i377
  %1497 = inttoptr i64 %1494 to i32*
  %1498 = load i32, i32* %1497
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RSI.i378, align 8
  store %struct.Memory* %loadMem_4036b0, %struct.Memory** %MEMORY
  %loadMem_4036b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 9
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %ESI.i375 = bitcast %union.anon* %1505 to i32*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 11
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RDI.i376 = bitcast %union.anon* %1508 to i64*
  %1509 = load i32, i32* %ESI.i375
  %1510 = zext i32 %1509 to i64
  %1511 = load i64, i64* %PC.i374
  %1512 = add i64 %1511, 2
  store i64 %1512, i64* %PC.i374
  %1513 = and i64 %1510, 4294967295
  store i64 %1513, i64* %RDI.i376, align 8
  store %struct.Memory* %loadMem_4036b6, %struct.Memory** %MEMORY
  %loadMem_4036b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 11
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %EDI.i372 = bitcast %union.anon* %1519 to i32*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 9
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RSI.i373 = bitcast %union.anon* %1522 to i64*
  %1523 = load i32, i32* %EDI.i372
  %1524 = zext i32 %1523 to i64
  %1525 = load i64, i64* %PC.i371
  %1526 = add i64 %1525, 2
  store i64 %1526, i64* %PC.i371
  %1527 = and i64 %1524, 4294967295
  store i64 %1527, i64* %RSI.i373, align 8
  store %struct.Memory* %loadMem_4036b8, %struct.Memory** %MEMORY
  %loadMem_4036ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 11
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RDI.i369 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1534, i64 0, i64 0
  %YMM0.i370 = bitcast %union.VectorReg* %1535 to %"class.std::bitset"*
  %1536 = bitcast %"class.std::bitset"* %YMM0.i370 to i8*
  %1537 = load i64, i64* %RDI.i369
  %1538 = load i64, i64* %PC.i368
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %PC.i368
  %1540 = bitcast i8* %1536 to <2 x i32>*
  %1541 = load <2 x i32>, <2 x i32>* %1540, align 1
  %1542 = getelementptr inbounds i8, i8* %1536, i64 8
  %1543 = bitcast i8* %1542 to <2 x i32>*
  %1544 = load <2 x i32>, <2 x i32>* %1543, align 1
  %1545 = sitofp i64 %1537 to float
  %1546 = bitcast i8* %1536 to float*
  store float %1545, float* %1546, align 1
  %1547 = extractelement <2 x i32> %1541, i32 1
  %1548 = getelementptr inbounds i8, i8* %1536, i64 4
  %1549 = bitcast i8* %1548 to i32*
  store i32 %1547, i32* %1549, align 1
  %1550 = extractelement <2 x i32> %1544, i32 0
  %1551 = bitcast i8* %1542 to i32*
  store i32 %1550, i32* %1551, align 1
  %1552 = extractelement <2 x i32> %1544, i32 1
  %1553 = getelementptr inbounds i8, i8* %1536, i64 12
  %1554 = bitcast i8* %1553 to i32*
  store i32 %1552, i32* %1554, align 1
  store %struct.Memory* %loadMem_4036ba, %struct.Memory** %MEMORY
  %loadMem_4036bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1561, i64 0, i64 1
  %YMM1.i367 = bitcast %union.VectorReg* %1562 to %"class.std::bitset"*
  %1563 = bitcast %"class.std::bitset"* %YMM1.i367 to i8*
  %1564 = load i64, i64* %RCX.i366
  %1565 = load i64, i64* %PC.i365
  %1566 = add i64 %1565, 5
  store i64 %1566, i64* %PC.i365
  %1567 = bitcast i8* %1563 to <2 x i32>*
  %1568 = load <2 x i32>, <2 x i32>* %1567, align 1
  %1569 = getelementptr inbounds i8, i8* %1563, i64 8
  %1570 = bitcast i8* %1569 to <2 x i32>*
  %1571 = load <2 x i32>, <2 x i32>* %1570, align 1
  %1572 = sitofp i64 %1564 to float
  %1573 = bitcast i8* %1563 to float*
  store float %1572, float* %1573, align 1
  %1574 = extractelement <2 x i32> %1568, i32 1
  %1575 = getelementptr inbounds i8, i8* %1563, i64 4
  %1576 = bitcast i8* %1575 to i32*
  store i32 %1574, i32* %1576, align 1
  %1577 = extractelement <2 x i32> %1571, i32 0
  %1578 = bitcast i8* %1569 to i32*
  store i32 %1577, i32* %1578, align 1
  %1579 = extractelement <2 x i32> %1571, i32 1
  %1580 = getelementptr inbounds i8, i8* %1563, i64 12
  %1581 = bitcast i8* %1580 to i32*
  store i32 %1579, i32* %1581, align 1
  store %struct.Memory* %loadMem_4036bf, %struct.Memory** %MEMORY
  %loadMem_4036c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1586 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1585, i64 0, i64 2
  %YMM2.i364 = bitcast %union.VectorReg* %1586 to %"class.std::bitset"*
  %1587 = bitcast %"class.std::bitset"* %YMM2.i364 to i8*
  %1588 = load i64, i64* %PC.i363
  %1589 = add i64 %1588, ptrtoint (%G_0x24cc4__rip__type* @G_0x24cc4__rip_ to i64)
  %1590 = load i64, i64* %PC.i363
  %1591 = add i64 %1590, 8
  store i64 %1591, i64* %PC.i363
  %1592 = inttoptr i64 %1589 to float*
  %1593 = load float, float* %1592
  %1594 = bitcast i8* %1587 to float*
  store float %1593, float* %1594, align 1
  %1595 = getelementptr inbounds i8, i8* %1587, i64 4
  %1596 = bitcast i8* %1595 to float*
  store float 0.000000e+00, float* %1596, align 1
  %1597 = getelementptr inbounds i8, i8* %1587, i64 8
  %1598 = bitcast i8* %1597 to float*
  store float 0.000000e+00, float* %1598, align 1
  %1599 = getelementptr inbounds i8, i8* %1587, i64 12
  %1600 = bitcast i8* %1599 to float*
  store float 0.000000e+00, float* %1600, align 1
  store %struct.Memory* %loadMem_4036c4, %struct.Memory** %MEMORY
  %loadMem_4036cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1605 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1604, i64 0, i64 1
  %YMM1.i361 = bitcast %union.VectorReg* %1605 to %"class.std::bitset"*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1607 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1606, i64 0, i64 2
  %XMM2.i362 = bitcast %union.VectorReg* %1607 to %union.vec128_t*
  %1608 = bitcast %"class.std::bitset"* %YMM1.i361 to i8*
  %1609 = bitcast %"class.std::bitset"* %YMM1.i361 to i8*
  %1610 = bitcast %union.vec128_t* %XMM2.i362 to i8*
  %1611 = load i64, i64* %PC.i360
  %1612 = add i64 %1611, 4
  store i64 %1612, i64* %PC.i360
  %1613 = bitcast i8* %1609 to <2 x float>*
  %1614 = load <2 x float>, <2 x float>* %1613, align 1
  %1615 = getelementptr inbounds i8, i8* %1609, i64 8
  %1616 = bitcast i8* %1615 to <2 x i32>*
  %1617 = load <2 x i32>, <2 x i32>* %1616, align 1
  %1618 = bitcast i8* %1610 to <2 x float>*
  %1619 = load <2 x float>, <2 x float>* %1618, align 1
  %1620 = extractelement <2 x float> %1614, i32 0
  %1621 = extractelement <2 x float> %1619, i32 0
  %1622 = fadd float %1620, %1621
  %1623 = bitcast i8* %1608 to float*
  store float %1622, float* %1623, align 1
  %1624 = bitcast <2 x float> %1614 to <2 x i32>
  %1625 = extractelement <2 x i32> %1624, i32 1
  %1626 = getelementptr inbounds i8, i8* %1608, i64 4
  %1627 = bitcast i8* %1626 to i32*
  store i32 %1625, i32* %1627, align 1
  %1628 = extractelement <2 x i32> %1617, i32 0
  %1629 = getelementptr inbounds i8, i8* %1608, i64 8
  %1630 = bitcast i8* %1629 to i32*
  store i32 %1628, i32* %1630, align 1
  %1631 = extractelement <2 x i32> %1617, i32 1
  %1632 = getelementptr inbounds i8, i8* %1608, i64 12
  %1633 = bitcast i8* %1632 to i32*
  store i32 %1631, i32* %1633, align 1
  store %struct.Memory* %loadMem_4036cc, %struct.Memory** %MEMORY
  %loadMem_4036d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1637, i64 0, i64 0
  %YMM0.i358 = bitcast %union.VectorReg* %1638 to %"class.std::bitset"*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1639, i64 0, i64 1
  %XMM1.i359 = bitcast %union.VectorReg* %1640 to %union.vec128_t*
  %1641 = bitcast %"class.std::bitset"* %YMM0.i358 to i8*
  %1642 = bitcast %"class.std::bitset"* %YMM0.i358 to i8*
  %1643 = bitcast %union.vec128_t* %XMM1.i359 to i8*
  %1644 = load i64, i64* %PC.i357
  %1645 = add i64 %1644, 4
  store i64 %1645, i64* %PC.i357
  %1646 = bitcast i8* %1642 to <2 x float>*
  %1647 = load <2 x float>, <2 x float>* %1646, align 1
  %1648 = getelementptr inbounds i8, i8* %1642, i64 8
  %1649 = bitcast i8* %1648 to <2 x i32>*
  %1650 = load <2 x i32>, <2 x i32>* %1649, align 1
  %1651 = bitcast i8* %1643 to <2 x float>*
  %1652 = load <2 x float>, <2 x float>* %1651, align 1
  %1653 = extractelement <2 x float> %1647, i32 0
  %1654 = extractelement <2 x float> %1652, i32 0
  %1655 = fdiv float %1653, %1654
  %1656 = bitcast i8* %1641 to float*
  store float %1655, float* %1656, align 1
  %1657 = bitcast <2 x float> %1647 to <2 x i32>
  %1658 = extractelement <2 x i32> %1657, i32 1
  %1659 = getelementptr inbounds i8, i8* %1641, i64 4
  %1660 = bitcast i8* %1659 to i32*
  store i32 %1658, i32* %1660, align 1
  %1661 = extractelement <2 x i32> %1650, i32 0
  %1662 = getelementptr inbounds i8, i8* %1641, i64 8
  %1663 = bitcast i8* %1662 to i32*
  store i32 %1661, i32* %1663, align 1
  %1664 = extractelement <2 x i32> %1650, i32 1
  %1665 = getelementptr inbounds i8, i8* %1641, i64 12
  %1666 = bitcast i8* %1665 to i32*
  store i32 %1664, i32* %1666, align 1
  store %struct.Memory* %loadMem_4036d0, %struct.Memory** %MEMORY
  %loadMem_4036d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1670, i64 0, i64 1
  %YMM1.i356 = bitcast %union.VectorReg* %1671 to %"class.std::bitset"*
  %1672 = bitcast %"class.std::bitset"* %YMM1.i356 to i8*
  %1673 = load i64, i64* %PC.i355
  %1674 = add i64 %1673, ptrtoint (%G_0x24cb8__rip__type* @G_0x24cb8__rip_ to i64)
  %1675 = load i64, i64* %PC.i355
  %1676 = add i64 %1675, 8
  store i64 %1676, i64* %PC.i355
  %1677 = inttoptr i64 %1674 to float*
  %1678 = load float, float* %1677
  %1679 = bitcast i8* %1672 to float*
  store float %1678, float* %1679, align 1
  %1680 = getelementptr inbounds i8, i8* %1672, i64 4
  %1681 = bitcast i8* %1680 to float*
  store float 0.000000e+00, float* %1681, align 1
  %1682 = getelementptr inbounds i8, i8* %1672, i64 8
  %1683 = bitcast i8* %1682 to float*
  store float 0.000000e+00, float* %1683, align 1
  %1684 = getelementptr inbounds i8, i8* %1672, i64 12
  %1685 = bitcast i8* %1684 to float*
  store float 0.000000e+00, float* %1685, align 1
  store %struct.Memory* %loadMem_4036d4, %struct.Memory** %MEMORY
  %loadMem_4036dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1690 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1689, i64 0, i64 0
  %YMM0.i353 = bitcast %union.VectorReg* %1690 to %"class.std::bitset"*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1691, i64 0, i64 1
  %XMM1.i354 = bitcast %union.VectorReg* %1692 to %union.vec128_t*
  %1693 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %1694 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %1695 = bitcast %union.vec128_t* %XMM1.i354 to i8*
  %1696 = load i64, i64* %PC.i352
  %1697 = add i64 %1696, 4
  store i64 %1697, i64* %PC.i352
  %1698 = bitcast i8* %1694 to <2 x float>*
  %1699 = load <2 x float>, <2 x float>* %1698, align 1
  %1700 = getelementptr inbounds i8, i8* %1694, i64 8
  %1701 = bitcast i8* %1700 to <2 x i32>*
  %1702 = load <2 x i32>, <2 x i32>* %1701, align 1
  %1703 = bitcast i8* %1695 to <2 x float>*
  %1704 = load <2 x float>, <2 x float>* %1703, align 1
  %1705 = extractelement <2 x float> %1699, i32 0
  %1706 = extractelement <2 x float> %1704, i32 0
  %1707 = fmul float %1705, %1706
  %1708 = bitcast i8* %1693 to float*
  store float %1707, float* %1708, align 1
  %1709 = bitcast <2 x float> %1699 to <2 x i32>
  %1710 = extractelement <2 x i32> %1709, i32 1
  %1711 = getelementptr inbounds i8, i8* %1693, i64 4
  %1712 = bitcast i8* %1711 to i32*
  store i32 %1710, i32* %1712, align 1
  %1713 = extractelement <2 x i32> %1702, i32 0
  %1714 = getelementptr inbounds i8, i8* %1693, i64 8
  %1715 = bitcast i8* %1714 to i32*
  store i32 %1713, i32* %1715, align 1
  %1716 = extractelement <2 x i32> %1702, i32 1
  %1717 = getelementptr inbounds i8, i8* %1693, i64 12
  %1718 = bitcast i8* %1717 to i32*
  store i32 %1716, i32* %1718, align 1
  store %struct.Memory* %loadMem_4036dc, %struct.Memory** %MEMORY
  %loadMem_4036e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1722, i64 0, i64 0
  %YMM0.i350 = bitcast %union.VectorReg* %1723 to %"class.std::bitset"*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1724, i64 0, i64 0
  %XMM0.i351 = bitcast %union.VectorReg* %1725 to %union.vec128_t*
  %1726 = bitcast %"class.std::bitset"* %YMM0.i350 to i8*
  %1727 = bitcast %union.vec128_t* %XMM0.i351 to i8*
  %1728 = load i64, i64* %PC.i349
  %1729 = add i64 %1728, 4
  store i64 %1729, i64* %PC.i349
  %1730 = bitcast i8* %1727 to <2 x float>*
  %1731 = load <2 x float>, <2 x float>* %1730, align 1
  %1732 = extractelement <2 x float> %1731, i32 0
  %1733 = fpext float %1732 to double
  %1734 = bitcast i8* %1726 to double*
  store double %1733, double* %1734, align 1
  store %struct.Memory* %loadMem_4036e0, %struct.Memory** %MEMORY
  %loadMem_4036e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 17
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %R8D.i348 = bitcast %union.anon* %1740 to i32*
  %1741 = bitcast i32* %R8D.i348 to i64*
  %1742 = load i64, i64* %PC.i347
  %1743 = add i64 %1742, 6
  store i64 %1743, i64* %PC.i347
  store i64 and (i64 ptrtoint (%G__0x42850a_type* @G__0x42850a to i64), i64 4294967295), i64* %1741, align 8
  store %struct.Memory* %loadMem_4036e4, %struct.Memory** %MEMORY
  %loadMem_4036ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 17
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %R8D.i345 = bitcast %union.anon* %1749 to i32*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 11
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RDI.i346 = bitcast %union.anon* %1752 to i64*
  %1753 = load i32, i32* %R8D.i345
  %1754 = zext i32 %1753 to i64
  %1755 = load i64, i64* %PC.i344
  %1756 = add i64 %1755, 3
  store i64 %1756, i64* %PC.i344
  %1757 = and i64 %1754, 4294967295
  store i64 %1757, i64* %RDI.i346, align 8
  store %struct.Memory* %loadMem_4036ea, %struct.Memory** %MEMORY
  %loadMem_4036ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 9
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %ESI.i342 = bitcast %union.anon* %1763 to i32*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 15
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %RBP.i343
  %1768 = sub i64 %1767, 8212
  %1769 = load i32, i32* %ESI.i342
  %1770 = zext i32 %1769 to i64
  %1771 = load i64, i64* %PC.i341
  %1772 = add i64 %1771, 6
  store i64 %1772, i64* %PC.i341
  %1773 = inttoptr i64 %1768 to i32*
  store i32 %1769, i32* %1773
  store %struct.Memory* %loadMem_4036ed, %struct.Memory** %MEMORY
  %loadMem_4036f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 7
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %EDX.i339 = bitcast %union.anon* %1779 to i32*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 9
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RSI.i340 = bitcast %union.anon* %1782 to i64*
  %1783 = load i32, i32* %EDX.i339
  %1784 = zext i32 %1783 to i64
  %1785 = load i64, i64* %PC.i338
  %1786 = add i64 %1785, 2
  store i64 %1786, i64* %PC.i338
  %1787 = and i64 %1784, 4294967295
  store i64 %1787, i64* %RSI.i340, align 8
  store %struct.Memory* %loadMem_4036f3, %struct.Memory** %MEMORY
  %loadMem_4036f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 7
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 15
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %RBP.i337
  %1798 = sub i64 %1797, 8212
  %1799 = load i64, i64* %PC.i335
  %1800 = add i64 %1799, 6
  store i64 %1800, i64* %PC.i335
  %1801 = inttoptr i64 %1798 to i32*
  %1802 = load i32, i32* %1801
  %1803 = zext i32 %1802 to i64
  store i64 %1803, i64* %RDX.i336, align 8
  store %struct.Memory* %loadMem_4036f5, %struct.Memory** %MEMORY
  %loadMem_4036fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 19
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %1810 = bitcast %union.anon* %1809 to %struct.anon.2*
  %R9B.i333 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1810, i32 0, i32 0
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RBP.i334
  %1815 = sub i64 %1814, 8205
  %1816 = load i64, i64* %PC.i332
  %1817 = add i64 %1816, 7
  store i64 %1817, i64* %PC.i332
  %1818 = inttoptr i64 %1815 to i8*
  %1819 = load i8, i8* %1818
  store i8 %1819, i8* %R9B.i333, align 1
  store %struct.Memory* %loadMem_4036fb, %struct.Memory** %MEMORY
  %loadMem_403702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 1
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %EAX.i330 = bitcast %union.anon* %1825 to i32*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 15
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %1828 to i64*
  %1829 = load i64, i64* %RBP.i331
  %1830 = sub i64 %1829, 8216
  %1831 = load i32, i32* %EAX.i330
  %1832 = zext i32 %1831 to i64
  %1833 = load i64, i64* %PC.i329
  %1834 = add i64 %1833, 6
  store i64 %1834, i64* %PC.i329
  %1835 = inttoptr i64 %1830 to i32*
  store i32 %1831, i32* %1835
  store %struct.Memory* %loadMem_403702, %struct.Memory** %MEMORY
  %loadMem_403708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %1842 = bitcast %union.anon* %1841 to %struct.anon.2*
  %AL.i327 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1842, i32 0, i32 0
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 19
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %1846 = bitcast %union.anon* %1845 to %struct.anon.2*
  %R9B.i328 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1846, i32 0, i32 0
  %1847 = load i8, i8* %R9B.i328
  %1848 = zext i8 %1847 to i64
  %1849 = load i64, i64* %PC.i326
  %1850 = add i64 %1849, 3
  store i64 %1850, i64* %PC.i326
  store i8 %1847, i8* %AL.i327, align 1
  store %struct.Memory* %loadMem_403708, %struct.Memory** %MEMORY
  %loadMem_40370b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 15
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1857, i64 0, i64 1
  %XMM1.i325 = bitcast %union.VectorReg* %1858 to %union.vec128_t*
  %1859 = load i64, i64* %RBP.i324
  %1860 = sub i64 %1859, 8220
  %1861 = bitcast %union.vec128_t* %XMM1.i325 to i8*
  %1862 = load i64, i64* %PC.i323
  %1863 = add i64 %1862, 8
  store i64 %1863, i64* %PC.i323
  %1864 = bitcast i8* %1861 to <2 x float>*
  %1865 = load <2 x float>, <2 x float>* %1864, align 1
  %1866 = extractelement <2 x float> %1865, i32 0
  %1867 = inttoptr i64 %1860 to float*
  store float %1866, float* %1867
  store %struct.Memory* %loadMem_40370b, %struct.Memory** %MEMORY
  %loadMem_403713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 15
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1875 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1874, i64 0, i64 2
  %XMM2.i322 = bitcast %union.VectorReg* %1875 to %union.vec128_t*
  %1876 = load i64, i64* %RBP.i321
  %1877 = sub i64 %1876, 8224
  %1878 = bitcast %union.vec128_t* %XMM2.i322 to i8*
  %1879 = load i64, i64* %PC.i320
  %1880 = add i64 %1879, 8
  store i64 %1880, i64* %PC.i320
  %1881 = bitcast i8* %1878 to <2 x float>*
  %1882 = load <2 x float>, <2 x float>* %1881, align 1
  %1883 = extractelement <2 x float> %1882, i32 0
  %1884 = inttoptr i64 %1877 to float*
  store float %1883, float* %1884
  store %struct.Memory* %loadMem_403713, %struct.Memory** %MEMORY
  %loadMem1_40371b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %PC.i319
  %1889 = add i64 %1888, -10859
  %1890 = load i64, i64* %PC.i319
  %1891 = add i64 %1890, 5
  %1892 = load i64, i64* %PC.i319
  %1893 = add i64 %1892, 5
  store i64 %1893, i64* %PC.i319
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1895 = load i64, i64* %1894, align 8
  %1896 = add i64 %1895, -8
  %1897 = inttoptr i64 %1896 to i64*
  store i64 %1891, i64* %1897
  store i64 %1896, i64* %1894, align 8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1889, i64* %1898, align 8
  store %struct.Memory* %loadMem1_40371b, %struct.Memory** %MEMORY
  %loadMem2_40371b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40371b = load i64, i64* %3
  %1899 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_40371b)
  store %struct.Memory* %1899, %struct.Memory** %MEMORY
  %loadMem_403720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 9
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RSI.i315 = bitcast %union.anon* %1905 to i64*
  %1906 = load i64, i64* %PC.i314
  %1907 = add i64 %1906, ptrtoint (%G_0x460de2__rip__type* @G_0x460de2__rip_ to i64)
  %1908 = load i64, i64* %PC.i314
  %1909 = add i64 %1908, 6
  store i64 %1909, i64* %PC.i314
  %1910 = inttoptr i64 %1907 to i32*
  %1911 = load i32, i32* %1910
  %1912 = zext i32 %1911 to i64
  store i64 %1912, i64* %RSI.i315, align 8
  store %struct.Memory* %loadMem_403720, %struct.Memory** %MEMORY
  %loadMem_403726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 7
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %PC.i312
  %1920 = add i64 %1919, ptrtoint (%G_0x22b2e8__rip__type* @G_0x22b2e8__rip_ to i64)
  %1921 = load i64, i64* %PC.i312
  %1922 = add i64 %1921, 6
  store i64 %1922, i64* %PC.i312
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923
  %1925 = zext i32 %1924 to i64
  store i64 %1925, i64* %RDX.i313, align 8
  store %struct.Memory* %loadMem_403726, %struct.Memory** %MEMORY
  %loadMem_40372c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 7
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %EDX.i310 = bitcast %union.anon* %1931 to i32*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 5
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %1934 to i64*
  %1935 = load i32, i32* %EDX.i310
  %1936 = zext i32 %1935 to i64
  %1937 = load i64, i64* %PC.i309
  %1938 = add i64 %1937, 2
  store i64 %1938, i64* %PC.i309
  %1939 = and i64 %1936, 4294967295
  store i64 %1939, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_40372c, %struct.Memory** %MEMORY
  %loadMem_40372e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 5
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %ECX.i307 = bitcast %union.anon* %1945 to i32*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 7
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %1948 to i64*
  %1949 = load i32, i32* %ECX.i307
  %1950 = zext i32 %1949 to i64
  %1951 = load i64, i64* %PC.i306
  %1952 = add i64 %1951, 2
  store i64 %1952, i64* %PC.i306
  %1953 = and i64 %1950, 4294967295
  store i64 %1953, i64* %RDX.i308, align 8
  store %struct.Memory* %loadMem_40372e, %struct.Memory** %MEMORY
  %loadMem_403730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 17
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %R8D.i305 = bitcast %union.anon* %1959 to i32*
  %1960 = bitcast i32* %R8D.i305 to i64*
  %1961 = load i64, i64* %PC.i304
  %1962 = add i64 %1961, ptrtoint (%G_0x46306d__rip__type* @G_0x46306d__rip_ to i64)
  %1963 = load i64, i64* %PC.i304
  %1964 = add i64 %1963, 7
  store i64 %1964, i64* %PC.i304
  %1965 = inttoptr i64 %1962 to i32*
  %1966 = load i32, i32* %1965
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %1960, align 8
  store %struct.Memory* %loadMem_403730, %struct.Memory** %MEMORY
  %loadMem_403737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 33
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 17
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %R8D.i302 = bitcast %union.anon* %1973 to i32*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 11
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %1976 to i64*
  %1977 = load i32, i32* %R8D.i302
  %1978 = zext i32 %1977 to i64
  %1979 = load i64, i64* %PC.i301
  %1980 = add i64 %1979, 3
  store i64 %1980, i64* %PC.i301
  %1981 = and i64 %1978, 4294967295
  store i64 %1981, i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_403737, %struct.Memory** %MEMORY
  %loadMem_40373a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 33
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 11
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %EDI.i299 = bitcast %union.anon* %1987 to i32*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 17
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %R8D.i300 = bitcast %union.anon* %1990 to i32*
  %1991 = bitcast i32* %R8D.i300 to i64*
  %1992 = load i32, i32* %EDI.i299
  %1993 = zext i32 %1992 to i64
  %1994 = load i64, i64* %PC.i298
  %1995 = add i64 %1994, 3
  store i64 %1995, i64* %PC.i298
  %1996 = and i64 %1993, 4294967295
  store i64 %1996, i64* %1991, align 8
  store %struct.Memory* %loadMem_40373a, %struct.Memory** %MEMORY
  %loadMem_40373d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 11
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RDI.i296 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2004 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2003, i64 0, i64 0
  %YMM0.i297 = bitcast %union.VectorReg* %2004 to %"class.std::bitset"*
  %2005 = bitcast %"class.std::bitset"* %YMM0.i297 to i8*
  %2006 = load i64, i64* %RDI.i296
  %2007 = load i64, i64* %PC.i295
  %2008 = add i64 %2007, 5
  store i64 %2008, i64* %PC.i295
  %2009 = bitcast i8* %2005 to <2 x i32>*
  %2010 = load <2 x i32>, <2 x i32>* %2009, align 1
  %2011 = getelementptr inbounds i8, i8* %2005, i64 8
  %2012 = bitcast i8* %2011 to <2 x i32>*
  %2013 = load <2 x i32>, <2 x i32>* %2012, align 1
  %2014 = sitofp i64 %2006 to float
  %2015 = bitcast i8* %2005 to float*
  store float %2014, float* %2015, align 1
  %2016 = extractelement <2 x i32> %2010, i32 1
  %2017 = getelementptr inbounds i8, i8* %2005, i64 4
  %2018 = bitcast i8* %2017 to i32*
  store i32 %2016, i32* %2018, align 1
  %2019 = extractelement <2 x i32> %2013, i32 0
  %2020 = bitcast i8* %2011 to i32*
  store i32 %2019, i32* %2020, align 1
  %2021 = extractelement <2 x i32> %2013, i32 1
  %2022 = getelementptr inbounds i8, i8* %2005, i64 12
  %2023 = bitcast i8* %2022 to i32*
  store i32 %2021, i32* %2023, align 1
  store %struct.Memory* %loadMem_40373d, %struct.Memory** %MEMORY
  %loadMem_403742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 33
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 5
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2030, i64 0, i64 1
  %YMM1.i294 = bitcast %union.VectorReg* %2031 to %"class.std::bitset"*
  %2032 = bitcast %"class.std::bitset"* %YMM1.i294 to i8*
  %2033 = load i64, i64* %RCX.i293
  %2034 = load i64, i64* %PC.i292
  %2035 = add i64 %2034, 5
  store i64 %2035, i64* %PC.i292
  %2036 = bitcast i8* %2032 to <2 x i32>*
  %2037 = load <2 x i32>, <2 x i32>* %2036, align 1
  %2038 = getelementptr inbounds i8, i8* %2032, i64 8
  %2039 = bitcast i8* %2038 to <2 x i32>*
  %2040 = load <2 x i32>, <2 x i32>* %2039, align 1
  %2041 = sitofp i64 %2033 to float
  %2042 = bitcast i8* %2032 to float*
  store float %2041, float* %2042, align 1
  %2043 = extractelement <2 x i32> %2037, i32 1
  %2044 = getelementptr inbounds i8, i8* %2032, i64 4
  %2045 = bitcast i8* %2044 to i32*
  store i32 %2043, i32* %2045, align 1
  %2046 = extractelement <2 x i32> %2040, i32 0
  %2047 = bitcast i8* %2038 to i32*
  store i32 %2046, i32* %2047, align 1
  %2048 = extractelement <2 x i32> %2040, i32 1
  %2049 = getelementptr inbounds i8, i8* %2032, i64 12
  %2050 = bitcast i8* %2049 to i32*
  store i32 %2048, i32* %2050, align 1
  store %struct.Memory* %loadMem_403742, %struct.Memory** %MEMORY
  %loadMem_403747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 15
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2058 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2057, i64 0, i64 2
  %YMM2.i291 = bitcast %union.VectorReg* %2058 to %"class.std::bitset"*
  %2059 = bitcast %"class.std::bitset"* %YMM2.i291 to i8*
  %2060 = load i64, i64* %RBP.i290
  %2061 = sub i64 %2060, 8224
  %2062 = load i64, i64* %PC.i289
  %2063 = add i64 %2062, 8
  store i64 %2063, i64* %PC.i289
  %2064 = inttoptr i64 %2061 to float*
  %2065 = load float, float* %2064
  %2066 = bitcast i8* %2059 to float*
  store float %2065, float* %2066, align 1
  %2067 = getelementptr inbounds i8, i8* %2059, i64 4
  %2068 = bitcast i8* %2067 to float*
  store float 0.000000e+00, float* %2068, align 1
  %2069 = getelementptr inbounds i8, i8* %2059, i64 8
  %2070 = bitcast i8* %2069 to float*
  store float 0.000000e+00, float* %2070, align 1
  %2071 = getelementptr inbounds i8, i8* %2059, i64 12
  %2072 = bitcast i8* %2071 to float*
  store float 0.000000e+00, float* %2072, align 1
  store %struct.Memory* %loadMem_403747, %struct.Memory** %MEMORY
  %loadMem_40374f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2077 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2076, i64 0, i64 1
  %YMM1.i287 = bitcast %union.VectorReg* %2077 to %"class.std::bitset"*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2078, i64 0, i64 2
  %XMM2.i288 = bitcast %union.VectorReg* %2079 to %union.vec128_t*
  %2080 = bitcast %"class.std::bitset"* %YMM1.i287 to i8*
  %2081 = bitcast %"class.std::bitset"* %YMM1.i287 to i8*
  %2082 = bitcast %union.vec128_t* %XMM2.i288 to i8*
  %2083 = load i64, i64* %PC.i286
  %2084 = add i64 %2083, 4
  store i64 %2084, i64* %PC.i286
  %2085 = bitcast i8* %2081 to <2 x float>*
  %2086 = load <2 x float>, <2 x float>* %2085, align 1
  %2087 = getelementptr inbounds i8, i8* %2081, i64 8
  %2088 = bitcast i8* %2087 to <2 x i32>*
  %2089 = load <2 x i32>, <2 x i32>* %2088, align 1
  %2090 = bitcast i8* %2082 to <2 x float>*
  %2091 = load <2 x float>, <2 x float>* %2090, align 1
  %2092 = extractelement <2 x float> %2086, i32 0
  %2093 = extractelement <2 x float> %2091, i32 0
  %2094 = fadd float %2092, %2093
  %2095 = bitcast i8* %2080 to float*
  store float %2094, float* %2095, align 1
  %2096 = bitcast <2 x float> %2086 to <2 x i32>
  %2097 = extractelement <2 x i32> %2096, i32 1
  %2098 = getelementptr inbounds i8, i8* %2080, i64 4
  %2099 = bitcast i8* %2098 to i32*
  store i32 %2097, i32* %2099, align 1
  %2100 = extractelement <2 x i32> %2089, i32 0
  %2101 = getelementptr inbounds i8, i8* %2080, i64 8
  %2102 = bitcast i8* %2101 to i32*
  store i32 %2100, i32* %2102, align 1
  %2103 = extractelement <2 x i32> %2089, i32 1
  %2104 = getelementptr inbounds i8, i8* %2080, i64 12
  %2105 = bitcast i8* %2104 to i32*
  store i32 %2103, i32* %2105, align 1
  store %struct.Memory* %loadMem_40374f, %struct.Memory** %MEMORY
  %loadMem_403753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2109, i64 0, i64 0
  %YMM0.i284 = bitcast %union.VectorReg* %2110 to %"class.std::bitset"*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2112 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2111, i64 0, i64 1
  %XMM1.i285 = bitcast %union.VectorReg* %2112 to %union.vec128_t*
  %2113 = bitcast %"class.std::bitset"* %YMM0.i284 to i8*
  %2114 = bitcast %"class.std::bitset"* %YMM0.i284 to i8*
  %2115 = bitcast %union.vec128_t* %XMM1.i285 to i8*
  %2116 = load i64, i64* %PC.i283
  %2117 = add i64 %2116, 4
  store i64 %2117, i64* %PC.i283
  %2118 = bitcast i8* %2114 to <2 x float>*
  %2119 = load <2 x float>, <2 x float>* %2118, align 1
  %2120 = getelementptr inbounds i8, i8* %2114, i64 8
  %2121 = bitcast i8* %2120 to <2 x i32>*
  %2122 = load <2 x i32>, <2 x i32>* %2121, align 1
  %2123 = bitcast i8* %2115 to <2 x float>*
  %2124 = load <2 x float>, <2 x float>* %2123, align 1
  %2125 = extractelement <2 x float> %2119, i32 0
  %2126 = extractelement <2 x float> %2124, i32 0
  %2127 = fdiv float %2125, %2126
  %2128 = bitcast i8* %2113 to float*
  store float %2127, float* %2128, align 1
  %2129 = bitcast <2 x float> %2119 to <2 x i32>
  %2130 = extractelement <2 x i32> %2129, i32 1
  %2131 = getelementptr inbounds i8, i8* %2113, i64 4
  %2132 = bitcast i8* %2131 to i32*
  store i32 %2130, i32* %2132, align 1
  %2133 = extractelement <2 x i32> %2122, i32 0
  %2134 = getelementptr inbounds i8, i8* %2113, i64 8
  %2135 = bitcast i8* %2134 to i32*
  store i32 %2133, i32* %2135, align 1
  %2136 = extractelement <2 x i32> %2122, i32 1
  %2137 = getelementptr inbounds i8, i8* %2113, i64 12
  %2138 = bitcast i8* %2137 to i32*
  store i32 %2136, i32* %2138, align 1
  store %struct.Memory* %loadMem_403753, %struct.Memory** %MEMORY
  %loadMem_403757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 15
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2146 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2145, i64 0, i64 1
  %YMM1.i282 = bitcast %union.VectorReg* %2146 to %"class.std::bitset"*
  %2147 = bitcast %"class.std::bitset"* %YMM1.i282 to i8*
  %2148 = load i64, i64* %RBP.i281
  %2149 = sub i64 %2148, 8220
  %2150 = load i64, i64* %PC.i280
  %2151 = add i64 %2150, 8
  store i64 %2151, i64* %PC.i280
  %2152 = inttoptr i64 %2149 to float*
  %2153 = load float, float* %2152
  %2154 = bitcast i8* %2147 to float*
  store float %2153, float* %2154, align 1
  %2155 = getelementptr inbounds i8, i8* %2147, i64 4
  %2156 = bitcast i8* %2155 to float*
  store float 0.000000e+00, float* %2156, align 1
  %2157 = getelementptr inbounds i8, i8* %2147, i64 8
  %2158 = bitcast i8* %2157 to float*
  store float 0.000000e+00, float* %2158, align 1
  %2159 = getelementptr inbounds i8, i8* %2147, i64 12
  %2160 = bitcast i8* %2159 to float*
  store float 0.000000e+00, float* %2160, align 1
  store %struct.Memory* %loadMem_403757, %struct.Memory** %MEMORY
  %loadMem_40375f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2164, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %2165 to %"class.std::bitset"*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2167 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2166, i64 0, i64 1
  %XMM1.i279 = bitcast %union.VectorReg* %2167 to %union.vec128_t*
  %2168 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %2169 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %2170 = bitcast %union.vec128_t* %XMM1.i279 to i8*
  %2171 = load i64, i64* %PC.i277
  %2172 = add i64 %2171, 4
  store i64 %2172, i64* %PC.i277
  %2173 = bitcast i8* %2169 to <2 x float>*
  %2174 = load <2 x float>, <2 x float>* %2173, align 1
  %2175 = getelementptr inbounds i8, i8* %2169, i64 8
  %2176 = bitcast i8* %2175 to <2 x i32>*
  %2177 = load <2 x i32>, <2 x i32>* %2176, align 1
  %2178 = bitcast i8* %2170 to <2 x float>*
  %2179 = load <2 x float>, <2 x float>* %2178, align 1
  %2180 = extractelement <2 x float> %2174, i32 0
  %2181 = extractelement <2 x float> %2179, i32 0
  %2182 = fmul float %2180, %2181
  %2183 = bitcast i8* %2168 to float*
  store float %2182, float* %2183, align 1
  %2184 = bitcast <2 x float> %2174 to <2 x i32>
  %2185 = extractelement <2 x i32> %2184, i32 1
  %2186 = getelementptr inbounds i8, i8* %2168, i64 4
  %2187 = bitcast i8* %2186 to i32*
  store i32 %2185, i32* %2187, align 1
  %2188 = extractelement <2 x i32> %2177, i32 0
  %2189 = getelementptr inbounds i8, i8* %2168, i64 8
  %2190 = bitcast i8* %2189 to i32*
  store i32 %2188, i32* %2190, align 1
  %2191 = extractelement <2 x i32> %2177, i32 1
  %2192 = getelementptr inbounds i8, i8* %2168, i64 12
  %2193 = bitcast i8* %2192 to i32*
  store i32 %2191, i32* %2193, align 1
  store %struct.Memory* %loadMem_40375f, %struct.Memory** %MEMORY
  %loadMem_403763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 33
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2196 to i64*
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2197, i64 0, i64 0
  %YMM0.i275 = bitcast %union.VectorReg* %2198 to %"class.std::bitset"*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2199, i64 0, i64 0
  %XMM0.i276 = bitcast %union.VectorReg* %2200 to %union.vec128_t*
  %2201 = bitcast %"class.std::bitset"* %YMM0.i275 to i8*
  %2202 = bitcast %union.vec128_t* %XMM0.i276 to i8*
  %2203 = load i64, i64* %PC.i274
  %2204 = add i64 %2203, 4
  store i64 %2204, i64* %PC.i274
  %2205 = bitcast i8* %2202 to <2 x float>*
  %2206 = load <2 x float>, <2 x float>* %2205, align 1
  %2207 = extractelement <2 x float> %2206, i32 0
  %2208 = fpext float %2207 to double
  %2209 = bitcast i8* %2201 to double*
  store double %2208, double* %2209, align 1
  store %struct.Memory* %loadMem_403763, %struct.Memory** %MEMORY
  %loadMem_403767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 21
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %R10D.i273 = bitcast %union.anon* %2215 to i32*
  %2216 = bitcast i32* %R10D.i273 to i64*
  %2217 = load i64, i64* %PC.i272
  %2218 = add i64 %2217, 6
  store i64 %2218, i64* %PC.i272
  store i64 and (i64 ptrtoint (%G__0x428540_type* @G__0x428540 to i64), i64 4294967295), i64* %2216, align 8
  store %struct.Memory* %loadMem_403767, %struct.Memory** %MEMORY
  %loadMem_40376d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 21
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %2224 to i32*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 11
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RDI.i271 = bitcast %union.anon* %2227 to i64*
  %2228 = load i32, i32* %R10D.i
  %2229 = zext i32 %2228 to i64
  %2230 = load i64, i64* %PC.i270
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %PC.i270
  %2232 = and i64 %2229, 4294967295
  store i64 %2232, i64* %RDI.i271, align 8
  store %struct.Memory* %loadMem_40376d, %struct.Memory** %MEMORY
  %loadMem_403770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 17
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %R8D.i268 = bitcast %union.anon* %2238 to i32*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 5
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %2241 to i64*
  %2242 = load i32, i32* %R8D.i268
  %2243 = zext i32 %2242 to i64
  %2244 = load i64, i64* %PC.i267
  %2245 = add i64 %2244, 3
  store i64 %2245, i64* %PC.i267
  %2246 = and i64 %2243, 4294967295
  store i64 %2246, i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_403770, %struct.Memory** %MEMORY
  %loadMem_403773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 19
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %2253 = bitcast %union.anon* %2252 to %struct.anon.2*
  %R9B.i265 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2253, i32 0, i32 0
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 15
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %RBP.i266
  %2258 = sub i64 %2257, 8205
  %2259 = load i64, i64* %PC.i264
  %2260 = add i64 %2259, 7
  store i64 %2260, i64* %PC.i264
  %2261 = inttoptr i64 %2258 to i8*
  %2262 = load i8, i8* %2261
  store i8 %2262, i8* %R9B.i265, align 1
  store %struct.Memory* %loadMem_403773, %struct.Memory** %MEMORY
  %loadMem_40377a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 1
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %EAX.i262 = bitcast %union.anon* %2268 to i32*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 15
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RBP.i263
  %2273 = sub i64 %2272, 8228
  %2274 = load i32, i32* %EAX.i262
  %2275 = zext i32 %2274 to i64
  %2276 = load i64, i64* %PC.i261
  %2277 = add i64 %2276, 6
  store i64 %2277, i64* %PC.i261
  %2278 = inttoptr i64 %2273 to i32*
  store i32 %2274, i32* %2278
  store %struct.Memory* %loadMem_40377a, %struct.Memory** %MEMORY
  %loadMem_403780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 1
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %2285 = bitcast %union.anon* %2284 to %struct.anon.2*
  %AL.i259 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2285, i32 0, i32 0
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 19
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %2289 = bitcast %union.anon* %2288 to %struct.anon.2*
  %R9B.i260 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2289, i32 0, i32 0
  %2290 = load i8, i8* %R9B.i260
  %2291 = zext i8 %2290 to i64
  %2292 = load i64, i64* %PC.i258
  %2293 = add i64 %2292, 3
  store i64 %2293, i64* %PC.i258
  store i8 %2290, i8* %AL.i259, align 1
  store %struct.Memory* %loadMem_403780, %struct.Memory** %MEMORY
  %loadMem1_403783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2296 to i64*
  %2297 = load i64, i64* %PC.i257
  %2298 = add i64 %2297, -10963
  %2299 = load i64, i64* %PC.i257
  %2300 = add i64 %2299, 5
  %2301 = load i64, i64* %PC.i257
  %2302 = add i64 %2301, 5
  store i64 %2302, i64* %PC.i257
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2304 = load i64, i64* %2303, align 8
  %2305 = add i64 %2304, -8
  %2306 = inttoptr i64 %2305 to i64*
  store i64 %2300, i64* %2306
  store i64 %2305, i64* %2303, align 8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2298, i64* %2307, align 8
  store %struct.Memory* %loadMem1_403783, %struct.Memory** %MEMORY
  %loadMem2_403783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403783 = load i64, i64* %3
  %2308 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_403783)
  store %struct.Memory* %2308, %struct.Memory** %MEMORY
  %loadMem_403788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 5
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %PC.i253
  %2316 = add i64 %2315, ptrtoint (%G_0x483916__rip__type* @G_0x483916__rip_ to i64)
  %2317 = load i64, i64* %PC.i253
  %2318 = add i64 %2317, 6
  store i64 %2318, i64* %PC.i253
  %2319 = inttoptr i64 %2316 to i32*
  %2320 = load i32, i32* %2319
  %2321 = zext i32 %2320 to i64
  store i64 %2321, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_403788, %struct.Memory** %MEMORY
  %loadMem_40378e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 5
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %2327 to i32*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 11
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %RDI.i252 = bitcast %union.anon* %2330 to i64*
  %2331 = load i32, i32* %ECX.i251
  %2332 = zext i32 %2331 to i64
  %2333 = load i64, i64* %PC.i250
  %2334 = add i64 %2333, 2
  store i64 %2334, i64* %PC.i250
  %2335 = and i64 %2332, 4294967295
  store i64 %2335, i64* %RDI.i252, align 8
  store %struct.Memory* %loadMem_40378e, %struct.Memory** %MEMORY
  %loadMem_403790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 11
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2341 to i32*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 5
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %2344 to i64*
  %2345 = load i32, i32* %EDI.i
  %2346 = zext i32 %2345 to i64
  %2347 = load i64, i64* %PC.i248
  %2348 = add i64 %2347, 2
  store i64 %2348, i64* %PC.i248
  %2349 = and i64 %2346, 4294967295
  store i64 %2349, i64* %RCX.i249, align 8
  store %struct.Memory* %loadMem_403790, %struct.Memory** %MEMORY
  %loadMem_403792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 7
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RDX.i247 = bitcast %union.anon* %2355 to i64*
  %2356 = load i64, i64* %PC.i246
  %2357 = add i64 %2356, ptrtoint (%G_0x4685d4__rip__type* @G_0x4685d4__rip_ to i64)
  %2358 = load i64, i64* %PC.i246
  %2359 = add i64 %2358, 6
  store i64 %2359, i64* %PC.i246
  %2360 = inttoptr i64 %2357 to i32*
  %2361 = load i32, i32* %2360
  %2362 = zext i32 %2361 to i64
  store i64 %2362, i64* %RDX.i247, align 8
  store %struct.Memory* %loadMem_403792, %struct.Memory** %MEMORY
  %loadMem_403798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 7
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2368 to i32*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 23
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %R11D.i245 = bitcast %union.anon* %2371 to i32*
  %2372 = bitcast i32* %R11D.i245 to i64*
  %2373 = load i32, i32* %EDX.i
  %2374 = zext i32 %2373 to i64
  %2375 = load i64, i64* %PC.i244
  %2376 = add i64 %2375, 3
  store i64 %2376, i64* %PC.i244
  %2377 = and i64 %2374, 4294967295
  store i64 %2377, i64* %2372, align 8
  store %struct.Memory* %loadMem_403798, %struct.Memory** %MEMORY
  %loadMem_40379b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 23
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %2383 to i32*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 7
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %2386 to i64*
  %2387 = load i32, i32* %R11D.i
  %2388 = zext i32 %2387 to i64
  %2389 = load i64, i64* %PC.i242
  %2390 = add i64 %2389, 3
  store i64 %2390, i64* %PC.i242
  %2391 = and i64 %2388, 4294967295
  store i64 %2391, i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_40379b, %struct.Memory** %MEMORY
  %loadMem_40379e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 23
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %R11.i = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2399 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2398, i64 0, i64 0
  %YMM0.i241 = bitcast %union.VectorReg* %2399 to %"class.std::bitset"*
  %2400 = bitcast %"class.std::bitset"* %YMM0.i241 to i8*
  %2401 = load i64, i64* %R11.i
  %2402 = load i64, i64* %PC.i240
  %2403 = add i64 %2402, 5
  store i64 %2403, i64* %PC.i240
  %2404 = bitcast i8* %2400 to <2 x i32>*
  %2405 = load <2 x i32>, <2 x i32>* %2404, align 1
  %2406 = getelementptr inbounds i8, i8* %2400, i64 8
  %2407 = bitcast i8* %2406 to <2 x i32>*
  %2408 = load <2 x i32>, <2 x i32>* %2407, align 1
  %2409 = sitofp i64 %2401 to float
  %2410 = bitcast i8* %2400 to float*
  store float %2409, float* %2410, align 1
  %2411 = extractelement <2 x i32> %2405, i32 1
  %2412 = getelementptr inbounds i8, i8* %2400, i64 4
  %2413 = bitcast i8* %2412 to i32*
  store i32 %2411, i32* %2413, align 1
  %2414 = extractelement <2 x i32> %2408, i32 0
  %2415 = bitcast i8* %2406 to i32*
  store i32 %2414, i32* %2415, align 1
  %2416 = extractelement <2 x i32> %2408, i32 1
  %2417 = getelementptr inbounds i8, i8* %2400, i64 12
  %2418 = bitcast i8* %2417 to i32*
  store i32 %2416, i32* %2418, align 1
  store %struct.Memory* %loadMem_40379e, %struct.Memory** %MEMORY
  %loadMem_4037a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 15
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2426 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2425, i64 0, i64 1
  %YMM1.i239 = bitcast %union.VectorReg* %2426 to %"class.std::bitset"*
  %2427 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %2428 = load i64, i64* %RBP.i238
  %2429 = sub i64 %2428, 8220
  %2430 = load i64, i64* %PC.i237
  %2431 = add i64 %2430, 8
  store i64 %2431, i64* %PC.i237
  %2432 = inttoptr i64 %2429 to float*
  %2433 = load float, float* %2432
  %2434 = bitcast i8* %2427 to float*
  store float %2433, float* %2434, align 1
  %2435 = getelementptr inbounds i8, i8* %2427, i64 4
  %2436 = bitcast i8* %2435 to float*
  store float 0.000000e+00, float* %2436, align 1
  %2437 = getelementptr inbounds i8, i8* %2427, i64 8
  %2438 = bitcast i8* %2437 to float*
  store float 0.000000e+00, float* %2438, align 1
  %2439 = getelementptr inbounds i8, i8* %2427, i64 12
  %2440 = bitcast i8* %2439 to float*
  store float 0.000000e+00, float* %2440, align 1
  store %struct.Memory* %loadMem_4037a3, %struct.Memory** %MEMORY
  %loadMem_4037ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2444, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %2445 to %"class.std::bitset"*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2446, i64 0, i64 1
  %XMM1.i236 = bitcast %union.VectorReg* %2447 to %union.vec128_t*
  %2448 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %2449 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %2450 = bitcast %union.vec128_t* %XMM1.i236 to i8*
  %2451 = load i64, i64* %PC.i234
  %2452 = add i64 %2451, 4
  store i64 %2452, i64* %PC.i234
  %2453 = bitcast i8* %2449 to <2 x float>*
  %2454 = load <2 x float>, <2 x float>* %2453, align 1
  %2455 = getelementptr inbounds i8, i8* %2449, i64 8
  %2456 = bitcast i8* %2455 to <2 x i32>*
  %2457 = load <2 x i32>, <2 x i32>* %2456, align 1
  %2458 = bitcast i8* %2450 to <2 x float>*
  %2459 = load <2 x float>, <2 x float>* %2458, align 1
  %2460 = extractelement <2 x float> %2454, i32 0
  %2461 = extractelement <2 x float> %2459, i32 0
  %2462 = fmul float %2460, %2461
  %2463 = bitcast i8* %2448 to float*
  store float %2462, float* %2463, align 1
  %2464 = bitcast <2 x float> %2454 to <2 x i32>
  %2465 = extractelement <2 x i32> %2464, i32 1
  %2466 = getelementptr inbounds i8, i8* %2448, i64 4
  %2467 = bitcast i8* %2466 to i32*
  store i32 %2465, i32* %2467, align 1
  %2468 = extractelement <2 x i32> %2457, i32 0
  %2469 = getelementptr inbounds i8, i8* %2448, i64 8
  %2470 = bitcast i8* %2469 to i32*
  store i32 %2468, i32* %2470, align 1
  %2471 = extractelement <2 x i32> %2457, i32 1
  %2472 = getelementptr inbounds i8, i8* %2448, i64 12
  %2473 = bitcast i8* %2472 to i32*
  store i32 %2471, i32* %2473, align 1
  store %struct.Memory* %loadMem_4037ab, %struct.Memory** %MEMORY
  %loadMem_4037af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 11
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RDI.i232 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2480, i64 0, i64 2
  %YMM2.i233 = bitcast %union.VectorReg* %2481 to %"class.std::bitset"*
  %2482 = bitcast %"class.std::bitset"* %YMM2.i233 to i8*
  %2483 = load i64, i64* %RDI.i232
  %2484 = load i64, i64* %PC.i231
  %2485 = add i64 %2484, 5
  store i64 %2485, i64* %PC.i231
  %2486 = bitcast i8* %2482 to <2 x i32>*
  %2487 = load <2 x i32>, <2 x i32>* %2486, align 1
  %2488 = getelementptr inbounds i8, i8* %2482, i64 8
  %2489 = bitcast i8* %2488 to <2 x i32>*
  %2490 = load <2 x i32>, <2 x i32>* %2489, align 1
  %2491 = sitofp i64 %2483 to float
  %2492 = bitcast i8* %2482 to float*
  store float %2491, float* %2492, align 1
  %2493 = extractelement <2 x i32> %2487, i32 1
  %2494 = getelementptr inbounds i8, i8* %2482, i64 4
  %2495 = bitcast i8* %2494 to i32*
  store i32 %2493, i32* %2495, align 1
  %2496 = extractelement <2 x i32> %2490, i32 0
  %2497 = bitcast i8* %2488 to i32*
  store i32 %2496, i32* %2497, align 1
  %2498 = extractelement <2 x i32> %2490, i32 1
  %2499 = getelementptr inbounds i8, i8* %2482, i64 12
  %2500 = bitcast i8* %2499 to i32*
  store i32 %2498, i32* %2500, align 1
  store %struct.Memory* %loadMem_4037af, %struct.Memory** %MEMORY
  %loadMem_4037b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 15
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2507, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2508 to %"class.std::bitset"*
  %2509 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2510 = load i64, i64* %RBP.i230
  %2511 = sub i64 %2510, 8224
  %2512 = load i64, i64* %PC.i229
  %2513 = add i64 %2512, 8
  store i64 %2513, i64* %PC.i229
  %2514 = inttoptr i64 %2511 to float*
  %2515 = load float, float* %2514
  %2516 = bitcast i8* %2509 to float*
  store float %2515, float* %2516, align 1
  %2517 = getelementptr inbounds i8, i8* %2509, i64 4
  %2518 = bitcast i8* %2517 to float*
  store float 0.000000e+00, float* %2518, align 1
  %2519 = getelementptr inbounds i8, i8* %2509, i64 8
  %2520 = bitcast i8* %2519 to float*
  store float 0.000000e+00, float* %2520, align 1
  %2521 = getelementptr inbounds i8, i8* %2509, i64 12
  %2522 = bitcast i8* %2521 to float*
  store float 0.000000e+00, float* %2522, align 1
  store %struct.Memory* %loadMem_4037b4, %struct.Memory** %MEMORY
  %loadMem_4037bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2527 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2526, i64 0, i64 2
  %YMM2.i228 = bitcast %union.VectorReg* %2527 to %"class.std::bitset"*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2528, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2529 to %union.vec128_t*
  %2530 = bitcast %"class.std::bitset"* %YMM2.i228 to i8*
  %2531 = bitcast %"class.std::bitset"* %YMM2.i228 to i8*
  %2532 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2533 = load i64, i64* %PC.i227
  %2534 = add i64 %2533, 4
  store i64 %2534, i64* %PC.i227
  %2535 = bitcast i8* %2531 to <2 x float>*
  %2536 = load <2 x float>, <2 x float>* %2535, align 1
  %2537 = getelementptr inbounds i8, i8* %2531, i64 8
  %2538 = bitcast i8* %2537 to <2 x i32>*
  %2539 = load <2 x i32>, <2 x i32>* %2538, align 1
  %2540 = bitcast i8* %2532 to <2 x float>*
  %2541 = load <2 x float>, <2 x float>* %2540, align 1
  %2542 = extractelement <2 x float> %2536, i32 0
  %2543 = extractelement <2 x float> %2541, i32 0
  %2544 = fadd float %2542, %2543
  %2545 = bitcast i8* %2530 to float*
  store float %2544, float* %2545, align 1
  %2546 = bitcast <2 x float> %2536 to <2 x i32>
  %2547 = extractelement <2 x i32> %2546, i32 1
  %2548 = getelementptr inbounds i8, i8* %2530, i64 4
  %2549 = bitcast i8* %2548 to i32*
  store i32 %2547, i32* %2549, align 1
  %2550 = extractelement <2 x i32> %2539, i32 0
  %2551 = getelementptr inbounds i8, i8* %2530, i64 8
  %2552 = bitcast i8* %2551 to i32*
  store i32 %2550, i32* %2552, align 1
  %2553 = extractelement <2 x i32> %2539, i32 1
  %2554 = getelementptr inbounds i8, i8* %2530, i64 12
  %2555 = bitcast i8* %2554 to i32*
  store i32 %2553, i32* %2555, align 1
  store %struct.Memory* %loadMem_4037bc, %struct.Memory** %MEMORY
  %loadMem_4037c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2559, i64 0, i64 0
  %YMM0.i225 = bitcast %union.VectorReg* %2560 to %"class.std::bitset"*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2561, i64 0, i64 2
  %XMM2.i226 = bitcast %union.VectorReg* %2562 to %union.vec128_t*
  %2563 = bitcast %"class.std::bitset"* %YMM0.i225 to i8*
  %2564 = bitcast %"class.std::bitset"* %YMM0.i225 to i8*
  %2565 = bitcast %union.vec128_t* %XMM2.i226 to i8*
  %2566 = load i64, i64* %PC.i224
  %2567 = add i64 %2566, 4
  store i64 %2567, i64* %PC.i224
  %2568 = bitcast i8* %2564 to <2 x float>*
  %2569 = load <2 x float>, <2 x float>* %2568, align 1
  %2570 = getelementptr inbounds i8, i8* %2564, i64 8
  %2571 = bitcast i8* %2570 to <2 x i32>*
  %2572 = load <2 x i32>, <2 x i32>* %2571, align 1
  %2573 = bitcast i8* %2565 to <2 x float>*
  %2574 = load <2 x float>, <2 x float>* %2573, align 1
  %2575 = extractelement <2 x float> %2569, i32 0
  %2576 = extractelement <2 x float> %2574, i32 0
  %2577 = fdiv float %2575, %2576
  %2578 = bitcast i8* %2563 to float*
  store float %2577, float* %2578, align 1
  %2579 = bitcast <2 x float> %2569 to <2 x i32>
  %2580 = extractelement <2 x i32> %2579, i32 1
  %2581 = getelementptr inbounds i8, i8* %2563, i64 4
  %2582 = bitcast i8* %2581 to i32*
  store i32 %2580, i32* %2582, align 1
  %2583 = extractelement <2 x i32> %2572, i32 0
  %2584 = getelementptr inbounds i8, i8* %2563, i64 8
  %2585 = bitcast i8* %2584 to i32*
  store i32 %2583, i32* %2585, align 1
  %2586 = extractelement <2 x i32> %2572, i32 1
  %2587 = getelementptr inbounds i8, i8* %2563, i64 12
  %2588 = bitcast i8* %2587 to i32*
  store i32 %2586, i32* %2588, align 1
  store %struct.Memory* %loadMem_4037c0, %struct.Memory** %MEMORY
  %loadMem_4037c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2592, i64 0, i64 0
  %YMM0.i222 = bitcast %union.VectorReg* %2593 to %"class.std::bitset"*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2594, i64 0, i64 0
  %XMM0.i223 = bitcast %union.VectorReg* %2595 to %union.vec128_t*
  %2596 = bitcast %"class.std::bitset"* %YMM0.i222 to i8*
  %2597 = bitcast %union.vec128_t* %XMM0.i223 to i8*
  %2598 = load i64, i64* %PC.i221
  %2599 = add i64 %2598, 4
  store i64 %2599, i64* %PC.i221
  %2600 = bitcast i8* %2597 to <2 x float>*
  %2601 = load <2 x float>, <2 x float>* %2600, align 1
  %2602 = extractelement <2 x float> %2601, i32 0
  %2603 = fpext float %2602 to double
  %2604 = bitcast i8* %2596 to double*
  store double %2603, double* %2604, align 1
  store %struct.Memory* %loadMem_4037c4, %struct.Memory** %MEMORY
  %loadMem_4037c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 9
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RSI.i220 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %PC.i219
  %2612 = add i64 %2611, ptrtoint (%G_0x48329a__rip__type* @G_0x48329a__rip_ to i64)
  %2613 = load i64, i64* %PC.i219
  %2614 = add i64 %2613, 6
  store i64 %2614, i64* %PC.i219
  %2615 = inttoptr i64 %2612 to i32*
  %2616 = load i32, i32* %2615
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RSI.i220, align 8
  store %struct.Memory* %loadMem_4037c8, %struct.Memory** %MEMORY
  %loadMem_4037ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 17
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %R8D.i218 = bitcast %union.anon* %2623 to i32*
  %2624 = bitcast i32* %R8D.i218 to i64*
  %2625 = load i64, i64* %PC.i217
  %2626 = add i64 %2625, 6
  store i64 %2626, i64* %PC.i217
  store i64 and (i64 ptrtoint (%G__0x42857c_type* @G__0x42857c to i64), i64 4294967295), i64* %2624, align 8
  store %struct.Memory* %loadMem_4037ce, %struct.Memory** %MEMORY
  %loadMem_4037d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 17
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %R8D.i215 = bitcast %union.anon* %2632 to i32*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 11
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RDI.i216 = bitcast %union.anon* %2635 to i64*
  %2636 = load i32, i32* %R8D.i215
  %2637 = zext i32 %2636 to i64
  %2638 = load i64, i64* %PC.i214
  %2639 = add i64 %2638, 3
  store i64 %2639, i64* %PC.i214
  %2640 = and i64 %2637, 4294967295
  store i64 %2640, i64* %RDI.i216, align 8
  store %struct.Memory* %loadMem_4037d4, %struct.Memory** %MEMORY
  %loadMem_4037d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 9
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2646 to i32*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 15
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %2649 to i64*
  %2650 = load i64, i64* %RBP.i213
  %2651 = sub i64 %2650, 8232
  %2652 = load i32, i32* %ESI.i
  %2653 = zext i32 %2652 to i64
  %2654 = load i64, i64* %PC.i212
  %2655 = add i64 %2654, 6
  store i64 %2655, i64* %PC.i212
  %2656 = inttoptr i64 %2651 to i32*
  store i32 %2652, i32* %2656
  store %struct.Memory* %loadMem_4037d7, %struct.Memory** %MEMORY
  %loadMem_4037dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 33
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 5
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %ECX.i210 = bitcast %union.anon* %2662 to i32*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 9
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RSI.i211 = bitcast %union.anon* %2665 to i64*
  %2666 = load i32, i32* %ECX.i210
  %2667 = zext i32 %2666 to i64
  %2668 = load i64, i64* %PC.i209
  %2669 = add i64 %2668, 2
  store i64 %2669, i64* %PC.i209
  %2670 = and i64 %2667, 4294967295
  store i64 %2670, i64* %RSI.i211, align 8
  store %struct.Memory* %loadMem_4037dd, %struct.Memory** %MEMORY
  %loadMem_4037df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 5
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 15
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RBP.i208
  %2681 = sub i64 %2680, 8232
  %2682 = load i64, i64* %PC.i206
  %2683 = add i64 %2682, 6
  store i64 %2683, i64* %PC.i206
  %2684 = inttoptr i64 %2681 to i32*
  %2685 = load i32, i32* %2684
  %2686 = zext i32 %2685 to i64
  store i64 %2686, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_4037df, %struct.Memory** %MEMORY
  %loadMem_4037e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 19
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %2693 = bitcast %union.anon* %2692 to %struct.anon.2*
  %R9B.i204 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2693, i32 0, i32 0
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 15
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %RBP.i205
  %2698 = sub i64 %2697, 8205
  %2699 = load i64, i64* %PC.i203
  %2700 = add i64 %2699, 7
  store i64 %2700, i64* %PC.i203
  %2701 = inttoptr i64 %2698 to i8*
  %2702 = load i8, i8* %2701
  store i8 %2702, i8* %R9B.i204, align 1
  store %struct.Memory* %loadMem_4037e5, %struct.Memory** %MEMORY
  %loadMem_4037ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 1
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %EAX.i201 = bitcast %union.anon* %2708 to i32*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 15
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2711 to i64*
  %2712 = load i64, i64* %RBP.i202
  %2713 = sub i64 %2712, 8236
  %2714 = load i32, i32* %EAX.i201
  %2715 = zext i32 %2714 to i64
  %2716 = load i64, i64* %PC.i200
  %2717 = add i64 %2716, 6
  store i64 %2717, i64* %PC.i200
  %2718 = inttoptr i64 %2713 to i32*
  store i32 %2714, i32* %2718
  store %struct.Memory* %loadMem_4037ec, %struct.Memory** %MEMORY
  %loadMem_4037f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 33
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 1
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %2725 = bitcast %union.anon* %2724 to %struct.anon.2*
  %AL.i198 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2725, i32 0, i32 0
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 19
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %2729 = bitcast %union.anon* %2728 to %struct.anon.2*
  %R9B.i199 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2729, i32 0, i32 0
  %2730 = load i8, i8* %R9B.i199
  %2731 = zext i8 %2730 to i64
  %2732 = load i64, i64* %PC.i197
  %2733 = add i64 %2732, 3
  store i64 %2733, i64* %PC.i197
  store i8 %2730, i8* %AL.i198, align 1
  store %struct.Memory* %loadMem_4037f2, %struct.Memory** %MEMORY
  %loadMem1_4037f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 33
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2736 to i64*
  %2737 = load i64, i64* %PC.i196
  %2738 = add i64 %2737, -11077
  %2739 = load i64, i64* %PC.i196
  %2740 = add i64 %2739, 5
  %2741 = load i64, i64* %PC.i196
  %2742 = add i64 %2741, 5
  store i64 %2742, i64* %PC.i196
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2744 = load i64, i64* %2743, align 8
  %2745 = add i64 %2744, -8
  %2746 = inttoptr i64 %2745 to i64*
  store i64 %2740, i64* %2746
  store i64 %2745, i64* %2743, align 8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2738, i64* %2747, align 8
  store %struct.Memory* %loadMem1_4037f5, %struct.Memory** %MEMORY
  %loadMem2_4037f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4037f5 = load i64, i64* %3
  %2748 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4037f5)
  store %struct.Memory* %2748, %struct.Memory** %MEMORY
  %loadMem_4037fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 9
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RSI.i192 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %PC.i191
  %2756 = add i64 %2755, ptrtoint (%G_0x22b1f8__rip__type* @G_0x22b1f8__rip_ to i64)
  %2757 = load i64, i64* %PC.i191
  %2758 = add i64 %2757, 6
  store i64 %2758, i64* %PC.i191
  %2759 = inttoptr i64 %2756 to i32*
  %2760 = load i32, i32* %2759
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RSI.i192, align 8
  store %struct.Memory* %loadMem_4037fa, %struct.Memory** %MEMORY
  %loadMem_403800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 7
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RDX.i190 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %PC.i189
  %2769 = add i64 %2768, ptrtoint (%G_0x460cfe__rip__type* @G_0x460cfe__rip_ to i64)
  %2770 = load i64, i64* %PC.i189
  %2771 = add i64 %2770, 6
  store i64 %2771, i64* %PC.i189
  %2772 = inttoptr i64 %2769 to i32*
  %2773 = load i32, i32* %2772
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RDX.i190, align 8
  store %struct.Memory* %loadMem_403800, %struct.Memory** %MEMORY
  %loadMem_403806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 33
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 5
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %2780 to i64*
  %2781 = load i64, i64* %PC.i187
  %2782 = add i64 %2781, ptrtoint (%G_0x483894__rip__type* @G_0x483894__rip_ to i64)
  %2783 = load i64, i64* %PC.i187
  %2784 = add i64 %2783, 6
  store i64 %2784, i64* %PC.i187
  %2785 = inttoptr i64 %2782 to i32*
  %2786 = load i32, i32* %2785
  %2787 = zext i32 %2786 to i64
  store i64 %2787, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_403806, %struct.Memory** %MEMORY
  %loadMem_40380c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 33
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 17
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %R8D.i186 = bitcast %union.anon* %2793 to i32*
  %2794 = bitcast i32* %R8D.i186 to i64*
  %2795 = load i64, i64* %PC.i185
  %2796 = add i64 %2795, 6
  store i64 %2796, i64* %PC.i185
  store i64 and (i64 ptrtoint (%G__0x4285af_type* @G__0x4285af to i64), i64 4294967295), i64* %2794, align 8
  store %struct.Memory* %loadMem_40380c, %struct.Memory** %MEMORY
  %loadMem_403812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 17
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %R8D.i183 = bitcast %union.anon* %2802 to i32*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 11
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RDI.i184 = bitcast %union.anon* %2805 to i64*
  %2806 = load i32, i32* %R8D.i183
  %2807 = zext i32 %2806 to i64
  %2808 = load i64, i64* %PC.i182
  %2809 = add i64 %2808, 3
  store i64 %2809, i64* %PC.i182
  %2810 = and i64 %2807, 4294967295
  store i64 %2810, i64* %RDI.i184, align 8
  store %struct.Memory* %loadMem_403812, %struct.Memory** %MEMORY
  %loadMem_403815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 17
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %2816 to i32*
  %2817 = bitcast i32* %R8D.i to i64*
  %2818 = load i32, i32* %R8D.i
  %2819 = zext i32 %2818 to i64
  %2820 = load i32, i32* %R8D.i
  %2821 = zext i32 %2820 to i64
  %2822 = load i64, i64* %PC.i181
  %2823 = add i64 %2822, 3
  store i64 %2823, i64* %PC.i181
  %2824 = xor i64 %2821, %2819
  %2825 = trunc i64 %2824 to i32
  %2826 = and i64 %2824, 4294967295
  store i64 %2826, i64* %2817, align 8
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2827, align 1
  %2828 = and i32 %2825, 255
  %2829 = call i32 @llvm.ctpop.i32(i32 %2828)
  %2830 = trunc i32 %2829 to i8
  %2831 = and i8 %2830, 1
  %2832 = xor i8 %2831, 1
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2832, i8* %2833, align 1
  %2834 = icmp eq i32 %2825, 0
  %2835 = zext i1 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2835, i8* %2836, align 1
  %2837 = lshr i32 %2825, 31
  %2838 = trunc i32 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2838, i8* %2839, align 1
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2840, align 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2841, align 1
  store %struct.Memory* %loadMem_403815, %struct.Memory** %MEMORY
  %loadMem_403818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 17
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %2848 = bitcast %union.anon* %2847 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2848, i32 0, i32 0
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 19
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %2852 = bitcast %union.anon* %2851 to %struct.anon.2*
  %R9B.i180 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2852, i32 0, i32 0
  %2853 = load i8, i8* %R8B.i
  %2854 = zext i8 %2853 to i64
  %2855 = load i64, i64* %PC.i179
  %2856 = add i64 %2855, 3
  store i64 %2856, i64* %PC.i179
  store i8 %2853, i8* %R9B.i180, align 1
  store %struct.Memory* %loadMem_403818, %struct.Memory** %MEMORY
  %loadMem_40381b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2859 to i64*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 1
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %2862 to i32*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 15
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %RBP.i178
  %2867 = sub i64 %2866, 8240
  %2868 = load i32, i32* %EAX.i177
  %2869 = zext i32 %2868 to i64
  %2870 = load i64, i64* %PC.i176
  %2871 = add i64 %2870, 6
  store i64 %2871, i64* %PC.i176
  %2872 = inttoptr i64 %2867 to i32*
  store i32 %2868, i32* %2872
  store %struct.Memory* %loadMem_40381b, %struct.Memory** %MEMORY
  %loadMem_403821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2875 to i64*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 1
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %2879 = bitcast %union.anon* %2878 to %struct.anon.2*
  %AL.i175 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2879, i32 0, i32 0
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 19
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %2883 = bitcast %union.anon* %2882 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2883, i32 0, i32 0
  %2884 = load i8, i8* %R9B.i
  %2885 = zext i8 %2884 to i64
  %2886 = load i64, i64* %PC.i174
  %2887 = add i64 %2886, 3
  store i64 %2887, i64* %PC.i174
  store i8 %2884, i8* %AL.i175, align 1
  store %struct.Memory* %loadMem_403821, %struct.Memory** %MEMORY
  %loadMem1_403824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2890 to i64*
  %2891 = load i64, i64* %PC.i173
  %2892 = add i64 %2891, -11124
  %2893 = load i64, i64* %PC.i173
  %2894 = add i64 %2893, 5
  %2895 = load i64, i64* %PC.i173
  %2896 = add i64 %2895, 5
  store i64 %2896, i64* %PC.i173
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2898 = load i64, i64* %2897, align 8
  %2899 = add i64 %2898, -8
  %2900 = inttoptr i64 %2899 to i64*
  store i64 %2894, i64* %2900
  store i64 %2899, i64* %2897, align 8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2892, i64* %2901, align 8
  store %struct.Memory* %loadMem1_403824, %struct.Memory** %MEMORY
  %loadMem2_403824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403824 = load i64, i64* %3
  %2902 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_403824)
  store %struct.Memory* %2902, %struct.Memory** %MEMORY
  %loadMem_403829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 5
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %PC.i169
  %2910 = add i64 %2909, ptrtoint (%G_0x462ab1__rip__type* @G_0x462ab1__rip_ to i64)
  %2911 = load i64, i64* %PC.i169
  %2912 = add i64 %2911, 6
  store i64 %2912, i64* %PC.i169
  %2913 = inttoptr i64 %2910 to i32*
  %2914 = load i32, i32* %2913
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_403829, %struct.Memory** %MEMORY
  %loadMem_40382f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 5
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %ECX.i167 = bitcast %union.anon* %2921 to i32*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 11
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RDI.i168 = bitcast %union.anon* %2924 to i64*
  %2925 = load i32, i32* %ECX.i167
  %2926 = zext i32 %2925 to i64
  %2927 = load i64, i64* %PC.i166
  %2928 = add i64 %2927, 2
  store i64 %2928, i64* %PC.i166
  %2929 = and i64 %2926, 4294967295
  store i64 %2929, i64* %RDI.i168, align 8
  store %struct.Memory* %loadMem_40382f, %struct.Memory** %MEMORY
  %loadMem_403831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 11
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RDI.i164 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2936, i64 0, i64 0
  %YMM0.i165 = bitcast %union.VectorReg* %2937 to %"class.std::bitset"*
  %2938 = bitcast %"class.std::bitset"* %YMM0.i165 to i8*
  %2939 = load i64, i64* %RDI.i164
  %2940 = load i64, i64* %PC.i163
  %2941 = add i64 %2940, 5
  store i64 %2941, i64* %PC.i163
  %2942 = bitcast i8* %2938 to <2 x i32>*
  %2943 = load <2 x i32>, <2 x i32>* %2942, align 1
  %2944 = getelementptr inbounds i8, i8* %2938, i64 8
  %2945 = bitcast i8* %2944 to <2 x i32>*
  %2946 = load <2 x i32>, <2 x i32>* %2945, align 1
  %2947 = sitofp i64 %2939 to float
  %2948 = bitcast i8* %2938 to float*
  store float %2947, float* %2948, align 1
  %2949 = extractelement <2 x i32> %2943, i32 1
  %2950 = getelementptr inbounds i8, i8* %2938, i64 4
  %2951 = bitcast i8* %2950 to i32*
  store i32 %2949, i32* %2951, align 1
  %2952 = extractelement <2 x i32> %2946, i32 0
  %2953 = bitcast i8* %2944 to i32*
  store i32 %2952, i32* %2953, align 1
  %2954 = extractelement <2 x i32> %2946, i32 1
  %2955 = getelementptr inbounds i8, i8* %2938, i64 12
  %2956 = bitcast i8* %2955 to i32*
  store i32 %2954, i32* %2956, align 1
  store %struct.Memory* %loadMem_403831, %struct.Memory** %MEMORY
  %loadMem_403836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 15
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2963, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2964 to %"class.std::bitset"*
  %2965 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2966 = load i64, i64* %RBP.i162
  %2967 = sub i64 %2966, 8220
  %2968 = load i64, i64* %PC.i161
  %2969 = add i64 %2968, 8
  store i64 %2969, i64* %PC.i161
  %2970 = inttoptr i64 %2967 to float*
  %2971 = load float, float* %2970
  %2972 = bitcast i8* %2965 to float*
  store float %2971, float* %2972, align 1
  %2973 = getelementptr inbounds i8, i8* %2965, i64 4
  %2974 = bitcast i8* %2973 to float*
  store float 0.000000e+00, float* %2974, align 1
  %2975 = getelementptr inbounds i8, i8* %2965, i64 8
  %2976 = bitcast i8* %2975 to float*
  store float 0.000000e+00, float* %2976, align 1
  %2977 = getelementptr inbounds i8, i8* %2965, i64 12
  %2978 = bitcast i8* %2977 to float*
  store float 0.000000e+00, float* %2978, align 1
  store %struct.Memory* %loadMem_403836, %struct.Memory** %MEMORY
  %loadMem_40383e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2982, i64 0, i64 0
  %YMM0.i160 = bitcast %union.VectorReg* %2983 to %"class.std::bitset"*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2984, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2985 to %union.vec128_t*
  %2986 = bitcast %"class.std::bitset"* %YMM0.i160 to i8*
  %2987 = bitcast %"class.std::bitset"* %YMM0.i160 to i8*
  %2988 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2989 = load i64, i64* %PC.i159
  %2990 = add i64 %2989, 4
  store i64 %2990, i64* %PC.i159
  %2991 = bitcast i8* %2987 to <2 x float>*
  %2992 = load <2 x float>, <2 x float>* %2991, align 1
  %2993 = getelementptr inbounds i8, i8* %2987, i64 8
  %2994 = bitcast i8* %2993 to <2 x i32>*
  %2995 = load <2 x i32>, <2 x i32>* %2994, align 1
  %2996 = bitcast i8* %2988 to <2 x float>*
  %2997 = load <2 x float>, <2 x float>* %2996, align 1
  %2998 = extractelement <2 x float> %2992, i32 0
  %2999 = extractelement <2 x float> %2997, i32 0
  %3000 = fmul float %2998, %2999
  %3001 = bitcast i8* %2986 to float*
  store float %3000, float* %3001, align 1
  %3002 = bitcast <2 x float> %2992 to <2 x i32>
  %3003 = extractelement <2 x i32> %3002, i32 1
  %3004 = getelementptr inbounds i8, i8* %2986, i64 4
  %3005 = bitcast i8* %3004 to i32*
  store i32 %3003, i32* %3005, align 1
  %3006 = extractelement <2 x i32> %2995, i32 0
  %3007 = getelementptr inbounds i8, i8* %2986, i64 8
  %3008 = bitcast i8* %3007 to i32*
  store i32 %3006, i32* %3008, align 1
  %3009 = extractelement <2 x i32> %2995, i32 1
  %3010 = getelementptr inbounds i8, i8* %2986, i64 12
  %3011 = bitcast i8* %3010 to i32*
  store i32 %3009, i32* %3011, align 1
  store %struct.Memory* %loadMem_40383e, %struct.Memory** %MEMORY
  %loadMem_403842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 5
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %PC.i157
  %3019 = add i64 %3018, ptrtoint (%G_0x49d228__rip__type* @G_0x49d228__rip_ to i64)
  %3020 = load i64, i64* %PC.i157
  %3021 = add i64 %3020, 6
  store i64 %3021, i64* %PC.i157
  %3022 = inttoptr i64 %3019 to i32*
  %3023 = load i32, i32* %3022
  %3024 = zext i32 %3023 to i64
  store i64 %3024, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_403842, %struct.Memory** %MEMORY
  %loadMem_403848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %ECX.i155 = bitcast %union.anon* %3030 to i32*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 11
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RDI.i156 = bitcast %union.anon* %3033 to i64*
  %3034 = load i32, i32* %ECX.i155
  %3035 = zext i32 %3034 to i64
  %3036 = load i64, i64* %PC.i154
  %3037 = add i64 %3036, 2
  store i64 %3037, i64* %PC.i154
  %3038 = and i64 %3035, 4294967295
  store i64 %3038, i64* %RDI.i156, align 8
  store %struct.Memory* %loadMem_403848, %struct.Memory** %MEMORY
  %loadMem_40384a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 33
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 11
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RDI.i152 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3045, i64 0, i64 2
  %YMM2.i153 = bitcast %union.VectorReg* %3046 to %"class.std::bitset"*
  %3047 = bitcast %"class.std::bitset"* %YMM2.i153 to i8*
  %3048 = load i64, i64* %RDI.i152
  %3049 = load i64, i64* %PC.i151
  %3050 = add i64 %3049, 5
  store i64 %3050, i64* %PC.i151
  %3051 = bitcast i8* %3047 to <2 x i32>*
  %3052 = load <2 x i32>, <2 x i32>* %3051, align 1
  %3053 = getelementptr inbounds i8, i8* %3047, i64 8
  %3054 = bitcast i8* %3053 to <2 x i32>*
  %3055 = load <2 x i32>, <2 x i32>* %3054, align 1
  %3056 = sitofp i64 %3048 to float
  %3057 = bitcast i8* %3047 to float*
  store float %3056, float* %3057, align 1
  %3058 = extractelement <2 x i32> %3052, i32 1
  %3059 = getelementptr inbounds i8, i8* %3047, i64 4
  %3060 = bitcast i8* %3059 to i32*
  store i32 %3058, i32* %3060, align 1
  %3061 = extractelement <2 x i32> %3055, i32 0
  %3062 = bitcast i8* %3053 to i32*
  store i32 %3061, i32* %3062, align 1
  %3063 = extractelement <2 x i32> %3055, i32 1
  %3064 = getelementptr inbounds i8, i8* %3047, i64 12
  %3065 = bitcast i8* %3064 to i32*
  store i32 %3063, i32* %3065, align 1
  store %struct.Memory* %loadMem_40384a, %struct.Memory** %MEMORY
  %loadMem_40384f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3070 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3069, i64 0, i64 0
  %YMM0.i149 = bitcast %union.VectorReg* %3070 to %"class.std::bitset"*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3072 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3071, i64 0, i64 2
  %XMM2.i150 = bitcast %union.VectorReg* %3072 to %union.vec128_t*
  %3073 = bitcast %"class.std::bitset"* %YMM0.i149 to i8*
  %3074 = bitcast %"class.std::bitset"* %YMM0.i149 to i8*
  %3075 = bitcast %union.vec128_t* %XMM2.i150 to i8*
  %3076 = load i64, i64* %PC.i148
  %3077 = add i64 %3076, 4
  store i64 %3077, i64* %PC.i148
  %3078 = bitcast i8* %3074 to <2 x float>*
  %3079 = load <2 x float>, <2 x float>* %3078, align 1
  %3080 = getelementptr inbounds i8, i8* %3074, i64 8
  %3081 = bitcast i8* %3080 to <2 x i32>*
  %3082 = load <2 x i32>, <2 x i32>* %3081, align 1
  %3083 = bitcast i8* %3075 to <2 x float>*
  %3084 = load <2 x float>, <2 x float>* %3083, align 1
  %3085 = extractelement <2 x float> %3079, i32 0
  %3086 = extractelement <2 x float> %3084, i32 0
  %3087 = fdiv float %3085, %3086
  %3088 = bitcast i8* %3073 to float*
  store float %3087, float* %3088, align 1
  %3089 = bitcast <2 x float> %3079 to <2 x i32>
  %3090 = extractelement <2 x i32> %3089, i32 1
  %3091 = getelementptr inbounds i8, i8* %3073, i64 4
  %3092 = bitcast i8* %3091 to i32*
  store i32 %3090, i32* %3092, align 1
  %3093 = extractelement <2 x i32> %3082, i32 0
  %3094 = getelementptr inbounds i8, i8* %3073, i64 8
  %3095 = bitcast i8* %3094 to i32*
  store i32 %3093, i32* %3095, align 1
  %3096 = extractelement <2 x i32> %3082, i32 1
  %3097 = getelementptr inbounds i8, i8* %3073, i64 12
  %3098 = bitcast i8* %3097 to i32*
  store i32 %3096, i32* %3098, align 1
  store %struct.Memory* %loadMem_40384f, %struct.Memory** %MEMORY
  %loadMem_403853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 15
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3105, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3106 to %"class.std::bitset"*
  %3107 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3108 = load i64, i64* %RBP.i147
  %3109 = sub i64 %3108, 8204
  %3110 = load i64, i64* %PC.i146
  %3111 = add i64 %3110, 8
  store i64 %3111, i64* %PC.i146
  %3112 = inttoptr i64 %3109 to float*
  %3113 = load float, float* %3112
  %3114 = bitcast i8* %3107 to float*
  store float %3113, float* %3114, align 1
  %3115 = getelementptr inbounds i8, i8* %3107, i64 4
  %3116 = bitcast i8* %3115 to float*
  store float 0.000000e+00, float* %3116, align 1
  %3117 = getelementptr inbounds i8, i8* %3107, i64 8
  %3118 = bitcast i8* %3117 to float*
  store float 0.000000e+00, float* %3118, align 1
  %3119 = getelementptr inbounds i8, i8* %3107, i64 12
  %3120 = bitcast i8* %3119 to float*
  store float 0.000000e+00, float* %3120, align 1
  store %struct.Memory* %loadMem_403853, %struct.Memory** %MEMORY
  %loadMem_40385b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3124, i64 0, i64 0
  %YMM0.i145 = bitcast %union.VectorReg* %3125 to %"class.std::bitset"*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3126, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3127 to %union.vec128_t*
  %3128 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %3129 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %3130 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3131 = load i64, i64* %PC.i144
  %3132 = add i64 %3131, 4
  store i64 %3132, i64* %PC.i144
  %3133 = bitcast i8* %3129 to <2 x float>*
  %3134 = load <2 x float>, <2 x float>* %3133, align 1
  %3135 = getelementptr inbounds i8, i8* %3129, i64 8
  %3136 = bitcast i8* %3135 to <2 x i32>*
  %3137 = load <2 x i32>, <2 x i32>* %3136, align 1
  %3138 = bitcast i8* %3130 to <2 x float>*
  %3139 = load <2 x float>, <2 x float>* %3138, align 1
  %3140 = extractelement <2 x float> %3134, i32 0
  %3141 = extractelement <2 x float> %3139, i32 0
  %3142 = fadd float %3140, %3141
  %3143 = bitcast i8* %3128 to float*
  store float %3142, float* %3143, align 1
  %3144 = bitcast <2 x float> %3134 to <2 x i32>
  %3145 = extractelement <2 x i32> %3144, i32 1
  %3146 = getelementptr inbounds i8, i8* %3128, i64 4
  %3147 = bitcast i8* %3146 to i32*
  store i32 %3145, i32* %3147, align 1
  %3148 = extractelement <2 x i32> %3137, i32 0
  %3149 = getelementptr inbounds i8, i8* %3128, i64 8
  %3150 = bitcast i8* %3149 to i32*
  store i32 %3148, i32* %3150, align 1
  %3151 = extractelement <2 x i32> %3137, i32 1
  %3152 = getelementptr inbounds i8, i8* %3128, i64 12
  %3153 = bitcast i8* %3152 to i32*
  store i32 %3151, i32* %3153, align 1
  store %struct.Memory* %loadMem_40385b, %struct.Memory** %MEMORY
  %loadMem_40385f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 33
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3157, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3158 to %"class.std::bitset"*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3159, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3160 to %union.vec128_t*
  %3161 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3162 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3163 = load i64, i64* %PC.i143
  %3164 = add i64 %3163, 4
  store i64 %3164, i64* %PC.i143
  %3165 = bitcast i8* %3162 to <2 x float>*
  %3166 = load <2 x float>, <2 x float>* %3165, align 1
  %3167 = extractelement <2 x float> %3166, i32 0
  %3168 = fpext float %3167 to double
  %3169 = bitcast i8* %3161 to double*
  store double %3168, double* %3169, align 1
  store %struct.Memory* %loadMem_40385f, %struct.Memory** %MEMORY
  %loadMem_403863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 33
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 11
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RDI.i141 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 15
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %RBP.i142
  %3180 = sub i64 %3179, 8200
  %3181 = load i64, i64* %PC.i140
  %3182 = add i64 %3181, 7
  store i64 %3182, i64* %PC.i140
  %3183 = inttoptr i64 %3180 to i64*
  %3184 = load i64, i64* %3183
  store i64 %3184, i64* %RDI.i141, align 8
  store %struct.Memory* %loadMem_403863, %struct.Memory** %MEMORY
  %loadMem_40386a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 1
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %3190 to i32*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 15
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %RBP.i139
  %3195 = sub i64 %3194, 8244
  %3196 = load i32, i32* %EAX.i138
  %3197 = zext i32 %3196 to i64
  %3198 = load i64, i64* %PC.i137
  %3199 = add i64 %3198, 6
  store i64 %3199, i64* %PC.i137
  %3200 = inttoptr i64 %3195 to i32*
  store i32 %3196, i32* %3200
  store %struct.Memory* %loadMem_40386a, %struct.Memory** %MEMORY
  %loadMem_403870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 33
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 1
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %3207 = bitcast %union.anon* %3206 to %struct.anon.2*
  %AL.i136 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3207, i32 0, i32 0
  %3208 = load i64, i64* %PC.i135
  %3209 = add i64 %3208, 2
  store i64 %3209, i64* %PC.i135
  store i8 1, i8* %AL.i136, align 1
  store %struct.Memory* %loadMem_403870, %struct.Memory** %MEMORY
  %loadMem1_403872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %PC.i134
  %3214 = add i64 %3213, -11202
  %3215 = load i64, i64* %PC.i134
  %3216 = add i64 %3215, 5
  %3217 = load i64, i64* %PC.i134
  %3218 = add i64 %3217, 5
  store i64 %3218, i64* %PC.i134
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3220 = load i64, i64* %3219, align 8
  %3221 = add i64 %3220, -8
  %3222 = inttoptr i64 %3221 to i64*
  store i64 %3216, i64* %3222
  store i64 %3221, i64* %3219, align 8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3214, i64* %3223, align 8
  store %struct.Memory* %loadMem1_403872, %struct.Memory** %MEMORY
  %loadMem2_403872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403872 = load i64, i64* %3
  %3224 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_403872)
  store %struct.Memory* %3224, %struct.Memory** %MEMORY
  %loadMem_403877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 11
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %PC.i131
  %3232 = add i64 %3231, 5
  store i64 %3232, i64* %PC.i131
  store i64 4293967296, i64* %RDI.i132, align 8
  store %struct.Memory* %loadMem_403877, %struct.Memory** %MEMORY
  %loadMem_40387c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 9
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RSI.i130 = bitcast %union.anon* %3238 to i64*
  %3239 = load i64, i64* %PC.i129
  %3240 = add i64 %3239, 5
  store i64 %3240, i64* %PC.i129
  store i64 1000000, i64* %RSI.i130, align 8
  store %struct.Memory* %loadMem_40387c, %struct.Memory** %MEMORY
  %loadMem_403881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 33
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 5
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %PC.i127
  %3248 = add i64 %3247, 7
  store i64 %3248, i64* %PC.i127
  %3249 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*)
  %3250 = zext i32 %3249 to i64
  store i64 %3250, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_403881, %struct.Memory** %MEMORY
  %loadMem_403888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 1
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %3256 to i32*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 15
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %RBP.i126
  %3261 = sub i64 %3260, 8248
  %3262 = load i32, i32* %EAX.i125
  %3263 = zext i32 %3262 to i64
  %3264 = load i64, i64* %PC.i124
  %3265 = add i64 %3264, 6
  store i64 %3265, i64* %PC.i124
  %3266 = inttoptr i64 %3261 to i32*
  store i32 %3262, i32* %3266
  store %struct.Memory* %loadMem_403888, %struct.Memory** %MEMORY
  %loadMem_40388e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 5
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3272 to i32*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 15
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %RBP.i123
  %3277 = sub i64 %3276, 8252
  %3278 = load i32, i32* %ECX.i
  %3279 = zext i32 %3278 to i64
  %3280 = load i64, i64* %PC.i122
  %3281 = add i64 %3280, 6
  store i64 %3281, i64* %PC.i122
  %3282 = inttoptr i64 %3277 to i32*
  store i32 %3278, i32* %3282
  store %struct.Memory* %loadMem_40388e, %struct.Memory** %MEMORY
  %loadMem1_403894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3285 to i64*
  %3286 = load i64, i64* %PC.i121
  %3287 = add i64 %3286, 2012
  %3288 = load i64, i64* %PC.i121
  %3289 = add i64 %3288, 5
  %3290 = load i64, i64* %PC.i121
  %3291 = add i64 %3290, 5
  store i64 %3291, i64* %PC.i121
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3293 = load i64, i64* %3292, align 8
  %3294 = add i64 %3293, -8
  %3295 = inttoptr i64 %3294 to i64*
  store i64 %3289, i64* %3295
  store i64 %3294, i64* %3292, align 8
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3287, i64* %3296, align 8
  store %struct.Memory* %loadMem1_403894, %struct.Memory** %MEMORY
  %loadMem2_403894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403894 = load i64, i64* %3
  %call2_403894 = call %struct.Memory* @sub_404070.eval(%struct.State* %0, i64 %loadPC_403894, %struct.Memory* %loadMem2_403894)
  store %struct.Memory* %call2_403894, %struct.Memory** %MEMORY
  %loadMem_403899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 11
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RDI.i120 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %PC.i119
  %3304 = add i64 %3303, 10
  store i64 %3304, i64* %PC.i119
  store i64 ptrtoint (%G__0x428602_type* @G__0x428602 to i64), i64* %RDI.i120, align 8
  store %struct.Memory* %loadMem_403899, %struct.Memory** %MEMORY
  %loadMem_4038a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 5
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %3310 to i64*
  %3311 = load i64, i64* %PC.i117
  %3312 = add i64 %3311, 7
  store i64 %3312, i64* %PC.i117
  %3313 = load i32, i32* bitcast (%G_0x62ea18_type* @G_0x62ea18 to i32*)
  %3314 = zext i32 %3313 to i64
  store i64 %3314, i64* %RCX.i118, align 8
  store %struct.Memory* %loadMem_4038a3, %struct.Memory** %MEMORY
  %loadMem_4038aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 9
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RSI.i115 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 15
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %RBP.i116
  %3325 = sub i64 %3324, 8252
  %3326 = load i64, i64* %PC.i114
  %3327 = add i64 %3326, 6
  store i64 %3327, i64* %PC.i114
  %3328 = inttoptr i64 %3325 to i32*
  %3329 = load i32, i32* %3328
  %3330 = zext i32 %3329 to i64
  store i64 %3330, i64* %RSI.i115, align 8
  store %struct.Memory* %loadMem_4038aa, %struct.Memory** %MEMORY
  %loadMem_4038b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 1
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %3336 to i32*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 7
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %3339 to i64*
  %3340 = load i32, i32* %EAX.i112
  %3341 = zext i32 %3340 to i64
  %3342 = load i64, i64* %PC.i111
  %3343 = add i64 %3342, 2
  store i64 %3343, i64* %PC.i111
  %3344 = and i64 %3341, 4294967295
  store i64 %3344, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_4038b0, %struct.Memory** %MEMORY
  %loadMem_4038b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 33
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 1
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %3351 = bitcast %union.anon* %3350 to %struct.anon.2*
  %AL.i110 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3351, i32 0, i32 0
  %3352 = load i64, i64* %PC.i109
  %3353 = add i64 %3352, 2
  store i64 %3353, i64* %PC.i109
  store i8 0, i8* %AL.i110, align 1
  store %struct.Memory* %loadMem_4038b2, %struct.Memory** %MEMORY
  %loadMem1_4038b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %PC.i108
  %3358 = add i64 %3357, -11268
  %3359 = load i64, i64* %PC.i108
  %3360 = add i64 %3359, 5
  %3361 = load i64, i64* %PC.i108
  %3362 = add i64 %3361, 5
  store i64 %3362, i64* %PC.i108
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3364 = load i64, i64* %3363, align 8
  %3365 = add i64 %3364, -8
  %3366 = inttoptr i64 %3365 to i64*
  store i64 %3360, i64* %3366
  store i64 %3365, i64* %3363, align 8
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3358, i64* %3367, align 8
  store %struct.Memory* %loadMem1_4038b4, %struct.Memory** %MEMORY
  %loadMem2_4038b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4038b4 = load i64, i64* %3
  %3368 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4038b4)
  store %struct.Memory* %3368, %struct.Memory** %MEMORY
  %loadMem_4038b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 11
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RDI.i105 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %PC.i104
  %3376 = add i64 %3375, 10
  store i64 %3376, i64* %PC.i104
  store i64 ptrtoint (%G__0x429bef_type* @G__0x429bef to i64), i64* %RDI.i105, align 8
  store %struct.Memory* %loadMem_4038b9, %struct.Memory** %MEMORY
  %loadMem_4038c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 33
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 1
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %EAX.i102 = bitcast %union.anon* %3382 to i32*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 15
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %RBP.i103
  %3387 = sub i64 %3386, 8256
  %3388 = load i32, i32* %EAX.i102
  %3389 = zext i32 %3388 to i64
  %3390 = load i64, i64* %PC.i101
  %3391 = add i64 %3390, 6
  store i64 %3391, i64* %PC.i101
  %3392 = inttoptr i64 %3387 to i32*
  store i32 %3388, i32* %3392
  store %struct.Memory* %loadMem_4038c3, %struct.Memory** %MEMORY
  %loadMem_4038c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 1
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %3399 = bitcast %union.anon* %3398 to %struct.anon.2*
  %AL.i100 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3399, i32 0, i32 0
  %3400 = load i64, i64* %PC.i99
  %3401 = add i64 %3400, 2
  store i64 %3401, i64* %PC.i99
  store i8 0, i8* %AL.i100, align 1
  store %struct.Memory* %loadMem_4038c9, %struct.Memory** %MEMORY
  %loadMem1_4038cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 33
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %PC.i98
  %3406 = add i64 %3405, -11291
  %3407 = load i64, i64* %PC.i98
  %3408 = add i64 %3407, 5
  %3409 = load i64, i64* %PC.i98
  %3410 = add i64 %3409, 5
  store i64 %3410, i64* %PC.i98
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3412 = load i64, i64* %3411, align 8
  %3413 = add i64 %3412, -8
  %3414 = inttoptr i64 %3413 to i64*
  store i64 %3408, i64* %3414
  store i64 %3413, i64* %3411, align 8
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3406, i64* %3415, align 8
  store %struct.Memory* %loadMem1_4038cb, %struct.Memory** %MEMORY
  %loadMem2_4038cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4038cb = load i64, i64* %3
  %3416 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4038cb)
  store %struct.Memory* %3416, %struct.Memory** %MEMORY
  %loadMem_4038d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %PC.i95
  %3421 = add i64 %3420, 8
  store i64 %3421, i64* %PC.i95
  %3422 = load i32, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*)
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3423, align 1
  %3424 = and i32 %3422, 255
  %3425 = call i32 @llvm.ctpop.i32(i32 %3424)
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  %3428 = xor i8 %3427, 1
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3428, i8* %3429, align 1
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3430, align 1
  %3431 = icmp eq i32 %3422, 0
  %3432 = zext i1 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3432, i8* %3433, align 1
  %3434 = lshr i32 %3422, 31
  %3435 = trunc i32 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3435, i8* %3436, align 1
  %3437 = lshr i32 %3422, 31
  %3438 = xor i32 %3434, %3437
  %3439 = add i32 %3438, %3437
  %3440 = icmp eq i32 %3439, 2
  %3441 = zext i1 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3441, i8* %3442, align 1
  store %struct.Memory* %loadMem_4038d0, %struct.Memory** %MEMORY
  %loadMem_4038d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 1
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %3448 to i32*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RBP.i94
  %3453 = sub i64 %3452, 8260
  %3454 = load i32, i32* %EAX.i93
  %3455 = zext i32 %3454 to i64
  %3456 = load i64, i64* %PC.i92
  %3457 = add i64 %3456, 6
  store i64 %3457, i64* %PC.i92
  %3458 = inttoptr i64 %3453 to i32*
  store i32 %3454, i32* %3458
  store %struct.Memory* %loadMem_4038d8, %struct.Memory** %MEMORY
  %loadMem_4038de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %PC.i91
  %3463 = add i64 %3462, 130
  %3464 = load i64, i64* %PC.i91
  %3465 = add i64 %3464, 6
  %3466 = load i64, i64* %PC.i91
  %3467 = add i64 %3466, 6
  store i64 %3467, i64* %PC.i91
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3469 = load i8, i8* %3468, align 1
  %3470 = icmp eq i8 %3469, 0
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %BRANCH_TAKEN, align 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3473 = select i1 %3470, i64 %3463, i64 %3465
  store i64 %3473, i64* %3472, align 8
  store %struct.Memory* %loadMem_4038de, %struct.Memory** %MEMORY
  %loadBr_4038de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4038de = icmp eq i8 %loadBr_4038de, 1
  br i1 %cmpBr_4038de, label %block_.L_403960, label %block_4038e4

block_4038e4:                                     ; preds = %block_.L_403602
  %loadMem_4038e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 15
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %RBP.i90
  %3484 = sub i64 %3483, 8144
  %3485 = load i64, i64* %PC.i88
  %3486 = add i64 %3485, 7
  store i64 %3486, i64* %PC.i88
  store i64 %3484, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_4038e4, %struct.Memory** %MEMORY
  %loadMem_4038eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 11
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RDI.i86 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 15
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RBP.i87
  %3497 = sub i64 %3496, 2016
  %3498 = load i64, i64* %PC.i85
  %3499 = add i64 %3498, 7
  store i64 %3499, i64* %PC.i85
  store i64 %3497, i64* %RDI.i86, align 8
  store %struct.Memory* %loadMem_4038eb, %struct.Memory** %MEMORY
  %loadMem_4038f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 33
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3502 to i64*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 1
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 5
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %RAX.i83
  %3510 = load i64, i64* %PC.i82
  %3511 = add i64 %3510, 3
  store i64 %3511, i64* %PC.i82
  %3512 = inttoptr i64 %3509 to i64*
  %3513 = load i64, i64* %3512
  store i64 %3513, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_4038f2, %struct.Memory** %MEMORY
  %loadMem_4038f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 5
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 13
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RSP.i81 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %RSP.i81
  %3524 = load i64, i64* %RCX.i80
  %3525 = load i64, i64* %PC.i79
  %3526 = add i64 %3525, 4
  store i64 %3526, i64* %PC.i79
  %3527 = inttoptr i64 %3523 to i64*
  store i64 %3524, i64* %3527
  store %struct.Memory* %loadMem_4038f5, %struct.Memory** %MEMORY
  %loadMem_4038f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 5
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RAX.i77
  %3538 = add i64 %3537, 8
  %3539 = load i64, i64* %PC.i76
  %3540 = add i64 %3539, 4
  store i64 %3540, i64* %PC.i76
  %3541 = inttoptr i64 %3538 to i64*
  %3542 = load i64, i64* %3541
  store i64 %3542, i64* %RCX.i78, align 8
  store %struct.Memory* %loadMem_4038f9, %struct.Memory** %MEMORY
  %loadMem_4038fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 5
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 13
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RSP.i75 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %RSP.i75
  %3553 = add i64 %3552, 8
  %3554 = load i64, i64* %RCX.i
  %3555 = load i64, i64* %PC.i74
  %3556 = add i64 %3555, 5
  store i64 %3556, i64* %PC.i74
  %3557 = inttoptr i64 %3553 to i64*
  store i64 %3554, i64* %3557
  store %struct.Memory* %loadMem_4038fd, %struct.Memory** %MEMORY
  %loadMem_403902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 33
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 1
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %3563 to i64*
  %3564 = load i64, i64* %RAX.i73
  %3565 = add i64 %3564, 16
  %3566 = load i64, i64* %PC.i72
  %3567 = add i64 %3566, 4
  store i64 %3567, i64* %PC.i72
  %3568 = inttoptr i64 %3565 to i64*
  %3569 = load i64, i64* %3568
  store i64 %3569, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_403902, %struct.Memory** %MEMORY
  %loadMem_403906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 33
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 1
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 13
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RSP.i71 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %RSP.i71
  %3580 = add i64 %3579, 16
  %3581 = load i64, i64* %RAX.i70
  %3582 = load i64, i64* %PC.i69
  %3583 = add i64 %3582, 5
  store i64 %3583, i64* %PC.i69
  %3584 = inttoptr i64 %3580 to i64*
  store i64 %3581, i64* %3584
  store %struct.Memory* %loadMem_403906, %struct.Memory** %MEMORY
  %loadMem1_40390b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3587 to i64*
  %3588 = load i64, i64* %PC.i68
  %3589 = add i64 %3588, -1419
  %3590 = load i64, i64* %PC.i68
  %3591 = add i64 %3590, 5
  %3592 = load i64, i64* %PC.i68
  %3593 = add i64 %3592, 5
  store i64 %3593, i64* %PC.i68
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3595 = load i64, i64* %3594, align 8
  %3596 = add i64 %3595, -8
  %3597 = inttoptr i64 %3596 to i64*
  store i64 %3591, i64* %3597
  store i64 %3596, i64* %3594, align 8
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3589, i64* %3598, align 8
  store %struct.Memory* %loadMem1_40390b, %struct.Memory** %MEMORY
  %loadMem2_40390b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40390b = load i64, i64* %3
  %call2_40390b = call %struct.Memory* @sub_403380.check_solution(%struct.State* %0, i64 %loadPC_40390b, %struct.Memory* %loadMem2_40390b)
  store %struct.Memory* %call2_40390b, %struct.Memory** %MEMORY
  %loadMem_403910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 1
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %EAX.i67 = bitcast %union.anon* %3604 to i32*
  %3605 = load i32, i32* %EAX.i67
  %3606 = zext i32 %3605 to i64
  %3607 = load i64, i64* %PC.i66
  %3608 = add i64 %3607, 3
  store i64 %3608, i64* %PC.i66
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3609, align 1
  %3610 = and i32 %3605, 255
  %3611 = call i32 @llvm.ctpop.i32(i32 %3610)
  %3612 = trunc i32 %3611 to i8
  %3613 = and i8 %3612, 1
  %3614 = xor i8 %3613, 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3614, i8* %3615, align 1
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3616, align 1
  %3617 = icmp eq i32 %3605, 0
  %3618 = zext i1 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3618, i8* %3619, align 1
  %3620 = lshr i32 %3605, 31
  %3621 = trunc i32 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3621, i8* %3622, align 1
  %3623 = lshr i32 %3605, 31
  %3624 = xor i32 %3620, %3623
  %3625 = add i32 %3624, %3623
  %3626 = icmp eq i32 %3625, 2
  %3627 = zext i1 %3626 to i8
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3627, i8* %3628, align 1
  store %struct.Memory* %loadMem_403910, %struct.Memory** %MEMORY
  %loadMem_403913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %PC.i65
  %3633 = add i64 %3632, 49
  %3634 = load i64, i64* %PC.i65
  %3635 = add i64 %3634, 6
  %3636 = load i64, i64* %PC.i65
  %3637 = add i64 %3636, 6
  store i64 %3637, i64* %PC.i65
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3639 = load i8, i8* %3638, align 1
  store i8 %3639, i8* %BRANCH_TAKEN, align 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3641 = icmp ne i8 %3639, 0
  %3642 = select i1 %3641, i64 %3633, i64 %3635
  store i64 %3642, i64* %3640, align 8
  store %struct.Memory* %loadMem_403913, %struct.Memory** %MEMORY
  %loadBr_403913 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403913 = icmp eq i8 %loadBr_403913, 1
  br i1 %cmpBr_403913, label %block_.L_403944, label %block_403919

block_403919:                                     ; preds = %block_4038e4
  %loadMem_403919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 33
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 11
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %RDI.i64 = bitcast %union.anon* %3648 to i64*
  %3649 = load i64, i64* %PC.i63
  %3650 = add i64 %3649, 10
  store i64 %3650, i64* %PC.i63
  store i64 ptrtoint (%G__0x428631_type* @G__0x428631 to i64), i64* %RDI.i64, align 8
  store %struct.Memory* %loadMem_403919, %struct.Memory** %MEMORY
  %loadMem_403923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 1
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 15
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3659 to i64*
  %3660 = load i64, i64* %RBP.i62
  %3661 = sub i64 %3660, 8152
  %3662 = load i64, i64* %PC.i60
  %3663 = add i64 %3662, 6
  store i64 %3663, i64* %PC.i60
  %3664 = inttoptr i64 %3661 to i32*
  %3665 = load i32, i32* %3664
  %3666 = zext i32 %3665 to i64
  store i64 %3666, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_403923, %struct.Memory** %MEMORY
  %loadMem_403929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %RAX.i59
  %3674 = load i64, i64* %PC.i58
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %PC.i58
  %3676 = trunc i64 %3673 to i32
  %3677 = add i32 1, %3676
  %3678 = zext i32 %3677 to i64
  store i64 %3678, i64* %RAX.i59, align 8
  %3679 = icmp ult i32 %3677, %3676
  %3680 = icmp ult i32 %3677, 1
  %3681 = or i1 %3679, %3680
  %3682 = zext i1 %3681 to i8
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3682, i8* %3683, align 1
  %3684 = and i32 %3677, 255
  %3685 = call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3688, i8* %3689, align 1
  %3690 = xor i64 1, %3673
  %3691 = trunc i64 %3690 to i32
  %3692 = xor i32 %3691, %3677
  %3693 = lshr i32 %3692, 4
  %3694 = trunc i32 %3693 to i8
  %3695 = and i8 %3694, 1
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3695, i8* %3696, align 1
  %3697 = icmp eq i32 %3677, 0
  %3698 = zext i1 %3697 to i8
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3698, i8* %3699, align 1
  %3700 = lshr i32 %3677, 31
  %3701 = trunc i32 %3700 to i8
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3701, i8* %3702, align 1
  %3703 = lshr i32 %3676, 31
  %3704 = xor i32 %3700, %3703
  %3705 = add i32 %3704, %3700
  %3706 = icmp eq i32 %3705, 2
  %3707 = zext i1 %3706 to i8
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3707, i8* %3708, align 1
  store %struct.Memory* %loadMem_403929, %struct.Memory** %MEMORY
  %loadMem_40392c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 33
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 1
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %EAX.i56 = bitcast %union.anon* %3714 to i32*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 15
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %3717 to i64*
  %3718 = load i64, i64* %RBP.i57
  %3719 = sub i64 %3718, 8152
  %3720 = load i32, i32* %EAX.i56
  %3721 = zext i32 %3720 to i64
  %3722 = load i64, i64* %PC.i55
  %3723 = add i64 %3722, 6
  store i64 %3723, i64* %PC.i55
  %3724 = inttoptr i64 %3719 to i32*
  store i32 %3720, i32* %3724
  store %struct.Memory* %loadMem_40392c, %struct.Memory** %MEMORY
  %loadMem_403932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 33
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 1
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %3731 = bitcast %union.anon* %3730 to %struct.anon.2*
  %AL.i54 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3731, i32 0, i32 0
  %3732 = load i64, i64* %PC.i53
  %3733 = add i64 %3732, 2
  store i64 %3733, i64* %PC.i53
  store i8 0, i8* %AL.i54, align 1
  store %struct.Memory* %loadMem_403932, %struct.Memory** %MEMORY
  %loadMem1_403934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 33
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3736 to i64*
  %3737 = load i64, i64* %PC.i52
  %3738 = add i64 %3737, -11396
  %3739 = load i64, i64* %PC.i52
  %3740 = add i64 %3739, 5
  %3741 = load i64, i64* %PC.i52
  %3742 = add i64 %3741, 5
  store i64 %3742, i64* %PC.i52
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3744 = load i64, i64* %3743, align 8
  %3745 = add i64 %3744, -8
  %3746 = inttoptr i64 %3745 to i64*
  store i64 %3740, i64* %3746
  store i64 %3745, i64* %3743, align 8
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3738, i64* %3747, align 8
  store %struct.Memory* %loadMem1_403934, %struct.Memory** %MEMORY
  %loadMem2_403934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403934 = load i64, i64* %3
  %3748 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_403934)
  store %struct.Memory* %3748, %struct.Memory** %MEMORY
  %loadMem_403939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 1
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %3754 to i32*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 15
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3757 to i64*
  %3758 = load i64, i64* %RBP.i49
  %3759 = sub i64 %3758, 8264
  %3760 = load i32, i32* %EAX.i48
  %3761 = zext i32 %3760 to i64
  %3762 = load i64, i64* %PC.i47
  %3763 = add i64 %3762, 6
  store i64 %3763, i64* %PC.i47
  %3764 = inttoptr i64 %3759 to i32*
  store i32 %3760, i32* %3764
  store %struct.Memory* %loadMem_403939, %struct.Memory** %MEMORY
  %loadMem_40393f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3767 to i64*
  %3768 = load i64, i64* %PC.i46
  %3769 = add i64 %3768, 28
  %3770 = load i64, i64* %PC.i46
  %3771 = add i64 %3770, 5
  store i64 %3771, i64* %PC.i46
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3769, i64* %3772, align 8
  store %struct.Memory* %loadMem_40393f, %struct.Memory** %MEMORY
  br label %block_.L_40395b

block_.L_403944:                                  ; preds = %block_4038e4
  %loadMem_403944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 11
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RDI.i45 = bitcast %union.anon* %3778 to i64*
  %3779 = load i64, i64* %PC.i44
  %3780 = add i64 %3779, 10
  store i64 %3780, i64* %PC.i44
  store i64 ptrtoint (%G__0x428642_type* @G__0x428642 to i64), i64* %RDI.i45, align 8
  store %struct.Memory* %loadMem_403944, %struct.Memory** %MEMORY
  %loadMem_40394e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 1
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %3787 = bitcast %union.anon* %3786 to %struct.anon.2*
  %AL.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3787, i32 0, i32 0
  %3788 = load i64, i64* %PC.i42
  %3789 = add i64 %3788, 2
  store i64 %3789, i64* %PC.i42
  store i8 0, i8* %AL.i43, align 1
  store %struct.Memory* %loadMem_40394e, %struct.Memory** %MEMORY
  %loadMem1_403950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 33
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3792 to i64*
  %3793 = load i64, i64* %PC.i41
  %3794 = add i64 %3793, -11424
  %3795 = load i64, i64* %PC.i41
  %3796 = add i64 %3795, 5
  %3797 = load i64, i64* %PC.i41
  %3798 = add i64 %3797, 5
  store i64 %3798, i64* %PC.i41
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3800 = load i64, i64* %3799, align 8
  %3801 = add i64 %3800, -8
  %3802 = inttoptr i64 %3801 to i64*
  store i64 %3796, i64* %3802
  store i64 %3801, i64* %3799, align 8
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3794, i64* %3803, align 8
  store %struct.Memory* %loadMem1_403950, %struct.Memory** %MEMORY
  %loadMem2_403950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403950 = load i64, i64* %3
  %3804 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_403950)
  store %struct.Memory* %3804, %struct.Memory** %MEMORY
  %loadMem_403955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 33
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3807 to i64*
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 1
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %EAX.i37 = bitcast %union.anon* %3810 to i32*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 15
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %RBP.i38
  %3815 = sub i64 %3814, 8268
  %3816 = load i32, i32* %EAX.i37
  %3817 = zext i32 %3816 to i64
  %3818 = load i64, i64* %PC.i36
  %3819 = add i64 %3818, 6
  store i64 %3819, i64* %PC.i36
  %3820 = inttoptr i64 %3815 to i32*
  store i32 %3816, i32* %3820
  store %struct.Memory* %loadMem_403955, %struct.Memory** %MEMORY
  br label %block_.L_40395b

block_.L_40395b:                                  ; preds = %block_.L_403944, %block_403919
  %loadMem_40395b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 33
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3823 to i64*
  %3824 = load i64, i64* %PC.i35
  %3825 = add i64 %3824, 20
  %3826 = load i64, i64* %PC.i35
  %3827 = add i64 %3826, 5
  store i64 %3827, i64* %PC.i35
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3825, i64* %3828, align 8
  store %struct.Memory* %loadMem_40395b, %struct.Memory** %MEMORY
  br label %block_.L_40396f

block_.L_403960:                                  ; preds = %block_.L_403602
  %loadMem_403960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 1
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 15
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %RBP.i34
  %3839 = sub i64 %3838, 8152
  %3840 = load i64, i64* %PC.i32
  %3841 = add i64 %3840, 6
  store i64 %3841, i64* %PC.i32
  %3842 = inttoptr i64 %3839 to i32*
  %3843 = load i32, i32* %3842
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_403960, %struct.Memory** %MEMORY
  %loadMem_403966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 1
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3850 to i64*
  %3851 = load i64, i64* %RAX.i
  %3852 = load i64, i64* %PC.i31
  %3853 = add i64 %3852, 3
  store i64 %3853, i64* %PC.i31
  %3854 = trunc i64 %3851 to i32
  %3855 = add i32 1, %3854
  %3856 = zext i32 %3855 to i64
  store i64 %3856, i64* %RAX.i, align 8
  %3857 = icmp ult i32 %3855, %3854
  %3858 = icmp ult i32 %3855, 1
  %3859 = or i1 %3857, %3858
  %3860 = zext i1 %3859 to i8
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3860, i8* %3861, align 1
  %3862 = and i32 %3855, 255
  %3863 = call i32 @llvm.ctpop.i32(i32 %3862)
  %3864 = trunc i32 %3863 to i8
  %3865 = and i8 %3864, 1
  %3866 = xor i8 %3865, 1
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3866, i8* %3867, align 1
  %3868 = xor i64 1, %3851
  %3869 = trunc i64 %3868 to i32
  %3870 = xor i32 %3869, %3855
  %3871 = lshr i32 %3870, 4
  %3872 = trunc i32 %3871 to i8
  %3873 = and i8 %3872, 1
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3873, i8* %3874, align 1
  %3875 = icmp eq i32 %3855, 0
  %3876 = zext i1 %3875 to i8
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3876, i8* %3877, align 1
  %3878 = lshr i32 %3855, 31
  %3879 = trunc i32 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3879, i8* %3880, align 1
  %3881 = lshr i32 %3854, 31
  %3882 = xor i32 %3878, %3881
  %3883 = add i32 %3882, %3878
  %3884 = icmp eq i32 %3883, 2
  %3885 = zext i1 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3885, i8* %3886, align 1
  store %struct.Memory* %loadMem_403966, %struct.Memory** %MEMORY
  %loadMem_403969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 33
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 1
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %3892 to i32*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 15
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %3895 to i64*
  %3896 = load i64, i64* %RBP.i30
  %3897 = sub i64 %3896, 8152
  %3898 = load i32, i32* %EAX.i29
  %3899 = zext i32 %3898 to i64
  %3900 = load i64, i64* %PC.i28
  %3901 = add i64 %3900, 6
  store i64 %3901, i64* %PC.i28
  %3902 = inttoptr i64 %3897 to i32*
  store i32 %3898, i32* %3902
  store %struct.Memory* %loadMem_403969, %struct.Memory** %MEMORY
  br label %block_.L_40396f

block_.L_40396f:                                  ; preds = %block_.L_403960, %block_.L_40395b
  %loadMem_40396f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 33
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3905 to i64*
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 11
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %RDI.i27 = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %PC.i26
  %3910 = add i64 %3909, 10
  store i64 %3910, i64* %PC.i26
  store i64 ptrtoint (%G__0x428657_type* @G__0x428657 to i64), i64* %RDI.i27, align 8
  store %struct.Memory* %loadMem_40396f, %struct.Memory** %MEMORY
  %loadMem_403979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 33
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 9
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3916 to i64*
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 15
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %3919 to i64*
  %3920 = load i64, i64* %RBP.i25
  %3921 = sub i64 %3920, 8152
  %3922 = load i64, i64* %PC.i24
  %3923 = add i64 %3922, 6
  store i64 %3923, i64* %PC.i24
  %3924 = inttoptr i64 %3921 to i32*
  %3925 = load i32, i32* %3924
  %3926 = zext i32 %3925 to i64
  store i64 %3926, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_403979, %struct.Memory** %MEMORY
  %loadMem_40397f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 33
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 7
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3932 to i64*
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 15
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3935 to i64*
  %3936 = load i64, i64* %RBP.i23
  %3937 = sub i64 %3936, 8148
  %3938 = load i64, i64* %PC.i22
  %3939 = add i64 %3938, 6
  store i64 %3939, i64* %PC.i22
  %3940 = inttoptr i64 %3937 to i32*
  %3941 = load i32, i32* %3940
  %3942 = zext i32 %3941 to i64
  store i64 %3942, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_40397f, %struct.Memory** %MEMORY
  %loadMem_403985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 33
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3945 to i64*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 1
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %3949 = bitcast %union.anon* %3948 to %struct.anon.2*
  %AL.i21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3949, i32 0, i32 0
  %3950 = load i64, i64* %PC.i20
  %3951 = add i64 %3950, 2
  store i64 %3951, i64* %PC.i20
  store i8 0, i8* %AL.i21, align 1
  store %struct.Memory* %loadMem_403985, %struct.Memory** %MEMORY
  %loadMem1_403987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %PC.i19
  %3956 = add i64 %3955, -11479
  %3957 = load i64, i64* %PC.i19
  %3958 = add i64 %3957, 5
  %3959 = load i64, i64* %PC.i19
  %3960 = add i64 %3959, 5
  store i64 %3960, i64* %PC.i19
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3962 = load i64, i64* %3961, align 8
  %3963 = add i64 %3962, -8
  %3964 = inttoptr i64 %3963 to i64*
  store i64 %3958, i64* %3964
  store i64 %3963, i64* %3961, align 8
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3956, i64* %3965, align 8
  store %struct.Memory* %loadMem1_403987, %struct.Memory** %MEMORY
  %loadMem2_403987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403987 = load i64, i64* %3
  %3966 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_403987)
  store %struct.Memory* %3966, %struct.Memory** %MEMORY
  %loadMem_40398c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 1
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %3972 to i32*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 15
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %RBP.i16
  %3977 = sub i64 %3976, 8272
  %3978 = load i32, i32* %EAX.i15
  %3979 = zext i32 %3978 to i64
  %3980 = load i64, i64* %PC.i14
  %3981 = add i64 %3980, 6
  store i64 %3981, i64* %PC.i14
  %3982 = inttoptr i64 %3977 to i32*
  store i32 %3978, i32* %3982
  store %struct.Memory* %loadMem_40398c, %struct.Memory** %MEMORY
  %loadMem_403992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %PC.i13
  %3987 = add i64 %3986, -1073
  %3988 = load i64, i64* %PC.i13
  %3989 = add i64 %3988, 5
  store i64 %3989, i64* %PC.i13
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3987, i64* %3990, align 8
  store %struct.Memory* %loadMem_403992, %struct.Memory** %MEMORY
  br label %block_.L_403561

block_.L_403997:                                  ; preds = %block_.L_403561
  %loadMem_403997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 11
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %PC.i12
  %3998 = add i64 %3997, 10
  store i64 %3998, i64* %PC.i12
  store i64 ptrtoint (%G__0x429bef_type* @G__0x429bef to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_403997, %struct.Memory** %MEMORY
  %loadMem_4039a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 1
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %4005 = bitcast %union.anon* %4004 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4005, i32 0, i32 0
  %4006 = load i64, i64* %PC.i11
  %4007 = add i64 %4006, 2
  store i64 %4007, i64* %PC.i11
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4039a1, %struct.Memory** %MEMORY
  %loadMem1_4039a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 33
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4010 to i64*
  %4011 = load i64, i64* %PC.i10
  %4012 = add i64 %4011, -11507
  %4013 = load i64, i64* %PC.i10
  %4014 = add i64 %4013, 5
  %4015 = load i64, i64* %PC.i10
  %4016 = add i64 %4015, 5
  store i64 %4016, i64* %PC.i10
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4018 = load i64, i64* %4017, align 8
  %4019 = add i64 %4018, -8
  %4020 = inttoptr i64 %4019 to i64*
  store i64 %4014, i64* %4020
  store i64 %4019, i64* %4017, align 8
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4012, i64* %4021, align 8
  store %struct.Memory* %loadMem1_4039a3, %struct.Memory** %MEMORY
  %loadMem2_4039a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4039a3 = load i64, i64* %3
  %4022 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4039a3)
  store %struct.Memory* %4022, %struct.Memory** %MEMORY
  %loadMem_4039a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 33
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4025 to i64*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 1
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4028 to i32*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 15
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4031 to i64*
  %4032 = load i64, i64* %RBP.i6
  %4033 = sub i64 %4032, 8276
  %4034 = load i32, i32* %EAX.i
  %4035 = zext i32 %4034 to i64
  %4036 = load i64, i64* %PC.i5
  %4037 = add i64 %4036, 6
  store i64 %4037, i64* %PC.i5
  %4038 = inttoptr i64 %4033 to i32*
  store i32 %4034, i32* %4038
  store %struct.Memory* %loadMem_4039a8, %struct.Memory** %MEMORY
  %loadMem_4039ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 13
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4044 to i64*
  %4045 = load i64, i64* %RSP.i
  %4046 = load i64, i64* %PC.i4
  %4047 = add i64 %4046, 7
  store i64 %4047, i64* %PC.i4
  %4048 = add i64 8304, %4045
  store i64 %4048, i64* %RSP.i, align 8
  %4049 = icmp ult i64 %4048, %4045
  %4050 = icmp ult i64 %4048, 8304
  %4051 = or i1 %4049, %4050
  %4052 = zext i1 %4051 to i8
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4052, i8* %4053, align 1
  %4054 = trunc i64 %4048 to i32
  %4055 = and i32 %4054, 255
  %4056 = call i32 @llvm.ctpop.i32(i32 %4055)
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = xor i8 %4058, 1
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4059, i8* %4060, align 1
  %4061 = xor i64 8304, %4045
  %4062 = xor i64 %4061, %4048
  %4063 = lshr i64 %4062, 4
  %4064 = trunc i64 %4063 to i8
  %4065 = and i8 %4064, 1
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4065, i8* %4066, align 1
  %4067 = icmp eq i64 %4048, 0
  %4068 = zext i1 %4067 to i8
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4068, i8* %4069, align 1
  %4070 = lshr i64 %4048, 63
  %4071 = trunc i64 %4070 to i8
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4071, i8* %4072, align 1
  %4073 = lshr i64 %4045, 63
  %4074 = xor i64 %4070, %4073
  %4075 = add i64 %4074, %4070
  %4076 = icmp eq i64 %4075, 2
  %4077 = zext i1 %4076 to i8
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4077, i8* %4078, align 1
  store %struct.Memory* %loadMem_4039ae, %struct.Memory** %MEMORY
  %loadMem_4039b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 15
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4084 to i64*
  %4085 = load i64, i64* %PC.i2
  %4086 = add i64 %4085, 1
  store i64 %4086, i64* %PC.i2
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4088 = load i64, i64* %4087, align 8
  %4089 = add i64 %4088, 8
  %4090 = inttoptr i64 %4088 to i64*
  %4091 = load i64, i64* %4090
  store i64 %4091, i64* %RBP.i3, align 8
  store i64 %4089, i64* %4087, align 8
  store %struct.Memory* %loadMem_4039b5, %struct.Memory** %MEMORY
  %loadMem_4039b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4094 to i64*
  %4095 = load i64, i64* %PC.i1
  %4096 = add i64 %4095, 1
  store i64 %4096, i64* %PC.i1
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4099 = load i64, i64* %4098, align 8
  %4100 = inttoptr i64 %4099 to i64*
  %4101 = load i64, i64* %4100
  store i64 %4101, i64* %4097, align 8
  %4102 = add i64 %4099, 8
  store i64 %4102, i64* %4098, align 8
  store %struct.Memory* %loadMem_4039b6, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4039b6
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RBP, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0x2070___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 8304
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 8304
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 8304, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4284bf___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4284bf_type* @G__0x4284bf to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1fd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 8148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1fd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 8152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x100___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 256, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x17e0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 6112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x62da90___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x62da90_type* @G_0x62da90 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1ff4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.rinput(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4284d8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4284d8_type* @G__0x4284d8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x7e0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 2016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1ff8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.atol_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x429bef___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x429bef_type* @G__0x429bef to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x1fb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8120
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x429b3b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x429b3b_type* @G__0x429b3b to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x64__MINUS0x1fb8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 100
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1
  %27 = and i32 %20, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1fb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8120
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1ffc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fopen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7d0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2000, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fgets_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_403997(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1fd4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 1
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 1, %9
  %27 = trunc i64 %26 to i32
  %28 = xor i32 %27, %13
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %13, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %13, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %12, 31
  %40 = xor i32 %36, %39
  %41 = add i32 %40, %36
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1fd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.setup_epd_line(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %18, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
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
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x633b54(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.clear_tt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.initialize_hash(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x62da80___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x62da80_type* @G_0x62da80 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.display_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x62e4f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.interrupt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EAX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %9, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i32 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = xor i32 %24, %27
  %29 = add i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_403602(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1fb0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4285ec___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4285ec_type* @G__0x4285ec to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x24d7c__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x24d7c__rip__type* @G_0x24d7c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1fb8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x483560__rip_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x483560__rip__type* @G_0x483560__rip_ to i64)
  %11 = load i32, i32* %EAX
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 6
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %10 to i32*
  store i32 %11, i32* %15
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1ff0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x2008__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8200
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x200c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 8204
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.think(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x1fe0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x1fc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8128
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movups_MINUS0x1ff0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = add i64 %13, 4
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %13, 8
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = add i64 %13, 12
  %25 = inttoptr i64 %24 to float*
  %26 = load float, float* %25
  %27 = bitcast i8* %11 to float*
  store float %17, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %11, i64 4
  %29 = bitcast i8* %28 to float*
  store float %20, float* %29, align 1
  %30 = getelementptr inbounds i8, i8* %11, i64 8
  %31 = bitcast i8* %30 to float*
  store float %23, float* %31, align 1
  %32 = getelementptr inbounds i8, i8* %11, i64 12
  %33 = bitcast i8* %32 to float*
  store float %26, float* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0__MINUS0x1fd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 8144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 1
  %21 = extractelement <2 x float> %17, i32 0
  %22 = inttoptr i64 %12 to float*
  store float %21, float* %22
  %23 = add i64 %12, 4
  %24 = extractelement <2 x float> %17, i32 1
  %25 = inttoptr i64 %23 to float*
  store float %24, float* %25
  %26 = add i64 %12, 8
  %27 = extractelement <2 x float> %20, i32 0
  %28 = inttoptr i64 %26 to float*
  store float %27, float* %28
  %29 = add i64 %12, 12
  %30 = extractelement <2 x float> %20, i32 1
  %31 = inttoptr i64 %29 to float*
  store float %30, float* %31
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x460ea0__rip____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x460ea0__rip__type* @G_0x460ea0__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_0x2377dc__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x2377dc__rip__type* @G_0x2377dc__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = bitcast i8* %8 to <2 x i32>*
  %14 = load <2 x i32>, <2 x i32>* %13, align 1
  %15 = getelementptr inbounds i8, i8* %8, i64 8
  %16 = bitcast i8* %15 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = inttoptr i64 %10 to i32*
  %19 = load i32, i32* %18
  %20 = sitofp i32 %19 to float
  %21 = bitcast i8* %8 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %14, i32 1
  %23 = getelementptr inbounds i8, i8* %8, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 0
  %26 = bitcast i8* %15 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %17, i32 1
  %28 = getelementptr inbounds i8, i8* %8, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = sitofp i32 %12 to float
  %22 = bitcast i8* %11 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %17, i32 1
  %24 = getelementptr inbounds i8, i8* %11, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %20, i32 0
  %27 = bitcast i8* %18 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x24d2c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x24d2c__rip__type* @G_0x24d2c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4284ed___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 and (i64 ptrtoint (%G__0x4284ed_type* @G__0x4284ed to i64), i64 4294967295), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  store i8 1, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__sil__MINUS0x200d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8205
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x200d__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8205
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x47d464__rip____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x47d464__rip__type* @G_0x47d464__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x22ae3a__rip____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x22ae3a__rip__type* @G_0x22ae3a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssq__rdi___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssq__rcx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x24cc4__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x24cc4__rip__type* @G_0x24cc4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x24cb8__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x24cb8__rip__type* @G_0x24cb8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fmul float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x42850a___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 and (i64 ptrtoint (%G__0x42850a_type* @G__0x42850a to i64), i64 4294967295), i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x2014__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8212
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2014__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x200d__rbp____r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8205
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2018__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r9b___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 19
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %R9B
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x201c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 8220
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__MINUS0x2020__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 8224
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x460de2__rip____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x460de2__rip__type* @G_0x460de2__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x22b2e8__rip____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x22b2e8__rip__type* @G_0x22b2e8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x46306d__rip____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, ptrtoint (%G_0x46306d__rip__type* @G_0x46306d__rip_ to i64)
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x2020__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x201c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x428540___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 and (i64 ptrtoint (%G__0x428540_type* @G__0x428540 to i64), i64 4294967295), i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2024__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x483916__rip____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x483916__rip__type* @G_0x483916__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4685d4__rip____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x4685d4__rip__type* @G_0x4685d4__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssq__r11___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssq__rdi___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x2020__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x48329a__rip____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x48329a__rip__type* @G_0x48329a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x42857c___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 and (i64 ptrtoint (%G__0x42857c_type* @G__0x42857c to i64), i64 4294967295), i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x2028__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8232
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2028__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x202c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x22b1f8__rip____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x22b1f8__rip__type* @G_0x22b1f8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x460cfe__rip____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x460cfe__rip__type* @G_0x460cfe__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x483894__rip____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x483894__rip__type* @G_0x483894__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4285af___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 and (i64 ptrtoint (%G__0x4285af_type* @G__0x4285af to i64), i64 4294967295), i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %11
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r8b___r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 19
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %R8B
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2030__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8240
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x462ab1__rip____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x462ab1__rip__type* @G_0x462ab1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x49d228__rip____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x49d228__rip__type* @G_0x49d228__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x200c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x2008__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2034__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xfff0bdc0___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 4293967296, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xf4240___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1000000, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8661c0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8661c0_type* @G_0x8661c0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2038__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8248
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x203c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8252
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.eval(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x428602___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x428602_type* @G__0x428602 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62ea18___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x62ea18_type* @G_0x62ea18 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x203c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2040__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8256
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x62e4f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x62e4f8_type* @G_0x62e4f8 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
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
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2044__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8260
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_403960(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1fd0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RAX
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.check_solution(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_403944(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x428631___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x428631_type* @G__0x428631 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1fd8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1fd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2048__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8264
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40395b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x428642___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x428642_type* @G__0x428642 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x204c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8268
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40396f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x428657___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x428657_type* @G__0x428657 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1fd8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1fd4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2050__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8272
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403561(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2054__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 8276
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x2070___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = add i64 8304, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 8304
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = trunc i64 %12 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i64 8304, %9
  %26 = xor i64 %25, %12
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i64 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %12, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i64 %9, 63
  %38 = xor i64 %34, %37
  %39 = add i64 %38, %34
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBP, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline }
