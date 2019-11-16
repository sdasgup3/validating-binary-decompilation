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
%G_0x3f405__rip__type = type <{ [8 x i8] }>
%G_0x3f4ca__rip__type = type <{ [8 x i8] }>
%G_0x3f4fd__rip__type = type <{ [8 x i8] }>
%G_0x3f5c2__rip__type = type <{ [8 x i8] }>
%G_0x3f5e9__rip__type = type <{ [8 x i8] }>
%G_0x676d90_type = type <{ [1 x i8] }>
%G_0x676ffc_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x456453_type = type <{ [8 x i8] }>
%G__0x4564a4_type = type <{ [8 x i8] }>
%G__0x4564b6_type = type <{ [8 x i8] }>
%G__0x4564c8_type = type <{ [8 x i8] }>
%G__0x4564fe_type = type <{ [8 x i8] }>
%G__0x456509_type = type <{ [8 x i8] }>
%G__0x456517_type = type <{ [8 x i8] }>
%G__0x45653b_type = type <{ [8 x i8] }>
%G__0x45653f_type = type <{ [8 x i8] }>
%G__0x456583_type = type <{ [8 x i8] }>
%G__0x4565ad_type = type <{ [8 x i8] }>
%G__0x4565fe_type = type <{ [8 x i8] }>
%G__0x456657_type = type <{ [8 x i8] }>
%G__0x456697_type = type <{ [8 x i8] }>
%G__0x4566e3_type = type <{ [8 x i8] }>
%G__0x45672d_type = type <{ [8 x i8] }>
%G__0x45677c_type = type <{ [8 x i8] }>
%G__0x4567c0_type = type <{ [8 x i8] }>
%G__0x4567fd_type = type <{ [8 x i8] }>
%G__0x456802_type = type <{ [8 x i8] }>
%G__0x45680a_type = type <{ [8 x i8] }>
%G__0x456826_type = type <{ [8 x i8] }>
%G__0x456836_type = type <{ [8 x i8] }>
%G__0x45683c_type = type <{ [8 x i8] }>
%G__0x456842_type = type <{ [8 x i8] }>
%G__0x45684a_type = type <{ [8 x i8] }>
%G__0x456853_type = type <{ [8 x i8] }>
%G__0x457b32_type = type <{ [8 x i8] }>
%G__0x458d45_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
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
@G_0x3f405__rip_ = global %G_0x3f405__rip__type zeroinitializer
@G_0x3f4ca__rip_ = global %G_0x3f4ca__rip__type zeroinitializer
@G_0x3f4fd__rip_ = global %G_0x3f4fd__rip__type zeroinitializer
@G_0x3f5c2__rip_ = global %G_0x3f5c2__rip__type zeroinitializer
@G_0x3f5e9__rip_ = global %G_0x3f5e9__rip__type zeroinitializer
@G_0x676d90 = global %G_0x676d90_type zeroinitializer
@G_0x676ffc = global %G_0x676ffc_type zeroinitializer
@G_0x677060 = global %G_0x677060_type zeroinitializer
@G__0x456453 = global %G__0x456453_type zeroinitializer
@G__0x4564a4 = global %G__0x4564a4_type zeroinitializer
@G__0x4564b6 = global %G__0x4564b6_type zeroinitializer
@G__0x4564c8 = global %G__0x4564c8_type zeroinitializer
@G__0x4564fe = global %G__0x4564fe_type zeroinitializer
@G__0x456509 = global %G__0x456509_type zeroinitializer
@G__0x456517 = global %G__0x456517_type zeroinitializer
@G__0x45653b = global %G__0x45653b_type zeroinitializer
@G__0x45653f = global %G__0x45653f_type zeroinitializer
@G__0x456583 = global %G__0x456583_type zeroinitializer
@G__0x4565ad = global %G__0x4565ad_type zeroinitializer
@G__0x4565fe = global %G__0x4565fe_type zeroinitializer
@G__0x456657 = global %G__0x456657_type zeroinitializer
@G__0x456697 = global %G__0x456697_type zeroinitializer
@G__0x4566e3 = global %G__0x4566e3_type zeroinitializer
@G__0x45672d = global %G__0x45672d_type zeroinitializer
@G__0x45677c = global %G__0x45677c_type zeroinitializer
@G__0x4567c0 = global %G__0x4567c0_type zeroinitializer
@G__0x4567fd = global %G__0x4567fd_type zeroinitializer
@G__0x456802 = global %G__0x456802_type zeroinitializer
@G__0x45680a = global %G__0x45680a_type zeroinitializer
@G__0x456826 = global %G__0x456826_type zeroinitializer
@G__0x456836 = global %G__0x456836_type zeroinitializer
@G__0x45683c = global %G__0x45683c_type zeroinitializer
@G__0x456842 = global %G__0x456842_type zeroinitializer
@G__0x45684a = global %G__0x45684a_type zeroinitializer
@G__0x456853 = global %G__0x456853_type zeroinitializer
@G__0x457b32 = global %G__0x457b32_type zeroinitializer
@G__0x458d45 = global %G__0x458d45_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer

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

declare %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ebe0.Warn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452580.FArgMax(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @WriteProfile(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_414cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_414cc0, %struct.Memory** %MEMORY
  %loadMem_414cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_414cc1, %struct.Memory** %MEMORY
  %loadMem_414cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i27 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i27
  %36 = load i64, i64* %PC.i26
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i26
  %38 = sub i64 %35, 256
  store i64 %38, i64* %RSP.i27, align 8
  %39 = icmp ult i64 %35, 256
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
  %49 = xor i64 256, %35
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
  store %struct.Memory* %loadMem_414cc4, %struct.Memory** %MEMORY
  %loadMem_414ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i56
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i56
  store i64 1, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_414ccb, %struct.Memory** %MEMORY
  %loadMem_414cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDI.i141 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i142
  %85 = sub i64 %84, 8
  %86 = load i64, i64* %RDI.i141
  %87 = load i64, i64* %PC.i140
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i140
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_414cd0, %struct.Memory** %MEMORY
  %loadMem_414cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RSI.i165 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i166
  %100 = sub i64 %99, 16
  %101 = load i64, i64* %RSI.i165
  %102 = load i64, i64* %PC.i164
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC.i164
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104
  store %struct.Memory* %loadMem_414cd4, %struct.Memory** %MEMORY
  %loadMem_414cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %EDX.i186 = bitcast %union.anon* %110 to i32*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i187
  %115 = sub i64 %114, 20
  %116 = load i32, i32* %EDX.i186
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC.i185
  %119 = add i64 %118, 3
  store i64 %119, i64* %PC.i185
  %120 = inttoptr i64 %115 to i32*
  store i32 %116, i32* %120
  store %struct.Memory* %loadMem_414cd8, %struct.Memory** %MEMORY
  %loadMem_414cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 11
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RDI.i518 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i519
  %131 = sub i64 %130, 16
  %132 = load i64, i64* %PC.i517
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i517
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %RDI.i518, align 8
  store %struct.Memory* %loadMem_414cdb, %struct.Memory** %MEMORY
  %loadMem_414cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %EAX.i611 = bitcast %union.anon* %141 to i32*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 9
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RSI.i612 = bitcast %union.anon* %144 to i64*
  %145 = load i32, i32* %EAX.i611
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC.i610
  %148 = add i64 %147, 2
  store i64 %148, i64* %PC.i610
  %149 = and i64 %146, 4294967295
  store i64 %149, i64* %RSI.i612, align 8
  store %struct.Memory* %loadMem_414cdf, %struct.Memory** %MEMORY
  %loadMem1_414ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %PC.i648
  %154 = add i64 %153, 123471
  %155 = load i64, i64* %PC.i648
  %156 = add i64 %155, 5
  %157 = load i64, i64* %PC.i648
  %158 = add i64 %157, 5
  store i64 %158, i64* %PC.i648
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %156, i64* %162
  store i64 %161, i64* %159, align 8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %154, i64* %163, align 8
  store %struct.Memory* %loadMem1_414ce1, %struct.Memory** %MEMORY
  %loadMem2_414ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414ce1 = load i64, i64* %3
  %call2_414ce1 = call %struct.Memory* @sub_432f30.P7Logoddsify(%struct.State* %0, i64 %loadPC_414ce1, %struct.Memory* %loadMem2_414ce1)
  store %struct.Memory* %call2_414ce1, %struct.Memory** %MEMORY
  %loadMem_414ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 11
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RDI.i669 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 15
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %172 to i64*
  %173 = load i64, i64* %RBP.i670
  %174 = sub i64 %173, 16
  %175 = load i64, i64* %PC.i668
  %176 = add i64 %175, 4
  store i64 %176, i64* %PC.i668
  %177 = inttoptr i64 %174 to i64*
  %178 = load i64, i64* %177
  store i64 %178, i64* %RDI.i669, align 8
  store %struct.Memory* %loadMem_414ce6, %struct.Memory** %MEMORY
  %loadMem_414cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 11
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RDI.i704 = bitcast %union.anon* %184 to i64*
  %185 = load i64, i64* %RDI.i704
  %186 = add i64 %185, 136
  %187 = load i64, i64* %PC.i703
  %188 = add i64 %187, 10
  store i64 %188, i64* %PC.i703
  %189 = inttoptr i64 %186 to i32*
  %190 = load i32, i32* %189
  %191 = sub i32 %190, 1000
  %192 = icmp ult i32 %190, 1000
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %193, i8* %194, align 1
  %195 = and i32 %191, 255
  %196 = call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %199, i8* %200, align 1
  %201 = xor i32 %190, 1000
  %202 = xor i32 %201, %191
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %205, i8* %206, align 1
  %207 = icmp eq i32 %191, 0
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %208, i8* %209, align 1
  %210 = lshr i32 %191, 31
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %211, i8* %212, align 1
  %213 = lshr i32 %190, 31
  %214 = xor i32 %210, %213
  %215 = add i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %217, i8* %218, align 1
  store %struct.Memory* %loadMem_414cea, %struct.Memory** %MEMORY
  %loadMem_414cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %PC.i717
  %223 = add i64 %222, 40
  %224 = load i64, i64* %PC.i717
  %225 = add i64 %224, 6
  %226 = load i64, i64* %PC.i717
  %227 = add i64 %226, 6
  store i64 %227, i64* %PC.i717
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %229 = load i8, i8* %228, align 1
  %230 = icmp ne i8 %229, 0
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %232 = load i8, i8* %231, align 1
  %233 = icmp ne i8 %232, 0
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %235 = load i8, i8* %234, align 1
  %236 = icmp ne i8 %235, 0
  %237 = xor i1 %233, %236
  %238 = or i1 %230, %237
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %BRANCH_TAKEN, align 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %241 = select i1 %238, i64 %223, i64 %225
  store i64 %241, i64* %240, align 8
  store %struct.Memory* %loadMem_414cf4, %struct.Memory** %MEMORY
  %loadBr_414cf4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414cf4 = icmp eq i8 %loadBr_414cf4, 1
  br i1 %cmpBr_414cf4, label %block_.L_414d1c, label %block_414cfa

block_414cfa:                                     ; preds = %entry
  %loadMem_414cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 15
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RBP.i742
  %249 = sub i64 %248, 20
  %250 = load i64, i64* %PC.i741
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC.i741
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %254, align 1
  %255 = and i32 %253, 255
  %256 = call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %259, i8* %260, align 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %261, align 1
  %262 = icmp eq i32 %253, 0
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %263, i8* %264, align 1
  %265 = lshr i32 %253, 31
  %266 = trunc i32 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %266, i8* %267, align 1
  %268 = lshr i32 %253, 31
  %269 = xor i32 %265, %268
  %270 = add i32 %269, %268
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %272, i8* %273, align 1
  store %struct.Memory* %loadMem_414cfa, %struct.Memory** %MEMORY
  %loadMem_414cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %PC.i768
  %278 = add i64 %277, 30
  %279 = load i64, i64* %PC.i768
  %280 = add i64 %279, 6
  %281 = load i64, i64* %PC.i768
  %282 = add i64 %281, 6
  store i64 %282, i64* %PC.i768
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %284 = load i8, i8* %283, align 1
  %285 = icmp eq i8 %284, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %BRANCH_TAKEN, align 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %288 = select i1 %285, i64 %278, i64 %280
  store i64 %288, i64* %287, align 8
  store %struct.Memory* %loadMem_414cfe, %struct.Memory** %MEMORY
  %loadBr_414cfe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414cfe = icmp eq i8 %loadBr_414cfe, 1
  br i1 %cmpBr_414cfe, label %block_.L_414d1c, label %block_414d04

block_414d04:                                     ; preds = %block_414cfa
  %loadMem_414d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 11
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RDI.i781 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %PC.i780
  %296 = add i64 %295, 10
  store i64 %296, i64* %PC.i780
  store i64 ptrtoint (%G__0x456453_type* @G__0x456453 to i64), i64* %RDI.i781, align 8
  store %struct.Memory* %loadMem_414d04, %struct.Memory** %MEMORY
  %loadMem_414d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 15
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RBP.i795
  %307 = sub i64 %306, 16
  %308 = load i64, i64* %PC.i793
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC.i793
  %310 = inttoptr i64 %307 to i64*
  %311 = load i64, i64* %310
  store i64 %311, i64* %RAX.i794, align 8
  store %struct.Memory* %loadMem_414d0e, %struct.Memory** %MEMORY
  %loadMem_414d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 9
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RSI.i809 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RAX.i808
  %322 = load i64, i64* %PC.i807
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC.i807
  %324 = inttoptr i64 %321 to i64*
  %325 = load i64, i64* %324
  store i64 %325, i64* %RSI.i809, align 8
  store %struct.Memory* %loadMem_414d12, %struct.Memory** %MEMORY
  %loadMem_414d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %332 = bitcast %union.anon* %331 to %struct.anon.2*
  %AL.i822 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %332, i32 0, i32 0
  %333 = load i64, i64* %PC.i821
  %334 = add i64 %333, 2
  store i64 %334, i64* %PC.i821
  store i8 0, i8* %AL.i822, align 1
  store %struct.Memory* %loadMem_414d15, %struct.Memory** %MEMORY
  %loadMem1_414d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %PC.i834
  %339 = add i64 %338, 171721
  %340 = load i64, i64* %PC.i834
  %341 = add i64 %340, 5
  %342 = load i64, i64* %PC.i834
  %343 = add i64 %342, 5
  store i64 %343, i64* %PC.i834
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = add i64 %345, -8
  %347 = inttoptr i64 %346 to i64*
  store i64 %341, i64* %347
  store i64 %346, i64* %344, align 8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %339, i64* %348, align 8
  store %struct.Memory* %loadMem1_414d17, %struct.Memory** %MEMORY
  %loadMem2_414d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d17 = load i64, i64* %3
  %call2_414d17 = call %struct.Memory* @sub_43ebe0.Warn(%struct.State* %0, i64 %loadPC_414d17, %struct.Memory* %loadMem2_414d17)
  store %struct.Memory* %call2_414d17, %struct.Memory** %MEMORY
  br label %block_.L_414d1c

block_.L_414d1c:                                  ; preds = %block_414d04, %block_414cfa, %entry
  %loadMem_414d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %351 to i64*
  %352 = load i64, i64* %PC.i846
  %353 = add i64 %352, 8
  store i64 %353, i64* %PC.i846
  %354 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*)
  %355 = sub i32 %354, 3
  %356 = icmp ult i32 %354, 3
  %357 = zext i1 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %357, i8* %358, align 1
  %359 = and i32 %355, 255
  %360 = call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %363, i8* %364, align 1
  %365 = xor i32 %354, 3
  %366 = xor i32 %365, %355
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %369, i8* %370, align 1
  %371 = icmp eq i32 %355, 0
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %372, i8* %373, align 1
  %374 = lshr i32 %355, 31
  %375 = trunc i32 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %375, i8* %376, align 1
  %377 = lshr i32 %354, 31
  %378 = xor i32 %374, %377
  %379 = add i32 %378, %377
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %381, i8* %382, align 1
  store %struct.Memory* %loadMem_414d1c, %struct.Memory** %MEMORY
  %loadMem_414d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %PC.i858
  %387 = add i64 %386, 35
  %388 = load i64, i64* %PC.i858
  %389 = add i64 %388, 6
  %390 = load i64, i64* %PC.i858
  %391 = add i64 %390, 6
  store i64 %391, i64* %PC.i858
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %393 = load i8, i8* %392, align 1
  %394 = icmp eq i8 %393, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %BRANCH_TAKEN, align 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %397 = select i1 %394, i64 %387, i64 %389
  store i64 %397, i64* %396, align 8
  store %struct.Memory* %loadMem_414d24, %struct.Memory** %MEMORY
  %loadBr_414d24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d24 = icmp eq i8 %loadBr_414d24, 1
  br i1 %cmpBr_414d24, label %block_.L_414d47, label %block_414d2a

block_414d2a:                                     ; preds = %block_.L_414d1c
  %loadMem_414d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 9
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RSI.i874 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i873
  %405 = add i64 %404, 10
  store i64 %405, i64* %PC.i873
  store i64 ptrtoint (%G__0x4564a4_type* @G__0x4564a4 to i64), i64* %RSI.i874, align 8
  store %struct.Memory* %loadMem_414d2a, %struct.Memory** %MEMORY
  %loadMem_414d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 11
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RDI.i887 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i888
  %416 = sub i64 %415, 8
  %417 = load i64, i64* %PC.i886
  %418 = add i64 %417, 4
  store i64 %418, i64* %PC.i886
  %419 = inttoptr i64 %416 to i64*
  %420 = load i64, i64* %419
  store i64 %420, i64* %RDI.i887, align 8
  store %struct.Memory* %loadMem_414d34, %struct.Memory** %MEMORY
  %loadMem_414d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %427 = bitcast %union.anon* %426 to %struct.anon.2*
  %AL.i901 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %427, i32 0, i32 0
  %428 = load i64, i64* %PC.i900
  %429 = add i64 %428, 2
  store i64 %429, i64* %PC.i900
  store i8 0, i8* %AL.i901, align 1
  store %struct.Memory* %loadMem_414d38, %struct.Memory** %MEMORY
  %loadMem1_414d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %PC.i913
  %434 = add i64 %433, -79818
  %435 = load i64, i64* %PC.i913
  %436 = add i64 %435, 5
  %437 = load i64, i64* %PC.i913
  %438 = add i64 %437, 5
  store i64 %438, i64* %PC.i913
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = add i64 %440, -8
  %442 = inttoptr i64 %441 to i64*
  store i64 %436, i64* %442
  store i64 %441, i64* %439, align 8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %434, i64* %443, align 8
  store %struct.Memory* %loadMem1_414d3a, %struct.Memory** %MEMORY
  %loadMem2_414d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d3a = load i64, i64* %3
  %444 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414d3a)
  store %struct.Memory* %444, %struct.Memory** %MEMORY
  %loadMem_414d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %EAX.i926 = bitcast %union.anon* %450 to i32*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 15
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RBP.i927
  %455 = sub i64 %454, 56
  %456 = load i32, i32* %EAX.i926
  %457 = zext i32 %456 to i64
  %458 = load i64, i64* %PC.i925
  %459 = add i64 %458, 3
  store i64 %459, i64* %PC.i925
  %460 = inttoptr i64 %455 to i32*
  store i32 %456, i32* %460
  store %struct.Memory* %loadMem_414d3f, %struct.Memory** %MEMORY
  %loadMem_414d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %PC.i939
  %465 = add i64 %464, 70
  %466 = load i64, i64* %PC.i939
  %467 = add i64 %466, 5
  store i64 %467, i64* %PC.i939
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %465, i64* %468, align 8
  store %struct.Memory* %loadMem_414d42, %struct.Memory** %MEMORY
  br label %block_.L_414d88

block_.L_414d47:                                  ; preds = %block_.L_414d1c
  %loadMem_414d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %PC.i951
  %473 = add i64 %472, 8
  store i64 %473, i64* %PC.i951
  %474 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*)
  %475 = sub i32 %474, 2
  %476 = icmp ult i32 %474, 2
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %477, i8* %478, align 1
  %479 = and i32 %475, 255
  %480 = call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %483, i8* %484, align 1
  %485 = xor i32 %474, 2
  %486 = xor i32 %485, %475
  %487 = lshr i32 %486, 4
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %489, i8* %490, align 1
  %491 = icmp eq i32 %475, 0
  %492 = zext i1 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %492, i8* %493, align 1
  %494 = lshr i32 %475, 31
  %495 = trunc i32 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %495, i8* %496, align 1
  %497 = lshr i32 %474, 31
  %498 = xor i32 %494, %497
  %499 = add i32 %498, %497
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %501, i8* %502, align 1
  store %struct.Memory* %loadMem_414d47, %struct.Memory** %MEMORY
  %loadMem_414d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %505 to i64*
  %506 = load i64, i64* %PC.i963
  %507 = add i64 %506, 35
  %508 = load i64, i64* %PC.i963
  %509 = add i64 %508, 6
  %510 = load i64, i64* %PC.i963
  %511 = add i64 %510, 6
  store i64 %511, i64* %PC.i963
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %513 = load i8, i8* %512, align 1
  %514 = icmp eq i8 %513, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %BRANCH_TAKEN, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %517 = select i1 %514, i64 %507, i64 %509
  store i64 %517, i64* %516, align 8
  store %struct.Memory* %loadMem_414d4f, %struct.Memory** %MEMORY
  %loadBr_414d4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d4f = icmp eq i8 %loadBr_414d4f, 1
  br i1 %cmpBr_414d4f, label %block_.L_414d72, label %block_414d55

block_414d55:                                     ; preds = %block_.L_414d47
  %loadMem_414d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 9
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RSI.i981 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %PC.i980
  %525 = add i64 %524, 10
  store i64 %525, i64* %PC.i980
  store i64 ptrtoint (%G__0x4564b6_type* @G__0x4564b6 to i64), i64* %RSI.i981, align 8
  store %struct.Memory* %loadMem_414d55, %struct.Memory** %MEMORY
  %loadMem_414d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i1091 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 11
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RDI.i1092 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 15
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RBP.i1093 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RBP.i1093
  %536 = sub i64 %535, 8
  %537 = load i64, i64* %PC.i1091
  %538 = add i64 %537, 4
  store i64 %538, i64* %PC.i1091
  %539 = inttoptr i64 %536 to i64*
  %540 = load i64, i64* %539
  store i64 %540, i64* %RDI.i1092, align 8
  store %struct.Memory* %loadMem_414d5f, %struct.Memory** %MEMORY
  %loadMem_414d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i1108 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %547 = bitcast %union.anon* %546 to %struct.anon.2*
  %AL.i1109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %547, i32 0, i32 0
  %548 = load i64, i64* %PC.i1108
  %549 = add i64 %548, 2
  store i64 %549, i64* %PC.i1108
  store i8 0, i8* %AL.i1109, align 1
  store %struct.Memory* %loadMem_414d63, %struct.Memory** %MEMORY
  %loadMem1_414d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i1130 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %PC.i1130
  %554 = add i64 %553, -79861
  %555 = load i64, i64* %PC.i1130
  %556 = add i64 %555, 5
  %557 = load i64, i64* %PC.i1130
  %558 = add i64 %557, 5
  store i64 %558, i64* %PC.i1130
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = add i64 %560, -8
  %562 = inttoptr i64 %561 to i64*
  store i64 %556, i64* %562
  store i64 %561, i64* %559, align 8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %554, i64* %563, align 8
  store %struct.Memory* %loadMem1_414d65, %struct.Memory** %MEMORY
  %loadMem2_414d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d65 = load i64, i64* %3
  %564 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414d65)
  store %struct.Memory* %564, %struct.Memory** %MEMORY
  %loadMem_414d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i1127 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %EAX.i1128 = bitcast %union.anon* %570 to i32*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 15
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RBP.i1129 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %RBP.i1129
  %575 = sub i64 %574, 60
  %576 = load i32, i32* %EAX.i1128
  %577 = zext i32 %576 to i64
  %578 = load i64, i64* %PC.i1127
  %579 = add i64 %578, 3
  store i64 %579, i64* %PC.i1127
  %580 = inttoptr i64 %575 to i32*
  store i32 %576, i32* %580
  store %struct.Memory* %loadMem_414d6a, %struct.Memory** %MEMORY
  %loadMem_414d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i1126 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %PC.i1126
  %585 = add i64 %584, 22
  %586 = load i64, i64* %PC.i1126
  %587 = add i64 %586, 5
  store i64 %587, i64* %PC.i1126
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %585, i64* %588, align 8
  store %struct.Memory* %loadMem_414d6d, %struct.Memory** %MEMORY
  br label %block_.L_414d83

block_.L_414d72:                                  ; preds = %block_.L_414d47
  %loadMem_414d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i1124 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 11
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RDI.i1125 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %PC.i1124
  %596 = add i64 %595, 10
  store i64 %596, i64* %PC.i1124
  store i64 ptrtoint (%G__0x4564c8_type* @G__0x4564c8 to i64), i64* %RDI.i1125, align 8
  store %struct.Memory* %loadMem_414d72, %struct.Memory** %MEMORY
  %loadMem_414d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i1122 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %603 = bitcast %union.anon* %602 to %struct.anon.2*
  %AL.i1123 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %603, i32 0, i32 0
  %604 = load i64, i64* %PC.i1122
  %605 = add i64 %604, 2
  store i64 %605, i64* %PC.i1122
  store i8 0, i8* %AL.i1123, align 1
  store %struct.Memory* %loadMem_414d7c, %struct.Memory** %MEMORY
  %loadMem1_414d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i1121 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %PC.i1121
  %610 = add i64 %609, 171154
  %611 = load i64, i64* %PC.i1121
  %612 = add i64 %611, 5
  %613 = load i64, i64* %PC.i1121
  %614 = add i64 %613, 5
  store i64 %614, i64* %PC.i1121
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = add i64 %616, -8
  %618 = inttoptr i64 %617 to i64*
  store i64 %612, i64* %618
  store i64 %617, i64* %615, align 8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %610, i64* %619, align 8
  store %struct.Memory* %loadMem1_414d7e, %struct.Memory** %MEMORY
  %loadMem2_414d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414d7e = load i64, i64* %3
  %call2_414d7e = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_414d7e, %struct.Memory* %loadMem2_414d7e)
  store %struct.Memory* %call2_414d7e, %struct.Memory** %MEMORY
  br label %block_.L_414d83

block_.L_414d83:                                  ; preds = %block_.L_414d72, %block_414d55
  %loadMem_414d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i1120 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %PC.i1120
  %624 = add i64 %623, 5
  %625 = load i64, i64* %PC.i1120
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC.i1120
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %624, i64* %627, align 8
  store %struct.Memory* %loadMem_414d83, %struct.Memory** %MEMORY
  br label %block_.L_414d88

block_.L_414d88:                                  ; preds = %block_.L_414d83, %block_414d2a
  %loadMem_414d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i1119 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %PC.i1119
  %632 = add i64 %631, 8
  store i64 %632, i64* %PC.i1119
  %633 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*)
  %634 = sub i32 %633, 3
  %635 = icmp ult i32 %633, 3
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %636, i8* %637, align 1
  %638 = and i32 %634, 255
  %639 = call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %642, i8* %643, align 1
  %644 = xor i32 %633, 3
  %645 = xor i32 %644, %634
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %648, i8* %649, align 1
  %650 = icmp eq i32 %634, 0
  %651 = zext i1 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %651, i8* %652, align 1
  %653 = lshr i32 %634, 31
  %654 = trunc i32 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %654, i8* %655, align 1
  %656 = lshr i32 %633, 31
  %657 = xor i32 %653, %656
  %658 = add i32 %657, %656
  %659 = icmp eq i32 %658, 2
  %660 = zext i1 %659 to i8
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %660, i8* %661, align 1
  store %struct.Memory* %loadMem_414d88, %struct.Memory** %MEMORY
  %loadMem_414d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i1118 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %PC.i1118
  %666 = add i64 %665, 35
  %667 = load i64, i64* %PC.i1118
  %668 = add i64 %667, 6
  %669 = load i64, i64* %PC.i1118
  %670 = add i64 %669, 6
  store i64 %670, i64* %PC.i1118
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %672 = load i8, i8* %671, align 1
  %673 = icmp eq i8 %672, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %BRANCH_TAKEN, align 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %676 = select i1 %673, i64 %666, i64 %668
  store i64 %676, i64* %675, align 8
  store %struct.Memory* %loadMem_414d90, %struct.Memory** %MEMORY
  %loadBr_414d90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414d90 = icmp eq i8 %loadBr_414d90, 1
  br i1 %cmpBr_414d90, label %block_.L_414db3, label %block_414d96

block_414d96:                                     ; preds = %block_.L_414d88
  %loadMem_414d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i1116 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 9
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RSI.i1117 = bitcast %union.anon* %682 to i64*
  %683 = load i64, i64* %PC.i1116
  %684 = add i64 %683, 10
  store i64 %684, i64* %PC.i1116
  store i64 ptrtoint (%G__0x4564fe_type* @G__0x4564fe to i64), i64* %RSI.i1117, align 8
  store %struct.Memory* %loadMem_414d96, %struct.Memory** %MEMORY
  %loadMem_414da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i1113 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 11
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RDI.i1114 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 15
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RBP.i1115 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RBP.i1115
  %695 = sub i64 %694, 8
  %696 = load i64, i64* %PC.i1113
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC.i1113
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698
  store i64 %699, i64* %RDI.i1114, align 8
  store %struct.Memory* %loadMem_414da0, %struct.Memory** %MEMORY
  %loadMem_414da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i1111 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %706 = bitcast %union.anon* %705 to %struct.anon.2*
  %AL.i1112 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %706, i32 0, i32 0
  %707 = load i64, i64* %PC.i1111
  %708 = add i64 %707, 2
  store i64 %708, i64* %PC.i1111
  store i8 0, i8* %AL.i1112, align 1
  store %struct.Memory* %loadMem_414da4, %struct.Memory** %MEMORY
  %loadMem1_414da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i1110 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %PC.i1110
  %713 = add i64 %712, -79926
  %714 = load i64, i64* %PC.i1110
  %715 = add i64 %714, 5
  %716 = load i64, i64* %PC.i1110
  %717 = add i64 %716, 5
  store i64 %717, i64* %PC.i1110
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = add i64 %719, -8
  %721 = inttoptr i64 %720 to i64*
  store i64 %715, i64* %721
  store i64 %720, i64* %718, align 8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %713, i64* %722, align 8
  store %struct.Memory* %loadMem1_414da6, %struct.Memory** %MEMORY
  %loadMem2_414da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414da6 = load i64, i64* %3
  %723 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414da6)
  store %struct.Memory* %723, %struct.Memory** %MEMORY
  %loadMem_414dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i1105 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %EAX.i1106 = bitcast %union.anon* %729 to i32*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 15
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RBP.i1107 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RBP.i1107
  %734 = sub i64 %733, 64
  %735 = load i32, i32* %EAX.i1106
  %736 = zext i32 %735 to i64
  %737 = load i64, i64* %PC.i1105
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i1105
  %739 = inttoptr i64 %734 to i32*
  store i32 %735, i32* %739
  store %struct.Memory* %loadMem_414dab, %struct.Memory** %MEMORY
  %loadMem_414dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i1104 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %PC.i1104
  %744 = add i64 %743, 48
  %745 = load i64, i64* %PC.i1104
  %746 = add i64 %745, 5
  store i64 %746, i64* %PC.i1104
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %744, i64* %747, align 8
  store %struct.Memory* %loadMem_414dae, %struct.Memory** %MEMORY
  br label %block_.L_414dde

block_.L_414db3:                                  ; preds = %block_.L_414d88
  %loadMem_414db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i1103 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %PC.i1103
  %752 = add i64 %751, 8
  store i64 %752, i64* %PC.i1103
  %753 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*)
  %754 = sub i32 %753, 2
  %755 = icmp ult i32 %753, 2
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %756, i8* %757, align 1
  %758 = and i32 %754, 255
  %759 = call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %762, i8* %763, align 1
  %764 = xor i32 %753, 2
  %765 = xor i32 %764, %754
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %768, i8* %769, align 1
  %770 = icmp eq i32 %754, 0
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %771, i8* %772, align 1
  %773 = lshr i32 %754, 31
  %774 = trunc i32 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %774, i8* %775, align 1
  %776 = lshr i32 %753, 31
  %777 = xor i32 %773, %776
  %778 = add i32 %777, %776
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %780, i8* %781, align 1
  store %struct.Memory* %loadMem_414db3, %struct.Memory** %MEMORY
  %loadMem_414dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i1102 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %PC.i1102
  %786 = add i64 %785, 30
  %787 = load i64, i64* %PC.i1102
  %788 = add i64 %787, 6
  %789 = load i64, i64* %PC.i1102
  %790 = add i64 %789, 6
  store i64 %790, i64* %PC.i1102
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %792 = load i8, i8* %791, align 1
  %793 = icmp eq i8 %792, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %BRANCH_TAKEN, align 1
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %796 = select i1 %793, i64 %786, i64 %788
  store i64 %796, i64* %795, align 8
  store %struct.Memory* %loadMem_414dbb, %struct.Memory** %MEMORY
  %loadBr_414dbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414dbb = icmp eq i8 %loadBr_414dbb, 1
  br i1 %cmpBr_414dbb, label %block_.L_414dd9, label %block_414dc1

block_414dc1:                                     ; preds = %block_.L_414db3
  %loadMem_414dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i1100 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 9
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RSI.i1101 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %PC.i1100
  %804 = add i64 %803, 10
  store i64 %804, i64* %PC.i1100
  store i64 ptrtoint (%G__0x456509_type* @G__0x456509 to i64), i64* %RSI.i1101, align 8
  store %struct.Memory* %loadMem_414dc1, %struct.Memory** %MEMORY
  %loadMem_414dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i1097 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 11
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RDI.i1098 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 15
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RBP.i1099 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %RBP.i1099
  %815 = sub i64 %814, 8
  %816 = load i64, i64* %PC.i1097
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC.i1097
  %818 = inttoptr i64 %815 to i64*
  %819 = load i64, i64* %818
  store i64 %819, i64* %RDI.i1098, align 8
  store %struct.Memory* %loadMem_414dcb, %struct.Memory** %MEMORY
  %loadMem_414dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i1095 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 1
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %826 = bitcast %union.anon* %825 to %struct.anon.2*
  %AL.i1096 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %826, i32 0, i32 0
  %827 = load i64, i64* %PC.i1095
  %828 = add i64 %827, 2
  store i64 %828, i64* %PC.i1095
  store i8 0, i8* %AL.i1096, align 1
  store %struct.Memory* %loadMem_414dcf, %struct.Memory** %MEMORY
  %loadMem1_414dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i1094 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %PC.i1094
  %833 = add i64 %832, -79969
  %834 = load i64, i64* %PC.i1094
  %835 = add i64 %834, 5
  %836 = load i64, i64* %PC.i1094
  %837 = add i64 %836, 5
  store i64 %837, i64* %PC.i1094
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %839 = load i64, i64* %838, align 8
  %840 = add i64 %839, -8
  %841 = inttoptr i64 %840 to i64*
  store i64 %835, i64* %841
  store i64 %840, i64* %838, align 8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %833, i64* %842, align 8
  store %struct.Memory* %loadMem1_414dd1, %struct.Memory** %MEMORY
  %loadMem2_414dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414dd1 = load i64, i64* %3
  %843 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414dd1)
  store %struct.Memory* %843, %struct.Memory** %MEMORY
  %loadMem_414dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i1088 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %EAX.i1089 = bitcast %union.anon* %849 to i32*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i1090 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i1090
  %854 = sub i64 %853, 68
  %855 = load i32, i32* %EAX.i1089
  %856 = zext i32 %855 to i64
  %857 = load i64, i64* %PC.i1088
  %858 = add i64 %857, 3
  store i64 %858, i64* %PC.i1088
  %859 = inttoptr i64 %854 to i32*
  store i32 %855, i32* %859
  store %struct.Memory* %loadMem_414dd6, %struct.Memory** %MEMORY
  br label %block_.L_414dd9

block_.L_414dd9:                                  ; preds = %block_414dc1, %block_.L_414db3
  %loadMem_414dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i1087 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %PC.i1087
  %864 = add i64 %863, 5
  %865 = load i64, i64* %PC.i1087
  %866 = add i64 %865, 5
  store i64 %866, i64* %PC.i1087
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %864, i64* %867, align 8
  store %struct.Memory* %loadMem_414dd9, %struct.Memory** %MEMORY
  br label %block_.L_414dde

block_.L_414dde:                                  ; preds = %block_.L_414dd9, %block_414d96
  %loadMem_414dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i1084 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 11
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RDI.i1085 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 15
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RBP.i1086 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %RBP.i1086
  %878 = sub i64 %877, 8
  %879 = load i64, i64* %PC.i1084
  %880 = add i64 %879, 4
  store i64 %880, i64* %PC.i1084
  %881 = inttoptr i64 %878 to i64*
  %882 = load i64, i64* %881
  store i64 %882, i64* %RDI.i1085, align 8
  store %struct.Memory* %loadMem_414dde, %struct.Memory** %MEMORY
  %loadMem_414de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i1081 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RAX.i1082 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i1083 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i1083
  %893 = sub i64 %892, 16
  %894 = load i64, i64* %PC.i1081
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC.i1081
  %896 = inttoptr i64 %893 to i64*
  %897 = load i64, i64* %896
  store i64 %897, i64* %RAX.i1082, align 8
  store %struct.Memory* %loadMem_414de2, %struct.Memory** %MEMORY
  %loadMem_414de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i1078 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RAX.i1079 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 5
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RCX.i1080 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RAX.i1079
  %908 = add i64 %907, 136
  %909 = load i64, i64* %PC.i1078
  %910 = add i64 %909, 6
  store i64 %910, i64* %PC.i1078
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = zext i32 %912 to i64
  store i64 %913, i64* %RCX.i1080, align 8
  store %struct.Memory* %loadMem_414de6, %struct.Memory** %MEMORY
  %loadMem_414dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i1075 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RAX.i1076 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 15
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RBP.i1077 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RBP.i1077
  %924 = sub i64 %923, 16
  %925 = load i64, i64* %PC.i1075
  %926 = add i64 %925, 4
  store i64 %926, i64* %PC.i1075
  %927 = inttoptr i64 %924 to i64*
  %928 = load i64, i64* %927
  store i64 %928, i64* %RAX.i1076, align 8
  store %struct.Memory* %loadMem_414dec, %struct.Memory** %MEMORY
  %loadMem_414df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i1072 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RAX.i1073 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 17
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %R8.i1074 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RAX.i1073
  %939 = load i64, i64* %PC.i1072
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC.i1072
  %941 = inttoptr i64 %938 to i64*
  %942 = load i64, i64* %941
  store i64 %942, i64* %R8.i1074, align 8
  store %struct.Memory* %loadMem_414df0, %struct.Memory** %MEMORY
  %loadMem_414df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i1069 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 1
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RAX.i1070 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 15
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RBP.i1071 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RBP.i1071
  %953 = sub i64 %952, 16
  %954 = load i64, i64* %PC.i1069
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC.i1069
  %956 = inttoptr i64 %953 to i64*
  %957 = load i64, i64* %956
  store i64 %957, i64* %RAX.i1070, align 8
  store %struct.Memory* %loadMem_414df3, %struct.Memory** %MEMORY
  %loadMem_414df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i1066 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RAX.i1067 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 7
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RDX.i1068 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RAX.i1067
  %968 = add i64 %967, 456
  %969 = load i64, i64* %PC.i1066
  %970 = add i64 %969, 6
  store i64 %970, i64* %PC.i1066
  %971 = inttoptr i64 %968 to i32*
  %972 = load i32, i32* %971
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RDX.i1068, align 8
  store %struct.Memory* %loadMem_414df7, %struct.Memory** %MEMORY
  %loadMem_414dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i1064 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 7
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RDX.i1065 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RDX.i1065
  %981 = load i64, i64* %PC.i1064
  %982 = add i64 %981, 6
  store i64 %982, i64* %PC.i1064
  %983 = and i64 512, %980
  %984 = trunc i64 %983 to i32
  store i64 %983, i64* %RDX.i1065, align 8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %985, align 1
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %986, align 1
  %987 = icmp eq i32 %984, 0
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %988, i8* %989, align 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %990, align 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %991, align 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %992, align 1
  store %struct.Memory* %loadMem_414dfd, %struct.Memory** %MEMORY
  %loadMem_414e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i1062 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 7
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %EDX.i1063 = bitcast %union.anon* %998 to i32*
  %999 = load i32, i32* %EDX.i1063
  %1000 = zext i32 %999 to i64
  %1001 = load i64, i64* %PC.i1062
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC.i1062
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1003, align 1
  %1004 = and i32 %999, 255
  %1005 = call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1008, i8* %1009, align 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1010, align 1
  %1011 = icmp eq i32 %999, 0
  %1012 = zext i1 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1012, i8* %1013, align 1
  %1014 = lshr i32 %999, 31
  %1015 = trunc i32 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1015, i8* %1016, align 1
  %1017 = lshr i32 %999, 31
  %1018 = xor i32 %1014, %1017
  %1019 = add i32 %1018, %1017
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1021, i8* %1022, align 1
  store %struct.Memory* %loadMem_414e03, %struct.Memory** %MEMORY
  %loadMem_414e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i1059 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 11
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RDI.i1060 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i1061 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RBP.i1061
  %1033 = sub i64 %1032, 80
  %1034 = load i64, i64* %RDI.i1060
  %1035 = load i64, i64* %PC.i1059
  %1036 = add i64 %1035, 4
  store i64 %1036, i64* %PC.i1059
  %1037 = inttoptr i64 %1033 to i64*
  store i64 %1034, i64* %1037
  store %struct.Memory* %loadMem_414e06, %struct.Memory** %MEMORY
  %loadMem_414e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i1056 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 5
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %ECX.i1057 = bitcast %union.anon* %1043 to i32*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i1058 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RBP.i1058
  %1048 = sub i64 %1047, 84
  %1049 = load i32, i32* %ECX.i1057
  %1050 = zext i32 %1049 to i64
  %1051 = load i64, i64* %PC.i1056
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %PC.i1056
  %1053 = inttoptr i64 %1048 to i32*
  store i32 %1049, i32* %1053
  store %struct.Memory* %loadMem_414e0a, %struct.Memory** %MEMORY
  %loadMem_414e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i1053 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 15
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RBP.i1054 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 17
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %R8.i1055 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RBP.i1054
  %1064 = sub i64 %1063, 96
  %1065 = load i64, i64* %R8.i1055
  %1066 = load i64, i64* %PC.i1053
  %1067 = add i64 %1066, 4
  store i64 %1067, i64* %PC.i1053
  %1068 = inttoptr i64 %1064 to i64*
  store i64 %1065, i64* %1068
  store %struct.Memory* %loadMem_414e0d, %struct.Memory** %MEMORY
  %loadMem_414e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i1052 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %PC.i1052
  %1073 = add i64 %1072, 23
  %1074 = load i64, i64* %PC.i1052
  %1075 = add i64 %1074, 6
  %1076 = load i64, i64* %PC.i1052
  %1077 = add i64 %1076, 6
  store i64 %1077, i64* %PC.i1052
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1079 = load i8, i8* %1078, align 1
  store i8 %1079, i8* %BRANCH_TAKEN, align 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1081 = icmp ne i8 %1079, 0
  %1082 = select i1 %1081, i64 %1073, i64 %1075
  store i64 %1082, i64* %1080, align 8
  store %struct.Memory* %loadMem_414e11, %struct.Memory** %MEMORY
  %loadBr_414e11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414e11 = icmp eq i8 %loadBr_414e11, 1
  br i1 %cmpBr_414e11, label %block_.L_414e28, label %block_414e17

block_414e17:                                     ; preds = %block_.L_414dde
  %loadMem_414e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 33
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %PC.i1049 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 1
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RAX.i1050 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 15
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RBP.i1051 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %RBP.i1051
  %1093 = sub i64 %1092, 16
  %1094 = load i64, i64* %PC.i1049
  %1095 = add i64 %1094, 4
  store i64 %1095, i64* %PC.i1049
  %1096 = inttoptr i64 %1093 to i64*
  %1097 = load i64, i64* %1096
  store i64 %1097, i64* %RAX.i1050, align 8
  store %struct.Memory* %loadMem_414e17, %struct.Memory** %MEMORY
  %loadMem_414e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i1047 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 1
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RAX.i1048 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %RAX.i1048
  %1105 = add i64 %1104, 8
  %1106 = load i64, i64* %PC.i1047
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %PC.i1047
  %1108 = inttoptr i64 %1105 to i64*
  %1109 = load i64, i64* %1108
  store i64 %1109, i64* %RAX.i1048, align 8
  store %struct.Memory* %loadMem_414e1b, %struct.Memory** %MEMORY
  %loadMem_414e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i1044 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 1
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RAX.i1045 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 15
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RBP.i1046 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %RBP.i1046
  %1120 = sub i64 %1119, 104
  %1121 = load i64, i64* %RAX.i1045
  %1122 = load i64, i64* %PC.i1044
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC.i1044
  %1124 = inttoptr i64 %1120 to i64*
  store i64 %1121, i64* %1124
  store %struct.Memory* %loadMem_414e1f, %struct.Memory** %MEMORY
  %loadMem_414e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i1043 = bitcast %union.anon* %1127 to i64*
  %1128 = load i64, i64* %PC.i1043
  %1129 = add i64 %1128, 24
  %1130 = load i64, i64* %PC.i1043
  %1131 = add i64 %1130, 5
  store i64 %1131, i64* %PC.i1043
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1129, i64* %1132, align 8
  store %struct.Memory* %loadMem_414e23, %struct.Memory** %MEMORY
  br label %block_.L_414e3b

block_.L_414e28:                                  ; preds = %block_.L_414dde
  %loadMem_414e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i1041 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 1
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RAX.i1042 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %PC.i1041
  %1140 = add i64 %1139, 10
  store i64 %1140, i64* %PC.i1041
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i1042, align 8
  store %struct.Memory* %loadMem_414e28, %struct.Memory** %MEMORY
  %loadMem_414e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 1
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RAX.i1039 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 15
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RBP.i1040 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %RBP.i1040
  %1151 = sub i64 %1150, 104
  %1152 = load i64, i64* %RAX.i1039
  %1153 = load i64, i64* %PC.i1038
  %1154 = add i64 %1153, 4
  store i64 %1154, i64* %PC.i1038
  %1155 = inttoptr i64 %1151 to i64*
  store i64 %1152, i64* %1155
  store %struct.Memory* %loadMem_414e32, %struct.Memory** %MEMORY
  %loadMem_414e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i1037 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i1037
  %1160 = add i64 %1159, 5
  %1161 = load i64, i64* %PC.i1037
  %1162 = add i64 %1161, 5
  store i64 %1162, i64* %PC.i1037
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1160, i64* %1163, align 8
  store %struct.Memory* %loadMem_414e36, %struct.Memory** %MEMORY
  br label %block_.L_414e3b

block_.L_414e3b:                                  ; preds = %block_.L_414e28, %block_414e17
  %loadMem_414e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i1034 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 1
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RAX.i1035 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 15
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RBP.i1036 = bitcast %union.anon* %1172 to i64*
  %1173 = load i64, i64* %RBP.i1036
  %1174 = sub i64 %1173, 104
  %1175 = load i64, i64* %PC.i1034
  %1176 = add i64 %1175, 4
  store i64 %1176, i64* %PC.i1034
  %1177 = inttoptr i64 %1174 to i64*
  %1178 = load i64, i64* %1177
  store i64 %1178, i64* %RAX.i1035, align 8
  store %struct.Memory* %loadMem_414e3b, %struct.Memory** %MEMORY
  %loadMem_414e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i1031 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 5
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RCX.i1032 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 15
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RBP.i1033 = bitcast %union.anon* %1187 to i64*
  %1188 = load i64, i64* %RBP.i1033
  %1189 = sub i64 %1188, 16
  %1190 = load i64, i64* %PC.i1031
  %1191 = add i64 %1190, 4
  store i64 %1191, i64* %PC.i1031
  %1192 = inttoptr i64 %1189 to i64*
  %1193 = load i64, i64* %1192
  store i64 %1193, i64* %RCX.i1032, align 8
  store %struct.Memory* %loadMem_414e3f, %struct.Memory** %MEMORY
  %loadMem_414e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i1028 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 5
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RCX.i1029 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 7
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RDX.i1030 = bitcast %union.anon* %1202 to i64*
  %1203 = load i64, i64* %RCX.i1029
  %1204 = add i64 %1203, 456
  %1205 = load i64, i64* %PC.i1028
  %1206 = add i64 %1205, 6
  store i64 %1206, i64* %PC.i1028
  %1207 = inttoptr i64 %1204 to i32*
  %1208 = load i32, i32* %1207
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RDX.i1030, align 8
  store %struct.Memory* %loadMem_414e43, %struct.Memory** %MEMORY
  %loadMem_414e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i1026 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 7
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RDX.i1027 = bitcast %union.anon* %1215 to i64*
  %1216 = load i64, i64* %RDX.i1027
  %1217 = load i64, i64* %PC.i1026
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %PC.i1026
  %1219 = and i64 2, %1216
  %1220 = trunc i64 %1219 to i32
  store i64 %1219, i64* %RDX.i1027, align 8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1221, align 1
  %1222 = and i32 %1220, 255
  %1223 = call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1226, i8* %1227, align 1
  %1228 = icmp eq i32 %1220, 0
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1229, i8* %1230, align 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1231, align 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1232, align 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1233, align 1
  store %struct.Memory* %loadMem_414e49, %struct.Memory** %MEMORY
  %loadMem_414e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i1024 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 7
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %EDX.i1025 = bitcast %union.anon* %1239 to i32*
  %1240 = load i32, i32* %EDX.i1025
  %1241 = zext i32 %1240 to i64
  %1242 = load i64, i64* %PC.i1024
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %PC.i1024
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1244, align 1
  %1245 = and i32 %1240, 255
  %1246 = call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1249, i8* %1250, align 1
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1251, align 1
  %1252 = icmp eq i32 %1240, 0
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1253, i8* %1254, align 1
  %1255 = lshr i32 %1240, 31
  %1256 = trunc i32 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1256, i8* %1257, align 1
  %1258 = lshr i32 %1240, 31
  %1259 = xor i32 %1255, %1258
  %1260 = add i32 %1259, %1258
  %1261 = icmp eq i32 %1260, 2
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1262, i8* %1263, align 1
  store %struct.Memory* %loadMem_414e4c, %struct.Memory** %MEMORY
  %loadMem_414e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i1021 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 1
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RAX.i1022 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 15
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RBP.i1023 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RBP.i1023
  %1274 = sub i64 %1273, 112
  %1275 = load i64, i64* %RAX.i1022
  %1276 = load i64, i64* %PC.i1021
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i1021
  %1278 = inttoptr i64 %1274 to i64*
  store i64 %1275, i64* %1278
  store %struct.Memory* %loadMem_414e4f, %struct.Memory** %MEMORY
  %loadMem_414e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i1020 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %PC.i1020
  %1283 = add i64 %1282, 23
  %1284 = load i64, i64* %PC.i1020
  %1285 = add i64 %1284, 6
  %1286 = load i64, i64* %PC.i1020
  %1287 = add i64 %1286, 6
  store i64 %1287, i64* %PC.i1020
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1289 = load i8, i8* %1288, align 1
  store i8 %1289, i8* %BRANCH_TAKEN, align 1
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1291 = icmp ne i8 %1289, 0
  %1292 = select i1 %1291, i64 %1283, i64 %1285
  store i64 %1292, i64* %1290, align 8
  store %struct.Memory* %loadMem_414e53, %struct.Memory** %MEMORY
  %loadBr_414e53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414e53 = icmp eq i8 %loadBr_414e53, 1
  br i1 %cmpBr_414e53, label %block_.L_414e6a, label %block_414e59

block_414e59:                                     ; preds = %block_.L_414e3b
  %loadMem_414e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 1
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RAX.i1018 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 15
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RBP.i1019 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RBP.i1019
  %1303 = sub i64 %1302, 16
  %1304 = load i64, i64* %PC.i1017
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC.i1017
  %1306 = inttoptr i64 %1303 to i64*
  %1307 = load i64, i64* %1306
  store i64 %1307, i64* %RAX.i1018, align 8
  store %struct.Memory* %loadMem_414e59, %struct.Memory** %MEMORY
  %loadMem_414e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i1015 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RAX.i1016 = bitcast %union.anon* %1313 to i64*
  %1314 = load i64, i64* %RAX.i1016
  %1315 = add i64 %1314, 16
  %1316 = load i64, i64* %PC.i1015
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %PC.i1015
  %1318 = inttoptr i64 %1315 to i64*
  %1319 = load i64, i64* %1318
  store i64 %1319, i64* %RAX.i1016, align 8
  store %struct.Memory* %loadMem_414e5d, %struct.Memory** %MEMORY
  %loadMem_414e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i1012 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 1
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RAX.i1013 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 15
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RBP.i1014 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %RBP.i1014
  %1330 = sub i64 %1329, 120
  %1331 = load i64, i64* %RAX.i1013
  %1332 = load i64, i64* %PC.i1012
  %1333 = add i64 %1332, 4
  store i64 %1333, i64* %PC.i1012
  %1334 = inttoptr i64 %1330 to i64*
  store i64 %1331, i64* %1334
  store %struct.Memory* %loadMem_414e61, %struct.Memory** %MEMORY
  %loadMem_414e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %PC.i1011
  %1339 = add i64 %1338, 24
  %1340 = load i64, i64* %PC.i1011
  %1341 = add i64 %1340, 5
  store i64 %1341, i64* %PC.i1011
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1339, i64* %1342, align 8
  store %struct.Memory* %loadMem_414e65, %struct.Memory** %MEMORY
  br label %block_.L_414e7d

block_.L_414e6a:                                  ; preds = %block_.L_414e3b
  %loadMem_414e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i1009 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RAX.i1010 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %PC.i1009
  %1350 = add i64 %1349, 10
  store i64 %1350, i64* %PC.i1009
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i1010, align 8
  store %struct.Memory* %loadMem_414e6a, %struct.Memory** %MEMORY
  %loadMem_414e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 1
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RAX.i1007 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 15
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RBP.i1008 = bitcast %union.anon* %1359 to i64*
  %1360 = load i64, i64* %RBP.i1008
  %1361 = sub i64 %1360, 120
  %1362 = load i64, i64* %RAX.i1007
  %1363 = load i64, i64* %PC.i1006
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %PC.i1006
  %1365 = inttoptr i64 %1361 to i64*
  store i64 %1362, i64* %1365
  store %struct.Memory* %loadMem_414e74, %struct.Memory** %MEMORY
  %loadMem_414e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %PC.i1005
  %1370 = add i64 %1369, 5
  %1371 = load i64, i64* %PC.i1005
  %1372 = add i64 %1371, 5
  store i64 %1372, i64* %PC.i1005
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1370, i64* %1373, align 8
  store %struct.Memory* %loadMem_414e78, %struct.Memory** %MEMORY
  br label %block_.L_414e7d

block_.L_414e7d:                                  ; preds = %block_.L_414e6a, %block_414e59
  %loadMem_414e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 1
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RAX.i1003 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 15
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RBP.i1004
  %1384 = sub i64 %1383, 120
  %1385 = load i64, i64* %PC.i1002
  %1386 = add i64 %1385, 4
  store i64 %1386, i64* %PC.i1002
  %1387 = inttoptr i64 %1384 to i64*
  %1388 = load i64, i64* %1387
  store i64 %1388, i64* %RAX.i1003, align 8
  store %struct.Memory* %loadMem_414e7d, %struct.Memory** %MEMORY
  %loadMem_414e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 9
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RSI.i1001 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %PC.i1000
  %1396 = add i64 %1395, 10
  store i64 %1396, i64* %PC.i1000
  store i64 ptrtoint (%G__0x456517_type* @G__0x456517 to i64), i64* %RSI.i1001, align 8
  store %struct.Memory* %loadMem_414e81, %struct.Memory** %MEMORY
  %loadMem_414e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 7
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RDX.i999 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %PC.i998
  %1404 = add i64 %1403, 10
  store i64 %1404, i64* %PC.i998
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX.i999, align 8
  store %struct.Memory* %loadMem_414e8b, %struct.Memory** %MEMORY
  %loadMem_414e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 11
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RDI.i996 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 15
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RBP.i997 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RBP.i997
  %1415 = sub i64 %1414, 80
  %1416 = load i64, i64* %PC.i995
  %1417 = add i64 %1416, 4
  store i64 %1417, i64* %PC.i995
  %1418 = inttoptr i64 %1415 to i64*
  %1419 = load i64, i64* %1418
  store i64 %1419, i64* %RDI.i996, align 8
  store %struct.Memory* %loadMem_414e95, %struct.Memory** %MEMORY
  %loadMem_414e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 5
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RCX.i993 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 15
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RBP.i994 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %RBP.i994
  %1430 = sub i64 %1429, 84
  %1431 = load i64, i64* %PC.i992
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %PC.i992
  %1433 = inttoptr i64 %1430 to i32*
  %1434 = load i32, i32* %1433
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RCX.i993, align 8
  store %struct.Memory* %loadMem_414e99, %struct.Memory** %MEMORY
  %loadMem_414e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i991 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 17
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %R8.i = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RBP.i991
  %1446 = sub i64 %1445, 96
  %1447 = load i64, i64* %PC.i990
  %1448 = add i64 %1447, 4
  store i64 %1448, i64* %PC.i990
  %1449 = inttoptr i64 %1446 to i64*
  %1450 = load i64, i64* %1449
  store i64 %1450, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_414e9c, %struct.Memory** %MEMORY
  %loadMem_414ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 15
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RBP.i989 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 19
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1459 to i64*
  %1460 = load i64, i64* %RBP.i989
  %1461 = sub i64 %1460, 112
  %1462 = load i64, i64* %PC.i988
  %1463 = add i64 %1462, 4
  store i64 %1463, i64* %PC.i988
  %1464 = inttoptr i64 %1461 to i64*
  %1465 = load i64, i64* %1464
  store i64 %1465, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_414ea0, %struct.Memory** %MEMORY
  %loadMem_414ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RAX.i986 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 13
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RSP.i987 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %RSP.i987
  %1476 = load i64, i64* %RAX.i986
  %1477 = load i64, i64* %PC.i985
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i985
  %1479 = inttoptr i64 %1475 to i64*
  store i64 %1476, i64* %1479
  store %struct.Memory* %loadMem_414ea4, %struct.Memory** %MEMORY
  %loadMem_414ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 1
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %1486 = bitcast %union.anon* %1485 to %struct.anon.2*
  %AL.i984 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1486, i32 0, i32 0
  %1487 = load i64, i64* %PC.i983
  %1488 = add i64 %1487, 2
  store i64 %1488, i64* %PC.i983
  store i8 0, i8* %AL.i984, align 1
  store %struct.Memory* %loadMem_414ea8, %struct.Memory** %MEMORY
  %loadMem1_414eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %PC.i982
  %1493 = add i64 %1492, -80186
  %1494 = load i64, i64* %PC.i982
  %1495 = add i64 %1494, 5
  %1496 = load i64, i64* %PC.i982
  %1497 = add i64 %1496, 5
  store i64 %1497, i64* %PC.i982
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1499 = load i64, i64* %1498, align 8
  %1500 = add i64 %1499, -8
  %1501 = inttoptr i64 %1500 to i64*
  store i64 %1495, i64* %1501
  store i64 %1500, i64* %1498, align 8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1493, i64* %1502, align 8
  store %struct.Memory* %loadMem1_414eaa, %struct.Memory** %MEMORY
  %loadMem2_414eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414eaa = load i64, i64* %3
  %1503 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414eaa)
  store %struct.Memory* %1503, %struct.Memory** %MEMORY
  %loadMem_414eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 33
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 15
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %RBP.i979 = bitcast %union.anon* %1509 to i64*
  %1510 = load i64, i64* %RBP.i979
  %1511 = sub i64 %1510, 20
  %1512 = load i64, i64* %PC.i978
  %1513 = add i64 %1512, 4
  store i64 %1513, i64* %PC.i978
  %1514 = inttoptr i64 %1511 to i32*
  %1515 = load i32, i32* %1514
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1516, align 1
  %1517 = and i32 %1515, 255
  %1518 = call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1521, i8* %1522, align 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1523, align 1
  %1524 = icmp eq i32 %1515, 0
  %1525 = zext i1 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1525, i8* %1526, align 1
  %1527 = lshr i32 %1515, 31
  %1528 = trunc i32 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1528, i8* %1529, align 1
  %1530 = lshr i32 %1515, 31
  %1531 = xor i32 %1527, %1530
  %1532 = add i32 %1531, %1530
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1534, i8* %1535, align 1
  store %struct.Memory* %loadMem_414eaf, %struct.Memory** %MEMORY
  %loadMem_414eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 1
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %EAX.i976 = bitcast %union.anon* %1541 to i32*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 15
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RBP.i977 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %RBP.i977
  %1546 = sub i64 %1545, 124
  %1547 = load i32, i32* %EAX.i976
  %1548 = zext i32 %1547 to i64
  %1549 = load i64, i64* %PC.i975
  %1550 = add i64 %1549, 3
  store i64 %1550, i64* %PC.i975
  %1551 = inttoptr i64 %1546 to i32*
  store i32 %1547, i32* %1551
  store %struct.Memory* %loadMem_414eb3, %struct.Memory** %MEMORY
  %loadMem_414eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %PC.i974
  %1556 = add i64 %1555, 234
  %1557 = load i64, i64* %PC.i974
  %1558 = add i64 %1557, 6
  %1559 = load i64, i64* %PC.i974
  %1560 = add i64 %1559, 6
  store i64 %1560, i64* %PC.i974
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1562 = load i8, i8* %1561, align 1
  store i8 %1562, i8* %BRANCH_TAKEN, align 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1564 = icmp ne i8 %1562, 0
  %1565 = select i1 %1564, i64 %1556, i64 %1558
  store i64 %1565, i64* %1563, align 8
  store %struct.Memory* %loadMem_414eb6, %struct.Memory** %MEMORY
  %loadBr_414eb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_414eb6 = icmp eq i8 %loadBr_414eb6, 1
  br i1 %cmpBr_414eb6, label %block_.L_414fa0, label %block_414ebc

block_414ebc:                                     ; preds = %block_.L_414e7d
  %loadMem_414ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 9
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RSI.i973 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %PC.i972
  %1573 = add i64 %1572, 10
  store i64 %1573, i64* %PC.i972
  store i64 ptrtoint (%G__0x45653f_type* @G__0x45653f to i64), i64* %RSI.i973, align 8
  store %struct.Memory* %loadMem_414ebc, %struct.Memory** %MEMORY
  %loadMem_414ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 7
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RDX.i971 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %PC.i970
  %1581 = add i64 %1580, 10
  store i64 %1581, i64* %PC.i970
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX.i971, align 8
  store %struct.Memory* %loadMem_414ec6, %struct.Memory** %MEMORY
  %loadMem_414ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 11
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RDI.i968 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 15
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RBP.i969 = bitcast %union.anon* %1590 to i64*
  %1591 = load i64, i64* %RBP.i969
  %1592 = sub i64 %1591, 8
  %1593 = load i64, i64* %PC.i967
  %1594 = add i64 %1593, 4
  store i64 %1594, i64* %PC.i967
  %1595 = inttoptr i64 %1592 to i64*
  %1596 = load i64, i64* %1595
  store i64 %1596, i64* %RDI.i968, align 8
  store %struct.Memory* %loadMem_414ed0, %struct.Memory** %MEMORY
  %loadMem_414ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i965 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 1
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %1603 = bitcast %union.anon* %1602 to %struct.anon.2*
  %AL.i966 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1603, i32 0, i32 0
  %1604 = load i64, i64* %PC.i965
  %1605 = add i64 %1604, 2
  store i64 %1605, i64* %PC.i965
  store i8 0, i8* %AL.i966, align 1
  store %struct.Memory* %loadMem_414ed4, %struct.Memory** %MEMORY
  %loadMem1_414ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %PC.i964
  %1610 = add i64 %1609, -80230
  %1611 = load i64, i64* %PC.i964
  %1612 = add i64 %1611, 5
  %1613 = load i64, i64* %PC.i964
  %1614 = add i64 %1613, 5
  store i64 %1614, i64* %PC.i964
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1616 = load i64, i64* %1615, align 8
  %1617 = add i64 %1616, -8
  %1618 = inttoptr i64 %1617 to i64*
  store i64 %1612, i64* %1618
  store i64 %1617, i64* %1615, align 8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1610, i64* %1619, align 8
  store %struct.Memory* %loadMem1_414ed6, %struct.Memory** %MEMORY
  %loadMem2_414ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414ed6 = load i64, i64* %3
  %1620 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414ed6)
  store %struct.Memory* %1620, %struct.Memory** %MEMORY
  %loadMem_414edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 33
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 9
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RSI.i962 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %PC.i961
  %1628 = add i64 %1627, 10
  store i64 %1628, i64* %PC.i961
  store i64 ptrtoint (%G__0x456583_type* @G__0x456583 to i64), i64* %RSI.i962, align 8
  store %struct.Memory* %loadMem_414edb, %struct.Memory** %MEMORY
  %loadMem_414ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 11
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RDI.i959 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 15
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RBP.i960 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %RBP.i960
  %1639 = sub i64 %1638, 8
  %1640 = load i64, i64* %PC.i958
  %1641 = add i64 %1640, 4
  store i64 %1641, i64* %PC.i958
  %1642 = inttoptr i64 %1639 to i64*
  %1643 = load i64, i64* %1642
  store i64 %1643, i64* %RDI.i959, align 8
  store %struct.Memory* %loadMem_414ee5, %struct.Memory** %MEMORY
  %loadMem_414ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 33
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 1
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %EAX.i956 = bitcast %union.anon* %1649 to i32*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 15
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %1652 to i64*
  %1653 = load i64, i64* %RBP.i957
  %1654 = sub i64 %1653, 128
  %1655 = load i32, i32* %EAX.i956
  %1656 = zext i32 %1655 to i64
  %1657 = load i64, i64* %PC.i955
  %1658 = add i64 %1657, 3
  store i64 %1658, i64* %PC.i955
  %1659 = inttoptr i64 %1654 to i32*
  store i32 %1655, i32* %1659
  store %struct.Memory* %loadMem_414ee9, %struct.Memory** %MEMORY
  %loadMem_414eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %1666 = bitcast %union.anon* %1665 to %struct.anon.2*
  %AL.i954 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1666, i32 0, i32 0
  %1667 = load i64, i64* %PC.i953
  %1668 = add i64 %1667, 2
  store i64 %1668, i64* %PC.i953
  store i8 0, i8* %AL.i954, align 1
  store %struct.Memory* %loadMem_414eec, %struct.Memory** %MEMORY
  %loadMem1_414eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 33
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %PC.i952
  %1673 = add i64 %1672, -80254
  %1674 = load i64, i64* %PC.i952
  %1675 = add i64 %1674, 5
  %1676 = load i64, i64* %PC.i952
  %1677 = add i64 %1676, 5
  store i64 %1677, i64* %PC.i952
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1679 = load i64, i64* %1678, align 8
  %1680 = add i64 %1679, -8
  %1681 = inttoptr i64 %1680 to i64*
  store i64 %1675, i64* %1681
  store i64 %1680, i64* %1678, align 8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1673, i64* %1682, align 8
  store %struct.Memory* %loadMem1_414eee, %struct.Memory** %MEMORY
  %loadMem2_414eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414eee = load i64, i64* %3
  %1683 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414eee)
  store %struct.Memory* %1683, %struct.Memory** %MEMORY
  %loadMem_414ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 33
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 9
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %RSI.i950 = bitcast %union.anon* %1689 to i64*
  %1690 = load i64, i64* %PC.i949
  %1691 = add i64 %1690, 10
  store i64 %1691, i64* %PC.i949
  store i64 ptrtoint (%G__0x4565ad_type* @G__0x4565ad to i64), i64* %RSI.i950, align 8
  store %struct.Memory* %loadMem_414ef3, %struct.Memory** %MEMORY
  %loadMem_414efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 11
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RDI.i947 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 15
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %RBP.i948
  %1702 = sub i64 %1701, 8
  %1703 = load i64, i64* %PC.i946
  %1704 = add i64 %1703, 4
  store i64 %1704, i64* %PC.i946
  %1705 = inttoptr i64 %1702 to i64*
  %1706 = load i64, i64* %1705
  store i64 %1706, i64* %RDI.i947, align 8
  store %struct.Memory* %loadMem_414efd, %struct.Memory** %MEMORY
  %loadMem_414f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 1
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %EAX.i944 = bitcast %union.anon* %1712 to i32*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 15
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %RBP.i945
  %1717 = sub i64 %1716, 132
  %1718 = load i32, i32* %EAX.i944
  %1719 = zext i32 %1718 to i64
  %1720 = load i64, i64* %PC.i943
  %1721 = add i64 %1720, 6
  store i64 %1721, i64* %PC.i943
  %1722 = inttoptr i64 %1717 to i32*
  store i32 %1718, i32* %1722
  store %struct.Memory* %loadMem_414f01, %struct.Memory** %MEMORY
  %loadMem_414f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 1
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %1729 = bitcast %union.anon* %1728 to %struct.anon.2*
  %AL.i942 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1729, i32 0, i32 0
  %1730 = load i64, i64* %PC.i941
  %1731 = add i64 %1730, 2
  store i64 %1731, i64* %PC.i941
  store i8 0, i8* %AL.i942, align 1
  store %struct.Memory* %loadMem_414f07, %struct.Memory** %MEMORY
  %loadMem1_414f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %PC.i940
  %1736 = add i64 %1735, -80281
  %1737 = load i64, i64* %PC.i940
  %1738 = add i64 %1737, 5
  %1739 = load i64, i64* %PC.i940
  %1740 = add i64 %1739, 5
  store i64 %1740, i64* %PC.i940
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1742 = load i64, i64* %1741, align 8
  %1743 = add i64 %1742, -8
  %1744 = inttoptr i64 %1743 to i64*
  store i64 %1738, i64* %1744
  store i64 %1743, i64* %1741, align 8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1736, i64* %1745, align 8
  store %struct.Memory* %loadMem1_414f09, %struct.Memory** %MEMORY
  %loadMem2_414f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414f09 = load i64, i64* %3
  %1746 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414f09)
  store %struct.Memory* %1746, %struct.Memory** %MEMORY
  %loadMem_414f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 9
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RSI.i938 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %PC.i937
  %1754 = add i64 %1753, 10
  store i64 %1754, i64* %PC.i937
  store i64 ptrtoint (%G__0x4565fe_type* @G__0x4565fe to i64), i64* %RSI.i938, align 8
  store %struct.Memory* %loadMem_414f0e, %struct.Memory** %MEMORY
  %loadMem_414f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 11
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RDI.i935 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 15
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %RBP.i936
  %1765 = sub i64 %1764, 8
  %1766 = load i64, i64* %PC.i934
  %1767 = add i64 %1766, 4
  store i64 %1767, i64* %PC.i934
  %1768 = inttoptr i64 %1765 to i64*
  %1769 = load i64, i64* %1768
  store i64 %1769, i64* %RDI.i935, align 8
  store %struct.Memory* %loadMem_414f18, %struct.Memory** %MEMORY
  %loadMem_414f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %EAX.i932 = bitcast %union.anon* %1775 to i32*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i933
  %1780 = sub i64 %1779, 136
  %1781 = load i32, i32* %EAX.i932
  %1782 = zext i32 %1781 to i64
  %1783 = load i64, i64* %PC.i931
  %1784 = add i64 %1783, 6
  store i64 %1784, i64* %PC.i931
  %1785 = inttoptr i64 %1780 to i32*
  store i32 %1781, i32* %1785
  store %struct.Memory* %loadMem_414f1c, %struct.Memory** %MEMORY
  %loadMem_414f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 1
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %1792 = bitcast %union.anon* %1791 to %struct.anon.2*
  %AL.i930 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1792, i32 0, i32 0
  %1793 = load i64, i64* %PC.i929
  %1794 = add i64 %1793, 2
  store i64 %1794, i64* %PC.i929
  store i8 0, i8* %AL.i930, align 1
  store %struct.Memory* %loadMem_414f22, %struct.Memory** %MEMORY
  %loadMem1_414f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %PC.i928
  %1799 = add i64 %1798, -80308
  %1800 = load i64, i64* %PC.i928
  %1801 = add i64 %1800, 5
  %1802 = load i64, i64* %PC.i928
  %1803 = add i64 %1802, 5
  store i64 %1803, i64* %PC.i928
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1805 = load i64, i64* %1804, align 8
  %1806 = add i64 %1805, -8
  %1807 = inttoptr i64 %1806 to i64*
  store i64 %1801, i64* %1807
  store i64 %1806, i64* %1804, align 8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1799, i64* %1808, align 8
  store %struct.Memory* %loadMem1_414f24, %struct.Memory** %MEMORY
  %loadMem2_414f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414f24 = load i64, i64* %3
  %1809 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414f24)
  store %struct.Memory* %1809, %struct.Memory** %MEMORY
  %loadMem_414f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 33
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 9
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RSI.i924 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %PC.i923
  %1817 = add i64 %1816, 10
  store i64 %1817, i64* %PC.i923
  store i64 ptrtoint (%G__0x456657_type* @G__0x456657 to i64), i64* %RSI.i924, align 8
  store %struct.Memory* %loadMem_414f29, %struct.Memory** %MEMORY
  %loadMem_414f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 33
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 11
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RDI.i921 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 15
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RBP.i922 = bitcast %union.anon* %1826 to i64*
  %1827 = load i64, i64* %RBP.i922
  %1828 = sub i64 %1827, 8
  %1829 = load i64, i64* %PC.i920
  %1830 = add i64 %1829, 4
  store i64 %1830, i64* %PC.i920
  %1831 = inttoptr i64 %1828 to i64*
  %1832 = load i64, i64* %1831
  store i64 %1832, i64* %RDI.i921, align 8
  store %struct.Memory* %loadMem_414f33, %struct.Memory** %MEMORY
  %loadMem_414f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 1
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %EAX.i918 = bitcast %union.anon* %1838 to i32*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 15
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RBP.i919 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %RBP.i919
  %1843 = sub i64 %1842, 140
  %1844 = load i32, i32* %EAX.i918
  %1845 = zext i32 %1844 to i64
  %1846 = load i64, i64* %PC.i917
  %1847 = add i64 %1846, 6
  store i64 %1847, i64* %PC.i917
  %1848 = inttoptr i64 %1843 to i32*
  store i32 %1844, i32* %1848
  store %struct.Memory* %loadMem_414f37, %struct.Memory** %MEMORY
  %loadMem_414f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 1
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %1855 = bitcast %union.anon* %1854 to %struct.anon.2*
  %AL.i916 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1855, i32 0, i32 0
  %1856 = load i64, i64* %PC.i915
  %1857 = add i64 %1856, 2
  store i64 %1857, i64* %PC.i915
  store i8 0, i8* %AL.i916, align 1
  store %struct.Memory* %loadMem_414f3d, %struct.Memory** %MEMORY
  %loadMem1_414f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 33
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %PC.i914
  %1862 = add i64 %1861, -80335
  %1863 = load i64, i64* %PC.i914
  %1864 = add i64 %1863, 5
  %1865 = load i64, i64* %PC.i914
  %1866 = add i64 %1865, 5
  store i64 %1866, i64* %PC.i914
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1868 = load i64, i64* %1867, align 8
  %1869 = add i64 %1868, -8
  %1870 = inttoptr i64 %1869 to i64*
  store i64 %1864, i64* %1870
  store i64 %1869, i64* %1867, align 8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1862, i64* %1871, align 8
  store %struct.Memory* %loadMem1_414f3f, %struct.Memory** %MEMORY
  %loadMem2_414f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414f3f = load i64, i64* %3
  %1872 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414f3f)
  store %struct.Memory* %1872, %struct.Memory** %MEMORY
  %loadMem_414f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 33
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 9
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RSI.i912 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %PC.i911
  %1880 = add i64 %1879, 10
  store i64 %1880, i64* %PC.i911
  store i64 ptrtoint (%G__0x456697_type* @G__0x456697 to i64), i64* %RSI.i912, align 8
  store %struct.Memory* %loadMem_414f44, %struct.Memory** %MEMORY
  %loadMem_414f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 33
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 11
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RDI.i909 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 15
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RBP.i910 = bitcast %union.anon* %1889 to i64*
  %1890 = load i64, i64* %RBP.i910
  %1891 = sub i64 %1890, 8
  %1892 = load i64, i64* %PC.i908
  %1893 = add i64 %1892, 4
  store i64 %1893, i64* %PC.i908
  %1894 = inttoptr i64 %1891 to i64*
  %1895 = load i64, i64* %1894
  store i64 %1895, i64* %RDI.i909, align 8
  store %struct.Memory* %loadMem_414f4e, %struct.Memory** %MEMORY
  %loadMem_414f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 1
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %EAX.i906 = bitcast %union.anon* %1901 to i32*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 15
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RBP.i907 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RBP.i907
  %1906 = sub i64 %1905, 144
  %1907 = load i32, i32* %EAX.i906
  %1908 = zext i32 %1907 to i64
  %1909 = load i64, i64* %PC.i905
  %1910 = add i64 %1909, 6
  store i64 %1910, i64* %PC.i905
  %1911 = inttoptr i64 %1906 to i32*
  store i32 %1907, i32* %1911
  store %struct.Memory* %loadMem_414f52, %struct.Memory** %MEMORY
  %loadMem_414f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 1
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %1918 = bitcast %union.anon* %1917 to %struct.anon.2*
  %AL.i904 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1918, i32 0, i32 0
  %1919 = load i64, i64* %PC.i903
  %1920 = add i64 %1919, 2
  store i64 %1920, i64* %PC.i903
  store i8 0, i8* %AL.i904, align 1
  store %struct.Memory* %loadMem_414f58, %struct.Memory** %MEMORY
  %loadMem1_414f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %PC.i902
  %1925 = add i64 %1924, -80362
  %1926 = load i64, i64* %PC.i902
  %1927 = add i64 %1926, 5
  %1928 = load i64, i64* %PC.i902
  %1929 = add i64 %1928, 5
  store i64 %1929, i64* %PC.i902
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1931 = load i64, i64* %1930, align 8
  %1932 = add i64 %1931, -8
  %1933 = inttoptr i64 %1932 to i64*
  store i64 %1927, i64* %1933
  store i64 %1932, i64* %1930, align 8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1925, i64* %1934, align 8
  store %struct.Memory* %loadMem1_414f5a, %struct.Memory** %MEMORY
  %loadMem2_414f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414f5a = load i64, i64* %3
  %1935 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414f5a)
  store %struct.Memory* %1935, %struct.Memory** %MEMORY
  %loadMem_414f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 33
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %1938 to i64*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 9
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RSI.i899 = bitcast %union.anon* %1941 to i64*
  %1942 = load i64, i64* %PC.i898
  %1943 = add i64 %1942, 10
  store i64 %1943, i64* %PC.i898
  store i64 ptrtoint (%G__0x4566e3_type* @G__0x4566e3 to i64), i64* %RSI.i899, align 8
  store %struct.Memory* %loadMem_414f5f, %struct.Memory** %MEMORY
  %loadMem_414f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 11
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RDI.i896 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 15
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RBP.i897 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RBP.i897
  %1954 = sub i64 %1953, 8
  %1955 = load i64, i64* %PC.i895
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %PC.i895
  %1957 = inttoptr i64 %1954 to i64*
  %1958 = load i64, i64* %1957
  store i64 %1958, i64* %RDI.i896, align 8
  store %struct.Memory* %loadMem_414f69, %struct.Memory** %MEMORY
  %loadMem_414f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %EAX.i893 = bitcast %union.anon* %1964 to i32*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i894 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RBP.i894
  %1969 = sub i64 %1968, 148
  %1970 = load i32, i32* %EAX.i893
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, i64* %PC.i892
  %1973 = add i64 %1972, 6
  store i64 %1973, i64* %PC.i892
  %1974 = inttoptr i64 %1969 to i32*
  store i32 %1970, i32* %1974
  store %struct.Memory* %loadMem_414f6d, %struct.Memory** %MEMORY
  %loadMem_414f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 1
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %1981 = bitcast %union.anon* %1980 to %struct.anon.2*
  %AL.i891 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1981, i32 0, i32 0
  %1982 = load i64, i64* %PC.i890
  %1983 = add i64 %1982, 2
  store i64 %1983, i64* %PC.i890
  store i8 0, i8* %AL.i891, align 1
  store %struct.Memory* %loadMem_414f73, %struct.Memory** %MEMORY
  %loadMem1_414f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 33
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %1986 to i64*
  %1987 = load i64, i64* %PC.i889
  %1988 = add i64 %1987, -80389
  %1989 = load i64, i64* %PC.i889
  %1990 = add i64 %1989, 5
  %1991 = load i64, i64* %PC.i889
  %1992 = add i64 %1991, 5
  store i64 %1992, i64* %PC.i889
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1994 = load i64, i64* %1993, align 8
  %1995 = add i64 %1994, -8
  %1996 = inttoptr i64 %1995 to i64*
  store i64 %1990, i64* %1996
  store i64 %1995, i64* %1993, align 8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1988, i64* %1997, align 8
  store %struct.Memory* %loadMem1_414f75, %struct.Memory** %MEMORY
  %loadMem2_414f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414f75 = load i64, i64* %3
  %1998 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414f75)
  store %struct.Memory* %1998, %struct.Memory** %MEMORY
  %loadMem_414f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 9
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RSI.i885 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %PC.i884
  %2006 = add i64 %2005, 10
  store i64 %2006, i64* %PC.i884
  store i64 ptrtoint (%G__0x45672d_type* @G__0x45672d to i64), i64* %RSI.i885, align 8
  store %struct.Memory* %loadMem_414f7a, %struct.Memory** %MEMORY
  %loadMem_414f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 11
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RDI.i882 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i883
  %2017 = sub i64 %2016, 8
  %2018 = load i64, i64* %PC.i881
  %2019 = add i64 %2018, 4
  store i64 %2019, i64* %PC.i881
  %2020 = inttoptr i64 %2017 to i64*
  %2021 = load i64, i64* %2020
  store i64 %2021, i64* %RDI.i882, align 8
  store %struct.Memory* %loadMem_414f84, %struct.Memory** %MEMORY
  %loadMem_414f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %EAX.i879 = bitcast %union.anon* %2027 to i32*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 15
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RBP.i880 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RBP.i880
  %2032 = sub i64 %2031, 152
  %2033 = load i32, i32* %EAX.i879
  %2034 = zext i32 %2033 to i64
  %2035 = load i64, i64* %PC.i878
  %2036 = add i64 %2035, 6
  store i64 %2036, i64* %PC.i878
  %2037 = inttoptr i64 %2032 to i32*
  store i32 %2033, i32* %2037
  store %struct.Memory* %loadMem_414f88, %struct.Memory** %MEMORY
  %loadMem_414f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 1
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %2044 = bitcast %union.anon* %2043 to %struct.anon.2*
  %AL.i877 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2044, i32 0, i32 0
  %2045 = load i64, i64* %PC.i876
  %2046 = add i64 %2045, 2
  store i64 %2046, i64* %PC.i876
  store i8 0, i8* %AL.i877, align 1
  store %struct.Memory* %loadMem_414f8e, %struct.Memory** %MEMORY
  %loadMem1_414f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %PC.i875
  %2051 = add i64 %2050, -80416
  %2052 = load i64, i64* %PC.i875
  %2053 = add i64 %2052, 5
  %2054 = load i64, i64* %PC.i875
  %2055 = add i64 %2054, 5
  store i64 %2055, i64* %PC.i875
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2057 = load i64, i64* %2056, align 8
  %2058 = add i64 %2057, -8
  %2059 = inttoptr i64 %2058 to i64*
  store i64 %2053, i64* %2059
  store i64 %2058, i64* %2056, align 8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2051, i64* %2060, align 8
  store %struct.Memory* %loadMem1_414f90, %struct.Memory** %MEMORY
  %loadMem2_414f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414f90 = load i64, i64* %3
  %2061 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414f90)
  store %struct.Memory* %2061, %struct.Memory** %MEMORY
  %loadMem_414f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 1
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %EAX.i871 = bitcast %union.anon* %2067 to i32*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 15
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %2070 to i64*
  %2071 = load i64, i64* %RBP.i872
  %2072 = sub i64 %2071, 156
  %2073 = load i32, i32* %EAX.i871
  %2074 = zext i32 %2073 to i64
  %2075 = load i64, i64* %PC.i870
  %2076 = add i64 %2075, 6
  store i64 %2076, i64* %PC.i870
  %2077 = inttoptr i64 %2072 to i32*
  store i32 %2073, i32* %2077
  store %struct.Memory* %loadMem_414f95, %struct.Memory** %MEMORY
  %loadMem_414f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %2080 to i64*
  %2081 = load i64, i64* %PC.i869
  %2082 = add i64 %2081, 204
  %2083 = load i64, i64* %PC.i869
  %2084 = add i64 %2083, 5
  store i64 %2084, i64* %PC.i869
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2082, i64* %2085, align 8
  store %struct.Memory* %loadMem_414f9b, %struct.Memory** %MEMORY
  br label %block_.L_415067

block_.L_414fa0:                                  ; preds = %block_.L_414e7d
  %loadMem_414fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 9
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RSI.i868 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %PC.i867
  %2093 = add i64 %2092, 10
  store i64 %2093, i64* %PC.i867
  store i64 ptrtoint (%G__0x45653f_type* @G__0x45653f to i64), i64* %RSI.i868, align 8
  store %struct.Memory* %loadMem_414fa0, %struct.Memory** %MEMORY
  %loadMem_414faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 7
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RDX.i866 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %PC.i865
  %2101 = add i64 %2100, 10
  store i64 %2101, i64* %PC.i865
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX.i866, align 8
  store %struct.Memory* %loadMem_414faa, %struct.Memory** %MEMORY
  %loadMem_414fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 11
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RDI.i863 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 15
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %RBP.i864
  %2112 = sub i64 %2111, 8
  %2113 = load i64, i64* %PC.i862
  %2114 = add i64 %2113, 4
  store i64 %2114, i64* %PC.i862
  %2115 = inttoptr i64 %2112 to i64*
  %2116 = load i64, i64* %2115
  store i64 %2116, i64* %RDI.i863, align 8
  store %struct.Memory* %loadMem_414fb4, %struct.Memory** %MEMORY
  %loadMem_414fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 1
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %2123 = bitcast %union.anon* %2122 to %struct.anon.2*
  %AL.i861 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2123, i32 0, i32 0
  %2124 = load i64, i64* %PC.i860
  %2125 = add i64 %2124, 2
  store i64 %2125, i64* %PC.i860
  store i8 0, i8* %AL.i861, align 1
  store %struct.Memory* %loadMem_414fb8, %struct.Memory** %MEMORY
  %loadMem1_414fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %PC.i859
  %2130 = add i64 %2129, -80458
  %2131 = load i64, i64* %PC.i859
  %2132 = add i64 %2131, 5
  %2133 = load i64, i64* %PC.i859
  %2134 = add i64 %2133, 5
  store i64 %2134, i64* %PC.i859
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2136 = load i64, i64* %2135, align 8
  %2137 = add i64 %2136, -8
  %2138 = inttoptr i64 %2137 to i64*
  store i64 %2132, i64* %2138
  store i64 %2137, i64* %2135, align 8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2130, i64* %2139, align 8
  store %struct.Memory* %loadMem1_414fba, %struct.Memory** %MEMORY
  %loadMem2_414fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414fba = load i64, i64* %3
  %2140 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414fba)
  store %struct.Memory* %2140, %struct.Memory** %MEMORY
  %loadMem_414fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 9
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RSI.i857 = bitcast %union.anon* %2146 to i64*
  %2147 = load i64, i64* %PC.i856
  %2148 = add i64 %2147, 10
  store i64 %2148, i64* %PC.i856
  store i64 ptrtoint (%G__0x45677c_type* @G__0x45677c to i64), i64* %RSI.i857, align 8
  store %struct.Memory* %loadMem_414fbf, %struct.Memory** %MEMORY
  %loadMem_414fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 11
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RDI.i854 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 15
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %2157 to i64*
  %2158 = load i64, i64* %RBP.i855
  %2159 = sub i64 %2158, 8
  %2160 = load i64, i64* %PC.i853
  %2161 = add i64 %2160, 4
  store i64 %2161, i64* %PC.i853
  %2162 = inttoptr i64 %2159 to i64*
  %2163 = load i64, i64* %2162
  store i64 %2163, i64* %RDI.i854, align 8
  store %struct.Memory* %loadMem_414fc9, %struct.Memory** %MEMORY
  %loadMem_414fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 1
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %EAX.i851 = bitcast %union.anon* %2169 to i32*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 15
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %RBP.i852
  %2174 = sub i64 %2173, 160
  %2175 = load i32, i32* %EAX.i851
  %2176 = zext i32 %2175 to i64
  %2177 = load i64, i64* %PC.i850
  %2178 = add i64 %2177, 6
  store i64 %2178, i64* %PC.i850
  %2179 = inttoptr i64 %2174 to i32*
  store i32 %2175, i32* %2179
  store %struct.Memory* %loadMem_414fcd, %struct.Memory** %MEMORY
  %loadMem_414fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 1
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %2186 = bitcast %union.anon* %2185 to %struct.anon.2*
  %AL.i849 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2186, i32 0, i32 0
  %2187 = load i64, i64* %PC.i848
  %2188 = add i64 %2187, 2
  store i64 %2188, i64* %PC.i848
  store i8 0, i8* %AL.i849, align 1
  store %struct.Memory* %loadMem_414fd3, %struct.Memory** %MEMORY
  %loadMem1_414fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %PC.i847
  %2193 = add i64 %2192, -80485
  %2194 = load i64, i64* %PC.i847
  %2195 = add i64 %2194, 5
  %2196 = load i64, i64* %PC.i847
  %2197 = add i64 %2196, 5
  store i64 %2197, i64* %PC.i847
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2199 = load i64, i64* %2198, align 8
  %2200 = add i64 %2199, -8
  %2201 = inttoptr i64 %2200 to i64*
  store i64 %2195, i64* %2201
  store i64 %2200, i64* %2198, align 8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2193, i64* %2202, align 8
  store %struct.Memory* %loadMem1_414fd5, %struct.Memory** %MEMORY
  %loadMem2_414fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414fd5 = load i64, i64* %3
  %2203 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414fd5)
  store %struct.Memory* %2203, %struct.Memory** %MEMORY
  %loadMem_414fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 9
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RSI.i845 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %PC.i844
  %2211 = add i64 %2210, 10
  store i64 %2211, i64* %PC.i844
  store i64 ptrtoint (%G__0x4567c0_type* @G__0x4567c0 to i64), i64* %RSI.i845, align 8
  store %struct.Memory* %loadMem_414fda, %struct.Memory** %MEMORY
  %loadMem_414fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 11
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RDI.i842 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RBP.i843
  %2222 = sub i64 %2221, 8
  %2223 = load i64, i64* %PC.i841
  %2224 = add i64 %2223, 4
  store i64 %2224, i64* %PC.i841
  %2225 = inttoptr i64 %2222 to i64*
  %2226 = load i64, i64* %2225
  store i64 %2226, i64* %RDI.i842, align 8
  store %struct.Memory* %loadMem_414fe4, %struct.Memory** %MEMORY
  %loadMem_414fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 1
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %EAX.i839 = bitcast %union.anon* %2232 to i32*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 15
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %2235 to i64*
  %2236 = load i64, i64* %RBP.i840
  %2237 = sub i64 %2236, 164
  %2238 = load i32, i32* %EAX.i839
  %2239 = zext i32 %2238 to i64
  %2240 = load i64, i64* %PC.i838
  %2241 = add i64 %2240, 6
  store i64 %2241, i64* %PC.i838
  %2242 = inttoptr i64 %2237 to i32*
  store i32 %2238, i32* %2242
  store %struct.Memory* %loadMem_414fe8, %struct.Memory** %MEMORY
  %loadMem_414fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 33
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %2245 to i64*
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 1
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %2249 = bitcast %union.anon* %2248 to %struct.anon.2*
  %AL.i837 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2249, i32 0, i32 0
  %2250 = load i64, i64* %PC.i836
  %2251 = add i64 %2250, 2
  store i64 %2251, i64* %PC.i836
  store i8 0, i8* %AL.i837, align 1
  store %struct.Memory* %loadMem_414fee, %struct.Memory** %MEMORY
  %loadMem1_414ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %2254 to i64*
  %2255 = load i64, i64* %PC.i835
  %2256 = add i64 %2255, -80512
  %2257 = load i64, i64* %PC.i835
  %2258 = add i64 %2257, 5
  %2259 = load i64, i64* %PC.i835
  %2260 = add i64 %2259, 5
  store i64 %2260, i64* %PC.i835
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2262 = load i64, i64* %2261, align 8
  %2263 = add i64 %2262, -8
  %2264 = inttoptr i64 %2263 to i64*
  store i64 %2258, i64* %2264
  store i64 %2263, i64* %2261, align 8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2256, i64* %2265, align 8
  store %struct.Memory* %loadMem1_414ff0, %struct.Memory** %MEMORY
  %loadMem2_414ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_414ff0 = load i64, i64* %3
  %2266 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_414ff0)
  store %struct.Memory* %2266, %struct.Memory** %MEMORY
  %loadMem_414ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 9
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RSI.i833 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %PC.i832
  %2274 = add i64 %2273, 10
  store i64 %2274, i64* %PC.i832
  store i64 ptrtoint (%G__0x456657_type* @G__0x456657 to i64), i64* %RSI.i833, align 8
  store %struct.Memory* %loadMem_414ff5, %struct.Memory** %MEMORY
  %loadMem_414fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 11
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RDI.i830 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 15
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RBP.i831
  %2285 = sub i64 %2284, 8
  %2286 = load i64, i64* %PC.i829
  %2287 = add i64 %2286, 4
  store i64 %2287, i64* %PC.i829
  %2288 = inttoptr i64 %2285 to i64*
  %2289 = load i64, i64* %2288
  store i64 %2289, i64* %RDI.i830, align 8
  store %struct.Memory* %loadMem_414fff, %struct.Memory** %MEMORY
  %loadMem_415003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 1
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %EAX.i827 = bitcast %union.anon* %2295 to i32*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 15
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %2298 to i64*
  %2299 = load i64, i64* %RBP.i828
  %2300 = sub i64 %2299, 168
  %2301 = load i32, i32* %EAX.i827
  %2302 = zext i32 %2301 to i64
  %2303 = load i64, i64* %PC.i826
  %2304 = add i64 %2303, 6
  store i64 %2304, i64* %PC.i826
  %2305 = inttoptr i64 %2300 to i32*
  store i32 %2301, i32* %2305
  store %struct.Memory* %loadMem_415003, %struct.Memory** %MEMORY
  %loadMem_415009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 33
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 1
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %2312 = bitcast %union.anon* %2311 to %struct.anon.2*
  %AL.i825 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2312, i32 0, i32 0
  %2313 = load i64, i64* %PC.i824
  %2314 = add i64 %2313, 2
  store i64 %2314, i64* %PC.i824
  store i8 0, i8* %AL.i825, align 1
  store %struct.Memory* %loadMem_415009, %struct.Memory** %MEMORY
  %loadMem1_41500b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %2317 to i64*
  %2318 = load i64, i64* %PC.i823
  %2319 = add i64 %2318, -80539
  %2320 = load i64, i64* %PC.i823
  %2321 = add i64 %2320, 5
  %2322 = load i64, i64* %PC.i823
  %2323 = add i64 %2322, 5
  store i64 %2323, i64* %PC.i823
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2325 = load i64, i64* %2324, align 8
  %2326 = add i64 %2325, -8
  %2327 = inttoptr i64 %2326 to i64*
  store i64 %2321, i64* %2327
  store i64 %2326, i64* %2324, align 8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2319, i64* %2328, align 8
  store %struct.Memory* %loadMem1_41500b, %struct.Memory** %MEMORY
  %loadMem2_41500b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41500b = load i64, i64* %3
  %2329 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41500b)
  store %struct.Memory* %2329, %struct.Memory** %MEMORY
  %loadMem_415010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 9
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RSI.i820 = bitcast %union.anon* %2335 to i64*
  %2336 = load i64, i64* %PC.i819
  %2337 = add i64 %2336, 10
  store i64 %2337, i64* %PC.i819
  store i64 ptrtoint (%G__0x456697_type* @G__0x456697 to i64), i64* %RSI.i820, align 8
  store %struct.Memory* %loadMem_415010, %struct.Memory** %MEMORY
  %loadMem_41501a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 11
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RDI.i817 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 15
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %2346 to i64*
  %2347 = load i64, i64* %RBP.i818
  %2348 = sub i64 %2347, 8
  %2349 = load i64, i64* %PC.i816
  %2350 = add i64 %2349, 4
  store i64 %2350, i64* %PC.i816
  %2351 = inttoptr i64 %2348 to i64*
  %2352 = load i64, i64* %2351
  store i64 %2352, i64* %RDI.i817, align 8
  store %struct.Memory* %loadMem_41501a, %struct.Memory** %MEMORY
  %loadMem_41501e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 1
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %EAX.i814 = bitcast %union.anon* %2358 to i32*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 15
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RBP.i815
  %2363 = sub i64 %2362, 172
  %2364 = load i32, i32* %EAX.i814
  %2365 = zext i32 %2364 to i64
  %2366 = load i64, i64* %PC.i813
  %2367 = add i64 %2366, 6
  store i64 %2367, i64* %PC.i813
  %2368 = inttoptr i64 %2363 to i32*
  store i32 %2364, i32* %2368
  store %struct.Memory* %loadMem_41501e, %struct.Memory** %MEMORY
  %loadMem_415024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 1
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %2375 = bitcast %union.anon* %2374 to %struct.anon.2*
  %AL.i812 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2375, i32 0, i32 0
  %2376 = load i64, i64* %PC.i811
  %2377 = add i64 %2376, 2
  store i64 %2377, i64* %PC.i811
  store i8 0, i8* %AL.i812, align 1
  store %struct.Memory* %loadMem_415024, %struct.Memory** %MEMORY
  %loadMem1_415026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %2380 to i64*
  %2381 = load i64, i64* %PC.i810
  %2382 = add i64 %2381, -80566
  %2383 = load i64, i64* %PC.i810
  %2384 = add i64 %2383, 5
  %2385 = load i64, i64* %PC.i810
  %2386 = add i64 %2385, 5
  store i64 %2386, i64* %PC.i810
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2388 = load i64, i64* %2387, align 8
  %2389 = add i64 %2388, -8
  %2390 = inttoptr i64 %2389 to i64*
  store i64 %2384, i64* %2390
  store i64 %2389, i64* %2387, align 8
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2382, i64* %2391, align 8
  store %struct.Memory* %loadMem1_415026, %struct.Memory** %MEMORY
  %loadMem2_415026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415026 = load i64, i64* %3
  %2392 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_415026)
  store %struct.Memory* %2392, %struct.Memory** %MEMORY
  %loadMem_41502b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 9
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RSI.i806 = bitcast %union.anon* %2398 to i64*
  %2399 = load i64, i64* %PC.i805
  %2400 = add i64 %2399, 10
  store i64 %2400, i64* %PC.i805
  store i64 ptrtoint (%G__0x4566e3_type* @G__0x4566e3 to i64), i64* %RSI.i806, align 8
  store %struct.Memory* %loadMem_41502b, %struct.Memory** %MEMORY
  %loadMem_415035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 11
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RDI.i803 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RBP.i804
  %2411 = sub i64 %2410, 8
  %2412 = load i64, i64* %PC.i802
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %PC.i802
  %2414 = inttoptr i64 %2411 to i64*
  %2415 = load i64, i64* %2414
  store i64 %2415, i64* %RDI.i803, align 8
  store %struct.Memory* %loadMem_415035, %struct.Memory** %MEMORY
  %loadMem_415039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 1
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %EAX.i800 = bitcast %union.anon* %2421 to i32*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 15
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %RBP.i801
  %2426 = sub i64 %2425, 176
  %2427 = load i32, i32* %EAX.i800
  %2428 = zext i32 %2427 to i64
  %2429 = load i64, i64* %PC.i799
  %2430 = add i64 %2429, 6
  store i64 %2430, i64* %PC.i799
  %2431 = inttoptr i64 %2426 to i32*
  store i32 %2427, i32* %2431
  store %struct.Memory* %loadMem_415039, %struct.Memory** %MEMORY
  %loadMem_41503f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %2438 = bitcast %union.anon* %2437 to %struct.anon.2*
  %AL.i798 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2438, i32 0, i32 0
  %2439 = load i64, i64* %PC.i797
  %2440 = add i64 %2439, 2
  store i64 %2440, i64* %PC.i797
  store i8 0, i8* %AL.i798, align 1
  store %struct.Memory* %loadMem_41503f, %struct.Memory** %MEMORY
  %loadMem1_415041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %PC.i796
  %2445 = add i64 %2444, -80593
  %2446 = load i64, i64* %PC.i796
  %2447 = add i64 %2446, 5
  %2448 = load i64, i64* %PC.i796
  %2449 = add i64 %2448, 5
  store i64 %2449, i64* %PC.i796
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2451 = load i64, i64* %2450, align 8
  %2452 = add i64 %2451, -8
  %2453 = inttoptr i64 %2452 to i64*
  store i64 %2447, i64* %2453
  store i64 %2452, i64* %2450, align 8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2445, i64* %2454, align 8
  store %struct.Memory* %loadMem1_415041, %struct.Memory** %MEMORY
  %loadMem2_415041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415041 = load i64, i64* %3
  %2455 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_415041)
  store %struct.Memory* %2455, %struct.Memory** %MEMORY
  %loadMem_415046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 9
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RSI.i792 = bitcast %union.anon* %2461 to i64*
  %2462 = load i64, i64* %PC.i791
  %2463 = add i64 %2462, 10
  store i64 %2463, i64* %PC.i791
  store i64 ptrtoint (%G__0x45672d_type* @G__0x45672d to i64), i64* %RSI.i792, align 8
  store %struct.Memory* %loadMem_415046, %struct.Memory** %MEMORY
  %loadMem_415050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 11
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RDI.i789 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 15
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %2472 to i64*
  %2473 = load i64, i64* %RBP.i790
  %2474 = sub i64 %2473, 8
  %2475 = load i64, i64* %PC.i788
  %2476 = add i64 %2475, 4
  store i64 %2476, i64* %PC.i788
  %2477 = inttoptr i64 %2474 to i64*
  %2478 = load i64, i64* %2477
  store i64 %2478, i64* %RDI.i789, align 8
  store %struct.Memory* %loadMem_415050, %struct.Memory** %MEMORY
  %loadMem_415054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 33
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 1
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %EAX.i786 = bitcast %union.anon* %2484 to i32*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 15
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %2487 to i64*
  %2488 = load i64, i64* %RBP.i787
  %2489 = sub i64 %2488, 180
  %2490 = load i32, i32* %EAX.i786
  %2491 = zext i32 %2490 to i64
  %2492 = load i64, i64* %PC.i785
  %2493 = add i64 %2492, 6
  store i64 %2493, i64* %PC.i785
  %2494 = inttoptr i64 %2489 to i32*
  store i32 %2490, i32* %2494
  store %struct.Memory* %loadMem_415054, %struct.Memory** %MEMORY
  %loadMem_41505a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %2501 = bitcast %union.anon* %2500 to %struct.anon.2*
  %AL.i784 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2501, i32 0, i32 0
  %2502 = load i64, i64* %PC.i783
  %2503 = add i64 %2502, 2
  store i64 %2503, i64* %PC.i783
  store i8 0, i8* %AL.i784, align 1
  store %struct.Memory* %loadMem_41505a, %struct.Memory** %MEMORY
  %loadMem1_41505c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %2506 to i64*
  %2507 = load i64, i64* %PC.i782
  %2508 = add i64 %2507, -80620
  %2509 = load i64, i64* %PC.i782
  %2510 = add i64 %2509, 5
  %2511 = load i64, i64* %PC.i782
  %2512 = add i64 %2511, 5
  store i64 %2512, i64* %PC.i782
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2514 = load i64, i64* %2513, align 8
  %2515 = add i64 %2514, -8
  %2516 = inttoptr i64 %2515 to i64*
  store i64 %2510, i64* %2516
  store i64 %2515, i64* %2513, align 8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2508, i64* %2517, align 8
  store %struct.Memory* %loadMem1_41505c, %struct.Memory** %MEMORY
  %loadMem2_41505c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41505c = load i64, i64* %3
  %2518 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41505c)
  store %struct.Memory* %2518, %struct.Memory** %MEMORY
  %loadMem_415061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 1
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %EAX.i778 = bitcast %union.anon* %2524 to i32*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 15
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RBP.i779
  %2529 = sub i64 %2528, 184
  %2530 = load i32, i32* %EAX.i778
  %2531 = zext i32 %2530 to i64
  %2532 = load i64, i64* %PC.i777
  %2533 = add i64 %2532, 6
  store i64 %2533, i64* %PC.i777
  %2534 = inttoptr i64 %2529 to i32*
  store i32 %2530, i32* %2534
  store %struct.Memory* %loadMem_415061, %struct.Memory** %MEMORY
  br label %block_.L_415067

block_.L_415067:                                  ; preds = %block_.L_414fa0, %block_414ebc
  %loadMem_415067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 9
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %RSI.i776 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %PC.i775
  %2542 = add i64 %2541, 10
  store i64 %2542, i64* %PC.i775
  store i64 ptrtoint (%G__0x4567fd_type* @G__0x4567fd to i64), i64* %RSI.i776, align 8
  store %struct.Memory* %loadMem_415067, %struct.Memory** %MEMORY
  %loadMem_415071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 11
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RDI.i773 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 15
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %2551 to i64*
  %2552 = load i64, i64* %RBP.i774
  %2553 = sub i64 %2552, 8
  %2554 = load i64, i64* %PC.i772
  %2555 = add i64 %2554, 4
  store i64 %2555, i64* %PC.i772
  %2556 = inttoptr i64 %2553 to i64*
  %2557 = load i64, i64* %2556
  store i64 %2557, i64* %RDI.i773, align 8
  store %struct.Memory* %loadMem_415071, %struct.Memory** %MEMORY
  %loadMem_415075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %2560 to i64*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 1
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %2564 = bitcast %union.anon* %2563 to %struct.anon.2*
  %AL.i771 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2564, i32 0, i32 0
  %2565 = load i64, i64* %PC.i770
  %2566 = add i64 %2565, 2
  store i64 %2566, i64* %PC.i770
  store i8 0, i8* %AL.i771, align 1
  store %struct.Memory* %loadMem_415075, %struct.Memory** %MEMORY
  %loadMem1_415077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %PC.i769
  %2571 = add i64 %2570, -80647
  %2572 = load i64, i64* %PC.i769
  %2573 = add i64 %2572, 5
  %2574 = load i64, i64* %PC.i769
  %2575 = add i64 %2574, 5
  store i64 %2575, i64* %PC.i769
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2577 = load i64, i64* %2576, align 8
  %2578 = add i64 %2577, -8
  %2579 = inttoptr i64 %2578 to i64*
  store i64 %2573, i64* %2579
  store i64 %2578, i64* %2576, align 8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2571, i64* %2580, align 8
  store %struct.Memory* %loadMem1_415077, %struct.Memory** %MEMORY
  %loadMem2_415077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415077 = load i64, i64* %3
  %2581 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_415077)
  store %struct.Memory* %2581, %struct.Memory** %MEMORY
  %loadMem_41507c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 15
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %RBP.i767
  %2589 = sub i64 %2588, 28
  %2590 = load i64, i64* %PC.i766
  %2591 = add i64 %2590, 7
  store i64 %2591, i64* %PC.i766
  %2592 = inttoptr i64 %2589 to i32*
  store i32 0, i32* %2592
  store %struct.Memory* %loadMem_41507c, %struct.Memory** %MEMORY
  %loadMem_415083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 1
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %EAX.i764 = bitcast %union.anon* %2598 to i32*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 15
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %RBP.i765
  %2603 = sub i64 %2602, 188
  %2604 = load i32, i32* %EAX.i764
  %2605 = zext i32 %2604 to i64
  %2606 = load i64, i64* %PC.i763
  %2607 = add i64 %2606, 6
  store i64 %2607, i64* %PC.i763
  %2608 = inttoptr i64 %2603 to i32*
  store i32 %2604, i32* %2608
  store %struct.Memory* %loadMem_415083, %struct.Memory** %MEMORY
  br label %block_.L_415089

block_.L_415089:                                  ; preds = %block_415099, %block_.L_415067
  %loadMem_415089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 1
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 15
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RBP.i762
  %2619 = sub i64 %2618, 28
  %2620 = load i64, i64* %PC.i760
  %2621 = add i64 %2620, 3
  store i64 %2621, i64* %PC.i760
  %2622 = inttoptr i64 %2619 to i32*
  %2623 = load i32, i32* %2622
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RAX.i761, align 8
  store %struct.Memory* %loadMem_415089, %struct.Memory** %MEMORY
  %loadMem_41508c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %EAX.i759 = bitcast %union.anon* %2630 to i32*
  %2631 = load i32, i32* %EAX.i759
  %2632 = zext i32 %2631 to i64
  %2633 = load i64, i64* %PC.i758
  %2634 = add i64 %2633, 7
  store i64 %2634, i64* %PC.i758
  %2635 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*)
  %2636 = sub i32 %2631, %2635
  %2637 = icmp ult i32 %2631, %2635
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2638, i8* %2639, align 1
  %2640 = and i32 %2636, 255
  %2641 = call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2644, i8* %2645, align 1
  %2646 = xor i32 %2635, %2631
  %2647 = xor i32 %2646, %2636
  %2648 = lshr i32 %2647, 4
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2650, i8* %2651, align 1
  %2652 = icmp eq i32 %2636, 0
  %2653 = zext i1 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2653, i8* %2654, align 1
  %2655 = lshr i32 %2636, 31
  %2656 = trunc i32 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2656, i8* %2657, align 1
  %2658 = lshr i32 %2631, 31
  %2659 = lshr i32 %2635, 31
  %2660 = xor i32 %2659, %2658
  %2661 = xor i32 %2655, %2658
  %2662 = add i32 %2661, %2660
  %2663 = icmp eq i32 %2662, 2
  %2664 = zext i1 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2664, i8* %2665, align 1
  store %struct.Memory* %loadMem_41508c, %struct.Memory** %MEMORY
  %loadMem_415093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %PC.i757
  %2670 = add i64 %2669, 59
  %2671 = load i64, i64* %PC.i757
  %2672 = add i64 %2671, 6
  %2673 = load i64, i64* %PC.i757
  %2674 = add i64 %2673, 6
  store i64 %2674, i64* %PC.i757
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2676 = load i8, i8* %2675, align 1
  %2677 = icmp ne i8 %2676, 0
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2679 = load i8, i8* %2678, align 1
  %2680 = icmp ne i8 %2679, 0
  %2681 = xor i1 %2677, %2680
  %2682 = xor i1 %2681, true
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %BRANCH_TAKEN, align 1
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2685 = select i1 %2681, i64 %2672, i64 %2670
  store i64 %2685, i64* %2684, align 8
  store %struct.Memory* %loadMem_415093, %struct.Memory** %MEMORY
  %loadBr_415093 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415093 = icmp eq i8 %loadBr_415093, 1
  br i1 %cmpBr_415093, label %block_.L_4150ce, label %block_415099

block_415099:                                     ; preds = %block_.L_415089
  %loadMem_415099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 9
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RSI.i756 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %PC.i755
  %2693 = add i64 %2692, 10
  store i64 %2693, i64* %PC.i755
  store i64 ptrtoint (%G__0x456802_type* @G__0x456802 to i64), i64* %RSI.i756, align 8
  store %struct.Memory* %loadMem_415099, %struct.Memory** %MEMORY
  %loadMem_4150a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 33
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 11
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RDI.i753 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 15
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %2702 to i64*
  %2703 = load i64, i64* %RBP.i754
  %2704 = sub i64 %2703, 8
  %2705 = load i64, i64* %PC.i752
  %2706 = add i64 %2705, 4
  store i64 %2706, i64* %PC.i752
  %2707 = inttoptr i64 %2704 to i64*
  %2708 = load i64, i64* %2707
  store i64 %2708, i64* %RDI.i753, align 8
  store %struct.Memory* %loadMem_4150a3, %struct.Memory** %MEMORY
  %loadMem_4150a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 33
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 1
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 15
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %RBP.i751
  %2719 = sub i64 %2718, 28
  %2720 = load i64, i64* %PC.i749
  %2721 = add i64 %2720, 4
  store i64 %2721, i64* %PC.i749
  %2722 = inttoptr i64 %2719 to i32*
  %2723 = load i32, i32* %2722
  %2724 = sext i32 %2723 to i64
  store i64 %2724, i64* %RAX.i750, align 8
  store %struct.Memory* %loadMem_4150a7, %struct.Memory** %MEMORY
  %loadMem_4150ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 33
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 1
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 7
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RDX.i748 = bitcast %union.anon* %2733 to i64*
  %2734 = load i64, i64* %RAX.i747
  %2735 = add i64 %2734, 6778848
  %2736 = load i64, i64* %PC.i746
  %2737 = add i64 %2736, 8
  store i64 %2737, i64* %PC.i746
  %2738 = inttoptr i64 %2735 to i8*
  %2739 = load i8, i8* %2738
  %2740 = sext i8 %2739 to i64
  %2741 = and i64 %2740, 4294967295
  store i64 %2741, i64* %RDX.i748, align 8
  store %struct.Memory* %loadMem_4150ab, %struct.Memory** %MEMORY
  %loadMem_4150b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %2748 = bitcast %union.anon* %2747 to %struct.anon.2*
  %AL.i745 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2748, i32 0, i32 0
  %2749 = load i64, i64* %PC.i744
  %2750 = add i64 %2749, 2
  store i64 %2750, i64* %PC.i744
  store i8 0, i8* %AL.i745, align 1
  store %struct.Memory* %loadMem_4150b3, %struct.Memory** %MEMORY
  %loadMem1_4150b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2753 to i64*
  %2754 = load i64, i64* %PC.i743
  %2755 = add i64 %2754, -80709
  %2756 = load i64, i64* %PC.i743
  %2757 = add i64 %2756, 5
  %2758 = load i64, i64* %PC.i743
  %2759 = add i64 %2758, 5
  store i64 %2759, i64* %PC.i743
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2761 = load i64, i64* %2760, align 8
  %2762 = add i64 %2761, -8
  %2763 = inttoptr i64 %2762 to i64*
  store i64 %2757, i64* %2763
  store i64 %2762, i64* %2760, align 8
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2755, i64* %2764, align 8
  store %struct.Memory* %loadMem1_4150b5, %struct.Memory** %MEMORY
  %loadMem2_4150b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4150b5 = load i64, i64* %3
  %2765 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4150b5)
  store %struct.Memory* %2765, %struct.Memory** %MEMORY
  %loadMem_4150ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 1
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %EAX.i739 = bitcast %union.anon* %2771 to i32*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 15
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %RBP.i740
  %2776 = sub i64 %2775, 192
  %2777 = load i32, i32* %EAX.i739
  %2778 = zext i32 %2777 to i64
  %2779 = load i64, i64* %PC.i738
  %2780 = add i64 %2779, 6
  store i64 %2780, i64* %PC.i738
  %2781 = inttoptr i64 %2776 to i32*
  store i32 %2777, i32* %2781
  store %struct.Memory* %loadMem_4150ba, %struct.Memory** %MEMORY
  %loadMem_4150c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 1
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %RAX.i736 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 15
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %2790 to i64*
  %2791 = load i64, i64* %RBP.i737
  %2792 = sub i64 %2791, 28
  %2793 = load i64, i64* %PC.i735
  %2794 = add i64 %2793, 3
  store i64 %2794, i64* %PC.i735
  %2795 = inttoptr i64 %2792 to i32*
  %2796 = load i32, i32* %2795
  %2797 = zext i32 %2796 to i64
  store i64 %2797, i64* %RAX.i736, align 8
  store %struct.Memory* %loadMem_4150c0, %struct.Memory** %MEMORY
  %loadMem_4150c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 33
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 1
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %RAX.i734
  %2805 = load i64, i64* %PC.i733
  %2806 = add i64 %2805, 3
  store i64 %2806, i64* %PC.i733
  %2807 = trunc i64 %2804 to i32
  %2808 = add i32 1, %2807
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %RAX.i734, align 8
  %2810 = icmp ult i32 %2808, %2807
  %2811 = icmp ult i32 %2808, 1
  %2812 = or i1 %2810, %2811
  %2813 = zext i1 %2812 to i8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2813, i8* %2814, align 1
  %2815 = and i32 %2808, 255
  %2816 = call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2819, i8* %2820, align 1
  %2821 = xor i64 1, %2804
  %2822 = trunc i64 %2821 to i32
  %2823 = xor i32 %2822, %2808
  %2824 = lshr i32 %2823, 4
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2826, i8* %2827, align 1
  %2828 = icmp eq i32 %2808, 0
  %2829 = zext i1 %2828 to i8
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2829, i8* %2830, align 1
  %2831 = lshr i32 %2808, 31
  %2832 = trunc i32 %2831 to i8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2832, i8* %2833, align 1
  %2834 = lshr i32 %2807, 31
  %2835 = xor i32 %2831, %2834
  %2836 = add i32 %2835, %2831
  %2837 = icmp eq i32 %2836, 2
  %2838 = zext i1 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2838, i8* %2839, align 1
  store %struct.Memory* %loadMem_4150c3, %struct.Memory** %MEMORY
  %loadMem_4150c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 1
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %EAX.i731 = bitcast %union.anon* %2845 to i32*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 15
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %RBP.i732
  %2850 = sub i64 %2849, 28
  %2851 = load i32, i32* %EAX.i731
  %2852 = zext i32 %2851 to i64
  %2853 = load i64, i64* %PC.i730
  %2854 = add i64 %2853, 3
  store i64 %2854, i64* %PC.i730
  %2855 = inttoptr i64 %2850 to i32*
  store i32 %2851, i32* %2855
  store %struct.Memory* %loadMem_4150c6, %struct.Memory** %MEMORY
  %loadMem_4150c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2858 to i64*
  %2859 = load i64, i64* %PC.i729
  %2860 = add i64 %2859, -64
  %2861 = load i64, i64* %PC.i729
  %2862 = add i64 %2861, 5
  store i64 %2862, i64* %PC.i729
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2860, i64* %2863, align 8
  store %struct.Memory* %loadMem_4150c9, %struct.Memory** %MEMORY
  br label %block_.L_415089

block_.L_4150ce:                                  ; preds = %block_.L_415089
  %loadMem_4150ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %2869 to i64*
  %2870 = load i64, i64* %RBP.i728
  %2871 = sub i64 %2870, 20
  %2872 = load i64, i64* %PC.i727
  %2873 = add i64 %2872, 4
  store i64 %2873, i64* %PC.i727
  %2874 = inttoptr i64 %2871 to i32*
  %2875 = load i32, i32* %2874
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2876, align 1
  %2877 = and i32 %2875, 255
  %2878 = call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2881, i8* %2882, align 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2883, align 1
  %2884 = icmp eq i32 %2875, 0
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2885, i8* %2886, align 1
  %2887 = lshr i32 %2875, 31
  %2888 = trunc i32 %2887 to i8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2888, i8* %2889, align 1
  %2890 = lshr i32 %2875, 31
  %2891 = xor i32 %2887, %2890
  %2892 = add i32 %2891, %2890
  %2893 = icmp eq i32 %2892, 2
  %2894 = zext i1 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2894, i8* %2895, align 1
  store %struct.Memory* %loadMem_4150ce, %struct.Memory** %MEMORY
  %loadMem_4150d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %PC.i726
  %2900 = add i64 %2899, 38
  %2901 = load i64, i64* %PC.i726
  %2902 = add i64 %2901, 6
  %2903 = load i64, i64* %PC.i726
  %2904 = add i64 %2903, 6
  store i64 %2904, i64* %PC.i726
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2906 = load i8, i8* %2905, align 1
  store i8 %2906, i8* %BRANCH_TAKEN, align 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2908 = icmp ne i8 %2906, 0
  %2909 = select i1 %2908, i64 %2900, i64 %2902
  store i64 %2909, i64* %2907, align 8
  store %struct.Memory* %loadMem_4150d2, %struct.Memory** %MEMORY
  %loadBr_4150d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4150d2 = icmp eq i8 %loadBr_4150d2, 1
  br i1 %cmpBr_4150d2, label %block_.L_4150f8, label %block_4150d8

block_4150d8:                                     ; preds = %block_.L_4150ce
  %loadMem_4150d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 9
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RSI.i725 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %PC.i724
  %2917 = add i64 %2916, 10
  store i64 %2917, i64* %PC.i724
  store i64 ptrtoint (%G__0x45680a_type* @G__0x45680a to i64), i64* %RSI.i725, align 8
  store %struct.Memory* %loadMem_4150d8, %struct.Memory** %MEMORY
  %loadMem_4150e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 11
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RDI.i722 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 15
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %RBP.i723
  %2928 = sub i64 %2927, 8
  %2929 = load i64, i64* %PC.i721
  %2930 = add i64 %2929, 4
  store i64 %2930, i64* %PC.i721
  %2931 = inttoptr i64 %2928 to i64*
  %2932 = load i64, i64* %2931
  store i64 %2932, i64* %RDI.i722, align 8
  store %struct.Memory* %loadMem_4150e2, %struct.Memory** %MEMORY
  %loadMem_4150e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 1
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %2939 = bitcast %union.anon* %2938 to %struct.anon.2*
  %AL.i720 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2939, i32 0, i32 0
  %2940 = load i64, i64* %PC.i719
  %2941 = add i64 %2940, 2
  store i64 %2941, i64* %PC.i719
  store i8 0, i8* %AL.i720, align 1
  store %struct.Memory* %loadMem_4150e6, %struct.Memory** %MEMORY
  %loadMem1_4150e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 33
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2944 to i64*
  %2945 = load i64, i64* %PC.i718
  %2946 = add i64 %2945, -80760
  %2947 = load i64, i64* %PC.i718
  %2948 = add i64 %2947, 5
  %2949 = load i64, i64* %PC.i718
  %2950 = add i64 %2949, 5
  store i64 %2950, i64* %PC.i718
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2952 = load i64, i64* %2951, align 8
  %2953 = add i64 %2952, -8
  %2954 = inttoptr i64 %2953 to i64*
  store i64 %2948, i64* %2954
  store i64 %2953, i64* %2951, align 8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2946, i64* %2955, align 8
  store %struct.Memory* %loadMem1_4150e8, %struct.Memory** %MEMORY
  %loadMem2_4150e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4150e8 = load i64, i64* %3
  %2956 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4150e8)
  store %struct.Memory* %2956, %struct.Memory** %MEMORY
  %loadMem_4150ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 1
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %EAX.i715 = bitcast %union.anon* %2962 to i32*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 15
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %RBP.i716
  %2967 = sub i64 %2966, 196
  %2968 = load i32, i32* %EAX.i715
  %2969 = zext i32 %2968 to i64
  %2970 = load i64, i64* %PC.i714
  %2971 = add i64 %2970, 6
  store i64 %2971, i64* %PC.i714
  %2972 = inttoptr i64 %2967 to i32*
  store i32 %2968, i32* %2972
  store %struct.Memory* %loadMem_4150ed, %struct.Memory** %MEMORY
  %loadMem_4150f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %PC.i713
  %2977 = add i64 %2976, 32
  %2978 = load i64, i64* %PC.i713
  %2979 = add i64 %2978, 5
  store i64 %2979, i64* %PC.i713
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2977, i64* %2980, align 8
  store %struct.Memory* %loadMem_4150f3, %struct.Memory** %MEMORY
  br label %block_.L_415113

block_.L_4150f8:                                  ; preds = %block_.L_4150ce
  %loadMem_4150f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 9
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %RSI.i712 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %PC.i711
  %2988 = add i64 %2987, 10
  store i64 %2988, i64* %PC.i711
  store i64 ptrtoint (%G__0x456826_type* @G__0x456826 to i64), i64* %RSI.i712, align 8
  store %struct.Memory* %loadMem_4150f8, %struct.Memory** %MEMORY
  %loadMem_415102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 33
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 11
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RDI.i709 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 15
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %2997 to i64*
  %2998 = load i64, i64* %RBP.i710
  %2999 = sub i64 %2998, 8
  %3000 = load i64, i64* %PC.i708
  %3001 = add i64 %3000, 4
  store i64 %3001, i64* %PC.i708
  %3002 = inttoptr i64 %2999 to i64*
  %3003 = load i64, i64* %3002
  store i64 %3003, i64* %RDI.i709, align 8
  store %struct.Memory* %loadMem_415102, %struct.Memory** %MEMORY
  %loadMem_415106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 1
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %3010 = bitcast %union.anon* %3009 to %struct.anon.2*
  %AL.i707 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3010, i32 0, i32 0
  %3011 = load i64, i64* %PC.i706
  %3012 = add i64 %3011, 2
  store i64 %3012, i64* %PC.i706
  store i8 0, i8* %AL.i707, align 1
  store %struct.Memory* %loadMem_415106, %struct.Memory** %MEMORY
  %loadMem1_415108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %3015 to i64*
  %3016 = load i64, i64* %PC.i705
  %3017 = add i64 %3016, -80792
  %3018 = load i64, i64* %PC.i705
  %3019 = add i64 %3018, 5
  %3020 = load i64, i64* %PC.i705
  %3021 = add i64 %3020, 5
  store i64 %3021, i64* %PC.i705
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3023 = load i64, i64* %3022, align 8
  %3024 = add i64 %3023, -8
  %3025 = inttoptr i64 %3024 to i64*
  store i64 %3019, i64* %3025
  store i64 %3024, i64* %3022, align 8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3017, i64* %3026, align 8
  store %struct.Memory* %loadMem1_415108, %struct.Memory** %MEMORY
  %loadMem2_415108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415108 = load i64, i64* %3
  %3027 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_415108)
  store %struct.Memory* %3027, %struct.Memory** %MEMORY
  %loadMem_41510d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 1
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %EAX.i701 = bitcast %union.anon* %3033 to i32*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 15
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %3036 to i64*
  %3037 = load i64, i64* %RBP.i702
  %3038 = sub i64 %3037, 200
  %3039 = load i32, i32* %EAX.i701
  %3040 = zext i32 %3039 to i64
  %3041 = load i64, i64* %PC.i700
  %3042 = add i64 %3041, 6
  store i64 %3042, i64* %PC.i700
  %3043 = inttoptr i64 %3038 to i32*
  store i32 %3039, i32* %3043
  store %struct.Memory* %loadMem_41510d, %struct.Memory** %MEMORY
  br label %block_.L_415113

block_.L_415113:                                  ; preds = %block_.L_4150f8, %block_4150d8
  %loadMem_415113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 33
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 15
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %RBP.i699
  %3051 = sub i64 %3050, 24
  %3052 = load i64, i64* %PC.i698
  %3053 = add i64 %3052, 7
  store i64 %3053, i64* %PC.i698
  %3054 = inttoptr i64 %3051 to i32*
  store i32 1, i32* %3054
  store %struct.Memory* %loadMem_415113, %struct.Memory** %MEMORY
  br label %block_.L_41511a

block_.L_41511a:                                  ; preds = %block_.L_4154ba, %block_.L_415113
  %loadMem_41511a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 33
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 1
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 15
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %3063 to i64*
  %3064 = load i64, i64* %RBP.i697
  %3065 = sub i64 %3064, 24
  %3066 = load i64, i64* %PC.i695
  %3067 = add i64 %3066, 3
  store i64 %3067, i64* %PC.i695
  %3068 = inttoptr i64 %3065 to i32*
  %3069 = load i32, i32* %3068
  %3070 = zext i32 %3069 to i64
  store i64 %3070, i64* %RAX.i696, align 8
  store %struct.Memory* %loadMem_41511a, %struct.Memory** %MEMORY
  %loadMem_41511d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 5
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 15
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %3079 to i64*
  %3080 = load i64, i64* %RBP.i694
  %3081 = sub i64 %3080, 16
  %3082 = load i64, i64* %PC.i692
  %3083 = add i64 %3082, 4
  store i64 %3083, i64* %PC.i692
  %3084 = inttoptr i64 %3081 to i64*
  %3085 = load i64, i64* %3084
  store i64 %3085, i64* %RCX.i693, align 8
  store %struct.Memory* %loadMem_41511d, %struct.Memory** %MEMORY
  %loadMem_415121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 1
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %EAX.i690 = bitcast %union.anon* %3091 to i32*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 5
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RCX.i691 = bitcast %union.anon* %3094 to i64*
  %3095 = load i32, i32* %EAX.i690
  %3096 = zext i32 %3095 to i64
  %3097 = load i64, i64* %RCX.i691
  %3098 = add i64 %3097, 136
  %3099 = load i64, i64* %PC.i689
  %3100 = add i64 %3099, 6
  store i64 %3100, i64* %PC.i689
  %3101 = inttoptr i64 %3098 to i32*
  %3102 = load i32, i32* %3101
  %3103 = sub i32 %3095, %3102
  %3104 = icmp ult i32 %3095, %3102
  %3105 = zext i1 %3104 to i8
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3105, i8* %3106, align 1
  %3107 = and i32 %3103, 255
  %3108 = call i32 @llvm.ctpop.i32(i32 %3107)
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  %3111 = xor i8 %3110, 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3111, i8* %3112, align 1
  %3113 = xor i32 %3102, %3095
  %3114 = xor i32 %3113, %3103
  %3115 = lshr i32 %3114, 4
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3117, i8* %3118, align 1
  %3119 = icmp eq i32 %3103, 0
  %3120 = zext i1 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3120, i8* %3121, align 1
  %3122 = lshr i32 %3103, 31
  %3123 = trunc i32 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3123, i8* %3124, align 1
  %3125 = lshr i32 %3095, 31
  %3126 = lshr i32 %3102, 31
  %3127 = xor i32 %3126, %3125
  %3128 = xor i32 %3122, %3125
  %3129 = add i32 %3128, %3127
  %3130 = icmp eq i32 %3129, 2
  %3131 = zext i1 %3130 to i8
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3131, i8* %3132, align 1
  store %struct.Memory* %loadMem_415121, %struct.Memory** %MEMORY
  %loadMem_415127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %3135 to i64*
  %3136 = load i64, i64* %PC.i688
  %3137 = add i64 %3136, 929
  %3138 = load i64, i64* %PC.i688
  %3139 = add i64 %3138, 6
  %3140 = load i64, i64* %PC.i688
  %3141 = add i64 %3140, 6
  store i64 %3141, i64* %PC.i688
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3143 = load i8, i8* %3142, align 1
  %3144 = icmp eq i8 %3143, 0
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3146 = load i8, i8* %3145, align 1
  %3147 = icmp ne i8 %3146, 0
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3149 = load i8, i8* %3148, align 1
  %3150 = icmp ne i8 %3149, 0
  %3151 = xor i1 %3147, %3150
  %3152 = xor i1 %3151, true
  %3153 = and i1 %3144, %3152
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %BRANCH_TAKEN, align 1
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3156 = select i1 %3153, i64 %3137, i64 %3139
  store i64 %3156, i64* %3155, align 8
  store %struct.Memory* %loadMem_415127, %struct.Memory** %MEMORY
  %loadBr_415127 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415127 = icmp eq i8 %loadBr_415127, 1
  br i1 %cmpBr_415127, label %block_.L_4154c8, label %block_41512d

block_41512d:                                     ; preds = %block_.L_41511a
  %loadMem_41512d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 33
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %3159 to i64*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 1
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %PC.i686
  %3164 = add i64 %3163, 5
  store i64 %3164, i64* %PC.i686
  store i64 10, i64* %RAX.i687, align 8
  store %struct.Memory* %loadMem_41512d, %struct.Memory** %MEMORY
  %loadMem_415132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 5
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 15
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %3173 to i64*
  %3174 = load i64, i64* %RBP.i685
  %3175 = sub i64 %3174, 24
  %3176 = load i64, i64* %PC.i683
  %3177 = add i64 %3176, 3
  store i64 %3177, i64* %PC.i683
  %3178 = inttoptr i64 %3175 to i32*
  %3179 = load i32, i32* %3178
  %3180 = zext i32 %3179 to i64
  store i64 %3180, i64* %RCX.i684, align 8
  store %struct.Memory* %loadMem_415132, %struct.Memory** %MEMORY
  %loadMem_415135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 33
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 5
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %RCX.i682
  %3188 = load i64, i64* %PC.i681
  %3189 = add i64 %3188, 3
  store i64 %3189, i64* %PC.i681
  %3190 = trunc i64 %3187 to i32
  %3191 = sub i32 %3190, 1
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RCX.i682, align 8
  %3193 = icmp ult i32 %3190, 1
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3194, i8* %3195, align 1
  %3196 = and i32 %3191, 255
  %3197 = call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3200, i8* %3201, align 1
  %3202 = xor i64 1, %3187
  %3203 = trunc i64 %3202 to i32
  %3204 = xor i32 %3203, %3191
  %3205 = lshr i32 %3204, 4
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3207, i8* %3208, align 1
  %3209 = icmp eq i32 %3191, 0
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3210, i8* %3211, align 1
  %3212 = lshr i32 %3191, 31
  %3213 = trunc i32 %3212 to i8
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3213, i8* %3214, align 1
  %3215 = lshr i32 %3190, 31
  %3216 = xor i32 %3212, %3215
  %3217 = add i32 %3216, %3215
  %3218 = icmp eq i32 %3217, 2
  %3219 = zext i1 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3219, i8* %3220, align 1
  store %struct.Memory* %loadMem_415135, %struct.Memory** %MEMORY
  %loadMem_415138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 1
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %EAX.i679 = bitcast %union.anon* %3226 to i32*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 15
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %3229 to i64*
  %3230 = load i64, i64* %RBP.i680
  %3231 = sub i64 %3230, 204
  %3232 = load i32, i32* %EAX.i679
  %3233 = zext i32 %3232 to i64
  %3234 = load i64, i64* %PC.i678
  %3235 = add i64 %3234, 6
  store i64 %3235, i64* %PC.i678
  %3236 = inttoptr i64 %3231 to i32*
  store i32 %3232, i32* %3236
  store %struct.Memory* %loadMem_415138, %struct.Memory** %MEMORY
  %loadMem_41513e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 5
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %ECX.i676 = bitcast %union.anon* %3242 to i32*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %3245 to i64*
  %3246 = load i32, i32* %ECX.i676
  %3247 = zext i32 %3246 to i64
  %3248 = load i64, i64* %PC.i675
  %3249 = add i64 %3248, 2
  store i64 %3249, i64* %PC.i675
  %3250 = and i64 %3247, 4294967295
  store i64 %3250, i64* %RAX.i677, align 8
  store %struct.Memory* %loadMem_41513e, %struct.Memory** %MEMORY
  %loadMem_415140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %PC.i674
  %3255 = add i64 %3254, 1
  store i64 %3255, i64* %PC.i674
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3258 = bitcast %union.anon* %3257 to i32*
  %3259 = load i32, i32* %3258, align 8
  %3260 = sext i32 %3259 to i64
  %3261 = lshr i64 %3260, 32
  store i64 %3261, i64* %3256, align 8
  store %struct.Memory* %loadMem_415140, %struct.Memory** %MEMORY
  %loadMem_415141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 5
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 15
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %RBP.i673
  %3272 = sub i64 %3271, 204
  %3273 = load i64, i64* %PC.i671
  %3274 = add i64 %3273, 6
  store i64 %3274, i64* %PC.i671
  %3275 = inttoptr i64 %3272 to i32*
  %3276 = load i32, i32* %3275
  %3277 = zext i32 %3276 to i64
  store i64 %3277, i64* %RCX.i672, align 8
  store %struct.Memory* %loadMem_415141, %struct.Memory** %MEMORY
  %loadMem_415147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 5
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %ECX.i667 = bitcast %union.anon* %3283 to i32*
  %3284 = load i32, i32* %ECX.i667
  %3285 = zext i32 %3284 to i64
  %3286 = load i64, i64* %PC.i666
  %3287 = add i64 %3286, 2
  store i64 %3287, i64* %PC.i666
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3289 = bitcast %union.anon* %3288 to i32*
  %3290 = load i32, i32* %3289, align 8
  %3291 = zext i32 %3290 to i64
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3293 = bitcast %union.anon* %3292 to i32*
  %3294 = load i32, i32* %3293, align 8
  %3295 = zext i32 %3294 to i64
  %3296 = shl i64 %3285, 32
  %3297 = ashr exact i64 %3296, 32
  %3298 = shl i64 %3295, 32
  %3299 = or i64 %3298, %3291
  %3300 = sdiv i64 %3299, %3297
  %3301 = shl i64 %3300, 32
  %3302 = ashr exact i64 %3301, 32
  %3303 = icmp eq i64 %3300, %3302
  br i1 %3303, label %3308, label %3304

; <label>:3304:                                   ; preds = %block_41512d
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3306 = load i64, i64* %3305, align 8
  %3307 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3306, %struct.Memory* %loadMem_415147)
  br label %routine_idivl__ecx.exit

; <label>:3308:                                   ; preds = %block_41512d
  %3309 = srem i64 %3299, %3297
  %3310 = getelementptr inbounds %union.anon, %union.anon* %3288, i64 0, i32 0
  %3311 = and i64 %3300, 4294967295
  store i64 %3311, i64* %3310, align 8
  %3312 = getelementptr inbounds %union.anon, %union.anon* %3292, i64 0, i32 0
  %3313 = and i64 %3309, 4294967295
  store i64 %3313, i64* %3312, align 8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3314, align 1
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3315, align 1
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3316, align 1
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3317, align 1
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3318, align 1
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3319, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3304, %3308
  %3320 = phi %struct.Memory* [ %3307, %3304 ], [ %loadMem_415147, %3308 ]
  store %struct.Memory* %3320, %struct.Memory** %MEMORY
  %loadMem_415149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 7
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %EDX.i665 = bitcast %union.anon* %3326 to i32*
  %3327 = load i32, i32* %EDX.i665
  %3328 = zext i32 %3327 to i64
  %3329 = load i64, i64* %PC.i664
  %3330 = add i64 %3329, 3
  store i64 %3330, i64* %PC.i664
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3331, align 1
  %3332 = and i32 %3327, 255
  %3333 = call i32 @llvm.ctpop.i32(i32 %3332)
  %3334 = trunc i32 %3333 to i8
  %3335 = and i8 %3334, 1
  %3336 = xor i8 %3335, 1
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3336, i8* %3337, align 1
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3338, align 1
  %3339 = icmp eq i32 %3327, 0
  %3340 = zext i1 %3339 to i8
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3340, i8* %3341, align 1
  %3342 = lshr i32 %3327, 31
  %3343 = trunc i32 %3342 to i8
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3343, i8* %3344, align 1
  %3345 = lshr i32 %3327, 31
  %3346 = xor i32 %3342, %3345
  %3347 = add i32 %3346, %3345
  %3348 = icmp eq i32 %3347, 2
  %3349 = zext i1 %3348 to i8
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3349, i8* %3350, align 1
  store %struct.Memory* %loadMem_415149, %struct.Memory** %MEMORY
  %loadMem_41514c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %3353 to i64*
  %3354 = load i64, i64* %PC.i663
  %3355 = add i64 %3354, 46
  %3356 = load i64, i64* %PC.i663
  %3357 = add i64 %3356, 6
  %3358 = load i64, i64* %PC.i663
  %3359 = add i64 %3358, 6
  store i64 %3359, i64* %PC.i663
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3361 = load i8, i8* %3360, align 1
  %3362 = icmp eq i8 %3361, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %BRANCH_TAKEN, align 1
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3365 = select i1 %3362, i64 %3355, i64 %3357
  store i64 %3365, i64* %3364, align 8
  store %struct.Memory* %loadMem_41514c, %struct.Memory** %MEMORY
  %loadBr_41514c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41514c = icmp eq i8 %loadBr_41514c, 1
  br i1 %cmpBr_41514c, label %block_.L_41517a, label %block_415152

block_415152:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_415152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 15
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %3371 to i64*
  %3372 = load i64, i64* %RBP.i662
  %3373 = sub i64 %3372, 24
  %3374 = load i64, i64* %PC.i661
  %3375 = add i64 %3374, 4
  store i64 %3375, i64* %PC.i661
  %3376 = inttoptr i64 %3373 to i32*
  %3377 = load i32, i32* %3376
  %3378 = sub i32 %3377, 10
  %3379 = icmp ult i32 %3377, 10
  %3380 = zext i1 %3379 to i8
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3380, i8* %3381, align 1
  %3382 = and i32 %3378, 255
  %3383 = call i32 @llvm.ctpop.i32(i32 %3382)
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3386, i8* %3387, align 1
  %3388 = xor i32 %3377, 10
  %3389 = xor i32 %3388, %3378
  %3390 = lshr i32 %3389, 4
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3392, i8* %3393, align 1
  %3394 = icmp eq i32 %3378, 0
  %3395 = zext i1 %3394 to i8
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3395, i8* %3396, align 1
  %3397 = lshr i32 %3378, 31
  %3398 = trunc i32 %3397 to i8
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3398, i8* %3399, align 1
  %3400 = lshr i32 %3377, 31
  %3401 = xor i32 %3397, %3400
  %3402 = add i32 %3401, %3400
  %3403 = icmp eq i32 %3402, 2
  %3404 = zext i1 %3403 to i8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3404, i8* %3405, align 1
  store %struct.Memory* %loadMem_415152, %struct.Memory** %MEMORY
  %loadMem_415156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %3408 to i64*
  %3409 = load i64, i64* %PC.i660
  %3410 = add i64 %3409, 36
  %3411 = load i64, i64* %PC.i660
  %3412 = add i64 %3411, 6
  %3413 = load i64, i64* %PC.i660
  %3414 = add i64 %3413, 6
  store i64 %3414, i64* %PC.i660
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3416 = load i8, i8* %3415, align 1
  %3417 = icmp ne i8 %3416, 0
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3419 = load i8, i8* %3418, align 1
  %3420 = icmp ne i8 %3419, 0
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3422 = load i8, i8* %3421, align 1
  %3423 = icmp ne i8 %3422, 0
  %3424 = xor i1 %3420, %3423
  %3425 = or i1 %3417, %3424
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %BRANCH_TAKEN, align 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3428 = select i1 %3425, i64 %3410, i64 %3412
  store i64 %3428, i64* %3427, align 8
  store %struct.Memory* %loadMem_415156, %struct.Memory** %MEMORY
  %loadBr_415156 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415156 = icmp eq i8 %loadBr_415156, 1
  br i1 %cmpBr_415156, label %block_.L_41517a, label %block_41515c

block_41515c:                                     ; preds = %block_415152
  %loadMem_41515c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 9
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RSI.i659 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %PC.i658
  %3436 = add i64 %3435, 10
  store i64 %3436, i64* %PC.i658
  store i64 ptrtoint (%G__0x456836_type* @G__0x456836 to i64), i64* %RSI.i659, align 8
  store %struct.Memory* %loadMem_41515c, %struct.Memory** %MEMORY
  %loadMem_415166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 11
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RDI.i656 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 15
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %RBP.i657
  %3447 = sub i64 %3446, 8
  %3448 = load i64, i64* %PC.i655
  %3449 = add i64 %3448, 4
  store i64 %3449, i64* %PC.i655
  %3450 = inttoptr i64 %3447 to i64*
  %3451 = load i64, i64* %3450
  store i64 %3451, i64* %RDI.i656, align 8
  store %struct.Memory* %loadMem_415166, %struct.Memory** %MEMORY
  %loadMem_41516a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 33
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %3454 to i64*
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 7
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %RDX.i653 = bitcast %union.anon* %3457 to i64*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 15
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %3460 to i64*
  %3461 = load i64, i64* %RBP.i654
  %3462 = sub i64 %3461, 24
  %3463 = load i64, i64* %PC.i652
  %3464 = add i64 %3463, 3
  store i64 %3464, i64* %PC.i652
  %3465 = inttoptr i64 %3462 to i32*
  %3466 = load i32, i32* %3465
  %3467 = zext i32 %3466 to i64
  store i64 %3467, i64* %RDX.i653, align 8
  store %struct.Memory* %loadMem_41516a, %struct.Memory** %MEMORY
  %loadMem_41516d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %3474 = bitcast %union.anon* %3473 to %struct.anon.2*
  %AL.i651 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3474, i32 0, i32 0
  %3475 = load i64, i64* %PC.i650
  %3476 = add i64 %3475, 2
  store i64 %3476, i64* %PC.i650
  store i8 0, i8* %AL.i651, align 1
  store %struct.Memory* %loadMem_41516d, %struct.Memory** %MEMORY
  %loadMem1_41516f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %3479 to i64*
  %3480 = load i64, i64* %PC.i649
  %3481 = add i64 %3480, -80895
  %3482 = load i64, i64* %PC.i649
  %3483 = add i64 %3482, 5
  %3484 = load i64, i64* %PC.i649
  %3485 = add i64 %3484, 5
  store i64 %3485, i64* %PC.i649
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3487 = load i64, i64* %3486, align 8
  %3488 = add i64 %3487, -8
  %3489 = inttoptr i64 %3488 to i64*
  store i64 %3483, i64* %3489
  store i64 %3488, i64* %3486, align 8
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3481, i64* %3490, align 8
  store %struct.Memory* %loadMem1_41516f, %struct.Memory** %MEMORY
  %loadMem2_41516f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41516f = load i64, i64* %3
  %3491 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41516f)
  store %struct.Memory* %3491, %struct.Memory** %MEMORY
  %loadMem_415174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %EAX.i646 = bitcast %union.anon* %3497 to i32*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 15
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %3500 to i64*
  %3501 = load i64, i64* %RBP.i647
  %3502 = sub i64 %3501, 208
  %3503 = load i32, i32* %EAX.i646
  %3504 = zext i32 %3503 to i64
  %3505 = load i64, i64* %PC.i645
  %3506 = add i64 %3505, 6
  store i64 %3506, i64* %PC.i645
  %3507 = inttoptr i64 %3502 to i32*
  store i32 %3503, i32* %3507
  store %struct.Memory* %loadMem_415174, %struct.Memory** %MEMORY
  br label %block_.L_41517a

block_.L_41517a:                                  ; preds = %block_41515c, %block_415152, %routine_idivl__ecx.exit
  %loadMem_41517a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 33
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 1
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 15
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %3516 to i64*
  %3517 = load i64, i64* %RBP.i644
  %3518 = sub i64 %3517, 16
  %3519 = load i64, i64* %PC.i642
  %3520 = add i64 %3519, 4
  store i64 %3520, i64* %PC.i642
  %3521 = inttoptr i64 %3518 to i64*
  %3522 = load i64, i64* %3521
  store i64 %3522, i64* %RAX.i643, align 8
  store %struct.Memory* %loadMem_41517a, %struct.Memory** %MEMORY
  %loadMem_41517e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 1
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %3528 to i64*
  %3529 = load i64, i64* %RAX.i641
  %3530 = add i64 %3529, 152
  %3531 = load i64, i64* %PC.i640
  %3532 = add i64 %3531, 7
  store i64 %3532, i64* %PC.i640
  %3533 = inttoptr i64 %3530 to i64*
  %3534 = load i64, i64* %3533
  store i64 %3534, i64* %RAX.i641, align 8
  store %struct.Memory* %loadMem_41517e, %struct.Memory** %MEMORY
  %loadMem_415185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 5
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 15
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %RBP.i639
  %3545 = sub i64 %3544, 24
  %3546 = load i64, i64* %PC.i637
  %3547 = add i64 %3546, 4
  store i64 %3547, i64* %PC.i637
  %3548 = inttoptr i64 %3545 to i32*
  %3549 = load i32, i32* %3548
  %3550 = sext i32 %3549 to i64
  store i64 %3550, i64* %RCX.i638, align 8
  store %struct.Memory* %loadMem_415185, %struct.Memory** %MEMORY
  %loadMem_415189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 33
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 1
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 5
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %3559 to i64*
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 11
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %RDI.i636 = bitcast %union.anon* %3562 to i64*
  %3563 = load i64, i64* %RAX.i634
  %3564 = load i64, i64* %RCX.i635
  %3565 = mul i64 %3564, 8
  %3566 = add i64 %3565, %3563
  %3567 = load i64, i64* %PC.i633
  %3568 = add i64 %3567, 4
  store i64 %3568, i64* %PC.i633
  %3569 = inttoptr i64 %3566 to i64*
  %3570 = load i64, i64* %3569
  store i64 %3570, i64* %RDI.i636, align 8
  store %struct.Memory* %loadMem_415189, %struct.Memory** %MEMORY
  %loadMem_41518d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 33
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 9
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RSI.i632 = bitcast %union.anon* %3576 to i64*
  %3577 = load i64, i64* %PC.i631
  %3578 = add i64 %3577, 7
  store i64 %3578, i64* %PC.i631
  %3579 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RSI.i632, align 8
  store %struct.Memory* %loadMem_41518d, %struct.Memory** %MEMORY
  %loadMem1_415194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3583 to i64*
  %3584 = load i64, i64* %PC.i630
  %3585 = add i64 %3584, 250860
  %3586 = load i64, i64* %PC.i630
  %3587 = add i64 %3586, 5
  %3588 = load i64, i64* %PC.i630
  %3589 = add i64 %3588, 5
  store i64 %3589, i64* %PC.i630
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3591 = load i64, i64* %3590, align 8
  %3592 = add i64 %3591, -8
  %3593 = inttoptr i64 %3592 to i64*
  store i64 %3587, i64* %3593
  store i64 %3592, i64* %3590, align 8
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3585, i64* %3594, align 8
  store %struct.Memory* %loadMem1_415194, %struct.Memory** %MEMORY
  %loadMem2_415194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415194 = load i64, i64* %3
  %call2_415194 = call %struct.Memory* @sub_452580.FArgMax(%struct.State* %0, i64 %loadPC_415194, %struct.Memory* %loadMem2_415194)
  store %struct.Memory* %call2_415194, %struct.Memory** %MEMORY
  %loadMem_415199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 33
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 9
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %RSI.i629 = bitcast %union.anon* %3600 to i64*
  %3601 = load i64, i64* %PC.i628
  %3602 = add i64 %3601, 10
  store i64 %3602, i64* %PC.i628
  store i64 ptrtoint (%G__0x45683c_type* @G__0x45683c to i64), i64* %RSI.i629, align 8
  store %struct.Memory* %loadMem_415199, %struct.Memory** %MEMORY
  %loadMem_4151a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 33
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 1
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %EAX.i626 = bitcast %union.anon* %3608 to i32*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 15
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %3611 to i64*
  %3612 = load i64, i64* %RBP.i627
  %3613 = sub i64 %3612, 28
  %3614 = load i32, i32* %EAX.i626
  %3615 = zext i32 %3614 to i64
  %3616 = load i64, i64* %PC.i625
  %3617 = add i64 %3616, 3
  store i64 %3617, i64* %PC.i625
  %3618 = inttoptr i64 %3613 to i32*
  store i32 %3614, i32* %3618
  store %struct.Memory* %loadMem_4151a3, %struct.Memory** %MEMORY
  %loadMem_4151a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 11
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RDI.i623 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 15
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %3627 to i64*
  %3628 = load i64, i64* %RBP.i624
  %3629 = sub i64 %3628, 8
  %3630 = load i64, i64* %PC.i622
  %3631 = add i64 %3630, 4
  store i64 %3631, i64* %PC.i622
  %3632 = inttoptr i64 %3629 to i64*
  %3633 = load i64, i64* %3632
  store i64 %3633, i64* %RDI.i623, align 8
  store %struct.Memory* %loadMem_4151a6, %struct.Memory** %MEMORY
  %loadMem_4151aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 5
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 15
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %3642 to i64*
  %3643 = load i64, i64* %RBP.i621
  %3644 = sub i64 %3643, 28
  %3645 = load i64, i64* %PC.i619
  %3646 = add i64 %3645, 4
  store i64 %3646, i64* %PC.i619
  %3647 = inttoptr i64 %3644 to i32*
  %3648 = load i32, i32* %3647
  %3649 = sext i32 %3648 to i64
  store i64 %3649, i64* %RCX.i620, align 8
  store %struct.Memory* %loadMem_4151aa, %struct.Memory** %MEMORY
  %loadMem_4151ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 5
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 7
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RDX.i618 = bitcast %union.anon* %3658 to i64*
  %3659 = load i64, i64* %RCX.i617
  %3660 = add i64 %3659, 6778848
  %3661 = load i64, i64* %PC.i616
  %3662 = add i64 %3661, 8
  store i64 %3662, i64* %PC.i616
  %3663 = inttoptr i64 %3660 to i8*
  %3664 = load i8, i8* %3663
  %3665 = sext i8 %3664 to i64
  %3666 = and i64 %3665, 4294967295
  store i64 %3666, i64* %RDX.i618, align 8
  store %struct.Memory* %loadMem_4151ae, %struct.Memory** %MEMORY
  %loadMem_4151b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %3673 = bitcast %union.anon* %3672 to %struct.anon.2*
  %AL.i615 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3673, i32 0, i32 0
  %3674 = load i64, i64* %PC.i614
  %3675 = add i64 %3674, 2
  store i64 %3675, i64* %PC.i614
  store i8 0, i8* %AL.i615, align 1
  store %struct.Memory* %loadMem_4151b6, %struct.Memory** %MEMORY
  %loadMem1_4151b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %PC.i613
  %3680 = add i64 %3679, -80968
  %3681 = load i64, i64* %PC.i613
  %3682 = add i64 %3681, 5
  %3683 = load i64, i64* %PC.i613
  %3684 = add i64 %3683, 5
  store i64 %3684, i64* %PC.i613
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3686 = load i64, i64* %3685, align 8
  %3687 = add i64 %3686, -8
  %3688 = inttoptr i64 %3687 to i64*
  store i64 %3682, i64* %3688
  store i64 %3687, i64* %3685, align 8
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3680, i64* %3689, align 8
  store %struct.Memory* %loadMem1_4151b8, %struct.Memory** %MEMORY
  %loadMem2_4151b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4151b8 = load i64, i64* %3
  %3690 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4151b8)
  store %struct.Memory* %3690, %struct.Memory** %MEMORY
  %loadMem_4151bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3693 to i64*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 15
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %3696 to i64*
  %3697 = load i64, i64* %RBP.i609
  %3698 = sub i64 %3697, 28
  %3699 = load i64, i64* %PC.i608
  %3700 = add i64 %3699, 7
  store i64 %3700, i64* %PC.i608
  %3701 = inttoptr i64 %3698 to i32*
  store i32 0, i32* %3701
  store %struct.Memory* %loadMem_4151bd, %struct.Memory** %MEMORY
  %loadMem_4151c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 33
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 1
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %3707 to i32*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 15
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %3710 to i64*
  %3711 = load i64, i64* %RBP.i607
  %3712 = sub i64 %3711, 212
  %3713 = load i32, i32* %EAX.i606
  %3714 = zext i32 %3713 to i64
  %3715 = load i64, i64* %PC.i605
  %3716 = add i64 %3715, 6
  store i64 %3716, i64* %PC.i605
  %3717 = inttoptr i64 %3712 to i32*
  store i32 %3713, i32* %3717
  store %struct.Memory* %loadMem_4151c4, %struct.Memory** %MEMORY
  br label %block_.L_4151ca

block_.L_4151ca:                                  ; preds = %block_.L_415225, %block_.L_41517a
  %loadMem_4151ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 1
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 15
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RBP.i604
  %3728 = sub i64 %3727, 28
  %3729 = load i64, i64* %PC.i602
  %3730 = add i64 %3729, 3
  store i64 %3730, i64* %PC.i602
  %3731 = inttoptr i64 %3728 to i32*
  %3732 = load i32, i32* %3731
  %3733 = zext i32 %3732 to i64
  store i64 %3733, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_4151ca, %struct.Memory** %MEMORY
  %loadMem_4151cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 33
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 1
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %EAX.i601 = bitcast %union.anon* %3739 to i32*
  %3740 = load i32, i32* %EAX.i601
  %3741 = zext i32 %3740 to i64
  %3742 = load i64, i64* %PC.i600
  %3743 = add i64 %3742, 7
  store i64 %3743, i64* %PC.i600
  %3744 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*)
  %3745 = sub i32 %3740, %3744
  %3746 = icmp ult i32 %3740, %3744
  %3747 = zext i1 %3746 to i8
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3747, i8* %3748, align 1
  %3749 = and i32 %3745, 255
  %3750 = call i32 @llvm.ctpop.i32(i32 %3749)
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = xor i8 %3752, 1
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3753, i8* %3754, align 1
  %3755 = xor i32 %3744, %3740
  %3756 = xor i32 %3755, %3745
  %3757 = lshr i32 %3756, 4
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3759, i8* %3760, align 1
  %3761 = icmp eq i32 %3745, 0
  %3762 = zext i1 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3762, i8* %3763, align 1
  %3764 = lshr i32 %3745, 31
  %3765 = trunc i32 %3764 to i8
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3765, i8* %3766, align 1
  %3767 = lshr i32 %3740, 31
  %3768 = lshr i32 %3744, 31
  %3769 = xor i32 %3768, %3767
  %3770 = xor i32 %3764, %3767
  %3771 = add i32 %3770, %3769
  %3772 = icmp eq i32 %3771, 2
  %3773 = zext i1 %3772 to i8
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3773, i8* %3774, align 1
  store %struct.Memory* %loadMem_4151cd, %struct.Memory** %MEMORY
  %loadMem_4151d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 33
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3777 to i64*
  %3778 = load i64, i64* %PC.i599
  %3779 = add i64 %3778, 152
  %3780 = load i64, i64* %PC.i599
  %3781 = add i64 %3780, 6
  %3782 = load i64, i64* %PC.i599
  %3783 = add i64 %3782, 6
  store i64 %3783, i64* %PC.i599
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3785 = load i8, i8* %3784, align 1
  %3786 = icmp ne i8 %3785, 0
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3788 = load i8, i8* %3787, align 1
  %3789 = icmp ne i8 %3788, 0
  %3790 = xor i1 %3786, %3789
  %3791 = xor i1 %3790, true
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %BRANCH_TAKEN, align 1
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3794 = select i1 %3790, i64 %3781, i64 %3779
  store i64 %3794, i64* %3793, align 8
  store %struct.Memory* %loadMem_4151d4, %struct.Memory** %MEMORY
  %loadBr_4151d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4151d4 = icmp eq i8 %loadBr_4151d4, 1
  br i1 %cmpBr_4151d4, label %block_.L_41526c, label %block_4151da

block_4151da:                                     ; preds = %block_.L_4151ca
  %loadMem_4151da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 1
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 15
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %RBP.i598
  %3805 = sub i64 %3804, 16
  %3806 = load i64, i64* %PC.i596
  %3807 = add i64 %3806, 4
  store i64 %3807, i64* %PC.i596
  %3808 = inttoptr i64 %3805 to i64*
  %3809 = load i64, i64* %3808
  store i64 %3809, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_4151da, %struct.Memory** %MEMORY
  %loadMem_4151de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 33
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 1
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %3815 to i64*
  %3816 = load i64, i64* %RAX.i595
  %3817 = add i64 %3816, 320
  %3818 = load i64, i64* %PC.i594
  %3819 = add i64 %3818, 7
  store i64 %3819, i64* %PC.i594
  %3820 = inttoptr i64 %3817 to i64*
  %3821 = load i64, i64* %3820
  store i64 %3821, i64* %RAX.i595, align 8
  store %struct.Memory* %loadMem_4151de, %struct.Memory** %MEMORY
  %loadMem_4151e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 33
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 5
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 15
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %3830 to i64*
  %3831 = load i64, i64* %RBP.i593
  %3832 = sub i64 %3831, 28
  %3833 = load i64, i64* %PC.i591
  %3834 = add i64 %3833, 4
  store i64 %3834, i64* %PC.i591
  %3835 = inttoptr i64 %3832 to i32*
  %3836 = load i32, i32* %3835
  %3837 = sext i32 %3836 to i64
  store i64 %3837, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_4151e5, %struct.Memory** %MEMORY
  %loadMem_4151e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 1
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 5
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %RAX.i589
  %3848 = load i64, i64* %RCX.i590
  %3849 = mul i64 %3848, 8
  %3850 = add i64 %3849, %3847
  %3851 = load i64, i64* %PC.i588
  %3852 = add i64 %3851, 4
  store i64 %3852, i64* %PC.i588
  %3853 = inttoptr i64 %3850 to i64*
  %3854 = load i64, i64* %3853
  store i64 %3854, i64* %RAX.i589, align 8
  store %struct.Memory* %loadMem_4151e9, %struct.Memory** %MEMORY
  %loadMem_4151ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 33
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3857 to i64*
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 5
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 15
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RBP.i587
  %3865 = sub i64 %3864, 24
  %3866 = load i64, i64* %PC.i585
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %PC.i585
  %3868 = inttoptr i64 %3865 to i32*
  %3869 = load i32, i32* %3868
  %3870 = sext i32 %3869 to i64
  store i64 %3870, i64* %RCX.i586, align 8
  store %struct.Memory* %loadMem_4151ed, %struct.Memory** %MEMORY
  %loadMem_4151f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 33
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 1
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %3876 to i64*
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 5
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 7
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RDX.i584 = bitcast %union.anon* %3882 to i64*
  %3883 = load i64, i64* %RAX.i582
  %3884 = load i64, i64* %RCX.i583
  %3885 = mul i64 %3884, 4
  %3886 = add i64 %3885, %3883
  %3887 = load i64, i64* %PC.i581
  %3888 = add i64 %3887, 3
  store i64 %3888, i64* %PC.i581
  %3889 = inttoptr i64 %3886 to i32*
  %3890 = load i32, i32* %3889
  %3891 = zext i32 %3890 to i64
  store i64 %3891, i64* %RDX.i584, align 8
  store %struct.Memory* %loadMem_4151f1, %struct.Memory** %MEMORY
  %loadMem_4151f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 7
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %EDX.i579 = bitcast %union.anon* %3897 to i32*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 15
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RBP.i580
  %3902 = sub i64 %3901, 32
  %3903 = load i32, i32* %EDX.i579
  %3904 = zext i32 %3903 to i64
  %3905 = load i64, i64* %PC.i578
  %3906 = add i64 %3905, 3
  store i64 %3906, i64* %PC.i578
  %3907 = inttoptr i64 %3902 to i32*
  store i32 %3903, i32* %3907
  store %struct.Memory* %loadMem_4151f4, %struct.Memory** %MEMORY
  %loadMem_4151f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 7
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 15
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RBP.i577
  %3918 = sub i64 %3917, 24
  %3919 = load i64, i64* %PC.i575
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC.i575
  %3921 = inttoptr i64 %3918 to i32*
  %3922 = load i32, i32* %3921
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RDX.i576, align 8
  store %struct.Memory* %loadMem_4151f7, %struct.Memory** %MEMORY
  %loadMem_4151fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 33
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 1
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 15
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %3932 to i64*
  %3933 = load i64, i64* %RBP.i574
  %3934 = sub i64 %3933, 16
  %3935 = load i64, i64* %PC.i572
  %3936 = add i64 %3935, 4
  store i64 %3936, i64* %PC.i572
  %3937 = inttoptr i64 %3934 to i64*
  %3938 = load i64, i64* %3937
  store i64 %3938, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_4151fa, %struct.Memory** %MEMORY
  %loadMem_4151fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 7
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %EDX.i570 = bitcast %union.anon* %3944 to i32*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 1
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %3947 to i64*
  %3948 = load i32, i32* %EDX.i570
  %3949 = zext i32 %3948 to i64
  %3950 = load i64, i64* %RAX.i571
  %3951 = add i64 %3950, 136
  %3952 = load i64, i64* %PC.i569
  %3953 = add i64 %3952, 6
  store i64 %3953, i64* %PC.i569
  %3954 = inttoptr i64 %3951 to i32*
  %3955 = load i32, i32* %3954
  %3956 = sub i32 %3948, %3955
  %3957 = icmp ult i32 %3948, %3955
  %3958 = zext i1 %3957 to i8
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3958, i8* %3959, align 1
  %3960 = and i32 %3956, 255
  %3961 = call i32 @llvm.ctpop.i32(i32 %3960)
  %3962 = trunc i32 %3961 to i8
  %3963 = and i8 %3962, 1
  %3964 = xor i8 %3963, 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3964, i8* %3965, align 1
  %3966 = xor i32 %3955, %3948
  %3967 = xor i32 %3966, %3956
  %3968 = lshr i32 %3967, 4
  %3969 = trunc i32 %3968 to i8
  %3970 = and i8 %3969, 1
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3970, i8* %3971, align 1
  %3972 = icmp eq i32 %3956, 0
  %3973 = zext i1 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3973, i8* %3974, align 1
  %3975 = lshr i32 %3956, 31
  %3976 = trunc i32 %3975 to i8
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3976, i8* %3977, align 1
  %3978 = lshr i32 %3948, 31
  %3979 = lshr i32 %3955, 31
  %3980 = xor i32 %3979, %3978
  %3981 = xor i32 %3975, %3978
  %3982 = add i32 %3981, %3980
  %3983 = icmp eq i32 %3982, 2
  %3984 = zext i1 %3983 to i8
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3984, i8* %3985, align 1
  store %struct.Memory* %loadMem_4151fe, %struct.Memory** %MEMORY
  %loadMem_415204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %PC.i568
  %3990 = add i64 %3989, 33
  %3991 = load i64, i64* %PC.i568
  %3992 = add i64 %3991, 6
  %3993 = load i64, i64* %PC.i568
  %3994 = add i64 %3993, 6
  store i64 %3994, i64* %PC.i568
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3996 = load i8, i8* %3995, align 1
  %3997 = icmp ne i8 %3996, 0
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3999 = load i8, i8* %3998, align 1
  %4000 = icmp ne i8 %3999, 0
  %4001 = xor i1 %3997, %4000
  %4002 = xor i1 %4001, true
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %BRANCH_TAKEN, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4005 = select i1 %4001, i64 %3992, i64 %3990
  store i64 %4005, i64* %4004, align 8
  store %struct.Memory* %loadMem_415204, %struct.Memory** %MEMORY
  %loadBr_415204 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415204 = icmp eq i8 %loadBr_415204, 1
  br i1 %cmpBr_415204, label %block_.L_415225, label %block_41520a

block_41520a:                                     ; preds = %block_4151da
  %loadMem_41520a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 1
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 15
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %4014 to i64*
  %4015 = load i64, i64* %RBP.i567
  %4016 = sub i64 %4015, 16
  %4017 = load i64, i64* %PC.i565
  %4018 = add i64 %4017, 4
  store i64 %4018, i64* %PC.i565
  %4019 = inttoptr i64 %4016 to i64*
  %4020 = load i64, i64* %4019
  store i64 %4020, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_41520a, %struct.Memory** %MEMORY
  %loadMem_41520e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 33
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 1
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RAX.i564
  %4028 = add i64 %4027, 312
  %4029 = load i64, i64* %PC.i563
  %4030 = add i64 %4029, 7
  store i64 %4030, i64* %PC.i563
  %4031 = inttoptr i64 %4028 to i64*
  %4032 = load i64, i64* %4031
  store i64 %4032, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_41520e, %struct.Memory** %MEMORY
  %loadMem_415215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 33
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 1
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %RAX.i562
  %4040 = load i64, i64* %PC.i561
  %4041 = add i64 %4040, 3
  store i64 %4041, i64* %PC.i561
  %4042 = inttoptr i64 %4039 to i64*
  %4043 = load i64, i64* %4042
  store i64 %4043, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_415215, %struct.Memory** %MEMORY
  %loadMem_415218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 5
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 15
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %4052 to i64*
  %4053 = load i64, i64* %RBP.i560
  %4054 = sub i64 %4053, 24
  %4055 = load i64, i64* %PC.i558
  %4056 = add i64 %4055, 4
  store i64 %4056, i64* %PC.i558
  %4057 = inttoptr i64 %4054 to i32*
  %4058 = load i32, i32* %4057
  %4059 = sext i32 %4058 to i64
  store i64 %4059, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_415218, %struct.Memory** %MEMORY
  %loadMem_41521c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 33
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 1
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 5
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 7
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %RAX.i555
  %4073 = load i64, i64* %RCX.i556
  %4074 = mul i64 %4073, 4
  %4075 = add i64 %4074, %4072
  %4076 = load i64, i64* %PC.i554
  %4077 = add i64 %4076, 3
  store i64 %4077, i64* %PC.i554
  %4078 = inttoptr i64 %4075 to i32*
  %4079 = load i32, i32* %4078
  %4080 = zext i32 %4079 to i64
  store i64 %4080, i64* %RDX.i557, align 8
  store %struct.Memory* %loadMem_41521c, %struct.Memory** %MEMORY
  %loadMem_41521f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4082 = getelementptr inbounds %struct.GPR, %struct.GPR* %4081, i32 0, i32 33
  %4083 = getelementptr inbounds %struct.Reg, %struct.Reg* %4082, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %4083 to i64*
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 7
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %RDX.i552 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 15
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %4089 to i64*
  %4090 = load i64, i64* %RDX.i552
  %4091 = load i64, i64* %RBP.i553
  %4092 = sub i64 %4091, 32
  %4093 = load i64, i64* %PC.i551
  %4094 = add i64 %4093, 3
  store i64 %4094, i64* %PC.i551
  %4095 = trunc i64 %4090 to i32
  %4096 = inttoptr i64 %4092 to i32*
  %4097 = load i32, i32* %4096
  %4098 = add i32 %4097, %4095
  %4099 = zext i32 %4098 to i64
  store i64 %4099, i64* %RDX.i552, align 8
  %4100 = icmp ult i32 %4098, %4095
  %4101 = icmp ult i32 %4098, %4097
  %4102 = or i1 %4100, %4101
  %4103 = zext i1 %4102 to i8
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4103, i8* %4104, align 1
  %4105 = and i32 %4098, 255
  %4106 = call i32 @llvm.ctpop.i32(i32 %4105)
  %4107 = trunc i32 %4106 to i8
  %4108 = and i8 %4107, 1
  %4109 = xor i8 %4108, 1
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4109, i8* %4110, align 1
  %4111 = xor i32 %4097, %4095
  %4112 = xor i32 %4111, %4098
  %4113 = lshr i32 %4112, 4
  %4114 = trunc i32 %4113 to i8
  %4115 = and i8 %4114, 1
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4115, i8* %4116, align 1
  %4117 = icmp eq i32 %4098, 0
  %4118 = zext i1 %4117 to i8
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4118, i8* %4119, align 1
  %4120 = lshr i32 %4098, 31
  %4121 = trunc i32 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4121, i8* %4122, align 1
  %4123 = lshr i32 %4095, 31
  %4124 = lshr i32 %4097, 31
  %4125 = xor i32 %4120, %4123
  %4126 = xor i32 %4120, %4124
  %4127 = add i32 %4125, %4126
  %4128 = icmp eq i32 %4127, 2
  %4129 = zext i1 %4128 to i8
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4129, i8* %4130, align 1
  store %struct.Memory* %loadMem_41521f, %struct.Memory** %MEMORY
  %loadMem_415222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 33
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 7
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %EDX.i549 = bitcast %union.anon* %4136 to i32*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 15
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %4139 to i64*
  %4140 = load i64, i64* %RBP.i550
  %4141 = sub i64 %4140, 32
  %4142 = load i32, i32* %EDX.i549
  %4143 = zext i32 %4142 to i64
  %4144 = load i64, i64* %PC.i548
  %4145 = add i64 %4144, 3
  store i64 %4145, i64* %PC.i548
  %4146 = inttoptr i64 %4141 to i32*
  store i32 %4142, i32* %4146
  store %struct.Memory* %loadMem_415222, %struct.Memory** %MEMORY
  br label %block_.L_415225

block_.L_415225:                                  ; preds = %block_41520a, %block_4151da
  %loadMem_415225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 9
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RSI.i547 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %PC.i546
  %4154 = add i64 %4153, 10
  store i64 %4154, i64* %PC.i546
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI.i547, align 8
  store %struct.Memory* %loadMem_415225, %struct.Memory** %MEMORY
  %loadMem_41522f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %4157 to i64*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4158, i64 0, i64 0
  %YMM0.i545 = bitcast %union.VectorReg* %4159 to %"class.std::bitset"*
  %4160 = bitcast %"class.std::bitset"* %YMM0.i545 to i8*
  %4161 = load i64, i64* %PC.i544
  %4162 = add i64 %4161, ptrtoint (%G_0x3f5e9__rip__type* @G_0x3f5e9__rip_ to i64)
  %4163 = load i64, i64* %PC.i544
  %4164 = add i64 %4163, 8
  store i64 %4164, i64* %PC.i544
  %4165 = inttoptr i64 %4162 to double*
  %4166 = load double, double* %4165
  %4167 = bitcast i8* %4160 to double*
  store double %4166, double* %4167, align 1
  %4168 = getelementptr inbounds i8, i8* %4160, i64 8
  %4169 = bitcast i8* %4168 to double*
  store double 0.000000e+00, double* %4169, align 1
  store %struct.Memory* %loadMem_41522f, %struct.Memory** %MEMORY
  %loadMem_415237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 1
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 15
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %RBP.i543
  %4180 = sub i64 %4179, 32
  %4181 = load i64, i64* %PC.i541
  %4182 = add i64 %4181, 4
  store i64 %4182, i64* %PC.i541
  %4183 = inttoptr i64 %4180 to i32*
  %4184 = load i32, i32* %4183
  %4185 = sext i32 %4184 to i64
  %4186 = mul i64 %4185, 100
  %4187 = trunc i64 %4186 to i32
  %4188 = and i64 %4186, 4294967295
  store i64 %4188, i64* %RAX.i542, align 8
  %4189 = shl i64 %4186, 32
  %4190 = ashr exact i64 %4189, 32
  %4191 = icmp ne i64 %4190, %4186
  %4192 = zext i1 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4192, i8* %4193, align 1
  %4194 = and i32 %4187, 255
  %4195 = call i32 @llvm.ctpop.i32(i32 %4194)
  %4196 = trunc i32 %4195 to i8
  %4197 = and i8 %4196, 1
  %4198 = xor i8 %4197, 1
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4198, i8* %4199, align 1
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4200, align 1
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4201, align 1
  %4202 = lshr i32 %4187, 31
  %4203 = trunc i32 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4203, i8* %4204, align 1
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4192, i8* %4205, align 1
  store %struct.Memory* %loadMem_415237, %struct.Memory** %MEMORY
  %loadMem_41523b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 1
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %EAX.i539 = bitcast %union.anon* %4211 to i32*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4212, i64 0, i64 1
  %YMM1.i540 = bitcast %union.VectorReg* %4213 to %"class.std::bitset"*
  %4214 = bitcast %"class.std::bitset"* %YMM1.i540 to i8*
  %4215 = load i32, i32* %EAX.i539
  %4216 = zext i32 %4215 to i64
  %4217 = load i64, i64* %PC.i538
  %4218 = add i64 %4217, 4
  store i64 %4218, i64* %PC.i538
  %4219 = sitofp i32 %4215 to double
  %4220 = bitcast i8* %4214 to double*
  store double %4219, double* %4220, align 1
  store %struct.Memory* %loadMem_41523b, %struct.Memory** %MEMORY
  %loadMem_41523f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %4223 to i64*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4224, i64 0, i64 1
  %YMM1.i536 = bitcast %union.VectorReg* %4225 to %"class.std::bitset"*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4226, i64 0, i64 0
  %XMM0.i537 = bitcast %union.VectorReg* %4227 to %union.vec128_t*
  %4228 = bitcast %"class.std::bitset"* %YMM1.i536 to i8*
  %4229 = bitcast %"class.std::bitset"* %YMM1.i536 to i8*
  %4230 = bitcast %union.vec128_t* %XMM0.i537 to i8*
  %4231 = load i64, i64* %PC.i535
  %4232 = add i64 %4231, 4
  store i64 %4232, i64* %PC.i535
  %4233 = bitcast i8* %4229 to double*
  %4234 = load double, double* %4233, align 1
  %4235 = getelementptr inbounds i8, i8* %4229, i64 8
  %4236 = bitcast i8* %4235 to i64*
  %4237 = load i64, i64* %4236, align 1
  %4238 = bitcast i8* %4230 to double*
  %4239 = load double, double* %4238, align 1
  %4240 = fdiv double %4234, %4239
  %4241 = bitcast i8* %4228 to double*
  store double %4240, double* %4241, align 1
  %4242 = getelementptr inbounds i8, i8* %4228, i64 8
  %4243 = bitcast i8* %4242 to i64*
  store i64 %4237, i64* %4243, align 1
  store %struct.Memory* %loadMem_41523f, %struct.Memory** %MEMORY
  %loadMem_415243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 33
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %4246 to i64*
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 1
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %4249 to i64*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4250, i64 0, i64 1
  %XMM1.i534 = bitcast %union.VectorReg* %4251 to %union.vec128_t*
  %4252 = bitcast %union.vec128_t* %XMM1.i534 to i8*
  %4253 = load i64, i64* %PC.i532
  %4254 = add i64 %4253, 4
  store i64 %4254, i64* %PC.i532
  %4255 = bitcast i8* %4252 to double*
  %4256 = load double, double* %4255, align 1
  %4257 = call double @llvm.trunc.f64(double %4256)
  %4258 = call double @llvm.fabs.f64(double %4257)
  %4259 = fcmp ogt double %4258, 0x41DFFFFFFFC00000
  %4260 = fptosi double %4257 to i32
  %4261 = zext i32 %4260 to i64
  %4262 = select i1 %4259, i64 2147483648, i64 %4261
  store i64 %4262, i64* %RAX.i533, align 8
  store %struct.Memory* %loadMem_415243, %struct.Memory** %MEMORY
  %loadMem_415247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 33
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 1
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %EAX.i530 = bitcast %union.anon* %4268 to i32*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 15
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RBP.i531
  %4273 = sub i64 %4272, 32
  %4274 = load i32, i32* %EAX.i530
  %4275 = zext i32 %4274 to i64
  %4276 = load i64, i64* %PC.i529
  %4277 = add i64 %4276, 3
  store i64 %4277, i64* %PC.i529
  %4278 = inttoptr i64 %4273 to i32*
  store i32 %4274, i32* %4278
  store %struct.Memory* %loadMem_415247, %struct.Memory** %MEMORY
  %loadMem_41524a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 33
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 11
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RDI.i527 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 15
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %4287 to i64*
  %4288 = load i64, i64* %RBP.i528
  %4289 = sub i64 %4288, 8
  %4290 = load i64, i64* %PC.i526
  %4291 = add i64 %4290, 4
  store i64 %4291, i64* %PC.i526
  %4292 = inttoptr i64 %4289 to i64*
  %4293 = load i64, i64* %4292
  store i64 %4293, i64* %RDI.i527, align 8
  store %struct.Memory* %loadMem_41524a, %struct.Memory** %MEMORY
  %loadMem_41524e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 33
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 7
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 15
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %RBP.i525
  %4304 = sub i64 %4303, 32
  %4305 = load i64, i64* %PC.i523
  %4306 = add i64 %4305, 3
  store i64 %4306, i64* %PC.i523
  %4307 = inttoptr i64 %4304 to i32*
  %4308 = load i32, i32* %4307
  %4309 = zext i32 %4308 to i64
  store i64 %4309, i64* %RDX.i524, align 8
  store %struct.Memory* %loadMem_41524e, %struct.Memory** %MEMORY
  %loadMem_415251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %4312 to i64*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 1
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %4316 = bitcast %union.anon* %4315 to %struct.anon.2*
  %AL.i522 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4316, i32 0, i32 0
  %4317 = load i64, i64* %PC.i521
  %4318 = add i64 %4317, 2
  store i64 %4318, i64* %PC.i521
  store i8 0, i8* %AL.i522, align 1
  store %struct.Memory* %loadMem_415251, %struct.Memory** %MEMORY
  %loadMem1_415253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 33
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %PC.i520
  %4323 = add i64 %4322, -81123
  %4324 = load i64, i64* %PC.i520
  %4325 = add i64 %4324, 5
  %4326 = load i64, i64* %PC.i520
  %4327 = add i64 %4326, 5
  store i64 %4327, i64* %PC.i520
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4329 = load i64, i64* %4328, align 8
  %4330 = add i64 %4329, -8
  %4331 = inttoptr i64 %4330 to i64*
  store i64 %4325, i64* %4331
  store i64 %4330, i64* %4328, align 8
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4323, i64* %4332, align 8
  store %struct.Memory* %loadMem1_415253, %struct.Memory** %MEMORY
  %loadMem2_415253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415253 = load i64, i64* %3
  %4333 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_415253)
  store %struct.Memory* %4333, %struct.Memory** %MEMORY
  %loadMem_415258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4335 = getelementptr inbounds %struct.GPR, %struct.GPR* %4334, i32 0, i32 33
  %4336 = getelementptr inbounds %struct.Reg, %struct.Reg* %4335, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %4336 to i64*
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 1
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %EAX.i515 = bitcast %union.anon* %4339 to i32*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 15
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %4342 to i64*
  %4343 = load i64, i64* %RBP.i516
  %4344 = sub i64 %4343, 216
  %4345 = load i32, i32* %EAX.i515
  %4346 = zext i32 %4345 to i64
  %4347 = load i64, i64* %PC.i514
  %4348 = add i64 %4347, 6
  store i64 %4348, i64* %PC.i514
  %4349 = inttoptr i64 %4344 to i32*
  store i32 %4345, i32* %4349
  store %struct.Memory* %loadMem_415258, %struct.Memory** %MEMORY
  %loadMem_41525e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4351 = getelementptr inbounds %struct.GPR, %struct.GPR* %4350, i32 0, i32 33
  %4352 = getelementptr inbounds %struct.Reg, %struct.Reg* %4351, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %4352 to i64*
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 1
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 15
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %4358 to i64*
  %4359 = load i64, i64* %RBP.i513
  %4360 = sub i64 %4359, 28
  %4361 = load i64, i64* %PC.i511
  %4362 = add i64 %4361, 3
  store i64 %4362, i64* %PC.i511
  %4363 = inttoptr i64 %4360 to i32*
  %4364 = load i32, i32* %4363
  %4365 = zext i32 %4364 to i64
  store i64 %4365, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_41525e, %struct.Memory** %MEMORY
  %loadMem_415261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 33
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %4368 to i64*
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 1
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %4371 to i64*
  %4372 = load i64, i64* %RAX.i510
  %4373 = load i64, i64* %PC.i509
  %4374 = add i64 %4373, 3
  store i64 %4374, i64* %PC.i509
  %4375 = trunc i64 %4372 to i32
  %4376 = add i32 1, %4375
  %4377 = zext i32 %4376 to i64
  store i64 %4377, i64* %RAX.i510, align 8
  %4378 = icmp ult i32 %4376, %4375
  %4379 = icmp ult i32 %4376, 1
  %4380 = or i1 %4378, %4379
  %4381 = zext i1 %4380 to i8
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4381, i8* %4382, align 1
  %4383 = and i32 %4376, 255
  %4384 = call i32 @llvm.ctpop.i32(i32 %4383)
  %4385 = trunc i32 %4384 to i8
  %4386 = and i8 %4385, 1
  %4387 = xor i8 %4386, 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4387, i8* %4388, align 1
  %4389 = xor i64 1, %4372
  %4390 = trunc i64 %4389 to i32
  %4391 = xor i32 %4390, %4376
  %4392 = lshr i32 %4391, 4
  %4393 = trunc i32 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4394, i8* %4395, align 1
  %4396 = icmp eq i32 %4376, 0
  %4397 = zext i1 %4396 to i8
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4397, i8* %4398, align 1
  %4399 = lshr i32 %4376, 31
  %4400 = trunc i32 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4400, i8* %4401, align 1
  %4402 = lshr i32 %4375, 31
  %4403 = xor i32 %4399, %4402
  %4404 = add i32 %4403, %4399
  %4405 = icmp eq i32 %4404, 2
  %4406 = zext i1 %4405 to i8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4406, i8* %4407, align 1
  store %struct.Memory* %loadMem_415261, %struct.Memory** %MEMORY
  %loadMem_415264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 1
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %EAX.i507 = bitcast %union.anon* %4413 to i32*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 15
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %4416 to i64*
  %4417 = load i64, i64* %RBP.i508
  %4418 = sub i64 %4417, 28
  %4419 = load i32, i32* %EAX.i507
  %4420 = zext i32 %4419 to i64
  %4421 = load i64, i64* %PC.i506
  %4422 = add i64 %4421, 3
  store i64 %4422, i64* %PC.i506
  %4423 = inttoptr i64 %4418 to i32*
  store i32 %4419, i32* %4423
  store %struct.Memory* %loadMem_415264, %struct.Memory** %MEMORY
  %loadMem_415267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 33
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %4426 to i64*
  %4427 = load i64, i64* %PC.i505
  %4428 = add i64 %4427, -157
  %4429 = load i64, i64* %PC.i505
  %4430 = add i64 %4429, 5
  store i64 %4430, i64* %PC.i505
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4428, i64* %4431, align 8
  store %struct.Memory* %loadMem_415267, %struct.Memory** %MEMORY
  br label %block_.L_4151ca

block_.L_41526c:                                  ; preds = %block_.L_4151ca
  %loadMem_41526c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 33
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %4434 to i64*
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 15
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %4437 to i64*
  %4438 = load i64, i64* %RBP.i504
  %4439 = sub i64 %4438, 24
  %4440 = load i64, i64* %PC.i503
  %4441 = add i64 %4440, 4
  store i64 %4441, i64* %PC.i503
  %4442 = inttoptr i64 %4439 to i32*
  %4443 = load i32, i32* %4442
  %4444 = sub i32 %4443, 1
  %4445 = icmp ult i32 %4443, 1
  %4446 = zext i1 %4445 to i8
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4446, i8* %4447, align 1
  %4448 = and i32 %4444, 255
  %4449 = call i32 @llvm.ctpop.i32(i32 %4448)
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = xor i8 %4451, 1
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4452, i8* %4453, align 1
  %4454 = xor i32 %4443, 1
  %4455 = xor i32 %4454, %4444
  %4456 = lshr i32 %4455, 4
  %4457 = trunc i32 %4456 to i8
  %4458 = and i8 %4457, 1
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4458, i8* %4459, align 1
  %4460 = icmp eq i32 %4444, 0
  %4461 = zext i1 %4460 to i8
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4461, i8* %4462, align 1
  %4463 = lshr i32 %4444, 31
  %4464 = trunc i32 %4463 to i8
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4464, i8* %4465, align 1
  %4466 = lshr i32 %4443, 31
  %4467 = xor i32 %4463, %4466
  %4468 = add i32 %4467, %4466
  %4469 = icmp eq i32 %4468, 2
  %4470 = zext i1 %4469 to i8
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4470, i8* %4471, align 1
  store %struct.Memory* %loadMem_41526c, %struct.Memory** %MEMORY
  %loadMem_415270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4474 to i64*
  %4475 = load i64, i64* %PC.i502
  %4476 = add i64 %4475, 154
  %4477 = load i64, i64* %PC.i502
  %4478 = add i64 %4477, 6
  %4479 = load i64, i64* %PC.i502
  %4480 = add i64 %4479, 6
  store i64 %4480, i64* %PC.i502
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4482 = load i8, i8* %4481, align 1
  %4483 = icmp ne i8 %4482, 0
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4485 = load i8, i8* %4484, align 1
  %4486 = icmp ne i8 %4485, 0
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4488 = load i8, i8* %4487, align 1
  %4489 = icmp ne i8 %4488, 0
  %4490 = xor i1 %4486, %4489
  %4491 = or i1 %4483, %4490
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %BRANCH_TAKEN, align 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4494 = select i1 %4491, i64 %4476, i64 %4478
  store i64 %4494, i64* %4493, align 8
  store %struct.Memory* %loadMem_415270, %struct.Memory** %MEMORY
  %loadBr_415270 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415270 = icmp eq i8 %loadBr_415270, 1
  br i1 %cmpBr_415270, label %block_.L_41530a, label %block_415276

block_415276:                                     ; preds = %block_.L_41526c
  %loadMem_415276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4496 = getelementptr inbounds %struct.GPR, %struct.GPR* %4495, i32 0, i32 33
  %4497 = getelementptr inbounds %struct.Reg, %struct.Reg* %4496, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4497 to i64*
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4499 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4498, i64 0, i64 0
  %YMM0.i501 = bitcast %union.VectorReg* %4499 to %"class.std::bitset"*
  %4500 = bitcast %"class.std::bitset"* %YMM0.i501 to i8*
  %4501 = load i64, i64* %PC.i500
  %4502 = add i64 %4501, ptrtoint (%G_0x3f5c2__rip__type* @G_0x3f5c2__rip_ to i64)
  %4503 = load i64, i64* %PC.i500
  %4504 = add i64 %4503, 8
  store i64 %4504, i64* %PC.i500
  %4505 = inttoptr i64 %4502 to double*
  %4506 = load double, double* %4505
  %4507 = bitcast i8* %4500 to double*
  store double %4506, double* %4507, align 1
  %4508 = getelementptr inbounds i8, i8* %4500, i64 8
  %4509 = bitcast i8* %4508 to double*
  store double 0.000000e+00, double* %4509, align 1
  store %struct.Memory* %loadMem_415276, %struct.Memory** %MEMORY
  %loadMem_41527e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 33
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4512 to i64*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 1
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 15
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %4518 to i64*
  %4519 = load i64, i64* %RBP.i499
  %4520 = sub i64 %4519, 16
  %4521 = load i64, i64* %PC.i497
  %4522 = add i64 %4521, 4
  store i64 %4522, i64* %PC.i497
  %4523 = inttoptr i64 %4520 to i64*
  %4524 = load i64, i64* %4523
  store i64 %4524, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_41527e, %struct.Memory** %MEMORY
  %loadMem_415282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 33
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 1
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %4530 to i64*
  %4531 = load i64, i64* %RAX.i496
  %4532 = add i64 %4531, 312
  %4533 = load i64, i64* %PC.i495
  %4534 = add i64 %4533, 7
  store i64 %4534, i64* %PC.i495
  %4535 = inttoptr i64 %4532 to i64*
  %4536 = load i64, i64* %4535
  store i64 %4536, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_415282, %struct.Memory** %MEMORY
  %loadMem_415289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 33
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 1
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %4542 to i64*
  %4543 = load i64, i64* %RAX.i494
  %4544 = add i64 %4543, 8
  %4545 = load i64, i64* %PC.i493
  %4546 = add i64 %4545, 4
  store i64 %4546, i64* %PC.i493
  %4547 = inttoptr i64 %4544 to i64*
  %4548 = load i64, i64* %4547
  store i64 %4548, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_415289, %struct.Memory** %MEMORY
  %loadMem_41528d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 5
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 15
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %RBP.i492
  %4559 = sub i64 %4558, 24
  %4560 = load i64, i64* %PC.i490
  %4561 = add i64 %4560, 3
  store i64 %4561, i64* %PC.i490
  %4562 = inttoptr i64 %4559 to i32*
  %4563 = load i32, i32* %4562
  %4564 = zext i32 %4563 to i64
  store i64 %4564, i64* %RCX.i491, align 8
  store %struct.Memory* %loadMem_41528d, %struct.Memory** %MEMORY
  %loadMem_415290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 5
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %4570 to i64*
  %4571 = load i64, i64* %RCX.i489
  %4572 = load i64, i64* %PC.i488
  %4573 = add i64 %4572, 3
  store i64 %4573, i64* %PC.i488
  %4574 = trunc i64 %4571 to i32
  %4575 = sub i32 %4574, 1
  %4576 = zext i32 %4575 to i64
  store i64 %4576, i64* %RCX.i489, align 8
  %4577 = icmp ult i32 %4574, 1
  %4578 = zext i1 %4577 to i8
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4578, i8* %4579, align 1
  %4580 = and i32 %4575, 255
  %4581 = call i32 @llvm.ctpop.i32(i32 %4580)
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  %4584 = xor i8 %4583, 1
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4584, i8* %4585, align 1
  %4586 = xor i64 1, %4571
  %4587 = trunc i64 %4586 to i32
  %4588 = xor i32 %4587, %4575
  %4589 = lshr i32 %4588, 4
  %4590 = trunc i32 %4589 to i8
  %4591 = and i8 %4590, 1
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4591, i8* %4592, align 1
  %4593 = icmp eq i32 %4575, 0
  %4594 = zext i1 %4593 to i8
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4594, i8* %4595, align 1
  %4596 = lshr i32 %4575, 31
  %4597 = trunc i32 %4596 to i8
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4597, i8* %4598, align 1
  %4599 = lshr i32 %4574, 31
  %4600 = xor i32 %4596, %4599
  %4601 = add i32 %4600, %4599
  %4602 = icmp eq i32 %4601, 2
  %4603 = zext i1 %4602 to i8
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4603, i8* %4604, align 1
  store %struct.Memory* %loadMem_415290, %struct.Memory** %MEMORY
  %loadMem_415293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 5
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %ECX.i486 = bitcast %union.anon* %4610 to i32*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 7
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %4613 to i64*
  %4614 = load i32, i32* %ECX.i486
  %4615 = zext i32 %4614 to i64
  %4616 = load i64, i64* %PC.i485
  %4617 = add i64 %4616, 3
  store i64 %4617, i64* %PC.i485
  %4618 = shl i64 %4615, 32
  %4619 = ashr exact i64 %4618, 32
  store i64 %4619, i64* %RDX.i487, align 8
  store %struct.Memory* %loadMem_415293, %struct.Memory** %MEMORY
  %loadMem_415296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 1
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 5
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %4628 to i64*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 7
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %RAX.i482
  %4633 = load i64, i64* %RDX.i484
  %4634 = mul i64 %4633, 4
  %4635 = add i64 %4634, %4632
  %4636 = load i64, i64* %PC.i481
  %4637 = add i64 %4636, 3
  store i64 %4637, i64* %PC.i481
  %4638 = inttoptr i64 %4635 to i32*
  %4639 = load i32, i32* %4638
  %4640 = zext i32 %4639 to i64
  store i64 %4640, i64* %RCX.i483, align 8
  store %struct.Memory* %loadMem_415296, %struct.Memory** %MEMORY
  %loadMem_415299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 15
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4649 to i64*
  %4650 = load i64, i64* %RBP.i480
  %4651 = sub i64 %4650, 16
  %4652 = load i64, i64* %PC.i478
  %4653 = add i64 %4652, 4
  store i64 %4653, i64* %PC.i478
  %4654 = inttoptr i64 %4651 to i64*
  %4655 = load i64, i64* %4654
  store i64 %4655, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_415299, %struct.Memory** %MEMORY
  %loadMem_41529d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 33
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4658 to i64*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 1
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %4661 to i64*
  %4662 = load i64, i64* %RAX.i477
  %4663 = add i64 %4662, 312
  %4664 = load i64, i64* %PC.i476
  %4665 = add i64 %4664, 7
  store i64 %4665, i64* %PC.i476
  %4666 = inttoptr i64 %4663 to i64*
  %4667 = load i64, i64* %4666
  store i64 %4667, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_41529d, %struct.Memory** %MEMORY
  %loadMem_4152a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 33
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4670 to i64*
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4672 = getelementptr inbounds %struct.GPR, %struct.GPR* %4671, i32 0, i32 1
  %4673 = getelementptr inbounds %struct.Reg, %struct.Reg* %4672, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %4673 to i64*
  %4674 = load i64, i64* %RAX.i475
  %4675 = add i64 %4674, 24
  %4676 = load i64, i64* %PC.i474
  %4677 = add i64 %4676, 4
  store i64 %4677, i64* %PC.i474
  %4678 = inttoptr i64 %4675 to i64*
  %4679 = load i64, i64* %4678
  store i64 %4679, i64* %RAX.i475, align 8
  store %struct.Memory* %loadMem_4152a4, %struct.Memory** %MEMORY
  %loadMem_4152a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 33
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 9
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RSI.i472 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 15
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %4688 to i64*
  %4689 = load i64, i64* %RBP.i473
  %4690 = sub i64 %4689, 24
  %4691 = load i64, i64* %PC.i471
  %4692 = add i64 %4691, 3
  store i64 %4692, i64* %PC.i471
  %4693 = inttoptr i64 %4690 to i32*
  %4694 = load i32, i32* %4693
  %4695 = zext i32 %4694 to i64
  store i64 %4695, i64* %RSI.i472, align 8
  store %struct.Memory* %loadMem_4152a8, %struct.Memory** %MEMORY
  %loadMem_4152ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 33
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 9
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %4701 to i64*
  %4702 = load i64, i64* %RSI.i470
  %4703 = load i64, i64* %PC.i469
  %4704 = add i64 %4703, 3
  store i64 %4704, i64* %PC.i469
  %4705 = trunc i64 %4702 to i32
  %4706 = sub i32 %4705, 1
  %4707 = zext i32 %4706 to i64
  store i64 %4707, i64* %RSI.i470, align 8
  %4708 = icmp ult i32 %4705, 1
  %4709 = zext i1 %4708 to i8
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4709, i8* %4710, align 1
  %4711 = and i32 %4706, 255
  %4712 = call i32 @llvm.ctpop.i32(i32 %4711)
  %4713 = trunc i32 %4712 to i8
  %4714 = and i8 %4713, 1
  %4715 = xor i8 %4714, 1
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4715, i8* %4716, align 1
  %4717 = xor i64 1, %4702
  %4718 = trunc i64 %4717 to i32
  %4719 = xor i32 %4718, %4706
  %4720 = lshr i32 %4719, 4
  %4721 = trunc i32 %4720 to i8
  %4722 = and i8 %4721, 1
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4722, i8* %4723, align 1
  %4724 = icmp eq i32 %4706, 0
  %4725 = zext i1 %4724 to i8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4725, i8* %4726, align 1
  %4727 = lshr i32 %4706, 31
  %4728 = trunc i32 %4727 to i8
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4728, i8* %4729, align 1
  %4730 = lshr i32 %4705, 31
  %4731 = xor i32 %4727, %4730
  %4732 = add i32 %4731, %4730
  %4733 = icmp eq i32 %4732, 2
  %4734 = zext i1 %4733 to i8
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4734, i8* %4735, align 1
  store %struct.Memory* %loadMem_4152ab, %struct.Memory** %MEMORY
  %loadMem_4152ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 33
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4738 to i64*
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 9
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %ESI.i467 = bitcast %union.anon* %4741 to i32*
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 7
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %4744 to i64*
  %4745 = load i32, i32* %ESI.i467
  %4746 = zext i32 %4745 to i64
  %4747 = load i64, i64* %PC.i466
  %4748 = add i64 %4747, 3
  store i64 %4748, i64* %PC.i466
  %4749 = shl i64 %4746, 32
  %4750 = ashr exact i64 %4749, 32
  store i64 %4750, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_4152ae, %struct.Memory** %MEMORY
  %loadMem_4152b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 1
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 5
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 7
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RDX.i465 = bitcast %union.anon* %4762 to i64*
  %4763 = load i64, i64* %RCX.i464
  %4764 = load i64, i64* %RAX.i463
  %4765 = load i64, i64* %RDX.i465
  %4766 = mul i64 %4765, 4
  %4767 = add i64 %4766, %4764
  %4768 = load i64, i64* %PC.i462
  %4769 = add i64 %4768, 3
  store i64 %4769, i64* %PC.i462
  %4770 = trunc i64 %4763 to i32
  %4771 = inttoptr i64 %4767 to i32*
  %4772 = load i32, i32* %4771
  %4773 = add i32 %4772, %4770
  %4774 = zext i32 %4773 to i64
  store i64 %4774, i64* %RCX.i464, align 8
  %4775 = icmp ult i32 %4773, %4770
  %4776 = icmp ult i32 %4773, %4772
  %4777 = or i1 %4775, %4776
  %4778 = zext i1 %4777 to i8
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4778, i8* %4779, align 1
  %4780 = and i32 %4773, 255
  %4781 = call i32 @llvm.ctpop.i32(i32 %4780)
  %4782 = trunc i32 %4781 to i8
  %4783 = and i8 %4782, 1
  %4784 = xor i8 %4783, 1
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4784, i8* %4785, align 1
  %4786 = xor i32 %4772, %4770
  %4787 = xor i32 %4786, %4773
  %4788 = lshr i32 %4787, 4
  %4789 = trunc i32 %4788 to i8
  %4790 = and i8 %4789, 1
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4790, i8* %4791, align 1
  %4792 = icmp eq i32 %4773, 0
  %4793 = zext i1 %4792 to i8
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4793, i8* %4794, align 1
  %4795 = lshr i32 %4773, 31
  %4796 = trunc i32 %4795 to i8
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4796, i8* %4797, align 1
  %4798 = lshr i32 %4770, 31
  %4799 = lshr i32 %4772, 31
  %4800 = xor i32 %4795, %4798
  %4801 = xor i32 %4795, %4799
  %4802 = add i32 %4800, %4801
  %4803 = icmp eq i32 %4802, 2
  %4804 = zext i1 %4803 to i8
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4804, i8* %4805, align 1
  store %struct.Memory* %loadMem_4152b1, %struct.Memory** %MEMORY
  %loadMem_4152b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 1
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %4811 to i64*
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 15
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4814 to i64*
  %4815 = load i64, i64* %RBP.i461
  %4816 = sub i64 %4815, 16
  %4817 = load i64, i64* %PC.i459
  %4818 = add i64 %4817, 4
  store i64 %4818, i64* %PC.i459
  %4819 = inttoptr i64 %4816 to i64*
  %4820 = load i64, i64* %4819
  store i64 %4820, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_4152b4, %struct.Memory** %MEMORY
  %loadMem_4152b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 33
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4823 to i64*
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 1
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %4826 to i64*
  %4827 = load i64, i64* %RAX.i458
  %4828 = add i64 %4827, 312
  %4829 = load i64, i64* %PC.i457
  %4830 = add i64 %4829, 7
  store i64 %4830, i64* %PC.i457
  %4831 = inttoptr i64 %4828 to i64*
  %4832 = load i64, i64* %4831
  store i64 %4832, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_4152b8, %struct.Memory** %MEMORY
  %loadMem_4152bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 33
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4835 to i64*
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 1
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %4838 to i64*
  %4839 = load i64, i64* %RAX.i456
  %4840 = load i64, i64* %PC.i455
  %4841 = add i64 %4840, 3
  store i64 %4841, i64* %PC.i455
  %4842 = inttoptr i64 %4839 to i64*
  %4843 = load i64, i64* %4842
  store i64 %4843, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_4152bf, %struct.Memory** %MEMORY
  %loadMem_4152c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 9
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %4849 to i64*
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 15
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %4852 to i64*
  %4853 = load i64, i64* %RBP.i454
  %4854 = sub i64 %4853, 24
  %4855 = load i64, i64* %PC.i452
  %4856 = add i64 %4855, 3
  store i64 %4856, i64* %PC.i452
  %4857 = inttoptr i64 %4854 to i32*
  %4858 = load i32, i32* %4857
  %4859 = zext i32 %4858 to i64
  store i64 %4859, i64* %RSI.i453, align 8
  store %struct.Memory* %loadMem_4152c2, %struct.Memory** %MEMORY
  %loadMem_4152c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 33
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4862 to i64*
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 9
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %RSI.i451 = bitcast %union.anon* %4865 to i64*
  %4866 = load i64, i64* %RSI.i451
  %4867 = load i64, i64* %PC.i450
  %4868 = add i64 %4867, 3
  store i64 %4868, i64* %PC.i450
  %4869 = trunc i64 %4866 to i32
  %4870 = sub i32 %4869, 1
  %4871 = zext i32 %4870 to i64
  store i64 %4871, i64* %RSI.i451, align 8
  %4872 = icmp ult i32 %4869, 1
  %4873 = zext i1 %4872 to i8
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4873, i8* %4874, align 1
  %4875 = and i32 %4870, 255
  %4876 = call i32 @llvm.ctpop.i32(i32 %4875)
  %4877 = trunc i32 %4876 to i8
  %4878 = and i8 %4877, 1
  %4879 = xor i8 %4878, 1
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4879, i8* %4880, align 1
  %4881 = xor i64 1, %4866
  %4882 = trunc i64 %4881 to i32
  %4883 = xor i32 %4882, %4870
  %4884 = lshr i32 %4883, 4
  %4885 = trunc i32 %4884 to i8
  %4886 = and i8 %4885, 1
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4886, i8* %4887, align 1
  %4888 = icmp eq i32 %4870, 0
  %4889 = zext i1 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4889, i8* %4890, align 1
  %4891 = lshr i32 %4870, 31
  %4892 = trunc i32 %4891 to i8
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4892, i8* %4893, align 1
  %4894 = lshr i32 %4869, 31
  %4895 = xor i32 %4891, %4894
  %4896 = add i32 %4895, %4894
  %4897 = icmp eq i32 %4896, 2
  %4898 = zext i1 %4897 to i8
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4898, i8* %4899, align 1
  store %struct.Memory* %loadMem_4152c5, %struct.Memory** %MEMORY
  %loadMem_4152c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 33
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 9
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %ESI.i448 = bitcast %union.anon* %4905 to i32*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 7
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %4908 to i64*
  %4909 = load i32, i32* %ESI.i448
  %4910 = zext i32 %4909 to i64
  %4911 = load i64, i64* %PC.i447
  %4912 = add i64 %4911, 3
  store i64 %4912, i64* %PC.i447
  %4913 = shl i64 %4910, 32
  %4914 = ashr exact i64 %4913, 32
  store i64 %4914, i64* %RDX.i449, align 8
  store %struct.Memory* %loadMem_4152c8, %struct.Memory** %MEMORY
  %loadMem_4152cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 33
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 1
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %4920 to i64*
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4922 = getelementptr inbounds %struct.GPR, %struct.GPR* %4921, i32 0, i32 5
  %4923 = getelementptr inbounds %struct.Reg, %struct.Reg* %4922, i32 0, i32 0
  %RCX.i445 = bitcast %union.anon* %4923 to i64*
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 7
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %4926 to i64*
  %4927 = load i64, i64* %RCX.i445
  %4928 = load i64, i64* %RAX.i444
  %4929 = load i64, i64* %RDX.i446
  %4930 = mul i64 %4929, 4
  %4931 = add i64 %4930, %4928
  %4932 = load i64, i64* %PC.i443
  %4933 = add i64 %4932, 3
  store i64 %4933, i64* %PC.i443
  %4934 = trunc i64 %4927 to i32
  %4935 = inttoptr i64 %4931 to i32*
  %4936 = load i32, i32* %4935
  %4937 = sub i32 %4934, %4936
  %4938 = zext i32 %4937 to i64
  store i64 %4938, i64* %RCX.i445, align 8
  %4939 = icmp ult i32 %4934, %4936
  %4940 = zext i1 %4939 to i8
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4940, i8* %4941, align 1
  %4942 = and i32 %4937, 255
  %4943 = call i32 @llvm.ctpop.i32(i32 %4942)
  %4944 = trunc i32 %4943 to i8
  %4945 = and i8 %4944, 1
  %4946 = xor i8 %4945, 1
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4946, i8* %4947, align 1
  %4948 = xor i32 %4936, %4934
  %4949 = xor i32 %4948, %4937
  %4950 = lshr i32 %4949, 4
  %4951 = trunc i32 %4950 to i8
  %4952 = and i8 %4951, 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4952, i8* %4953, align 1
  %4954 = icmp eq i32 %4937, 0
  %4955 = zext i1 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4955, i8* %4956, align 1
  %4957 = lshr i32 %4937, 31
  %4958 = trunc i32 %4957 to i8
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4958, i8* %4959, align 1
  %4960 = lshr i32 %4934, 31
  %4961 = lshr i32 %4936, 31
  %4962 = xor i32 %4961, %4960
  %4963 = xor i32 %4957, %4960
  %4964 = add i32 %4963, %4962
  %4965 = icmp eq i32 %4964, 2
  %4966 = zext i1 %4965 to i8
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4966, i8* %4967, align 1
  store %struct.Memory* %loadMem_4152cb, %struct.Memory** %MEMORY
  %loadMem_4152ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 33
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4970 to i64*
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 1
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 15
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %4976 to i64*
  %4977 = load i64, i64* %RBP.i442
  %4978 = sub i64 %4977, 16
  %4979 = load i64, i64* %PC.i440
  %4980 = add i64 %4979, 4
  store i64 %4980, i64* %PC.i440
  %4981 = inttoptr i64 %4978 to i64*
  %4982 = load i64, i64* %4981
  store i64 %4982, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_4152ce, %struct.Memory** %MEMORY
  %loadMem_4152d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 33
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4985 to i64*
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 1
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %4988 to i64*
  %4989 = load i64, i64* %RAX.i439
  %4990 = add i64 %4989, 312
  %4991 = load i64, i64* %PC.i438
  %4992 = add i64 %4991, 7
  store i64 %4992, i64* %PC.i438
  %4993 = inttoptr i64 %4990 to i64*
  %4994 = load i64, i64* %4993
  store i64 %4994, i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_4152d2, %struct.Memory** %MEMORY
  %loadMem_4152d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 33
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4997 to i64*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 1
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %5000 to i64*
  %5001 = load i64, i64* %RAX.i437
  %5002 = add i64 %5001, 32
  %5003 = load i64, i64* %PC.i436
  %5004 = add i64 %5003, 4
  store i64 %5004, i64* %PC.i436
  %5005 = inttoptr i64 %5002 to i64*
  %5006 = load i64, i64* %5005
  store i64 %5006, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_4152d9, %struct.Memory** %MEMORY
  %loadMem_4152dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 9
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RSI.i434 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 15
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %RBP.i435
  %5017 = sub i64 %5016, 24
  %5018 = load i64, i64* %PC.i433
  %5019 = add i64 %5018, 3
  store i64 %5019, i64* %PC.i433
  %5020 = inttoptr i64 %5017 to i32*
  %5021 = load i32, i32* %5020
  %5022 = zext i32 %5021 to i64
  store i64 %5022, i64* %RSI.i434, align 8
  store %struct.Memory* %loadMem_4152dd, %struct.Memory** %MEMORY
  %loadMem_4152e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 9
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RSI.i432 = bitcast %union.anon* %5028 to i64*
  %5029 = load i64, i64* %RSI.i432
  %5030 = load i64, i64* %PC.i431
  %5031 = add i64 %5030, 3
  store i64 %5031, i64* %PC.i431
  %5032 = trunc i64 %5029 to i32
  %5033 = sub i32 %5032, 1
  %5034 = zext i32 %5033 to i64
  store i64 %5034, i64* %RSI.i432, align 8
  %5035 = icmp ult i32 %5032, 1
  %5036 = zext i1 %5035 to i8
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5036, i8* %5037, align 1
  %5038 = and i32 %5033, 255
  %5039 = call i32 @llvm.ctpop.i32(i32 %5038)
  %5040 = trunc i32 %5039 to i8
  %5041 = and i8 %5040, 1
  %5042 = xor i8 %5041, 1
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5042, i8* %5043, align 1
  %5044 = xor i64 1, %5029
  %5045 = trunc i64 %5044 to i32
  %5046 = xor i32 %5045, %5033
  %5047 = lshr i32 %5046, 4
  %5048 = trunc i32 %5047 to i8
  %5049 = and i8 %5048, 1
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5049, i8* %5050, align 1
  %5051 = icmp eq i32 %5033, 0
  %5052 = zext i1 %5051 to i8
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5052, i8* %5053, align 1
  %5054 = lshr i32 %5033, 31
  %5055 = trunc i32 %5054 to i8
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5055, i8* %5056, align 1
  %5057 = lshr i32 %5032, 31
  %5058 = xor i32 %5054, %5057
  %5059 = add i32 %5058, %5057
  %5060 = icmp eq i32 %5059, 2
  %5061 = zext i1 %5060 to i8
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5061, i8* %5062, align 1
  store %struct.Memory* %loadMem_4152e0, %struct.Memory** %MEMORY
  %loadMem_4152e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 33
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %5065 to i64*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 9
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %ESI.i429 = bitcast %union.anon* %5068 to i32*
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 7
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %5071 to i64*
  %5072 = load i32, i32* %ESI.i429
  %5073 = zext i32 %5072 to i64
  %5074 = load i64, i64* %PC.i428
  %5075 = add i64 %5074, 3
  store i64 %5075, i64* %PC.i428
  %5076 = shl i64 %5073, 32
  %5077 = ashr exact i64 %5076, 32
  store i64 %5077, i64* %RDX.i430, align 8
  store %struct.Memory* %loadMem_4152e3, %struct.Memory** %MEMORY
  %loadMem_4152e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 33
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %5080 to i64*
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 1
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %5083 to i64*
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 5
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 7
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RDX.i427 = bitcast %union.anon* %5089 to i64*
  %5090 = load i64, i64* %RCX.i426
  %5091 = load i64, i64* %RAX.i425
  %5092 = load i64, i64* %RDX.i427
  %5093 = mul i64 %5092, 4
  %5094 = add i64 %5093, %5091
  %5095 = load i64, i64* %PC.i424
  %5096 = add i64 %5095, 3
  store i64 %5096, i64* %PC.i424
  %5097 = trunc i64 %5090 to i32
  %5098 = inttoptr i64 %5094 to i32*
  %5099 = load i32, i32* %5098
  %5100 = sub i32 %5097, %5099
  %5101 = zext i32 %5100 to i64
  store i64 %5101, i64* %RCX.i426, align 8
  %5102 = icmp ult i32 %5097, %5099
  %5103 = zext i1 %5102 to i8
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5103, i8* %5104, align 1
  %5105 = and i32 %5100, 255
  %5106 = call i32 @llvm.ctpop.i32(i32 %5105)
  %5107 = trunc i32 %5106 to i8
  %5108 = and i8 %5107, 1
  %5109 = xor i8 %5108, 1
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5109, i8* %5110, align 1
  %5111 = xor i32 %5099, %5097
  %5112 = xor i32 %5111, %5100
  %5113 = lshr i32 %5112, 4
  %5114 = trunc i32 %5113 to i8
  %5115 = and i8 %5114, 1
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5115, i8* %5116, align 1
  %5117 = icmp eq i32 %5100, 0
  %5118 = zext i1 %5117 to i8
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5118, i8* %5119, align 1
  %5120 = lshr i32 %5100, 31
  %5121 = trunc i32 %5120 to i8
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5121, i8* %5122, align 1
  %5123 = lshr i32 %5097, 31
  %5124 = lshr i32 %5099, 31
  %5125 = xor i32 %5124, %5123
  %5126 = xor i32 %5120, %5123
  %5127 = add i32 %5126, %5125
  %5128 = icmp eq i32 %5127, 2
  %5129 = zext i1 %5128 to i8
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5129, i8* %5130, align 1
  store %struct.Memory* %loadMem_4152e6, %struct.Memory** %MEMORY
  %loadMem_4152e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 5
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %ECX.i422 = bitcast %union.anon* %5136 to i32*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 5
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %5139 to i64*
  %5140 = load i32, i32* %ECX.i422
  %5141 = zext i32 %5140 to i64
  %5142 = load i64, i64* %PC.i421
  %5143 = add i64 %5142, 3
  store i64 %5143, i64* %PC.i421
  %5144 = shl i64 %5141, 32
  %5145 = ashr exact i64 %5144, 32
  %5146 = mul i64 -1, %5145
  %5147 = trunc i64 %5146 to i32
  %5148 = and i64 %5146, 4294967295
  store i64 %5148, i64* %RCX.i423, align 8
  %5149 = shl i64 %5146, 32
  %5150 = ashr exact i64 %5149, 32
  %5151 = icmp ne i64 %5150, %5146
  %5152 = zext i1 %5151 to i8
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5152, i8* %5153, align 1
  %5154 = and i32 %5147, 255
  %5155 = call i32 @llvm.ctpop.i32(i32 %5154)
  %5156 = trunc i32 %5155 to i8
  %5157 = and i8 %5156, 1
  %5158 = xor i8 %5157, 1
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5158, i8* %5159, align 1
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5160, align 1
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5161, align 1
  %5162 = lshr i32 %5147, 31
  %5163 = trunc i32 %5162 to i8
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5163, i8* %5164, align 1
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5152, i8* %5165, align 1
  store %struct.Memory* %loadMem_4152e9, %struct.Memory** %MEMORY
  %loadMem_4152ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 33
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %5168 to i64*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 5
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %ECX.i419 = bitcast %union.anon* %5171 to i32*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 15
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %5174 to i64*
  %5175 = load i64, i64* %RBP.i420
  %5176 = sub i64 %5175, 40
  %5177 = load i32, i32* %ECX.i419
  %5178 = zext i32 %5177 to i64
  %5179 = load i64, i64* %PC.i418
  %5180 = add i64 %5179, 3
  store i64 %5180, i64* %PC.i418
  %5181 = inttoptr i64 %5176 to i32*
  store i32 %5177, i32* %5181
  store %struct.Memory* %loadMem_4152ef, %struct.Memory** %MEMORY
  %loadMem_4152f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 5
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 15
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %RBP.i417
  %5192 = sub i64 %5191, 40
  %5193 = load i64, i64* %PC.i415
  %5194 = add i64 %5193, 4
  store i64 %5194, i64* %PC.i415
  %5195 = inttoptr i64 %5192 to i32*
  %5196 = load i32, i32* %5195
  %5197 = sext i32 %5196 to i64
  %5198 = mul i64 %5197, 100
  %5199 = trunc i64 %5198 to i32
  %5200 = and i64 %5198, 4294967295
  store i64 %5200, i64* %RCX.i416, align 8
  %5201 = shl i64 %5198, 32
  %5202 = ashr exact i64 %5201, 32
  %5203 = icmp ne i64 %5202, %5198
  %5204 = zext i1 %5203 to i8
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5204, i8* %5205, align 1
  %5206 = and i32 %5199, 255
  %5207 = call i32 @llvm.ctpop.i32(i32 %5206)
  %5208 = trunc i32 %5207 to i8
  %5209 = and i8 %5208, 1
  %5210 = xor i8 %5209, 1
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5210, i8* %5211, align 1
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5212, align 1
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5213, align 1
  %5214 = lshr i32 %5199, 31
  %5215 = trunc i32 %5214 to i8
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5215, i8* %5216, align 1
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5204, i8* %5217, align 1
  store %struct.Memory* %loadMem_4152f2, %struct.Memory** %MEMORY
  %loadMem_4152f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 33
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %5220 to i64*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 5
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %ECX.i413 = bitcast %union.anon* %5223 to i32*
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5224, i64 0, i64 1
  %YMM1.i414 = bitcast %union.VectorReg* %5225 to %"class.std::bitset"*
  %5226 = bitcast %"class.std::bitset"* %YMM1.i414 to i8*
  %5227 = load i32, i32* %ECX.i413
  %5228 = zext i32 %5227 to i64
  %5229 = load i64, i64* %PC.i412
  %5230 = add i64 %5229, 4
  store i64 %5230, i64* %PC.i412
  %5231 = sitofp i32 %5227 to double
  %5232 = bitcast i8* %5226 to double*
  store double %5231, double* %5232, align 1
  store %struct.Memory* %loadMem_4152f6, %struct.Memory** %MEMORY
  %loadMem_4152fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 33
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %5235 to i64*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5236, i64 0, i64 1
  %YMM1.i410 = bitcast %union.VectorReg* %5237 to %"class.std::bitset"*
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5238, i64 0, i64 0
  %XMM0.i411 = bitcast %union.VectorReg* %5239 to %union.vec128_t*
  %5240 = bitcast %"class.std::bitset"* %YMM1.i410 to i8*
  %5241 = bitcast %"class.std::bitset"* %YMM1.i410 to i8*
  %5242 = bitcast %union.vec128_t* %XMM0.i411 to i8*
  %5243 = load i64, i64* %PC.i409
  %5244 = add i64 %5243, 4
  store i64 %5244, i64* %PC.i409
  %5245 = bitcast i8* %5241 to double*
  %5246 = load double, double* %5245, align 1
  %5247 = getelementptr inbounds i8, i8* %5241, i64 8
  %5248 = bitcast i8* %5247 to i64*
  %5249 = load i64, i64* %5248, align 1
  %5250 = bitcast i8* %5242 to double*
  %5251 = load double, double* %5250, align 1
  %5252 = fdiv double %5246, %5251
  %5253 = bitcast i8* %5240 to double*
  store double %5252, double* %5253, align 1
  %5254 = getelementptr inbounds i8, i8* %5240, i64 8
  %5255 = bitcast i8* %5254 to i64*
  store i64 %5249, i64* %5255, align 1
  store %struct.Memory* %loadMem_4152fa, %struct.Memory** %MEMORY
  %loadMem_4152fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 5
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %5261 to i64*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5262, i64 0, i64 1
  %XMM1.i408 = bitcast %union.VectorReg* %5263 to %union.vec128_t*
  %5264 = bitcast %union.vec128_t* %XMM1.i408 to i8*
  %5265 = load i64, i64* %PC.i406
  %5266 = add i64 %5265, 4
  store i64 %5266, i64* %PC.i406
  %5267 = bitcast i8* %5264 to double*
  %5268 = load double, double* %5267, align 1
  %5269 = call double @llvm.trunc.f64(double %5268)
  %5270 = call double @llvm.fabs.f64(double %5269)
  %5271 = fcmp ogt double %5270, 0x41DFFFFFFFC00000
  %5272 = fptosi double %5269 to i32
  %5273 = zext i32 %5272 to i64
  %5274 = select i1 %5271, i64 2147483648, i64 %5273
  store i64 %5274, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_4152fe, %struct.Memory** %MEMORY
  %loadMem_415302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 33
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %5277 to i64*
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 5
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %ECX.i404 = bitcast %union.anon* %5280 to i32*
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 15
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %5283 to i64*
  %5284 = load i64, i64* %RBP.i405
  %5285 = sub i64 %5284, 40
  %5286 = load i32, i32* %ECX.i404
  %5287 = zext i32 %5286 to i64
  %5288 = load i64, i64* %PC.i403
  %5289 = add i64 %5288, 3
  store i64 %5289, i64* %PC.i403
  %5290 = inttoptr i64 %5285 to i32*
  store i32 %5286, i32* %5290
  store %struct.Memory* %loadMem_415302, %struct.Memory** %MEMORY
  %loadMem_415305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 33
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %5293 to i64*
  %5294 = load i64, i64* %PC.i402
  %5295 = add i64 %5294, 12
  %5296 = load i64, i64* %PC.i402
  %5297 = add i64 %5296, 5
  store i64 %5297, i64* %PC.i402
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5295, i64* %5298, align 8
  store %struct.Memory* %loadMem_415305, %struct.Memory** %MEMORY
  br label %block_.L_415311

block_.L_41530a:                                  ; preds = %block_.L_41526c
  %loadMem_41530a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 15
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %5304 to i64*
  %5305 = load i64, i64* %RBP.i401
  %5306 = sub i64 %5305, 40
  %5307 = load i64, i64* %PC.i400
  %5308 = add i64 %5307, 7
  store i64 %5308, i64* %PC.i400
  %5309 = inttoptr i64 %5306 to i32*
  store i32 100, i32* %5309
  store %struct.Memory* %loadMem_41530a, %struct.Memory** %MEMORY
  br label %block_.L_415311

block_.L_415311:                                  ; preds = %block_.L_41530a, %block_415276
  %loadMem_415311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 33
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %5312 to i64*
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 15
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %5315 to i64*
  %5316 = load i64, i64* %RBP.i399
  %5317 = sub i64 %5316, 24
  %5318 = load i64, i64* %PC.i398
  %5319 = add i64 %5318, 4
  store i64 %5319, i64* %PC.i398
  %5320 = inttoptr i64 %5317 to i32*
  %5321 = load i32, i32* %5320
  %5322 = sub i32 %5321, 1
  %5323 = icmp ult i32 %5321, 1
  %5324 = zext i1 %5323 to i8
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5324, i8* %5325, align 1
  %5326 = and i32 %5322, 255
  %5327 = call i32 @llvm.ctpop.i32(i32 %5326)
  %5328 = trunc i32 %5327 to i8
  %5329 = and i8 %5328, 1
  %5330 = xor i8 %5329, 1
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5330, i8* %5331, align 1
  %5332 = xor i32 %5321, 1
  %5333 = xor i32 %5332, %5322
  %5334 = lshr i32 %5333, 4
  %5335 = trunc i32 %5334 to i8
  %5336 = and i8 %5335, 1
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5336, i8* %5337, align 1
  %5338 = icmp eq i32 %5322, 0
  %5339 = zext i1 %5338 to i8
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5339, i8* %5340, align 1
  %5341 = lshr i32 %5322, 31
  %5342 = trunc i32 %5341 to i8
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5342, i8* %5343, align 1
  %5344 = lshr i32 %5321, 31
  %5345 = xor i32 %5341, %5344
  %5346 = add i32 %5345, %5344
  %5347 = icmp eq i32 %5346, 2
  %5348 = zext i1 %5347 to i8
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5348, i8* %5349, align 1
  store %struct.Memory* %loadMem_415311, %struct.Memory** %MEMORY
  %loadMem_415315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 33
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5352 to i64*
  %5353 = load i64, i64* %PC.i397
  %5354 = add i64 %5353, 72
  %5355 = load i64, i64* %PC.i397
  %5356 = add i64 %5355, 6
  %5357 = load i64, i64* %PC.i397
  %5358 = add i64 %5357, 6
  store i64 %5358, i64* %PC.i397
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5360 = load i8, i8* %5359, align 1
  %5361 = icmp ne i8 %5360, 0
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5363 = load i8, i8* %5362, align 1
  %5364 = icmp ne i8 %5363, 0
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5366 = load i8, i8* %5365, align 1
  %5367 = icmp ne i8 %5366, 0
  %5368 = xor i1 %5364, %5367
  %5369 = or i1 %5361, %5368
  %5370 = zext i1 %5369 to i8
  store i8 %5370, i8* %BRANCH_TAKEN, align 1
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5372 = select i1 %5369, i64 %5354, i64 %5356
  store i64 %5372, i64* %5371, align 8
  store %struct.Memory* %loadMem_415315, %struct.Memory** %MEMORY
  %loadBr_415315 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415315 = icmp eq i8 %loadBr_415315, 1
  br i1 %cmpBr_415315, label %block_.L_41535d, label %block_41531b

block_41531b:                                     ; preds = %block_.L_415311
  %loadMem_41531b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 33
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %5375 to i64*
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5377 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5376, i64 0, i64 0
  %YMM0.i396 = bitcast %union.VectorReg* %5377 to %"class.std::bitset"*
  %5378 = bitcast %"class.std::bitset"* %YMM0.i396 to i8*
  %5379 = load i64, i64* %PC.i395
  %5380 = add i64 %5379, ptrtoint (%G_0x3f4fd__rip__type* @G_0x3f4fd__rip_ to i64)
  %5381 = load i64, i64* %PC.i395
  %5382 = add i64 %5381, 8
  store i64 %5382, i64* %PC.i395
  %5383 = inttoptr i64 %5380 to double*
  %5384 = load double, double* %5383
  %5385 = bitcast i8* %5378 to double*
  store double %5384, double* %5385, align 1
  %5386 = getelementptr inbounds i8, i8* %5378, i64 8
  %5387 = bitcast i8* %5386 to double*
  store double 0.000000e+00, double* %5387, align 1
  store %struct.Memory* %loadMem_41531b, %struct.Memory** %MEMORY
  %loadMem_415323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 33
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5390 to i64*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 1
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %5393 to i64*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 15
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %5396 to i64*
  %5397 = load i64, i64* %RBP.i394
  %5398 = sub i64 %5397, 16
  %5399 = load i64, i64* %PC.i392
  %5400 = add i64 %5399, 4
  store i64 %5400, i64* %PC.i392
  %5401 = inttoptr i64 %5398 to i64*
  %5402 = load i64, i64* %5401
  store i64 %5402, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_415323, %struct.Memory** %MEMORY
  %loadMem_415327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 33
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 1
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RAX.i391
  %5410 = add i64 %5409, 312
  %5411 = load i64, i64* %PC.i390
  %5412 = add i64 %5411, 7
  store i64 %5412, i64* %PC.i390
  %5413 = inttoptr i64 %5410 to i64*
  %5414 = load i64, i64* %5413
  store i64 %5414, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_415327, %struct.Memory** %MEMORY
  %loadMem_41532e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 33
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 1
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %5420 to i64*
  %5421 = load i64, i64* %RAX.i389
  %5422 = add i64 %5421, 32
  %5423 = load i64, i64* %PC.i388
  %5424 = add i64 %5423, 4
  store i64 %5424, i64* %PC.i388
  %5425 = inttoptr i64 %5422 to i64*
  %5426 = load i64, i64* %5425
  store i64 %5426, i64* %RAX.i389, align 8
  store %struct.Memory* %loadMem_41532e, %struct.Memory** %MEMORY
  %loadMem_415332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 33
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %5429 to i64*
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5431 = getelementptr inbounds %struct.GPR, %struct.GPR* %5430, i32 0, i32 5
  %5432 = getelementptr inbounds %struct.Reg, %struct.Reg* %5431, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %5432 to i64*
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 15
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %5435 to i64*
  %5436 = load i64, i64* %RBP.i387
  %5437 = sub i64 %5436, 24
  %5438 = load i64, i64* %PC.i385
  %5439 = add i64 %5438, 3
  store i64 %5439, i64* %PC.i385
  %5440 = inttoptr i64 %5437 to i32*
  %5441 = load i32, i32* %5440
  %5442 = zext i32 %5441 to i64
  store i64 %5442, i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_415332, %struct.Memory** %MEMORY
  %loadMem_415335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 33
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %5445 to i64*
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 5
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %5448 to i64*
  %5449 = load i64, i64* %RCX.i384
  %5450 = load i64, i64* %PC.i383
  %5451 = add i64 %5450, 3
  store i64 %5451, i64* %PC.i383
  %5452 = trunc i64 %5449 to i32
  %5453 = sub i32 %5452, 1
  %5454 = zext i32 %5453 to i64
  store i64 %5454, i64* %RCX.i384, align 8
  %5455 = icmp ult i32 %5452, 1
  %5456 = zext i1 %5455 to i8
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5456, i8* %5457, align 1
  %5458 = and i32 %5453, 255
  %5459 = call i32 @llvm.ctpop.i32(i32 %5458)
  %5460 = trunc i32 %5459 to i8
  %5461 = and i8 %5460, 1
  %5462 = xor i8 %5461, 1
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5462, i8* %5463, align 1
  %5464 = xor i64 1, %5449
  %5465 = trunc i64 %5464 to i32
  %5466 = xor i32 %5465, %5453
  %5467 = lshr i32 %5466, 4
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5469, i8* %5470, align 1
  %5471 = icmp eq i32 %5453, 0
  %5472 = zext i1 %5471 to i8
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5472, i8* %5473, align 1
  %5474 = lshr i32 %5453, 31
  %5475 = trunc i32 %5474 to i8
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5475, i8* %5476, align 1
  %5477 = lshr i32 %5452, 31
  %5478 = xor i32 %5474, %5477
  %5479 = add i32 %5478, %5477
  %5480 = icmp eq i32 %5479, 2
  %5481 = zext i1 %5480 to i8
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5481, i8* %5482, align 1
  store %struct.Memory* %loadMem_415335, %struct.Memory** %MEMORY
  %loadMem_415338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 33
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %5485 to i64*
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5487 = getelementptr inbounds %struct.GPR, %struct.GPR* %5486, i32 0, i32 5
  %5488 = getelementptr inbounds %struct.Reg, %struct.Reg* %5487, i32 0, i32 0
  %ECX.i381 = bitcast %union.anon* %5488 to i32*
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 7
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %5491 to i64*
  %5492 = load i32, i32* %ECX.i381
  %5493 = zext i32 %5492 to i64
  %5494 = load i64, i64* %PC.i380
  %5495 = add i64 %5494, 3
  store i64 %5495, i64* %PC.i380
  %5496 = shl i64 %5493, 32
  %5497 = ashr exact i64 %5496, 32
  store i64 %5497, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_415338, %struct.Memory** %MEMORY
  %loadMem_41533b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 33
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %5500 to i64*
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5502 = getelementptr inbounds %struct.GPR, %struct.GPR* %5501, i32 0, i32 1
  %5503 = getelementptr inbounds %struct.Reg, %struct.Reg* %5502, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %5503 to i64*
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 5
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 7
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RDX.i379 = bitcast %union.anon* %5509 to i64*
  %5510 = load i64, i64* %RAX.i377
  %5511 = load i64, i64* %RDX.i379
  %5512 = mul i64 %5511, 4
  %5513 = add i64 %5512, %5510
  %5514 = load i64, i64* %PC.i376
  %5515 = add i64 %5514, 4
  store i64 %5515, i64* %PC.i376
  %5516 = inttoptr i64 %5513 to i32*
  %5517 = load i32, i32* %5516
  %5518 = sext i32 %5517 to i64
  %5519 = mul i64 %5518, -1
  %5520 = trunc i64 %5519 to i32
  %5521 = and i64 %5519, 4294967295
  store i64 %5521, i64* %RCX.i378, align 8
  %5522 = shl i64 %5519, 32
  %5523 = ashr exact i64 %5522, 32
  %5524 = icmp ne i64 %5523, %5519
  %5525 = zext i1 %5524 to i8
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5525, i8* %5526, align 1
  %5527 = and i32 %5520, 255
  %5528 = call i32 @llvm.ctpop.i32(i32 %5527)
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = xor i8 %5530, 1
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5531, i8* %5532, align 1
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5533, align 1
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5534, align 1
  %5535 = lshr i32 %5520, 31
  %5536 = trunc i32 %5535 to i8
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5536, i8* %5537, align 1
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5525, i8* %5538, align 1
  store %struct.Memory* %loadMem_41533b, %struct.Memory** %MEMORY
  %loadMem_415342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 5
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %ECX.i374 = bitcast %union.anon* %5544 to i32*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 15
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %5547 to i64*
  %5548 = load i64, i64* %RBP.i375
  %5549 = sub i64 %5548, 44
  %5550 = load i32, i32* %ECX.i374
  %5551 = zext i32 %5550 to i64
  %5552 = load i64, i64* %PC.i373
  %5553 = add i64 %5552, 3
  store i64 %5553, i64* %PC.i373
  %5554 = inttoptr i64 %5549 to i32*
  store i32 %5550, i32* %5554
  store %struct.Memory* %loadMem_415342, %struct.Memory** %MEMORY
  %loadMem_415345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 5
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %5560 to i64*
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 15
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %5563 to i64*
  %5564 = load i64, i64* %RBP.i372
  %5565 = sub i64 %5564, 44
  %5566 = load i64, i64* %PC.i370
  %5567 = add i64 %5566, 4
  store i64 %5567, i64* %PC.i370
  %5568 = inttoptr i64 %5565 to i32*
  %5569 = load i32, i32* %5568
  %5570 = sext i32 %5569 to i64
  %5571 = mul i64 %5570, 100
  %5572 = trunc i64 %5571 to i32
  %5573 = and i64 %5571, 4294967295
  store i64 %5573, i64* %RCX.i371, align 8
  %5574 = shl i64 %5571, 32
  %5575 = ashr exact i64 %5574, 32
  %5576 = icmp ne i64 %5575, %5571
  %5577 = zext i1 %5576 to i8
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5577, i8* %5578, align 1
  %5579 = and i32 %5572, 255
  %5580 = call i32 @llvm.ctpop.i32(i32 %5579)
  %5581 = trunc i32 %5580 to i8
  %5582 = and i8 %5581, 1
  %5583 = xor i8 %5582, 1
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5583, i8* %5584, align 1
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5585, align 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5586, align 1
  %5587 = lshr i32 %5572, 31
  %5588 = trunc i32 %5587 to i8
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5588, i8* %5589, align 1
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5577, i8* %5590, align 1
  store %struct.Memory* %loadMem_415345, %struct.Memory** %MEMORY
  %loadMem_415349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5592 = getelementptr inbounds %struct.GPR, %struct.GPR* %5591, i32 0, i32 33
  %5593 = getelementptr inbounds %struct.Reg, %struct.Reg* %5592, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5593 to i64*
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 5
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %ECX.i368 = bitcast %union.anon* %5596 to i32*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5598 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5597, i64 0, i64 1
  %YMM1.i369 = bitcast %union.VectorReg* %5598 to %"class.std::bitset"*
  %5599 = bitcast %"class.std::bitset"* %YMM1.i369 to i8*
  %5600 = load i32, i32* %ECX.i368
  %5601 = zext i32 %5600 to i64
  %5602 = load i64, i64* %PC.i367
  %5603 = add i64 %5602, 4
  store i64 %5603, i64* %PC.i367
  %5604 = sitofp i32 %5600 to double
  %5605 = bitcast i8* %5599 to double*
  store double %5604, double* %5605, align 1
  store %struct.Memory* %loadMem_415349, %struct.Memory** %MEMORY
  %loadMem_41534d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 33
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %5608 to i64*
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5609, i64 0, i64 1
  %YMM1.i365 = bitcast %union.VectorReg* %5610 to %"class.std::bitset"*
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5611, i64 0, i64 0
  %XMM0.i366 = bitcast %union.VectorReg* %5612 to %union.vec128_t*
  %5613 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %5614 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %5615 = bitcast %union.vec128_t* %XMM0.i366 to i8*
  %5616 = load i64, i64* %PC.i364
  %5617 = add i64 %5616, 4
  store i64 %5617, i64* %PC.i364
  %5618 = bitcast i8* %5614 to double*
  %5619 = load double, double* %5618, align 1
  %5620 = getelementptr inbounds i8, i8* %5614, i64 8
  %5621 = bitcast i8* %5620 to i64*
  %5622 = load i64, i64* %5621, align 1
  %5623 = bitcast i8* %5615 to double*
  %5624 = load double, double* %5623, align 1
  %5625 = fdiv double %5619, %5624
  %5626 = bitcast i8* %5613 to double*
  store double %5625, double* %5626, align 1
  %5627 = getelementptr inbounds i8, i8* %5613, i64 8
  %5628 = bitcast i8* %5627 to i64*
  store i64 %5622, i64* %5628, align 1
  store %struct.Memory* %loadMem_41534d, %struct.Memory** %MEMORY
  %loadMem_415351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 33
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5631 to i64*
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 5
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %5634 to i64*
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5635, i64 0, i64 1
  %XMM1.i363 = bitcast %union.VectorReg* %5636 to %union.vec128_t*
  %5637 = bitcast %union.vec128_t* %XMM1.i363 to i8*
  %5638 = load i64, i64* %PC.i361
  %5639 = add i64 %5638, 4
  store i64 %5639, i64* %PC.i361
  %5640 = bitcast i8* %5637 to double*
  %5641 = load double, double* %5640, align 1
  %5642 = call double @llvm.trunc.f64(double %5641)
  %5643 = call double @llvm.fabs.f64(double %5642)
  %5644 = fcmp ogt double %5643, 0x41DFFFFFFFC00000
  %5645 = fptosi double %5642 to i32
  %5646 = zext i32 %5645 to i64
  %5647 = select i1 %5644, i64 2147483648, i64 %5646
  store i64 %5647, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_415351, %struct.Memory** %MEMORY
  %loadMem_415355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 33
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5650 to i64*
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 5
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %ECX.i359 = bitcast %union.anon* %5653 to i32*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 15
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %5656 to i64*
  %5657 = load i64, i64* %RBP.i360
  %5658 = sub i64 %5657, 44
  %5659 = load i32, i32* %ECX.i359
  %5660 = zext i32 %5659 to i64
  %5661 = load i64, i64* %PC.i358
  %5662 = add i64 %5661, 3
  store i64 %5662, i64* %PC.i358
  %5663 = inttoptr i64 %5658 to i32*
  store i32 %5659, i32* %5663
  store %struct.Memory* %loadMem_415355, %struct.Memory** %MEMORY
  %loadMem_415358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 33
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5666 to i64*
  %5667 = load i64, i64* %PC.i357
  %5668 = add i64 %5667, 12
  %5669 = load i64, i64* %PC.i357
  %5670 = add i64 %5669, 5
  store i64 %5670, i64* %PC.i357
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5668, i64* %5671, align 8
  store %struct.Memory* %loadMem_415358, %struct.Memory** %MEMORY
  br label %block_.L_415364

block_.L_41535d:                                  ; preds = %block_.L_415311
  %loadMem_41535d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 33
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 15
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %5677 to i64*
  %5678 = load i64, i64* %RBP.i356
  %5679 = sub i64 %5678, 44
  %5680 = load i64, i64* %PC.i355
  %5681 = add i64 %5680, 7
  store i64 %5681, i64* %PC.i355
  %5682 = inttoptr i64 %5679 to i32*
  store i32 100, i32* %5682
  store %struct.Memory* %loadMem_41535d, %struct.Memory** %MEMORY
  br label %block_.L_415364

block_.L_415364:                                  ; preds = %block_.L_41535d, %block_41531b
  %loadMem_415364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 33
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5685 to i64*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 15
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %5688 to i64*
  %5689 = load i64, i64* %RBP.i354
  %5690 = sub i64 %5689, 24
  %5691 = load i64, i64* %PC.i353
  %5692 = add i64 %5691, 4
  store i64 %5692, i64* %PC.i353
  %5693 = inttoptr i64 %5690 to i32*
  %5694 = load i32, i32* %5693
  %5695 = sub i32 %5694, 1
  %5696 = icmp ult i32 %5694, 1
  %5697 = zext i1 %5696 to i8
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5697, i8* %5698, align 1
  %5699 = and i32 %5695, 255
  %5700 = call i32 @llvm.ctpop.i32(i32 %5699)
  %5701 = trunc i32 %5700 to i8
  %5702 = and i8 %5701, 1
  %5703 = xor i8 %5702, 1
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5703, i8* %5704, align 1
  %5705 = xor i32 %5694, 1
  %5706 = xor i32 %5705, %5695
  %5707 = lshr i32 %5706, 4
  %5708 = trunc i32 %5707 to i8
  %5709 = and i8 %5708, 1
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5709, i8* %5710, align 1
  %5711 = icmp eq i32 %5695, 0
  %5712 = zext i1 %5711 to i8
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5712, i8* %5713, align 1
  %5714 = lshr i32 %5695, 31
  %5715 = trunc i32 %5714 to i8
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5715, i8* %5716, align 1
  %5717 = lshr i32 %5694, 31
  %5718 = xor i32 %5714, %5717
  %5719 = add i32 %5718, %5717
  %5720 = icmp eq i32 %5719, 2
  %5721 = zext i1 %5720 to i8
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5721, i8* %5722, align 1
  store %struct.Memory* %loadMem_415364, %struct.Memory** %MEMORY
  %loadMem_415368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 33
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5725 to i64*
  %5726 = load i64, i64* %PC.i352
  %5727 = add i64 %5726, 154
  %5728 = load i64, i64* %PC.i352
  %5729 = add i64 %5728, 6
  %5730 = load i64, i64* %PC.i352
  %5731 = add i64 %5730, 6
  store i64 %5731, i64* %PC.i352
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5733 = load i8, i8* %5732, align 1
  %5734 = icmp ne i8 %5733, 0
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5736 = load i8, i8* %5735, align 1
  %5737 = icmp ne i8 %5736, 0
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5739 = load i8, i8* %5738, align 1
  %5740 = icmp ne i8 %5739, 0
  %5741 = xor i1 %5737, %5740
  %5742 = or i1 %5734, %5741
  %5743 = zext i1 %5742 to i8
  store i8 %5743, i8* %BRANCH_TAKEN, align 1
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5745 = select i1 %5742, i64 %5727, i64 %5729
  store i64 %5745, i64* %5744, align 8
  store %struct.Memory* %loadMem_415368, %struct.Memory** %MEMORY
  %loadBr_415368 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415368 = icmp eq i8 %loadBr_415368, 1
  br i1 %cmpBr_415368, label %block_.L_415402, label %block_41536e

block_41536e:                                     ; preds = %block_.L_415364
  %loadMem_41536e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 33
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5748 to i64*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5749, i64 0, i64 0
  %YMM0.i351 = bitcast %union.VectorReg* %5750 to %"class.std::bitset"*
  %5751 = bitcast %"class.std::bitset"* %YMM0.i351 to i8*
  %5752 = load i64, i64* %PC.i350
  %5753 = add i64 %5752, ptrtoint (%G_0x3f4ca__rip__type* @G_0x3f4ca__rip_ to i64)
  %5754 = load i64, i64* %PC.i350
  %5755 = add i64 %5754, 8
  store i64 %5755, i64* %PC.i350
  %5756 = inttoptr i64 %5753 to double*
  %5757 = load double, double* %5756
  %5758 = bitcast i8* %5751 to double*
  store double %5757, double* %5758, align 1
  %5759 = getelementptr inbounds i8, i8* %5751, i64 8
  %5760 = bitcast i8* %5759 to double*
  store double 0.000000e+00, double* %5760, align 1
  store %struct.Memory* %loadMem_41536e, %struct.Memory** %MEMORY
  %loadMem_415376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 33
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 1
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %5766 to i64*
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 15
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %5769 to i64*
  %5770 = load i64, i64* %RBP.i349
  %5771 = sub i64 %5770, 16
  %5772 = load i64, i64* %PC.i347
  %5773 = add i64 %5772, 4
  store i64 %5773, i64* %PC.i347
  %5774 = inttoptr i64 %5771 to i64*
  %5775 = load i64, i64* %5774
  store i64 %5775, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_415376, %struct.Memory** %MEMORY
  %loadMem_41537a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 33
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5778 to i64*
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 1
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %5781 to i64*
  %5782 = load i64, i64* %RAX.i346
  %5783 = add i64 %5782, 312
  %5784 = load i64, i64* %PC.i345
  %5785 = add i64 %5784, 7
  store i64 %5785, i64* %PC.i345
  %5786 = inttoptr i64 %5783 to i64*
  %5787 = load i64, i64* %5786
  store i64 %5787, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_41537a, %struct.Memory** %MEMORY
  %loadMem_415381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 33
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5790 to i64*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 1
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %5793 to i64*
  %5794 = load i64, i64* %RAX.i344
  %5795 = add i64 %5794, 40
  %5796 = load i64, i64* %PC.i343
  %5797 = add i64 %5796, 4
  store i64 %5797, i64* %PC.i343
  %5798 = inttoptr i64 %5795 to i64*
  %5799 = load i64, i64* %5798
  store i64 %5799, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_415381, %struct.Memory** %MEMORY
  %loadMem_415385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 33
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5802 to i64*
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5804 = getelementptr inbounds %struct.GPR, %struct.GPR* %5803, i32 0, i32 5
  %5805 = getelementptr inbounds %struct.Reg, %struct.Reg* %5804, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5805 to i64*
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5807 = getelementptr inbounds %struct.GPR, %struct.GPR* %5806, i32 0, i32 15
  %5808 = getelementptr inbounds %struct.Reg, %struct.Reg* %5807, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %5808 to i64*
  %5809 = load i64, i64* %RBP.i342
  %5810 = sub i64 %5809, 24
  %5811 = load i64, i64* %PC.i340
  %5812 = add i64 %5811, 3
  store i64 %5812, i64* %PC.i340
  %5813 = inttoptr i64 %5810 to i32*
  %5814 = load i32, i32* %5813
  %5815 = zext i32 %5814 to i64
  store i64 %5815, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_415385, %struct.Memory** %MEMORY
  %loadMem_415388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 5
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %5821 to i64*
  %5822 = load i64, i64* %RCX.i339
  %5823 = load i64, i64* %PC.i338
  %5824 = add i64 %5823, 3
  store i64 %5824, i64* %PC.i338
  %5825 = trunc i64 %5822 to i32
  %5826 = sub i32 %5825, 1
  %5827 = zext i32 %5826 to i64
  store i64 %5827, i64* %RCX.i339, align 8
  %5828 = icmp ult i32 %5825, 1
  %5829 = zext i1 %5828 to i8
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5829, i8* %5830, align 1
  %5831 = and i32 %5826, 255
  %5832 = call i32 @llvm.ctpop.i32(i32 %5831)
  %5833 = trunc i32 %5832 to i8
  %5834 = and i8 %5833, 1
  %5835 = xor i8 %5834, 1
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5835, i8* %5836, align 1
  %5837 = xor i64 1, %5822
  %5838 = trunc i64 %5837 to i32
  %5839 = xor i32 %5838, %5826
  %5840 = lshr i32 %5839, 4
  %5841 = trunc i32 %5840 to i8
  %5842 = and i8 %5841, 1
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5842, i8* %5843, align 1
  %5844 = icmp eq i32 %5826, 0
  %5845 = zext i1 %5844 to i8
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5845, i8* %5846, align 1
  %5847 = lshr i32 %5826, 31
  %5848 = trunc i32 %5847 to i8
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5848, i8* %5849, align 1
  %5850 = lshr i32 %5825, 31
  %5851 = xor i32 %5847, %5850
  %5852 = add i32 %5851, %5850
  %5853 = icmp eq i32 %5852, 2
  %5854 = zext i1 %5853 to i8
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5854, i8* %5855, align 1
  store %struct.Memory* %loadMem_415388, %struct.Memory** %MEMORY
  %loadMem_41538b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 33
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5858 to i64*
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 5
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %ECX.i336 = bitcast %union.anon* %5861 to i32*
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 7
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %RDX.i337 = bitcast %union.anon* %5864 to i64*
  %5865 = load i32, i32* %ECX.i336
  %5866 = zext i32 %5865 to i64
  %5867 = load i64, i64* %PC.i335
  %5868 = add i64 %5867, 3
  store i64 %5868, i64* %PC.i335
  %5869 = shl i64 %5866, 32
  %5870 = ashr exact i64 %5869, 32
  store i64 %5870, i64* %RDX.i337, align 8
  store %struct.Memory* %loadMem_41538b, %struct.Memory** %MEMORY
  %loadMem_41538e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 1
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 5
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 7
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %5882 to i64*
  %5883 = load i64, i64* %RAX.i332
  %5884 = load i64, i64* %RDX.i334
  %5885 = mul i64 %5884, 4
  %5886 = add i64 %5885, %5883
  %5887 = load i64, i64* %PC.i331
  %5888 = add i64 %5887, 3
  store i64 %5888, i64* %PC.i331
  %5889 = inttoptr i64 %5886 to i32*
  %5890 = load i32, i32* %5889
  %5891 = zext i32 %5890 to i64
  store i64 %5891, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_41538e, %struct.Memory** %MEMORY
  %loadMem_415391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 33
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 1
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %5897 to i64*
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5899 = getelementptr inbounds %struct.GPR, %struct.GPR* %5898, i32 0, i32 15
  %5900 = getelementptr inbounds %struct.Reg, %struct.Reg* %5899, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %5900 to i64*
  %5901 = load i64, i64* %RBP.i330
  %5902 = sub i64 %5901, 16
  %5903 = load i64, i64* %PC.i328
  %5904 = add i64 %5903, 4
  store i64 %5904, i64* %PC.i328
  %5905 = inttoptr i64 %5902 to i64*
  %5906 = load i64, i64* %5905
  store i64 %5906, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_415391, %struct.Memory** %MEMORY
  %loadMem_415395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 33
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 1
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %5912 to i64*
  %5913 = load i64, i64* %RAX.i327
  %5914 = add i64 %5913, 312
  %5915 = load i64, i64* %PC.i326
  %5916 = add i64 %5915, 7
  store i64 %5916, i64* %PC.i326
  %5917 = inttoptr i64 %5914 to i64*
  %5918 = load i64, i64* %5917
  store i64 %5918, i64* %RAX.i327, align 8
  store %struct.Memory* %loadMem_415395, %struct.Memory** %MEMORY
  %loadMem_41539c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5920 = getelementptr inbounds %struct.GPR, %struct.GPR* %5919, i32 0, i32 33
  %5921 = getelementptr inbounds %struct.Reg, %struct.Reg* %5920, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %5921 to i64*
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5923 = getelementptr inbounds %struct.GPR, %struct.GPR* %5922, i32 0, i32 1
  %5924 = getelementptr inbounds %struct.Reg, %struct.Reg* %5923, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %5924 to i64*
  %5925 = load i64, i64* %RAX.i325
  %5926 = add i64 %5925, 16
  %5927 = load i64, i64* %PC.i324
  %5928 = add i64 %5927, 4
  store i64 %5928, i64* %PC.i324
  %5929 = inttoptr i64 %5926 to i64*
  %5930 = load i64, i64* %5929
  store i64 %5930, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_41539c, %struct.Memory** %MEMORY
  %loadMem_4153a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 33
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %5933 to i64*
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5935 = getelementptr inbounds %struct.GPR, %struct.GPR* %5934, i32 0, i32 9
  %5936 = getelementptr inbounds %struct.Reg, %struct.Reg* %5935, i32 0, i32 0
  %RSI.i322 = bitcast %union.anon* %5936 to i64*
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5938 = getelementptr inbounds %struct.GPR, %struct.GPR* %5937, i32 0, i32 15
  %5939 = getelementptr inbounds %struct.Reg, %struct.Reg* %5938, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %5939 to i64*
  %5940 = load i64, i64* %RBP.i323
  %5941 = sub i64 %5940, 24
  %5942 = load i64, i64* %PC.i321
  %5943 = add i64 %5942, 3
  store i64 %5943, i64* %PC.i321
  %5944 = inttoptr i64 %5941 to i32*
  %5945 = load i32, i32* %5944
  %5946 = zext i32 %5945 to i64
  store i64 %5946, i64* %RSI.i322, align 8
  store %struct.Memory* %loadMem_4153a0, %struct.Memory** %MEMORY
  %loadMem_4153a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 33
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5949 to i64*
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 9
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %RSI.i320 = bitcast %union.anon* %5952 to i64*
  %5953 = load i64, i64* %RSI.i320
  %5954 = load i64, i64* %PC.i319
  %5955 = add i64 %5954, 3
  store i64 %5955, i64* %PC.i319
  %5956 = trunc i64 %5953 to i32
  %5957 = sub i32 %5956, 1
  %5958 = zext i32 %5957 to i64
  store i64 %5958, i64* %RSI.i320, align 8
  %5959 = icmp ult i32 %5956, 1
  %5960 = zext i1 %5959 to i8
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5960, i8* %5961, align 1
  %5962 = and i32 %5957, 255
  %5963 = call i32 @llvm.ctpop.i32(i32 %5962)
  %5964 = trunc i32 %5963 to i8
  %5965 = and i8 %5964, 1
  %5966 = xor i8 %5965, 1
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5966, i8* %5967, align 1
  %5968 = xor i64 1, %5953
  %5969 = trunc i64 %5968 to i32
  %5970 = xor i32 %5969, %5957
  %5971 = lshr i32 %5970, 4
  %5972 = trunc i32 %5971 to i8
  %5973 = and i8 %5972, 1
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5973, i8* %5974, align 1
  %5975 = icmp eq i32 %5957, 0
  %5976 = zext i1 %5975 to i8
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5976, i8* %5977, align 1
  %5978 = lshr i32 %5957, 31
  %5979 = trunc i32 %5978 to i8
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5979, i8* %5980, align 1
  %5981 = lshr i32 %5956, 31
  %5982 = xor i32 %5978, %5981
  %5983 = add i32 %5982, %5981
  %5984 = icmp eq i32 %5983, 2
  %5985 = zext i1 %5984 to i8
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5985, i8* %5986, align 1
  store %struct.Memory* %loadMem_4153a3, %struct.Memory** %MEMORY
  %loadMem_4153a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5989 to i64*
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 9
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %ESI.i317 = bitcast %union.anon* %5992 to i32*
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5994 = getelementptr inbounds %struct.GPR, %struct.GPR* %5993, i32 0, i32 7
  %5995 = getelementptr inbounds %struct.Reg, %struct.Reg* %5994, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %5995 to i64*
  %5996 = load i32, i32* %ESI.i317
  %5997 = zext i32 %5996 to i64
  %5998 = load i64, i64* %PC.i316
  %5999 = add i64 %5998, 3
  store i64 %5999, i64* %PC.i316
  %6000 = shl i64 %5997, 32
  %6001 = ashr exact i64 %6000, 32
  store i64 %6001, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_4153a6, %struct.Memory** %MEMORY
  %loadMem_4153a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 33
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %6004 to i64*
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 1
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %6007 to i64*
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 5
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %6010 to i64*
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 7
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %RDX.i315 = bitcast %union.anon* %6013 to i64*
  %6014 = load i64, i64* %RCX.i314
  %6015 = load i64, i64* %RAX.i313
  %6016 = load i64, i64* %RDX.i315
  %6017 = mul i64 %6016, 4
  %6018 = add i64 %6017, %6015
  %6019 = load i64, i64* %PC.i312
  %6020 = add i64 %6019, 3
  store i64 %6020, i64* %PC.i312
  %6021 = trunc i64 %6014 to i32
  %6022 = inttoptr i64 %6018 to i32*
  %6023 = load i32, i32* %6022
  %6024 = add i32 %6023, %6021
  %6025 = zext i32 %6024 to i64
  store i64 %6025, i64* %RCX.i314, align 8
  %6026 = icmp ult i32 %6024, %6021
  %6027 = icmp ult i32 %6024, %6023
  %6028 = or i1 %6026, %6027
  %6029 = zext i1 %6028 to i8
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6029, i8* %6030, align 1
  %6031 = and i32 %6024, 255
  %6032 = call i32 @llvm.ctpop.i32(i32 %6031)
  %6033 = trunc i32 %6032 to i8
  %6034 = and i8 %6033, 1
  %6035 = xor i8 %6034, 1
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6035, i8* %6036, align 1
  %6037 = xor i32 %6023, %6021
  %6038 = xor i32 %6037, %6024
  %6039 = lshr i32 %6038, 4
  %6040 = trunc i32 %6039 to i8
  %6041 = and i8 %6040, 1
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6041, i8* %6042, align 1
  %6043 = icmp eq i32 %6024, 0
  %6044 = zext i1 %6043 to i8
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6044, i8* %6045, align 1
  %6046 = lshr i32 %6024, 31
  %6047 = trunc i32 %6046 to i8
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6047, i8* %6048, align 1
  %6049 = lshr i32 %6021, 31
  %6050 = lshr i32 %6023, 31
  %6051 = xor i32 %6046, %6049
  %6052 = xor i32 %6046, %6050
  %6053 = add i32 %6051, %6052
  %6054 = icmp eq i32 %6053, 2
  %6055 = zext i1 %6054 to i8
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6055, i8* %6056, align 1
  store %struct.Memory* %loadMem_4153a9, %struct.Memory** %MEMORY
  %loadMem_4153ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6058 = getelementptr inbounds %struct.GPR, %struct.GPR* %6057, i32 0, i32 33
  %6059 = getelementptr inbounds %struct.Reg, %struct.Reg* %6058, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %6059 to i64*
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6061 = getelementptr inbounds %struct.GPR, %struct.GPR* %6060, i32 0, i32 1
  %6062 = getelementptr inbounds %struct.Reg, %struct.Reg* %6061, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %6062 to i64*
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 15
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %6065 to i64*
  %6066 = load i64, i64* %RBP.i311
  %6067 = sub i64 %6066, 16
  %6068 = load i64, i64* %PC.i309
  %6069 = add i64 %6068, 4
  store i64 %6069, i64* %PC.i309
  %6070 = inttoptr i64 %6067 to i64*
  %6071 = load i64, i64* %6070
  store i64 %6071, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_4153ac, %struct.Memory** %MEMORY
  %loadMem_4153b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 33
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6074 to i64*
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 1
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %6077 to i64*
  %6078 = load i64, i64* %RAX.i308
  %6079 = add i64 %6078, 312
  %6080 = load i64, i64* %PC.i307
  %6081 = add i64 %6080, 7
  store i64 %6081, i64* %PC.i307
  %6082 = inttoptr i64 %6079 to i64*
  %6083 = load i64, i64* %6082
  store i64 %6083, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_4153b0, %struct.Memory** %MEMORY
  %loadMem_4153b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 33
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %6086 to i64*
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 1
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %6089 to i64*
  %6090 = load i64, i64* %RAX.i306
  %6091 = load i64, i64* %PC.i305
  %6092 = add i64 %6091, 3
  store i64 %6092, i64* %PC.i305
  %6093 = inttoptr i64 %6090 to i64*
  %6094 = load i64, i64* %6093
  store i64 %6094, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_4153b7, %struct.Memory** %MEMORY
  %loadMem_4153ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 33
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %6097 to i64*
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 9
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %RSI.i303 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 15
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %6103 to i64*
  %6104 = load i64, i64* %RBP.i304
  %6105 = sub i64 %6104, 24
  %6106 = load i64, i64* %PC.i302
  %6107 = add i64 %6106, 3
  store i64 %6107, i64* %PC.i302
  %6108 = inttoptr i64 %6105 to i32*
  %6109 = load i32, i32* %6108
  %6110 = zext i32 %6109 to i64
  store i64 %6110, i64* %RSI.i303, align 8
  store %struct.Memory* %loadMem_4153ba, %struct.Memory** %MEMORY
  %loadMem_4153bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6112 = getelementptr inbounds %struct.GPR, %struct.GPR* %6111, i32 0, i32 33
  %6113 = getelementptr inbounds %struct.Reg, %struct.Reg* %6112, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %6113 to i64*
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 9
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %RSI.i301 = bitcast %union.anon* %6116 to i64*
  %6117 = load i64, i64* %RSI.i301
  %6118 = load i64, i64* %PC.i300
  %6119 = add i64 %6118, 3
  store i64 %6119, i64* %PC.i300
  %6120 = trunc i64 %6117 to i32
  %6121 = sub i32 %6120, 1
  %6122 = zext i32 %6121 to i64
  store i64 %6122, i64* %RSI.i301, align 8
  %6123 = icmp ult i32 %6120, 1
  %6124 = zext i1 %6123 to i8
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6124, i8* %6125, align 1
  %6126 = and i32 %6121, 255
  %6127 = call i32 @llvm.ctpop.i32(i32 %6126)
  %6128 = trunc i32 %6127 to i8
  %6129 = and i8 %6128, 1
  %6130 = xor i8 %6129, 1
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6130, i8* %6131, align 1
  %6132 = xor i64 1, %6117
  %6133 = trunc i64 %6132 to i32
  %6134 = xor i32 %6133, %6121
  %6135 = lshr i32 %6134, 4
  %6136 = trunc i32 %6135 to i8
  %6137 = and i8 %6136, 1
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6137, i8* %6138, align 1
  %6139 = icmp eq i32 %6121, 0
  %6140 = zext i1 %6139 to i8
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6140, i8* %6141, align 1
  %6142 = lshr i32 %6121, 31
  %6143 = trunc i32 %6142 to i8
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6143, i8* %6144, align 1
  %6145 = lshr i32 %6120, 31
  %6146 = xor i32 %6142, %6145
  %6147 = add i32 %6146, %6145
  %6148 = icmp eq i32 %6147, 2
  %6149 = zext i1 %6148 to i8
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6149, i8* %6150, align 1
  store %struct.Memory* %loadMem_4153bd, %struct.Memory** %MEMORY
  %loadMem_4153c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 33
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 9
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %ESI.i298 = bitcast %union.anon* %6156 to i32*
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 7
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %6159 to i64*
  %6160 = load i32, i32* %ESI.i298
  %6161 = zext i32 %6160 to i64
  %6162 = load i64, i64* %PC.i297
  %6163 = add i64 %6162, 3
  store i64 %6163, i64* %PC.i297
  %6164 = shl i64 %6161, 32
  %6165 = ashr exact i64 %6164, 32
  store i64 %6165, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_4153c0, %struct.Memory** %MEMORY
  %loadMem_4153c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6167 = getelementptr inbounds %struct.GPR, %struct.GPR* %6166, i32 0, i32 33
  %6168 = getelementptr inbounds %struct.Reg, %struct.Reg* %6167, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %6168 to i64*
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6170 = getelementptr inbounds %struct.GPR, %struct.GPR* %6169, i32 0, i32 1
  %6171 = getelementptr inbounds %struct.Reg, %struct.Reg* %6170, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %6171 to i64*
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 5
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %6174 to i64*
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6176 = getelementptr inbounds %struct.GPR, %struct.GPR* %6175, i32 0, i32 7
  %6177 = getelementptr inbounds %struct.Reg, %struct.Reg* %6176, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %6177 to i64*
  %6178 = load i64, i64* %RCX.i295
  %6179 = load i64, i64* %RAX.i294
  %6180 = load i64, i64* %RDX.i296
  %6181 = mul i64 %6180, 4
  %6182 = add i64 %6181, %6179
  %6183 = load i64, i64* %PC.i293
  %6184 = add i64 %6183, 3
  store i64 %6184, i64* %PC.i293
  %6185 = trunc i64 %6178 to i32
  %6186 = inttoptr i64 %6182 to i32*
  %6187 = load i32, i32* %6186
  %6188 = sub i32 %6185, %6187
  %6189 = zext i32 %6188 to i64
  store i64 %6189, i64* %RCX.i295, align 8
  %6190 = icmp ult i32 %6185, %6187
  %6191 = zext i1 %6190 to i8
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6191, i8* %6192, align 1
  %6193 = and i32 %6188, 255
  %6194 = call i32 @llvm.ctpop.i32(i32 %6193)
  %6195 = trunc i32 %6194 to i8
  %6196 = and i8 %6195, 1
  %6197 = xor i8 %6196, 1
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6197, i8* %6198, align 1
  %6199 = xor i32 %6187, %6185
  %6200 = xor i32 %6199, %6188
  %6201 = lshr i32 %6200, 4
  %6202 = trunc i32 %6201 to i8
  %6203 = and i8 %6202, 1
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6203, i8* %6204, align 1
  %6205 = icmp eq i32 %6188, 0
  %6206 = zext i1 %6205 to i8
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6206, i8* %6207, align 1
  %6208 = lshr i32 %6188, 31
  %6209 = trunc i32 %6208 to i8
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6209, i8* %6210, align 1
  %6211 = lshr i32 %6185, 31
  %6212 = lshr i32 %6187, 31
  %6213 = xor i32 %6212, %6211
  %6214 = xor i32 %6208, %6211
  %6215 = add i32 %6214, %6213
  %6216 = icmp eq i32 %6215, 2
  %6217 = zext i1 %6216 to i8
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6217, i8* %6218, align 1
  store %struct.Memory* %loadMem_4153c3, %struct.Memory** %MEMORY
  %loadMem_4153c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 33
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 1
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %6224 to i64*
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 15
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %6227 to i64*
  %6228 = load i64, i64* %RBP.i292
  %6229 = sub i64 %6228, 16
  %6230 = load i64, i64* %PC.i290
  %6231 = add i64 %6230, 4
  store i64 %6231, i64* %PC.i290
  %6232 = inttoptr i64 %6229 to i64*
  %6233 = load i64, i64* %6232
  store i64 %6233, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_4153c6, %struct.Memory** %MEMORY
  %loadMem_4153ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 33
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %6236 to i64*
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 1
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %6239 to i64*
  %6240 = load i64, i64* %RAX.i289
  %6241 = add i64 %6240, 312
  %6242 = load i64, i64* %PC.i288
  %6243 = add i64 %6242, 7
  store i64 %6243, i64* %PC.i288
  %6244 = inttoptr i64 %6241 to i64*
  %6245 = load i64, i64* %6244
  store i64 %6245, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_4153ca, %struct.Memory** %MEMORY
  %loadMem_4153d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6247 = getelementptr inbounds %struct.GPR, %struct.GPR* %6246, i32 0, i32 33
  %6248 = getelementptr inbounds %struct.Reg, %struct.Reg* %6247, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6248 to i64*
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 1
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %6251 to i64*
  %6252 = load i64, i64* %RAX.i287
  %6253 = add i64 %6252, 48
  %6254 = load i64, i64* %PC.i286
  %6255 = add i64 %6254, 4
  store i64 %6255, i64* %PC.i286
  %6256 = inttoptr i64 %6253 to i64*
  %6257 = load i64, i64* %6256
  store i64 %6257, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_4153d1, %struct.Memory** %MEMORY
  %loadMem_4153d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6259 = getelementptr inbounds %struct.GPR, %struct.GPR* %6258, i32 0, i32 33
  %6260 = getelementptr inbounds %struct.Reg, %struct.Reg* %6259, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6260 to i64*
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6262 = getelementptr inbounds %struct.GPR, %struct.GPR* %6261, i32 0, i32 9
  %6263 = getelementptr inbounds %struct.Reg, %struct.Reg* %6262, i32 0, i32 0
  %RSI.i284 = bitcast %union.anon* %6263 to i64*
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 15
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %6266 to i64*
  %6267 = load i64, i64* %RBP.i285
  %6268 = sub i64 %6267, 24
  %6269 = load i64, i64* %PC.i283
  %6270 = add i64 %6269, 3
  store i64 %6270, i64* %PC.i283
  %6271 = inttoptr i64 %6268 to i32*
  %6272 = load i32, i32* %6271
  %6273 = zext i32 %6272 to i64
  store i64 %6273, i64* %RSI.i284, align 8
  store %struct.Memory* %loadMem_4153d5, %struct.Memory** %MEMORY
  %loadMem_4153d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6275 = getelementptr inbounds %struct.GPR, %struct.GPR* %6274, i32 0, i32 33
  %6276 = getelementptr inbounds %struct.Reg, %struct.Reg* %6275, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6276 to i64*
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6278 = getelementptr inbounds %struct.GPR, %struct.GPR* %6277, i32 0, i32 9
  %6279 = getelementptr inbounds %struct.Reg, %struct.Reg* %6278, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %6279 to i64*
  %6280 = load i64, i64* %RSI.i282
  %6281 = load i64, i64* %PC.i281
  %6282 = add i64 %6281, 3
  store i64 %6282, i64* %PC.i281
  %6283 = trunc i64 %6280 to i32
  %6284 = sub i32 %6283, 1
  %6285 = zext i32 %6284 to i64
  store i64 %6285, i64* %RSI.i282, align 8
  %6286 = icmp ult i32 %6283, 1
  %6287 = zext i1 %6286 to i8
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6287, i8* %6288, align 1
  %6289 = and i32 %6284, 255
  %6290 = call i32 @llvm.ctpop.i32(i32 %6289)
  %6291 = trunc i32 %6290 to i8
  %6292 = and i8 %6291, 1
  %6293 = xor i8 %6292, 1
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6293, i8* %6294, align 1
  %6295 = xor i64 1, %6280
  %6296 = trunc i64 %6295 to i32
  %6297 = xor i32 %6296, %6284
  %6298 = lshr i32 %6297, 4
  %6299 = trunc i32 %6298 to i8
  %6300 = and i8 %6299, 1
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6300, i8* %6301, align 1
  %6302 = icmp eq i32 %6284, 0
  %6303 = zext i1 %6302 to i8
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6303, i8* %6304, align 1
  %6305 = lshr i32 %6284, 31
  %6306 = trunc i32 %6305 to i8
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6306, i8* %6307, align 1
  %6308 = lshr i32 %6283, 31
  %6309 = xor i32 %6305, %6308
  %6310 = add i32 %6309, %6308
  %6311 = icmp eq i32 %6310, 2
  %6312 = zext i1 %6311 to i8
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6312, i8* %6313, align 1
  store %struct.Memory* %loadMem_4153d8, %struct.Memory** %MEMORY
  %loadMem_4153db = load %struct.Memory*, %struct.Memory** %MEMORY
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 33
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %6316 to i64*
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 9
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6319 to i32*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 7
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %6322 to i64*
  %6323 = load i32, i32* %ESI.i
  %6324 = zext i32 %6323 to i64
  %6325 = load i64, i64* %PC.i279
  %6326 = add i64 %6325, 3
  store i64 %6326, i64* %PC.i279
  %6327 = shl i64 %6324, 32
  %6328 = ashr exact i64 %6327, 32
  store i64 %6328, i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_4153db, %struct.Memory** %MEMORY
  %loadMem_4153de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 33
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %6331 to i64*
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 1
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %6334 to i64*
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 5
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %6337 to i64*
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 7
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %6340 to i64*
  %6341 = load i64, i64* %RCX.i277
  %6342 = load i64, i64* %RAX.i276
  %6343 = load i64, i64* %RDX.i278
  %6344 = mul i64 %6343, 4
  %6345 = add i64 %6344, %6342
  %6346 = load i64, i64* %PC.i275
  %6347 = add i64 %6346, 3
  store i64 %6347, i64* %PC.i275
  %6348 = trunc i64 %6341 to i32
  %6349 = inttoptr i64 %6345 to i32*
  %6350 = load i32, i32* %6349
  %6351 = sub i32 %6348, %6350
  %6352 = zext i32 %6351 to i64
  store i64 %6352, i64* %RCX.i277, align 8
  %6353 = icmp ult i32 %6348, %6350
  %6354 = zext i1 %6353 to i8
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6354, i8* %6355, align 1
  %6356 = and i32 %6351, 255
  %6357 = call i32 @llvm.ctpop.i32(i32 %6356)
  %6358 = trunc i32 %6357 to i8
  %6359 = and i8 %6358, 1
  %6360 = xor i8 %6359, 1
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6360, i8* %6361, align 1
  %6362 = xor i32 %6350, %6348
  %6363 = xor i32 %6362, %6351
  %6364 = lshr i32 %6363, 4
  %6365 = trunc i32 %6364 to i8
  %6366 = and i8 %6365, 1
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6366, i8* %6367, align 1
  %6368 = icmp eq i32 %6351, 0
  %6369 = zext i1 %6368 to i8
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6369, i8* %6370, align 1
  %6371 = lshr i32 %6351, 31
  %6372 = trunc i32 %6371 to i8
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6372, i8* %6373, align 1
  %6374 = lshr i32 %6348, 31
  %6375 = lshr i32 %6350, 31
  %6376 = xor i32 %6375, %6374
  %6377 = xor i32 %6371, %6374
  %6378 = add i32 %6377, %6376
  %6379 = icmp eq i32 %6378, 2
  %6380 = zext i1 %6379 to i8
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6380, i8* %6381, align 1
  store %struct.Memory* %loadMem_4153de, %struct.Memory** %MEMORY
  %loadMem_4153e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6383 = getelementptr inbounds %struct.GPR, %struct.GPR* %6382, i32 0, i32 33
  %6384 = getelementptr inbounds %struct.Reg, %struct.Reg* %6383, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %6384 to i64*
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6386 = getelementptr inbounds %struct.GPR, %struct.GPR* %6385, i32 0, i32 5
  %6387 = getelementptr inbounds %struct.Reg, %struct.Reg* %6386, i32 0, i32 0
  %ECX.i273 = bitcast %union.anon* %6387 to i32*
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6389 = getelementptr inbounds %struct.GPR, %struct.GPR* %6388, i32 0, i32 5
  %6390 = getelementptr inbounds %struct.Reg, %struct.Reg* %6389, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %6390 to i64*
  %6391 = load i32, i32* %ECX.i273
  %6392 = zext i32 %6391 to i64
  %6393 = load i64, i64* %PC.i272
  %6394 = add i64 %6393, 3
  store i64 %6394, i64* %PC.i272
  %6395 = shl i64 %6392, 32
  %6396 = ashr exact i64 %6395, 32
  %6397 = mul i64 -1, %6396
  %6398 = trunc i64 %6397 to i32
  %6399 = and i64 %6397, 4294967295
  store i64 %6399, i64* %RCX.i274, align 8
  %6400 = shl i64 %6397, 32
  %6401 = ashr exact i64 %6400, 32
  %6402 = icmp ne i64 %6401, %6397
  %6403 = zext i1 %6402 to i8
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6403, i8* %6404, align 1
  %6405 = and i32 %6398, 255
  %6406 = call i32 @llvm.ctpop.i32(i32 %6405)
  %6407 = trunc i32 %6406 to i8
  %6408 = and i8 %6407, 1
  %6409 = xor i8 %6408, 1
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6409, i8* %6410, align 1
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6411, align 1
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6412, align 1
  %6413 = lshr i32 %6398, 31
  %6414 = trunc i32 %6413 to i8
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6414, i8* %6415, align 1
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6403, i8* %6416, align 1
  store %struct.Memory* %loadMem_4153e1, %struct.Memory** %MEMORY
  %loadMem_4153e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 33
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 5
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %ECX.i270 = bitcast %union.anon* %6422 to i32*
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6424 = getelementptr inbounds %struct.GPR, %struct.GPR* %6423, i32 0, i32 15
  %6425 = getelementptr inbounds %struct.Reg, %struct.Reg* %6424, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %6425 to i64*
  %6426 = load i64, i64* %RBP.i271
  %6427 = sub i64 %6426, 48
  %6428 = load i32, i32* %ECX.i270
  %6429 = zext i32 %6428 to i64
  %6430 = load i64, i64* %PC.i269
  %6431 = add i64 %6430, 3
  store i64 %6431, i64* %PC.i269
  %6432 = inttoptr i64 %6427 to i32*
  store i32 %6428, i32* %6432
  store %struct.Memory* %loadMem_4153e7, %struct.Memory** %MEMORY
  %loadMem_4153ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6434 = getelementptr inbounds %struct.GPR, %struct.GPR* %6433, i32 0, i32 33
  %6435 = getelementptr inbounds %struct.Reg, %struct.Reg* %6434, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %6435 to i64*
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 5
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 15
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %6441 to i64*
  %6442 = load i64, i64* %RBP.i268
  %6443 = sub i64 %6442, 48
  %6444 = load i64, i64* %PC.i266
  %6445 = add i64 %6444, 4
  store i64 %6445, i64* %PC.i266
  %6446 = inttoptr i64 %6443 to i32*
  %6447 = load i32, i32* %6446
  %6448 = sext i32 %6447 to i64
  %6449 = mul i64 %6448, 100
  %6450 = trunc i64 %6449 to i32
  %6451 = and i64 %6449, 4294967295
  store i64 %6451, i64* %RCX.i267, align 8
  %6452 = shl i64 %6449, 32
  %6453 = ashr exact i64 %6452, 32
  %6454 = icmp ne i64 %6453, %6449
  %6455 = zext i1 %6454 to i8
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6455, i8* %6456, align 1
  %6457 = and i32 %6450, 255
  %6458 = call i32 @llvm.ctpop.i32(i32 %6457)
  %6459 = trunc i32 %6458 to i8
  %6460 = and i8 %6459, 1
  %6461 = xor i8 %6460, 1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6461, i8* %6462, align 1
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6463, align 1
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6464, align 1
  %6465 = lshr i32 %6450, 31
  %6466 = trunc i32 %6465 to i8
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6466, i8* %6467, align 1
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6455, i8* %6468, align 1
  store %struct.Memory* %loadMem_4153ea, %struct.Memory** %MEMORY
  %loadMem_4153ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6470 = getelementptr inbounds %struct.GPR, %struct.GPR* %6469, i32 0, i32 33
  %6471 = getelementptr inbounds %struct.Reg, %struct.Reg* %6470, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6471 to i64*
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6473 = getelementptr inbounds %struct.GPR, %struct.GPR* %6472, i32 0, i32 5
  %6474 = getelementptr inbounds %struct.Reg, %struct.Reg* %6473, i32 0, i32 0
  %ECX.i264 = bitcast %union.anon* %6474 to i32*
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6476 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6475, i64 0, i64 1
  %YMM1.i265 = bitcast %union.VectorReg* %6476 to %"class.std::bitset"*
  %6477 = bitcast %"class.std::bitset"* %YMM1.i265 to i8*
  %6478 = load i32, i32* %ECX.i264
  %6479 = zext i32 %6478 to i64
  %6480 = load i64, i64* %PC.i263
  %6481 = add i64 %6480, 4
  store i64 %6481, i64* %PC.i263
  %6482 = sitofp i32 %6478 to double
  %6483 = bitcast i8* %6477 to double*
  store double %6482, double* %6483, align 1
  store %struct.Memory* %loadMem_4153ee, %struct.Memory** %MEMORY
  %loadMem_4153f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 33
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6486 to i64*
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6487, i64 0, i64 1
  %YMM1.i261 = bitcast %union.VectorReg* %6488 to %"class.std::bitset"*
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6490 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6489, i64 0, i64 0
  %XMM0.i262 = bitcast %union.VectorReg* %6490 to %union.vec128_t*
  %6491 = bitcast %"class.std::bitset"* %YMM1.i261 to i8*
  %6492 = bitcast %"class.std::bitset"* %YMM1.i261 to i8*
  %6493 = bitcast %union.vec128_t* %XMM0.i262 to i8*
  %6494 = load i64, i64* %PC.i260
  %6495 = add i64 %6494, 4
  store i64 %6495, i64* %PC.i260
  %6496 = bitcast i8* %6492 to double*
  %6497 = load double, double* %6496, align 1
  %6498 = getelementptr inbounds i8, i8* %6492, i64 8
  %6499 = bitcast i8* %6498 to i64*
  %6500 = load i64, i64* %6499, align 1
  %6501 = bitcast i8* %6493 to double*
  %6502 = load double, double* %6501, align 1
  %6503 = fdiv double %6497, %6502
  %6504 = bitcast i8* %6491 to double*
  store double %6503, double* %6504, align 1
  %6505 = getelementptr inbounds i8, i8* %6491, i64 8
  %6506 = bitcast i8* %6505 to i64*
  store i64 %6500, i64* %6506, align 1
  store %struct.Memory* %loadMem_4153f2, %struct.Memory** %MEMORY
  %loadMem_4153f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6508 = getelementptr inbounds %struct.GPR, %struct.GPR* %6507, i32 0, i32 33
  %6509 = getelementptr inbounds %struct.Reg, %struct.Reg* %6508, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6509 to i64*
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6511 = getelementptr inbounds %struct.GPR, %struct.GPR* %6510, i32 0, i32 5
  %6512 = getelementptr inbounds %struct.Reg, %struct.Reg* %6511, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %6512 to i64*
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6513, i64 0, i64 1
  %XMM1.i259 = bitcast %union.VectorReg* %6514 to %union.vec128_t*
  %6515 = bitcast %union.vec128_t* %XMM1.i259 to i8*
  %6516 = load i64, i64* %PC.i257
  %6517 = add i64 %6516, 4
  store i64 %6517, i64* %PC.i257
  %6518 = bitcast i8* %6515 to double*
  %6519 = load double, double* %6518, align 1
  %6520 = call double @llvm.trunc.f64(double %6519)
  %6521 = call double @llvm.fabs.f64(double %6520)
  %6522 = fcmp ogt double %6521, 0x41DFFFFFFFC00000
  %6523 = fptosi double %6520 to i32
  %6524 = zext i32 %6523 to i64
  %6525 = select i1 %6522, i64 2147483648, i64 %6524
  store i64 %6525, i64* %RCX.i258, align 8
  store %struct.Memory* %loadMem_4153f6, %struct.Memory** %MEMORY
  %loadMem_4153fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6527 = getelementptr inbounds %struct.GPR, %struct.GPR* %6526, i32 0, i32 33
  %6528 = getelementptr inbounds %struct.Reg, %struct.Reg* %6527, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6528 to i64*
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6530 = getelementptr inbounds %struct.GPR, %struct.GPR* %6529, i32 0, i32 5
  %6531 = getelementptr inbounds %struct.Reg, %struct.Reg* %6530, i32 0, i32 0
  %ECX.i255 = bitcast %union.anon* %6531 to i32*
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 15
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %6534 to i64*
  %6535 = load i64, i64* %RBP.i256
  %6536 = sub i64 %6535, 48
  %6537 = load i32, i32* %ECX.i255
  %6538 = zext i32 %6537 to i64
  %6539 = load i64, i64* %PC.i254
  %6540 = add i64 %6539, 3
  store i64 %6540, i64* %PC.i254
  %6541 = inttoptr i64 %6536 to i32*
  store i32 %6537, i32* %6541
  store %struct.Memory* %loadMem_4153fa, %struct.Memory** %MEMORY
  %loadMem_4153fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 33
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %6544 to i64*
  %6545 = load i64, i64* %PC.i253
  %6546 = add i64 %6545, 12
  %6547 = load i64, i64* %PC.i253
  %6548 = add i64 %6547, 5
  store i64 %6548, i64* %PC.i253
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6546, i64* %6549, align 8
  store %struct.Memory* %loadMem_4153fd, %struct.Memory** %MEMORY
  br label %block_.L_415409

block_.L_415402:                                  ; preds = %block_.L_415364
  %loadMem_415402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6551 = getelementptr inbounds %struct.GPR, %struct.GPR* %6550, i32 0, i32 33
  %6552 = getelementptr inbounds %struct.Reg, %struct.Reg* %6551, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6552 to i64*
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 15
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %6555 to i64*
  %6556 = load i64, i64* %RBP.i252
  %6557 = sub i64 %6556, 48
  %6558 = load i64, i64* %PC.i251
  %6559 = add i64 %6558, 7
  store i64 %6559, i64* %PC.i251
  %6560 = inttoptr i64 %6557 to i32*
  store i32 100, i32* %6560
  store %struct.Memory* %loadMem_415402, %struct.Memory** %MEMORY
  br label %block_.L_415409

block_.L_415409:                                  ; preds = %block_.L_415402, %block_41536e
  %loadMem_415409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 33
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6563 to i64*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 15
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %6566 to i64*
  %6567 = load i64, i64* %RBP.i250
  %6568 = sub i64 %6567, 24
  %6569 = load i64, i64* %PC.i249
  %6570 = add i64 %6569, 4
  store i64 %6570, i64* %PC.i249
  %6571 = inttoptr i64 %6568 to i32*
  %6572 = load i32, i32* %6571
  %6573 = sub i32 %6572, 1
  %6574 = icmp ult i32 %6572, 1
  %6575 = zext i1 %6574 to i8
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6575, i8* %6576, align 1
  %6577 = and i32 %6573, 255
  %6578 = call i32 @llvm.ctpop.i32(i32 %6577)
  %6579 = trunc i32 %6578 to i8
  %6580 = and i8 %6579, 1
  %6581 = xor i8 %6580, 1
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6581, i8* %6582, align 1
  %6583 = xor i32 %6572, 1
  %6584 = xor i32 %6583, %6573
  %6585 = lshr i32 %6584, 4
  %6586 = trunc i32 %6585 to i8
  %6587 = and i8 %6586, 1
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6587, i8* %6588, align 1
  %6589 = icmp eq i32 %6573, 0
  %6590 = zext i1 %6589 to i8
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6590, i8* %6591, align 1
  %6592 = lshr i32 %6573, 31
  %6593 = trunc i32 %6592 to i8
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6593, i8* %6594, align 1
  %6595 = lshr i32 %6572, 31
  %6596 = xor i32 %6592, %6595
  %6597 = add i32 %6596, %6595
  %6598 = icmp eq i32 %6597, 2
  %6599 = zext i1 %6598 to i8
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6599, i8* %6600, align 1
  store %struct.Memory* %loadMem_415409, %struct.Memory** %MEMORY
  %loadMem_41540d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 33
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %6603 to i64*
  %6604 = load i64, i64* %PC.i248
  %6605 = add i64 %6604, 72
  %6606 = load i64, i64* %PC.i248
  %6607 = add i64 %6606, 6
  %6608 = load i64, i64* %PC.i248
  %6609 = add i64 %6608, 6
  store i64 %6609, i64* %PC.i248
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6611 = load i8, i8* %6610, align 1
  %6612 = icmp ne i8 %6611, 0
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6614 = load i8, i8* %6613, align 1
  %6615 = icmp ne i8 %6614, 0
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6617 = load i8, i8* %6616, align 1
  %6618 = icmp ne i8 %6617, 0
  %6619 = xor i1 %6615, %6618
  %6620 = or i1 %6612, %6619
  %6621 = zext i1 %6620 to i8
  store i8 %6621, i8* %BRANCH_TAKEN, align 1
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6623 = select i1 %6620, i64 %6605, i64 %6607
  store i64 %6623, i64* %6622, align 8
  store %struct.Memory* %loadMem_41540d, %struct.Memory** %MEMORY
  %loadBr_41540d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41540d = icmp eq i8 %loadBr_41540d, 1
  br i1 %cmpBr_41540d, label %block_.L_415455, label %block_415413

block_415413:                                     ; preds = %block_.L_415409
  %loadMem_415413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 33
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6626 to i64*
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6628 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6627, i64 0, i64 0
  %YMM0.i247 = bitcast %union.VectorReg* %6628 to %"class.std::bitset"*
  %6629 = bitcast %"class.std::bitset"* %YMM0.i247 to i8*
  %6630 = load i64, i64* %PC.i246
  %6631 = add i64 %6630, ptrtoint (%G_0x3f405__rip__type* @G_0x3f405__rip_ to i64)
  %6632 = load i64, i64* %PC.i246
  %6633 = add i64 %6632, 8
  store i64 %6633, i64* %PC.i246
  %6634 = inttoptr i64 %6631 to double*
  %6635 = load double, double* %6634
  %6636 = bitcast i8* %6629 to double*
  store double %6635, double* %6636, align 1
  %6637 = getelementptr inbounds i8, i8* %6629, i64 8
  %6638 = bitcast i8* %6637 to double*
  store double 0.000000e+00, double* %6638, align 1
  store %struct.Memory* %loadMem_415413, %struct.Memory** %MEMORY
  %loadMem_41541b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 33
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6641 to i64*
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 1
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %6644 to i64*
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 15
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %6647 to i64*
  %6648 = load i64, i64* %RBP.i245
  %6649 = sub i64 %6648, 16
  %6650 = load i64, i64* %PC.i243
  %6651 = add i64 %6650, 4
  store i64 %6651, i64* %PC.i243
  %6652 = inttoptr i64 %6649 to i64*
  %6653 = load i64, i64* %6652
  store i64 %6653, i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_41541b, %struct.Memory** %MEMORY
  %loadMem_41541f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6655 = getelementptr inbounds %struct.GPR, %struct.GPR* %6654, i32 0, i32 33
  %6656 = getelementptr inbounds %struct.Reg, %struct.Reg* %6655, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %6656 to i64*
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6658 = getelementptr inbounds %struct.GPR, %struct.GPR* %6657, i32 0, i32 1
  %6659 = getelementptr inbounds %struct.Reg, %struct.Reg* %6658, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %6659 to i64*
  %6660 = load i64, i64* %RAX.i242
  %6661 = add i64 %6660, 312
  %6662 = load i64, i64* %PC.i241
  %6663 = add i64 %6662, 7
  store i64 %6663, i64* %PC.i241
  %6664 = inttoptr i64 %6661 to i64*
  %6665 = load i64, i64* %6664
  store i64 %6665, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_41541f, %struct.Memory** %MEMORY
  %loadMem_415426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 33
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6668 to i64*
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6670 = getelementptr inbounds %struct.GPR, %struct.GPR* %6669, i32 0, i32 1
  %6671 = getelementptr inbounds %struct.Reg, %struct.Reg* %6670, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %6671 to i64*
  %6672 = load i64, i64* %RAX.i240
  %6673 = add i64 %6672, 48
  %6674 = load i64, i64* %PC.i239
  %6675 = add i64 %6674, 4
  store i64 %6675, i64* %PC.i239
  %6676 = inttoptr i64 %6673 to i64*
  %6677 = load i64, i64* %6676
  store i64 %6677, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_415426, %struct.Memory** %MEMORY
  %loadMem_41542a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 33
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6680 to i64*
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 5
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %6683 to i64*
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 15
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %6686 to i64*
  %6687 = load i64, i64* %RBP.i238
  %6688 = sub i64 %6687, 24
  %6689 = load i64, i64* %PC.i236
  %6690 = add i64 %6689, 3
  store i64 %6690, i64* %PC.i236
  %6691 = inttoptr i64 %6688 to i32*
  %6692 = load i32, i32* %6691
  %6693 = zext i32 %6692 to i64
  store i64 %6693, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_41542a, %struct.Memory** %MEMORY
  %loadMem_41542d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 33
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6696 to i64*
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 5
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %6699 to i64*
  %6700 = load i64, i64* %RCX.i235
  %6701 = load i64, i64* %PC.i234
  %6702 = add i64 %6701, 3
  store i64 %6702, i64* %PC.i234
  %6703 = trunc i64 %6700 to i32
  %6704 = sub i32 %6703, 1
  %6705 = zext i32 %6704 to i64
  store i64 %6705, i64* %RCX.i235, align 8
  %6706 = icmp ult i32 %6703, 1
  %6707 = zext i1 %6706 to i8
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6707, i8* %6708, align 1
  %6709 = and i32 %6704, 255
  %6710 = call i32 @llvm.ctpop.i32(i32 %6709)
  %6711 = trunc i32 %6710 to i8
  %6712 = and i8 %6711, 1
  %6713 = xor i8 %6712, 1
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6713, i8* %6714, align 1
  %6715 = xor i64 1, %6700
  %6716 = trunc i64 %6715 to i32
  %6717 = xor i32 %6716, %6704
  %6718 = lshr i32 %6717, 4
  %6719 = trunc i32 %6718 to i8
  %6720 = and i8 %6719, 1
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6720, i8* %6721, align 1
  %6722 = icmp eq i32 %6704, 0
  %6723 = zext i1 %6722 to i8
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6723, i8* %6724, align 1
  %6725 = lshr i32 %6704, 31
  %6726 = trunc i32 %6725 to i8
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6726, i8* %6727, align 1
  %6728 = lshr i32 %6703, 31
  %6729 = xor i32 %6725, %6728
  %6730 = add i32 %6729, %6728
  %6731 = icmp eq i32 %6730, 2
  %6732 = zext i1 %6731 to i8
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6732, i8* %6733, align 1
  store %struct.Memory* %loadMem_41542d, %struct.Memory** %MEMORY
  %loadMem_415430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6735 = getelementptr inbounds %struct.GPR, %struct.GPR* %6734, i32 0, i32 33
  %6736 = getelementptr inbounds %struct.Reg, %struct.Reg* %6735, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6736 to i64*
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 5
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %ECX.i232 = bitcast %union.anon* %6739 to i32*
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 7
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %6742 to i64*
  %6743 = load i32, i32* %ECX.i232
  %6744 = zext i32 %6743 to i64
  %6745 = load i64, i64* %PC.i231
  %6746 = add i64 %6745, 3
  store i64 %6746, i64* %PC.i231
  %6747 = shl i64 %6744, 32
  %6748 = ashr exact i64 %6747, 32
  store i64 %6748, i64* %RDX.i233, align 8
  store %struct.Memory* %loadMem_415430, %struct.Memory** %MEMORY
  %loadMem_415433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6750 = getelementptr inbounds %struct.GPR, %struct.GPR* %6749, i32 0, i32 33
  %6751 = getelementptr inbounds %struct.Reg, %struct.Reg* %6750, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6751 to i64*
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6753 = getelementptr inbounds %struct.GPR, %struct.GPR* %6752, i32 0, i32 1
  %6754 = getelementptr inbounds %struct.Reg, %struct.Reg* %6753, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %6754 to i64*
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 5
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 7
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %6760 to i64*
  %6761 = load i64, i64* %RAX.i228
  %6762 = load i64, i64* %RDX.i230
  %6763 = mul i64 %6762, 4
  %6764 = add i64 %6763, %6761
  %6765 = load i64, i64* %PC.i227
  %6766 = add i64 %6765, 4
  store i64 %6766, i64* %PC.i227
  %6767 = inttoptr i64 %6764 to i32*
  %6768 = load i32, i32* %6767
  %6769 = sext i32 %6768 to i64
  %6770 = mul i64 %6769, -1
  %6771 = trunc i64 %6770 to i32
  %6772 = and i64 %6770, 4294967295
  store i64 %6772, i64* %RCX.i229, align 8
  %6773 = shl i64 %6770, 32
  %6774 = ashr exact i64 %6773, 32
  %6775 = icmp ne i64 %6774, %6770
  %6776 = zext i1 %6775 to i8
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6776, i8* %6777, align 1
  %6778 = and i32 %6771, 255
  %6779 = call i32 @llvm.ctpop.i32(i32 %6778)
  %6780 = trunc i32 %6779 to i8
  %6781 = and i8 %6780, 1
  %6782 = xor i8 %6781, 1
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6782, i8* %6783, align 1
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6784, align 1
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6785, align 1
  %6786 = lshr i32 %6771, 31
  %6787 = trunc i32 %6786 to i8
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6787, i8* %6788, align 1
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6776, i8* %6789, align 1
  store %struct.Memory* %loadMem_415433, %struct.Memory** %MEMORY
  %loadMem_41543a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6791 = getelementptr inbounds %struct.GPR, %struct.GPR* %6790, i32 0, i32 33
  %6792 = getelementptr inbounds %struct.Reg, %struct.Reg* %6791, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6792 to i64*
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 5
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %ECX.i225 = bitcast %union.anon* %6795 to i32*
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 15
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %6798 to i64*
  %6799 = load i64, i64* %RBP.i226
  %6800 = sub i64 %6799, 52
  %6801 = load i32, i32* %ECX.i225
  %6802 = zext i32 %6801 to i64
  %6803 = load i64, i64* %PC.i224
  %6804 = add i64 %6803, 3
  store i64 %6804, i64* %PC.i224
  %6805 = inttoptr i64 %6800 to i32*
  store i32 %6801, i32* %6805
  store %struct.Memory* %loadMem_41543a, %struct.Memory** %MEMORY
  %loadMem_41543d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 33
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 5
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %6811 to i64*
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 15
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %6814 to i64*
  %6815 = load i64, i64* %RBP.i223
  %6816 = sub i64 %6815, 52
  %6817 = load i64, i64* %PC.i221
  %6818 = add i64 %6817, 4
  store i64 %6818, i64* %PC.i221
  %6819 = inttoptr i64 %6816 to i32*
  %6820 = load i32, i32* %6819
  %6821 = sext i32 %6820 to i64
  %6822 = mul i64 %6821, 100
  %6823 = trunc i64 %6822 to i32
  %6824 = and i64 %6822, 4294967295
  store i64 %6824, i64* %RCX.i222, align 8
  %6825 = shl i64 %6822, 32
  %6826 = ashr exact i64 %6825, 32
  %6827 = icmp ne i64 %6826, %6822
  %6828 = zext i1 %6827 to i8
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6828, i8* %6829, align 1
  %6830 = and i32 %6823, 255
  %6831 = call i32 @llvm.ctpop.i32(i32 %6830)
  %6832 = trunc i32 %6831 to i8
  %6833 = and i8 %6832, 1
  %6834 = xor i8 %6833, 1
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6834, i8* %6835, align 1
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6836, align 1
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6837, align 1
  %6838 = lshr i32 %6823, 31
  %6839 = trunc i32 %6838 to i8
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6839, i8* %6840, align 1
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6828, i8* %6841, align 1
  store %struct.Memory* %loadMem_41543d, %struct.Memory** %MEMORY
  %loadMem_415441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 33
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 5
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %ECX.i219 = bitcast %union.anon* %6847 to i32*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6848, i64 0, i64 1
  %YMM1.i220 = bitcast %union.VectorReg* %6849 to %"class.std::bitset"*
  %6850 = bitcast %"class.std::bitset"* %YMM1.i220 to i8*
  %6851 = load i32, i32* %ECX.i219
  %6852 = zext i32 %6851 to i64
  %6853 = load i64, i64* %PC.i218
  %6854 = add i64 %6853, 4
  store i64 %6854, i64* %PC.i218
  %6855 = sitofp i32 %6851 to double
  %6856 = bitcast i8* %6850 to double*
  store double %6855, double* %6856, align 1
  store %struct.Memory* %loadMem_415441, %struct.Memory** %MEMORY
  %loadMem_415445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 33
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6859 to i64*
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6861 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6860, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %6861 to %"class.std::bitset"*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6863 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6862, i64 0, i64 0
  %XMM0.i217 = bitcast %union.VectorReg* %6863 to %union.vec128_t*
  %6864 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6865 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6866 = bitcast %union.vec128_t* %XMM0.i217 to i8*
  %6867 = load i64, i64* %PC.i216
  %6868 = add i64 %6867, 4
  store i64 %6868, i64* %PC.i216
  %6869 = bitcast i8* %6865 to double*
  %6870 = load double, double* %6869, align 1
  %6871 = getelementptr inbounds i8, i8* %6865, i64 8
  %6872 = bitcast i8* %6871 to i64*
  %6873 = load i64, i64* %6872, align 1
  %6874 = bitcast i8* %6866 to double*
  %6875 = load double, double* %6874, align 1
  %6876 = fdiv double %6870, %6875
  %6877 = bitcast i8* %6864 to double*
  store double %6876, double* %6877, align 1
  %6878 = getelementptr inbounds i8, i8* %6864, i64 8
  %6879 = bitcast i8* %6878 to i64*
  store i64 %6873, i64* %6879, align 1
  store %struct.Memory* %loadMem_415445, %struct.Memory** %MEMORY
  %loadMem_415449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 33
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6882 to i64*
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 5
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %6885 to i64*
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6886, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %6887 to %union.vec128_t*
  %6888 = bitcast %union.vec128_t* %XMM1.i to i8*
  %6889 = load i64, i64* %PC.i214
  %6890 = add i64 %6889, 4
  store i64 %6890, i64* %PC.i214
  %6891 = bitcast i8* %6888 to double*
  %6892 = load double, double* %6891, align 1
  %6893 = call double @llvm.trunc.f64(double %6892)
  %6894 = call double @llvm.fabs.f64(double %6893)
  %6895 = fcmp ogt double %6894, 0x41DFFFFFFFC00000
  %6896 = fptosi double %6893 to i32
  %6897 = zext i32 %6896 to i64
  %6898 = select i1 %6895, i64 2147483648, i64 %6897
  store i64 %6898, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_415449, %struct.Memory** %MEMORY
  %loadMem_41544d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 33
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6901 to i64*
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6903 = getelementptr inbounds %struct.GPR, %struct.GPR* %6902, i32 0, i32 5
  %6904 = getelementptr inbounds %struct.Reg, %struct.Reg* %6903, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6904 to i32*
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6906 = getelementptr inbounds %struct.GPR, %struct.GPR* %6905, i32 0, i32 15
  %6907 = getelementptr inbounds %struct.Reg, %struct.Reg* %6906, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %6907 to i64*
  %6908 = load i64, i64* %RBP.i213
  %6909 = sub i64 %6908, 52
  %6910 = load i32, i32* %ECX.i
  %6911 = zext i32 %6910 to i64
  %6912 = load i64, i64* %PC.i212
  %6913 = add i64 %6912, 3
  store i64 %6913, i64* %PC.i212
  %6914 = inttoptr i64 %6909 to i32*
  store i32 %6910, i32* %6914
  store %struct.Memory* %loadMem_41544d, %struct.Memory** %MEMORY
  %loadMem_415450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 33
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6917 to i64*
  %6918 = load i64, i64* %PC.i211
  %6919 = add i64 %6918, 12
  %6920 = load i64, i64* %PC.i211
  %6921 = add i64 %6920, 5
  store i64 %6921, i64* %PC.i211
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6919, i64* %6922, align 8
  store %struct.Memory* %loadMem_415450, %struct.Memory** %MEMORY
  br label %block_.L_41545c

block_.L_415455:                                  ; preds = %block_.L_415409
  %loadMem_415455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 33
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 15
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %6928 to i64*
  %6929 = load i64, i64* %RBP.i210
  %6930 = sub i64 %6929, 52
  %6931 = load i64, i64* %PC.i209
  %6932 = add i64 %6931, 7
  store i64 %6932, i64* %PC.i209
  %6933 = inttoptr i64 %6930 to i32*
  store i32 100, i32* %6933
  store %struct.Memory* %loadMem_415455, %struct.Memory** %MEMORY
  br label %block_.L_41545c

block_.L_41545c:                                  ; preds = %block_.L_415455, %block_415413
  %loadMem_41545c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6935 = getelementptr inbounds %struct.GPR, %struct.GPR* %6934, i32 0, i32 33
  %6936 = getelementptr inbounds %struct.Reg, %struct.Reg* %6935, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6936 to i64*
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6938 = getelementptr inbounds %struct.GPR, %struct.GPR* %6937, i32 0, i32 15
  %6939 = getelementptr inbounds %struct.Reg, %struct.Reg* %6938, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %6939 to i64*
  %6940 = load i64, i64* %RBP.i208
  %6941 = sub i64 %6940, 20
  %6942 = load i64, i64* %PC.i207
  %6943 = add i64 %6942, 4
  store i64 %6943, i64* %PC.i207
  %6944 = inttoptr i64 %6941 to i32*
  %6945 = load i32, i32* %6944
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6946, align 1
  %6947 = and i32 %6945, 255
  %6948 = call i32 @llvm.ctpop.i32(i32 %6947)
  %6949 = trunc i32 %6948 to i8
  %6950 = and i8 %6949, 1
  %6951 = xor i8 %6950, 1
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6951, i8* %6952, align 1
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6953, align 1
  %6954 = icmp eq i32 %6945, 0
  %6955 = zext i1 %6954 to i8
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6955, i8* %6956, align 1
  %6957 = lshr i32 %6945, 31
  %6958 = trunc i32 %6957 to i8
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6958, i8* %6959, align 1
  %6960 = lshr i32 %6945, 31
  %6961 = xor i32 %6957, %6960
  %6962 = add i32 %6961, %6960
  %6963 = icmp eq i32 %6962, 2
  %6964 = zext i1 %6963 to i8
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6964, i8* %6965, align 1
  store %struct.Memory* %loadMem_41545c, %struct.Memory** %MEMORY
  %loadMem_415460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6967 = getelementptr inbounds %struct.GPR, %struct.GPR* %6966, i32 0, i32 33
  %6968 = getelementptr inbounds %struct.Reg, %struct.Reg* %6967, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6968 to i64*
  %6969 = load i64, i64* %PC.i206
  %6970 = add i64 %6969, 52
  %6971 = load i64, i64* %PC.i206
  %6972 = add i64 %6971, 6
  %6973 = load i64, i64* %PC.i206
  %6974 = add i64 %6973, 6
  store i64 %6974, i64* %PC.i206
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6976 = load i8, i8* %6975, align 1
  store i8 %6976, i8* %BRANCH_TAKEN, align 1
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6978 = icmp ne i8 %6976, 0
  %6979 = select i1 %6978, i64 %6970, i64 %6972
  store i64 %6979, i64* %6977, align 8
  store %struct.Memory* %loadMem_415460, %struct.Memory** %MEMORY
  %loadBr_415460 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415460 = icmp eq i8 %loadBr_415460, 1
  br i1 %cmpBr_415460, label %block_.L_415494, label %block_415466

block_415466:                                     ; preds = %block_.L_41545c
  %loadMem_415466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 33
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6982 to i64*
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 9
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %RSI.i205 = bitcast %union.anon* %6985 to i64*
  %6986 = load i64, i64* %PC.i204
  %6987 = add i64 %6986, 10
  store i64 %6987, i64* %PC.i204
  store i64 ptrtoint (%G__0x456842_type* @G__0x456842 to i64), i64* %RSI.i205, align 8
  store %struct.Memory* %loadMem_415466, %struct.Memory** %MEMORY
  %loadMem_415470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6989 = getelementptr inbounds %struct.GPR, %struct.GPR* %6988, i32 0, i32 33
  %6990 = getelementptr inbounds %struct.Reg, %struct.Reg* %6989, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %6990 to i64*
  %6991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6992 = getelementptr inbounds %struct.GPR, %struct.GPR* %6991, i32 0, i32 11
  %6993 = getelementptr inbounds %struct.Reg, %struct.Reg* %6992, i32 0, i32 0
  %RDI.i202 = bitcast %union.anon* %6993 to i64*
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6995 = getelementptr inbounds %struct.GPR, %struct.GPR* %6994, i32 0, i32 15
  %6996 = getelementptr inbounds %struct.Reg, %struct.Reg* %6995, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %6996 to i64*
  %6997 = load i64, i64* %RBP.i203
  %6998 = sub i64 %6997, 8
  %6999 = load i64, i64* %PC.i201
  %7000 = add i64 %6999, 4
  store i64 %7000, i64* %PC.i201
  %7001 = inttoptr i64 %6998 to i64*
  %7002 = load i64, i64* %7001
  store i64 %7002, i64* %RDI.i202, align 8
  store %struct.Memory* %loadMem_415470, %struct.Memory** %MEMORY
  %loadMem_415474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7004 = getelementptr inbounds %struct.GPR, %struct.GPR* %7003, i32 0, i32 33
  %7005 = getelementptr inbounds %struct.Reg, %struct.Reg* %7004, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %7005 to i64*
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7007 = getelementptr inbounds %struct.GPR, %struct.GPR* %7006, i32 0, i32 7
  %7008 = getelementptr inbounds %struct.Reg, %struct.Reg* %7007, i32 0, i32 0
  %RDX.i199 = bitcast %union.anon* %7008 to i64*
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7010 = getelementptr inbounds %struct.GPR, %struct.GPR* %7009, i32 0, i32 15
  %7011 = getelementptr inbounds %struct.Reg, %struct.Reg* %7010, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %7011 to i64*
  %7012 = load i64, i64* %RBP.i200
  %7013 = sub i64 %7012, 40
  %7014 = load i64, i64* %PC.i198
  %7015 = add i64 %7014, 3
  store i64 %7015, i64* %PC.i198
  %7016 = inttoptr i64 %7013 to i32*
  %7017 = load i32, i32* %7016
  %7018 = zext i32 %7017 to i64
  store i64 %7018, i64* %RDX.i199, align 8
  store %struct.Memory* %loadMem_415474, %struct.Memory** %MEMORY
  %loadMem_415477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7020 = getelementptr inbounds %struct.GPR, %struct.GPR* %7019, i32 0, i32 33
  %7021 = getelementptr inbounds %struct.Reg, %struct.Reg* %7020, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7021 to i64*
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7023 = getelementptr inbounds %struct.GPR, %struct.GPR* %7022, i32 0, i32 5
  %7024 = getelementptr inbounds %struct.Reg, %struct.Reg* %7023, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %7024 to i64*
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 15
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %7027 to i64*
  %7028 = load i64, i64* %RBP.i197
  %7029 = sub i64 %7028, 44
  %7030 = load i64, i64* %PC.i195
  %7031 = add i64 %7030, 3
  store i64 %7031, i64* %PC.i195
  %7032 = inttoptr i64 %7029 to i32*
  %7033 = load i32, i32* %7032
  %7034 = zext i32 %7033 to i64
  store i64 %7034, i64* %RCX.i196, align 8
  store %struct.Memory* %loadMem_415477, %struct.Memory** %MEMORY
  %loadMem_41547a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7036 = getelementptr inbounds %struct.GPR, %struct.GPR* %7035, i32 0, i32 33
  %7037 = getelementptr inbounds %struct.Reg, %struct.Reg* %7036, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7037 to i64*
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 17
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %7040 to i32*
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 15
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %7043 to i64*
  %7044 = bitcast i32* %R8D.i to i64*
  %7045 = load i64, i64* %RBP.i194
  %7046 = sub i64 %7045, 48
  %7047 = load i64, i64* %PC.i193
  %7048 = add i64 %7047, 4
  store i64 %7048, i64* %PC.i193
  %7049 = inttoptr i64 %7046 to i32*
  %7050 = load i32, i32* %7049
  %7051 = zext i32 %7050 to i64
  store i64 %7051, i64* %7044, align 8
  store %struct.Memory* %loadMem_41547a, %struct.Memory** %MEMORY
  %loadMem_41547e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7053 = getelementptr inbounds %struct.GPR, %struct.GPR* %7052, i32 0, i32 33
  %7054 = getelementptr inbounds %struct.Reg, %struct.Reg* %7053, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %7054 to i64*
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 19
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %7057 to i32*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 15
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %7060 to i64*
  %7061 = bitcast i32* %R9D.i to i64*
  %7062 = load i64, i64* %RBP.i192
  %7063 = sub i64 %7062, 52
  %7064 = load i64, i64* %PC.i191
  %7065 = add i64 %7064, 4
  store i64 %7065, i64* %PC.i191
  %7066 = inttoptr i64 %7063 to i32*
  %7067 = load i32, i32* %7066
  %7068 = zext i32 %7067 to i64
  store i64 %7068, i64* %7061, align 8
  store %struct.Memory* %loadMem_41547e, %struct.Memory** %MEMORY
  %loadMem_415482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 33
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %7071 to i64*
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7073 = getelementptr inbounds %struct.GPR, %struct.GPR* %7072, i32 0, i32 1
  %7074 = getelementptr inbounds %struct.Reg, %struct.Reg* %7073, i32 0, i32 0
  %7075 = bitcast %union.anon* %7074 to %struct.anon.2*
  %AL.i190 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7075, i32 0, i32 0
  %7076 = load i64, i64* %PC.i189
  %7077 = add i64 %7076, 2
  store i64 %7077, i64* %PC.i189
  store i8 0, i8* %AL.i190, align 1
  store %struct.Memory* %loadMem_415482, %struct.Memory** %MEMORY
  %loadMem1_415484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7079 = getelementptr inbounds %struct.GPR, %struct.GPR* %7078, i32 0, i32 33
  %7080 = getelementptr inbounds %struct.Reg, %struct.Reg* %7079, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %7080 to i64*
  %7081 = load i64, i64* %PC.i188
  %7082 = add i64 %7081, -81684
  %7083 = load i64, i64* %PC.i188
  %7084 = add i64 %7083, 5
  %7085 = load i64, i64* %PC.i188
  %7086 = add i64 %7085, 5
  store i64 %7086, i64* %PC.i188
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7088 = load i64, i64* %7087, align 8
  %7089 = add i64 %7088, -8
  %7090 = inttoptr i64 %7089 to i64*
  store i64 %7084, i64* %7090
  store i64 %7089, i64* %7087, align 8
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7082, i64* %7091, align 8
  store %struct.Memory* %loadMem1_415484, %struct.Memory** %MEMORY
  %loadMem2_415484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415484 = load i64, i64* %3
  %7092 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_415484)
  store %struct.Memory* %7092, %struct.Memory** %MEMORY
  %loadMem_415489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 33
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7095 to i64*
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 1
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %7098 to i32*
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7100 = getelementptr inbounds %struct.GPR, %struct.GPR* %7099, i32 0, i32 15
  %7101 = getelementptr inbounds %struct.Reg, %struct.Reg* %7100, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %7101 to i64*
  %7102 = load i64, i64* %RBP.i184
  %7103 = sub i64 %7102, 220
  %7104 = load i32, i32* %EAX.i183
  %7105 = zext i32 %7104 to i64
  %7106 = load i64, i64* %PC.i182
  %7107 = add i64 %7106, 6
  store i64 %7107, i64* %PC.i182
  %7108 = inttoptr i64 %7103 to i32*
  store i32 %7104, i32* %7108
  store %struct.Memory* %loadMem_415489, %struct.Memory** %MEMORY
  %loadMem_41548f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7110 = getelementptr inbounds %struct.GPR, %struct.GPR* %7109, i32 0, i32 33
  %7111 = getelementptr inbounds %struct.Reg, %struct.Reg* %7110, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7111 to i64*
  %7112 = load i64, i64* %PC.i181
  %7113 = add i64 %7112, 38
  %7114 = load i64, i64* %PC.i181
  %7115 = add i64 %7114, 5
  store i64 %7115, i64* %PC.i181
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7113, i64* %7116, align 8
  store %struct.Memory* %loadMem_41548f, %struct.Memory** %MEMORY
  br label %block_.L_4154b5

block_.L_415494:                                  ; preds = %block_.L_41545c
  %loadMem_415494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 33
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7119 to i64*
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 9
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %RSI.i180 = bitcast %union.anon* %7122 to i64*
  %7123 = load i64, i64* %PC.i179
  %7124 = add i64 %7123, 10
  store i64 %7124, i64* %PC.i179
  store i64 ptrtoint (%G__0x45684a_type* @G__0x45684a to i64), i64* %RSI.i180, align 8
  store %struct.Memory* %loadMem_415494, %struct.Memory** %MEMORY
  %loadMem_41549e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 33
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %7127 to i64*
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 11
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %7130 to i64*
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7132 = getelementptr inbounds %struct.GPR, %struct.GPR* %7131, i32 0, i32 15
  %7133 = getelementptr inbounds %struct.Reg, %struct.Reg* %7132, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %7133 to i64*
  %7134 = load i64, i64* %RBP.i178
  %7135 = sub i64 %7134, 8
  %7136 = load i64, i64* %PC.i176
  %7137 = add i64 %7136, 4
  store i64 %7137, i64* %PC.i176
  %7138 = inttoptr i64 %7135 to i64*
  %7139 = load i64, i64* %7138
  store i64 %7139, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_41549e, %struct.Memory** %MEMORY
  %loadMem_4154a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7141 = getelementptr inbounds %struct.GPR, %struct.GPR* %7140, i32 0, i32 33
  %7142 = getelementptr inbounds %struct.Reg, %struct.Reg* %7141, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %7142 to i64*
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7144 = getelementptr inbounds %struct.GPR, %struct.GPR* %7143, i32 0, i32 7
  %7145 = getelementptr inbounds %struct.Reg, %struct.Reg* %7144, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %7145 to i64*
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 15
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %7148 to i64*
  %7149 = load i64, i64* %RBP.i175
  %7150 = sub i64 %7149, 40
  %7151 = load i64, i64* %PC.i173
  %7152 = add i64 %7151, 3
  store i64 %7152, i64* %PC.i173
  %7153 = inttoptr i64 %7150 to i32*
  %7154 = load i32, i32* %7153
  %7155 = zext i32 %7154 to i64
  store i64 %7155, i64* %RDX.i174, align 8
  store %struct.Memory* %loadMem_4154a2, %struct.Memory** %MEMORY
  %loadMem_4154a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7157 = getelementptr inbounds %struct.GPR, %struct.GPR* %7156, i32 0, i32 33
  %7158 = getelementptr inbounds %struct.Reg, %struct.Reg* %7157, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %7158 to i64*
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 5
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %7161 to i64*
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 15
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %7164 to i64*
  %7165 = load i64, i64* %RBP.i172
  %7166 = sub i64 %7165, 44
  %7167 = load i64, i64* %PC.i170
  %7168 = add i64 %7167, 3
  store i64 %7168, i64* %PC.i170
  %7169 = inttoptr i64 %7166 to i32*
  %7170 = load i32, i32* %7169
  %7171 = zext i32 %7170 to i64
  store i64 %7171, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_4154a5, %struct.Memory** %MEMORY
  %loadMem_4154a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7173 = getelementptr inbounds %struct.GPR, %struct.GPR* %7172, i32 0, i32 33
  %7174 = getelementptr inbounds %struct.Reg, %struct.Reg* %7173, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7174 to i64*
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7176 = getelementptr inbounds %struct.GPR, %struct.GPR* %7175, i32 0, i32 1
  %7177 = getelementptr inbounds %struct.Reg, %struct.Reg* %7176, i32 0, i32 0
  %7178 = bitcast %union.anon* %7177 to %struct.anon.2*
  %AL.i169 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7178, i32 0, i32 0
  %7179 = load i64, i64* %PC.i168
  %7180 = add i64 %7179, 2
  store i64 %7180, i64* %PC.i168
  store i8 0, i8* %AL.i169, align 1
  store %struct.Memory* %loadMem_4154a8, %struct.Memory** %MEMORY
  %loadMem1_4154aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7182 = getelementptr inbounds %struct.GPR, %struct.GPR* %7181, i32 0, i32 33
  %7183 = getelementptr inbounds %struct.Reg, %struct.Reg* %7182, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %7183 to i64*
  %7184 = load i64, i64* %PC.i167
  %7185 = add i64 %7184, -81722
  %7186 = load i64, i64* %PC.i167
  %7187 = add i64 %7186, 5
  %7188 = load i64, i64* %PC.i167
  %7189 = add i64 %7188, 5
  store i64 %7189, i64* %PC.i167
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7191 = load i64, i64* %7190, align 8
  %7192 = add i64 %7191, -8
  %7193 = inttoptr i64 %7192 to i64*
  store i64 %7187, i64* %7193
  store i64 %7192, i64* %7190, align 8
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7185, i64* %7194, align 8
  store %struct.Memory* %loadMem1_4154aa, %struct.Memory** %MEMORY
  %loadMem2_4154aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154aa = load i64, i64* %3
  %7195 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4154aa)
  store %struct.Memory* %7195, %struct.Memory** %MEMORY
  %loadMem_4154af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 33
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 1
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %7201 to i32*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 15
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %7204 to i64*
  %7205 = load i64, i64* %RBP.i163
  %7206 = sub i64 %7205, 224
  %7207 = load i32, i32* %EAX.i162
  %7208 = zext i32 %7207 to i64
  %7209 = load i64, i64* %PC.i161
  %7210 = add i64 %7209, 6
  store i64 %7210, i64* %PC.i161
  %7211 = inttoptr i64 %7206 to i32*
  store i32 %7207, i32* %7211
  store %struct.Memory* %loadMem_4154af, %struct.Memory** %MEMORY
  br label %block_.L_4154b5

block_.L_4154b5:                                  ; preds = %block_.L_415494, %block_415466
  %loadMem_4154b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 33
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7214 to i64*
  %7215 = load i64, i64* %PC.i160
  %7216 = add i64 %7215, 5
  %7217 = load i64, i64* %PC.i160
  %7218 = add i64 %7217, 5
  store i64 %7218, i64* %PC.i160
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7216, i64* %7219, align 8
  store %struct.Memory* %loadMem_4154b5, %struct.Memory** %MEMORY
  br label %block_.L_4154ba

block_.L_4154ba:                                  ; preds = %block_.L_4154b5
  %loadMem_4154ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7221 = getelementptr inbounds %struct.GPR, %struct.GPR* %7220, i32 0, i32 33
  %7222 = getelementptr inbounds %struct.Reg, %struct.Reg* %7221, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7222 to i64*
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7224 = getelementptr inbounds %struct.GPR, %struct.GPR* %7223, i32 0, i32 1
  %7225 = getelementptr inbounds %struct.Reg, %struct.Reg* %7224, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %7225 to i64*
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7227 = getelementptr inbounds %struct.GPR, %struct.GPR* %7226, i32 0, i32 15
  %7228 = getelementptr inbounds %struct.Reg, %struct.Reg* %7227, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %7228 to i64*
  %7229 = load i64, i64* %RBP.i159
  %7230 = sub i64 %7229, 24
  %7231 = load i64, i64* %PC.i157
  %7232 = add i64 %7231, 3
  store i64 %7232, i64* %PC.i157
  %7233 = inttoptr i64 %7230 to i32*
  %7234 = load i32, i32* %7233
  %7235 = zext i32 %7234 to i64
  store i64 %7235, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_4154ba, %struct.Memory** %MEMORY
  %loadMem_4154bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7237 = getelementptr inbounds %struct.GPR, %struct.GPR* %7236, i32 0, i32 33
  %7238 = getelementptr inbounds %struct.Reg, %struct.Reg* %7237, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7238 to i64*
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 1
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %7241 to i64*
  %7242 = load i64, i64* %RAX.i156
  %7243 = load i64, i64* %PC.i155
  %7244 = add i64 %7243, 3
  store i64 %7244, i64* %PC.i155
  %7245 = trunc i64 %7242 to i32
  %7246 = add i32 1, %7245
  %7247 = zext i32 %7246 to i64
  store i64 %7247, i64* %RAX.i156, align 8
  %7248 = icmp ult i32 %7246, %7245
  %7249 = icmp ult i32 %7246, 1
  %7250 = or i1 %7248, %7249
  %7251 = zext i1 %7250 to i8
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7251, i8* %7252, align 1
  %7253 = and i32 %7246, 255
  %7254 = call i32 @llvm.ctpop.i32(i32 %7253)
  %7255 = trunc i32 %7254 to i8
  %7256 = and i8 %7255, 1
  %7257 = xor i8 %7256, 1
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7257, i8* %7258, align 1
  %7259 = xor i64 1, %7242
  %7260 = trunc i64 %7259 to i32
  %7261 = xor i32 %7260, %7246
  %7262 = lshr i32 %7261, 4
  %7263 = trunc i32 %7262 to i8
  %7264 = and i8 %7263, 1
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7264, i8* %7265, align 1
  %7266 = icmp eq i32 %7246, 0
  %7267 = zext i1 %7266 to i8
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7267, i8* %7268, align 1
  %7269 = lshr i32 %7246, 31
  %7270 = trunc i32 %7269 to i8
  %7271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7270, i8* %7271, align 1
  %7272 = lshr i32 %7245, 31
  %7273 = xor i32 %7269, %7272
  %7274 = add i32 %7273, %7269
  %7275 = icmp eq i32 %7274, 2
  %7276 = zext i1 %7275 to i8
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7276, i8* %7277, align 1
  store %struct.Memory* %loadMem_4154bd, %struct.Memory** %MEMORY
  %loadMem_4154c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 33
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7280 to i64*
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 1
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %7283 to i32*
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7285 = getelementptr inbounds %struct.GPR, %struct.GPR* %7284, i32 0, i32 15
  %7286 = getelementptr inbounds %struct.Reg, %struct.Reg* %7285, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %7286 to i64*
  %7287 = load i64, i64* %RBP.i154
  %7288 = sub i64 %7287, 24
  %7289 = load i32, i32* %EAX.i153
  %7290 = zext i32 %7289 to i64
  %7291 = load i64, i64* %PC.i152
  %7292 = add i64 %7291, 3
  store i64 %7292, i64* %PC.i152
  %7293 = inttoptr i64 %7288 to i32*
  store i32 %7289, i32* %7293
  store %struct.Memory* %loadMem_4154c0, %struct.Memory** %MEMORY
  %loadMem_4154c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7295 = getelementptr inbounds %struct.GPR, %struct.GPR* %7294, i32 0, i32 33
  %7296 = getelementptr inbounds %struct.Reg, %struct.Reg* %7295, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %7296 to i64*
  %7297 = load i64, i64* %PC.i151
  %7298 = add i64 %7297, -937
  %7299 = load i64, i64* %PC.i151
  %7300 = add i64 %7299, 5
  store i64 %7300, i64* %PC.i151
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7298, i64* %7301, align 8
  store %struct.Memory* %loadMem_4154c3, %struct.Memory** %MEMORY
  br label %block_.L_41511a

block_.L_4154c8:                                  ; preds = %block_.L_41511a
  %loadMem_4154c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7303 = getelementptr inbounds %struct.GPR, %struct.GPR* %7302, i32 0, i32 33
  %7304 = getelementptr inbounds %struct.Reg, %struct.Reg* %7303, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %7304 to i64*
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7306 = getelementptr inbounds %struct.GPR, %struct.GPR* %7305, i32 0, i32 9
  %7307 = getelementptr inbounds %struct.Reg, %struct.Reg* %7306, i32 0, i32 0
  %RSI.i150 = bitcast %union.anon* %7307 to i64*
  %7308 = load i64, i64* %PC.i149
  %7309 = add i64 %7308, 10
  store i64 %7309, i64* %PC.i149
  store i64 ptrtoint (%G__0x456853_type* @G__0x456853 to i64), i64* %RSI.i150, align 8
  store %struct.Memory* %loadMem_4154c8, %struct.Memory** %MEMORY
  %loadMem_4154d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7311 = getelementptr inbounds %struct.GPR, %struct.GPR* %7310, i32 0, i32 33
  %7312 = getelementptr inbounds %struct.Reg, %struct.Reg* %7311, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7312 to i64*
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7314 = getelementptr inbounds %struct.GPR, %struct.GPR* %7313, i32 0, i32 11
  %7315 = getelementptr inbounds %struct.Reg, %struct.Reg* %7314, i32 0, i32 0
  %RDI.i147 = bitcast %union.anon* %7315 to i64*
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7317 = getelementptr inbounds %struct.GPR, %struct.GPR* %7316, i32 0, i32 15
  %7318 = getelementptr inbounds %struct.Reg, %struct.Reg* %7317, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %7318 to i64*
  %7319 = load i64, i64* %RBP.i148
  %7320 = sub i64 %7319, 8
  %7321 = load i64, i64* %PC.i146
  %7322 = add i64 %7321, 4
  store i64 %7322, i64* %PC.i146
  %7323 = inttoptr i64 %7320 to i64*
  %7324 = load i64, i64* %7323
  store i64 %7324, i64* %RDI.i147, align 8
  store %struct.Memory* %loadMem_4154d2, %struct.Memory** %MEMORY
  %loadMem_4154d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7326 = getelementptr inbounds %struct.GPR, %struct.GPR* %7325, i32 0, i32 33
  %7327 = getelementptr inbounds %struct.Reg, %struct.Reg* %7326, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %7327 to i64*
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7329 = getelementptr inbounds %struct.GPR, %struct.GPR* %7328, i32 0, i32 1
  %7330 = getelementptr inbounds %struct.Reg, %struct.Reg* %7329, i32 0, i32 0
  %7331 = bitcast %union.anon* %7330 to %struct.anon.2*
  %AL.i145 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7331, i32 0, i32 0
  %7332 = load i64, i64* %PC.i144
  %7333 = add i64 %7332, 2
  store i64 %7333, i64* %PC.i144
  store i8 0, i8* %AL.i145, align 1
  store %struct.Memory* %loadMem_4154d6, %struct.Memory** %MEMORY
  %loadMem1_4154d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7335 = getelementptr inbounds %struct.GPR, %struct.GPR* %7334, i32 0, i32 33
  %7336 = getelementptr inbounds %struct.Reg, %struct.Reg* %7335, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7336 to i64*
  %7337 = load i64, i64* %PC.i143
  %7338 = add i64 %7337, -81768
  %7339 = load i64, i64* %PC.i143
  %7340 = add i64 %7339, 5
  %7341 = load i64, i64* %PC.i143
  %7342 = add i64 %7341, 5
  store i64 %7342, i64* %PC.i143
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7344 = load i64, i64* %7343, align 8
  %7345 = add i64 %7344, -8
  %7346 = inttoptr i64 %7345 to i64*
  store i64 %7340, i64* %7346
  store i64 %7345, i64* %7343, align 8
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7338, i64* %7347, align 8
  store %struct.Memory* %loadMem1_4154d8, %struct.Memory** %MEMORY
  %loadMem2_4154d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4154d8 = load i64, i64* %3
  %7348 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4154d8)
  store %struct.Memory* %7348, %struct.Memory** %MEMORY
  %loadMem_4154dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 33
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %7351 to i64*
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7353 = getelementptr inbounds %struct.GPR, %struct.GPR* %7352, i32 0, i32 15
  %7354 = getelementptr inbounds %struct.Reg, %struct.Reg* %7353, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %7354 to i64*
  %7355 = load i64, i64* %RBP.i139
  %7356 = sub i64 %7355, 28
  %7357 = load i64, i64* %PC.i138
  %7358 = add i64 %7357, 7
  store i64 %7358, i64* %PC.i138
  %7359 = inttoptr i64 %7356 to i32*
  store i32 0, i32* %7359
  store %struct.Memory* %loadMem_4154dd, %struct.Memory** %MEMORY
  %loadMem_4154e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 33
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7362 to i64*
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7364 = getelementptr inbounds %struct.GPR, %struct.GPR* %7363, i32 0, i32 1
  %7365 = getelementptr inbounds %struct.Reg, %struct.Reg* %7364, i32 0, i32 0
  %EAX.i136 = bitcast %union.anon* %7365 to i32*
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7367 = getelementptr inbounds %struct.GPR, %struct.GPR* %7366, i32 0, i32 15
  %7368 = getelementptr inbounds %struct.Reg, %struct.Reg* %7367, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %7368 to i64*
  %7369 = load i64, i64* %RBP.i137
  %7370 = sub i64 %7369, 228
  %7371 = load i32, i32* %EAX.i136
  %7372 = zext i32 %7371 to i64
  %7373 = load i64, i64* %PC.i135
  %7374 = add i64 %7373, 6
  store i64 %7374, i64* %PC.i135
  %7375 = inttoptr i64 %7370 to i32*
  store i32 %7371, i32* %7375
  store %struct.Memory* %loadMem_4154e4, %struct.Memory** %MEMORY
  br label %block_.L_4154ea

block_.L_4154ea:                                  ; preds = %block_.L_415550, %block_.L_4154c8
  %loadMem_4154ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 33
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7378 to i64*
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7380 = getelementptr inbounds %struct.GPR, %struct.GPR* %7379, i32 0, i32 1
  %7381 = getelementptr inbounds %struct.Reg, %struct.Reg* %7380, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %7381 to i64*
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 15
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %7384 to i64*
  %7385 = load i64, i64* %RBP.i134
  %7386 = sub i64 %7385, 28
  %7387 = load i64, i64* %PC.i132
  %7388 = add i64 %7387, 3
  store i64 %7388, i64* %PC.i132
  %7389 = inttoptr i64 %7386 to i32*
  %7390 = load i32, i32* %7389
  %7391 = zext i32 %7390 to i64
  store i64 %7391, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_4154ea, %struct.Memory** %MEMORY
  %loadMem_4154ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 33
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7394 to i64*
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 1
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %EAX.i131 = bitcast %union.anon* %7397 to i32*
  %7398 = load i32, i32* %EAX.i131
  %7399 = zext i32 %7398 to i64
  %7400 = load i64, i64* %PC.i130
  %7401 = add i64 %7400, 7
  store i64 %7401, i64* %PC.i130
  %7402 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %7403 = sub i32 %7398, %7402
  %7404 = icmp ult i32 %7398, %7402
  %7405 = zext i1 %7404 to i8
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7405, i8* %7406, align 1
  %7407 = and i32 %7403, 255
  %7408 = call i32 @llvm.ctpop.i32(i32 %7407)
  %7409 = trunc i32 %7408 to i8
  %7410 = and i8 %7409, 1
  %7411 = xor i8 %7410, 1
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7411, i8* %7412, align 1
  %7413 = xor i32 %7402, %7398
  %7414 = xor i32 %7413, %7403
  %7415 = lshr i32 %7414, 4
  %7416 = trunc i32 %7415 to i8
  %7417 = and i8 %7416, 1
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7417, i8* %7418, align 1
  %7419 = icmp eq i32 %7403, 0
  %7420 = zext i1 %7419 to i8
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7420, i8* %7421, align 1
  %7422 = lshr i32 %7403, 31
  %7423 = trunc i32 %7422 to i8
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7423, i8* %7424, align 1
  %7425 = lshr i32 %7398, 31
  %7426 = lshr i32 %7402, 31
  %7427 = xor i32 %7426, %7425
  %7428 = xor i32 %7422, %7425
  %7429 = add i32 %7428, %7427
  %7430 = icmp eq i32 %7429, 2
  %7431 = zext i1 %7430 to i8
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7431, i8* %7432, align 1
  store %struct.Memory* %loadMem_4154ed, %struct.Memory** %MEMORY
  %loadMem_4154f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7434 = getelementptr inbounds %struct.GPR, %struct.GPR* %7433, i32 0, i32 33
  %7435 = getelementptr inbounds %struct.Reg, %struct.Reg* %7434, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7435 to i64*
  %7436 = load i64, i64* %PC.i129
  %7437 = add i64 %7436, 157
  %7438 = load i64, i64* %PC.i129
  %7439 = add i64 %7438, 6
  %7440 = load i64, i64* %PC.i129
  %7441 = add i64 %7440, 6
  store i64 %7441, i64* %PC.i129
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7443 = load i8, i8* %7442, align 1
  %7444 = icmp ne i8 %7443, 0
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7446 = load i8, i8* %7445, align 1
  %7447 = icmp ne i8 %7446, 0
  %7448 = xor i1 %7444, %7447
  %7449 = xor i1 %7448, true
  %7450 = zext i1 %7449 to i8
  store i8 %7450, i8* %BRANCH_TAKEN, align 1
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7452 = select i1 %7448, i64 %7439, i64 %7437
  store i64 %7452, i64* %7451, align 8
  store %struct.Memory* %loadMem_4154f4, %struct.Memory** %MEMORY
  %loadBr_4154f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4154f4 = icmp eq i8 %loadBr_4154f4, 1
  br i1 %cmpBr_4154f4, label %block_.L_415591, label %block_4154fa

block_4154fa:                                     ; preds = %block_.L_4154ea
  %loadMem_4154fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 33
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7455 to i64*
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7456, i64 0, i64 0
  %YMM0.i127 = bitcast %union.VectorReg* %7457 to %"class.std::bitset"*
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7458, i64 0, i64 0
  %XMM0.i128 = bitcast %union.VectorReg* %7459 to %union.vec128_t*
  %7460 = bitcast %"class.std::bitset"* %YMM0.i127 to i8*
  %7461 = bitcast %"class.std::bitset"* %YMM0.i127 to i8*
  %7462 = bitcast %union.vec128_t* %XMM0.i128 to i8*
  %7463 = load i64, i64* %PC.i126
  %7464 = add i64 %7463, 3
  store i64 %7464, i64* %PC.i126
  %7465 = bitcast i8* %7461 to i64*
  %7466 = load i64, i64* %7465, align 1
  %7467 = getelementptr inbounds i8, i8* %7461, i64 8
  %7468 = bitcast i8* %7467 to i64*
  %7469 = load i64, i64* %7468, align 1
  %7470 = bitcast i8* %7462 to i64*
  %7471 = load i64, i64* %7470, align 1
  %7472 = getelementptr inbounds i8, i8* %7462, i64 8
  %7473 = bitcast i8* %7472 to i64*
  %7474 = load i64, i64* %7473, align 1
  %7475 = xor i64 %7471, %7466
  %7476 = xor i64 %7474, %7469
  %7477 = trunc i64 %7475 to i32
  %7478 = lshr i64 %7475, 32
  %7479 = trunc i64 %7478 to i32
  %7480 = bitcast i8* %7460 to i32*
  store i32 %7477, i32* %7480, align 1
  %7481 = getelementptr inbounds i8, i8* %7460, i64 4
  %7482 = bitcast i8* %7481 to i32*
  store i32 %7479, i32* %7482, align 1
  %7483 = trunc i64 %7476 to i32
  %7484 = getelementptr inbounds i8, i8* %7460, i64 8
  %7485 = bitcast i8* %7484 to i32*
  store i32 %7483, i32* %7485, align 1
  %7486 = lshr i64 %7476, 32
  %7487 = trunc i64 %7486 to i32
  %7488 = getelementptr inbounds i8, i8* %7460, i64 12
  %7489 = bitcast i8* %7488 to i32*
  store i32 %7487, i32* %7489, align 1
  store %struct.Memory* %loadMem_4154fa, %struct.Memory** %MEMORY
  %loadMem_4154fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 33
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %7492 to i64*
  %7493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7494 = getelementptr inbounds %struct.GPR, %struct.GPR* %7493, i32 0, i32 15
  %7495 = getelementptr inbounds %struct.Reg, %struct.Reg* %7494, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %7495 to i64*
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7496, i64 0, i64 0
  %XMM0.i125 = bitcast %union.VectorReg* %7497 to %union.vec128_t*
  %7498 = load i64, i64* %RBP.i124
  %7499 = sub i64 %7498, 36
  %7500 = bitcast %union.vec128_t* %XMM0.i125 to i8*
  %7501 = load i64, i64* %PC.i123
  %7502 = add i64 %7501, 5
  store i64 %7502, i64* %PC.i123
  %7503 = bitcast i8* %7500 to <2 x float>*
  %7504 = load <2 x float>, <2 x float>* %7503, align 1
  %7505 = extractelement <2 x float> %7504, i32 0
  %7506 = inttoptr i64 %7499 to float*
  store float %7505, float* %7506
  store %struct.Memory* %loadMem_4154fd, %struct.Memory** %MEMORY
  %loadMem_415502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 33
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 15
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %7512 to i64*
  %7513 = load i64, i64* %RBP.i122
  %7514 = sub i64 %7513, 24
  %7515 = load i64, i64* %PC.i121
  %7516 = add i64 %7515, 7
  store i64 %7516, i64* %PC.i121
  %7517 = inttoptr i64 %7514 to i32*
  store i32 1, i32* %7517
  store %struct.Memory* %loadMem_415502, %struct.Memory** %MEMORY
  br label %block_.L_415509

block_.L_415509:                                  ; preds = %block_41551c, %block_4154fa
  %loadMem_415509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7519 = getelementptr inbounds %struct.GPR, %struct.GPR* %7518, i32 0, i32 33
  %7520 = getelementptr inbounds %struct.Reg, %struct.Reg* %7519, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7520 to i64*
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 1
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %7523 to i64*
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7525 = getelementptr inbounds %struct.GPR, %struct.GPR* %7524, i32 0, i32 15
  %7526 = getelementptr inbounds %struct.Reg, %struct.Reg* %7525, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %7526 to i64*
  %7527 = load i64, i64* %RBP.i120
  %7528 = sub i64 %7527, 24
  %7529 = load i64, i64* %PC.i118
  %7530 = add i64 %7529, 3
  store i64 %7530, i64* %PC.i118
  %7531 = inttoptr i64 %7528 to i32*
  %7532 = load i32, i32* %7531
  %7533 = zext i32 %7532 to i64
  store i64 %7533, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_415509, %struct.Memory** %MEMORY
  %loadMem_41550c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7535 = getelementptr inbounds %struct.GPR, %struct.GPR* %7534, i32 0, i32 33
  %7536 = getelementptr inbounds %struct.Reg, %struct.Reg* %7535, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %7536 to i64*
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 5
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %7539 to i64*
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7541 = getelementptr inbounds %struct.GPR, %struct.GPR* %7540, i32 0, i32 15
  %7542 = getelementptr inbounds %struct.Reg, %struct.Reg* %7541, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %7542 to i64*
  %7543 = load i64, i64* %RBP.i117
  %7544 = sub i64 %7543, 16
  %7545 = load i64, i64* %PC.i115
  %7546 = add i64 %7545, 4
  store i64 %7546, i64* %PC.i115
  %7547 = inttoptr i64 %7544 to i64*
  %7548 = load i64, i64* %7547
  store i64 %7548, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_41550c, %struct.Memory** %MEMORY
  %loadMem_415510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7551 to i64*
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 1
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %7554 to i32*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 5
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %7557 to i64*
  %7558 = load i32, i32* %EAX.i113
  %7559 = zext i32 %7558 to i64
  %7560 = load i64, i64* %RCX.i114
  %7561 = add i64 %7560, 136
  %7562 = load i64, i64* %PC.i112
  %7563 = add i64 %7562, 6
  store i64 %7563, i64* %PC.i112
  %7564 = inttoptr i64 %7561 to i32*
  %7565 = load i32, i32* %7564
  %7566 = sub i32 %7558, %7565
  %7567 = icmp ult i32 %7558, %7565
  %7568 = zext i1 %7567 to i8
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7568, i8* %7569, align 1
  %7570 = and i32 %7566, 255
  %7571 = call i32 @llvm.ctpop.i32(i32 %7570)
  %7572 = trunc i32 %7571 to i8
  %7573 = and i8 %7572, 1
  %7574 = xor i8 %7573, 1
  %7575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7574, i8* %7575, align 1
  %7576 = xor i32 %7565, %7558
  %7577 = xor i32 %7576, %7566
  %7578 = lshr i32 %7577, 4
  %7579 = trunc i32 %7578 to i8
  %7580 = and i8 %7579, 1
  %7581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7580, i8* %7581, align 1
  %7582 = icmp eq i32 %7566, 0
  %7583 = zext i1 %7582 to i8
  %7584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7583, i8* %7584, align 1
  %7585 = lshr i32 %7566, 31
  %7586 = trunc i32 %7585 to i8
  %7587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7586, i8* %7587, align 1
  %7588 = lshr i32 %7558, 31
  %7589 = lshr i32 %7565, 31
  %7590 = xor i32 %7589, %7588
  %7591 = xor i32 %7585, %7588
  %7592 = add i32 %7591, %7590
  %7593 = icmp eq i32 %7592, 2
  %7594 = zext i1 %7593 to i8
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7594, i8* %7595, align 1
  store %struct.Memory* %loadMem_415510, %struct.Memory** %MEMORY
  %loadMem_415516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7597 = getelementptr inbounds %struct.GPR, %struct.GPR* %7596, i32 0, i32 33
  %7598 = getelementptr inbounds %struct.Reg, %struct.Reg* %7597, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7598 to i64*
  %7599 = load i64, i64* %PC.i111
  %7600 = add i64 %7599, 58
  %7601 = load i64, i64* %PC.i111
  %7602 = add i64 %7601, 6
  %7603 = load i64, i64* %PC.i111
  %7604 = add i64 %7603, 6
  store i64 %7604, i64* %PC.i111
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7606 = load i8, i8* %7605, align 1
  %7607 = icmp eq i8 %7606, 0
  %7608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7609 = load i8, i8* %7608, align 1
  %7610 = icmp ne i8 %7609, 0
  %7611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7612 = load i8, i8* %7611, align 1
  %7613 = icmp ne i8 %7612, 0
  %7614 = xor i1 %7610, %7613
  %7615 = xor i1 %7614, true
  %7616 = and i1 %7607, %7615
  %7617 = zext i1 %7616 to i8
  store i8 %7617, i8* %BRANCH_TAKEN, align 1
  %7618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7619 = select i1 %7616, i64 %7600, i64 %7602
  store i64 %7619, i64* %7618, align 8
  store %struct.Memory* %loadMem_415516, %struct.Memory** %MEMORY
  %loadBr_415516 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415516 = icmp eq i8 %loadBr_415516, 1
  br i1 %cmpBr_415516, label %block_.L_415550, label %block_41551c

block_41551c:                                     ; preds = %block_.L_415509
  %loadMem_41551c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7621 = getelementptr inbounds %struct.GPR, %struct.GPR* %7620, i32 0, i32 33
  %7622 = getelementptr inbounds %struct.Reg, %struct.Reg* %7621, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7622 to i64*
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7624 = getelementptr inbounds %struct.GPR, %struct.GPR* %7623, i32 0, i32 1
  %7625 = getelementptr inbounds %struct.Reg, %struct.Reg* %7624, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %7625 to i64*
  %7626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7627 = getelementptr inbounds %struct.GPR, %struct.GPR* %7626, i32 0, i32 15
  %7628 = getelementptr inbounds %struct.Reg, %struct.Reg* %7627, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %7628 to i64*
  %7629 = load i64, i64* %RBP.i110
  %7630 = sub i64 %7629, 16
  %7631 = load i64, i64* %PC.i108
  %7632 = add i64 %7631, 4
  store i64 %7632, i64* %PC.i108
  %7633 = inttoptr i64 %7630 to i64*
  %7634 = load i64, i64* %7633
  store i64 %7634, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_41551c, %struct.Memory** %MEMORY
  %loadMem_415520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7636 = getelementptr inbounds %struct.GPR, %struct.GPR* %7635, i32 0, i32 33
  %7637 = getelementptr inbounds %struct.Reg, %struct.Reg* %7636, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %7637 to i64*
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7639 = getelementptr inbounds %struct.GPR, %struct.GPR* %7638, i32 0, i32 1
  %7640 = getelementptr inbounds %struct.Reg, %struct.Reg* %7639, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %7640 to i64*
  %7641 = load i64, i64* %RAX.i107
  %7642 = add i64 %7641, 152
  %7643 = load i64, i64* %PC.i106
  %7644 = add i64 %7643, 7
  store i64 %7644, i64* %PC.i106
  %7645 = inttoptr i64 %7642 to i64*
  %7646 = load i64, i64* %7645
  store i64 %7646, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_415520, %struct.Memory** %MEMORY
  %loadMem_415527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7648 = getelementptr inbounds %struct.GPR, %struct.GPR* %7647, i32 0, i32 33
  %7649 = getelementptr inbounds %struct.Reg, %struct.Reg* %7648, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %7649 to i64*
  %7650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7651 = getelementptr inbounds %struct.GPR, %struct.GPR* %7650, i32 0, i32 5
  %7652 = getelementptr inbounds %struct.Reg, %struct.Reg* %7651, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %7652 to i64*
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7654 = getelementptr inbounds %struct.GPR, %struct.GPR* %7653, i32 0, i32 15
  %7655 = getelementptr inbounds %struct.Reg, %struct.Reg* %7654, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %7655 to i64*
  %7656 = load i64, i64* %RBP.i105
  %7657 = sub i64 %7656, 24
  %7658 = load i64, i64* %PC.i103
  %7659 = add i64 %7658, 4
  store i64 %7659, i64* %PC.i103
  %7660 = inttoptr i64 %7657 to i32*
  %7661 = load i32, i32* %7660
  %7662 = sext i32 %7661 to i64
  store i64 %7662, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_415527, %struct.Memory** %MEMORY
  %loadMem_41552b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7664 = getelementptr inbounds %struct.GPR, %struct.GPR* %7663, i32 0, i32 33
  %7665 = getelementptr inbounds %struct.Reg, %struct.Reg* %7664, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %7665 to i64*
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7667 = getelementptr inbounds %struct.GPR, %struct.GPR* %7666, i32 0, i32 1
  %7668 = getelementptr inbounds %struct.Reg, %struct.Reg* %7667, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %7668 to i64*
  %7669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7670 = getelementptr inbounds %struct.GPR, %struct.GPR* %7669, i32 0, i32 5
  %7671 = getelementptr inbounds %struct.Reg, %struct.Reg* %7670, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %7671 to i64*
  %7672 = load i64, i64* %RAX.i101
  %7673 = load i64, i64* %RCX.i102
  %7674 = mul i64 %7673, 8
  %7675 = add i64 %7674, %7672
  %7676 = load i64, i64* %PC.i100
  %7677 = add i64 %7676, 4
  store i64 %7677, i64* %PC.i100
  %7678 = inttoptr i64 %7675 to i64*
  %7679 = load i64, i64* %7678
  store i64 %7679, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_41552b, %struct.Memory** %MEMORY
  %loadMem_41552f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7681 = getelementptr inbounds %struct.GPR, %struct.GPR* %7680, i32 0, i32 33
  %7682 = getelementptr inbounds %struct.Reg, %struct.Reg* %7681, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %7682 to i64*
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7684 = getelementptr inbounds %struct.GPR, %struct.GPR* %7683, i32 0, i32 5
  %7685 = getelementptr inbounds %struct.Reg, %struct.Reg* %7684, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %7685 to i64*
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 15
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %7688 to i64*
  %7689 = load i64, i64* %RBP.i99
  %7690 = sub i64 %7689, 28
  %7691 = load i64, i64* %PC.i97
  %7692 = add i64 %7691, 4
  store i64 %7692, i64* %PC.i97
  %7693 = inttoptr i64 %7690 to i32*
  %7694 = load i32, i32* %7693
  %7695 = sext i32 %7694 to i64
  store i64 %7695, i64* %RCX.i98, align 8
  store %struct.Memory* %loadMem_41552f, %struct.Memory** %MEMORY
  %loadMem_415533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7697 = getelementptr inbounds %struct.GPR, %struct.GPR* %7696, i32 0, i32 33
  %7698 = getelementptr inbounds %struct.Reg, %struct.Reg* %7697, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %7698 to i64*
  %7699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7700 = getelementptr inbounds %struct.GPR, %struct.GPR* %7699, i32 0, i32 1
  %7701 = getelementptr inbounds %struct.Reg, %struct.Reg* %7700, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %7701 to i64*
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 5
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7704 to i64*
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7705, i64 0, i64 0
  %YMM0.i96 = bitcast %union.VectorReg* %7706 to %"class.std::bitset"*
  %7707 = bitcast %"class.std::bitset"* %YMM0.i96 to i8*
  %7708 = load i64, i64* %RAX.i95
  %7709 = load i64, i64* %RCX.i
  %7710 = mul i64 %7709, 4
  %7711 = add i64 %7710, %7708
  %7712 = load i64, i64* %PC.i94
  %7713 = add i64 %7712, 5
  store i64 %7713, i64* %PC.i94
  %7714 = inttoptr i64 %7711 to float*
  %7715 = load float, float* %7714
  %7716 = bitcast i8* %7707 to float*
  store float %7715, float* %7716, align 1
  %7717 = getelementptr inbounds i8, i8* %7707, i64 4
  %7718 = bitcast i8* %7717 to float*
  store float 0.000000e+00, float* %7718, align 1
  %7719 = getelementptr inbounds i8, i8* %7707, i64 8
  %7720 = bitcast i8* %7719 to float*
  store float 0.000000e+00, float* %7720, align 1
  %7721 = getelementptr inbounds i8, i8* %7707, i64 12
  %7722 = bitcast i8* %7721 to float*
  store float 0.000000e+00, float* %7722, align 1
  store %struct.Memory* %loadMem_415533, %struct.Memory** %MEMORY
  %loadMem_415538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7724 = getelementptr inbounds %struct.GPR, %struct.GPR* %7723, i32 0, i32 33
  %7725 = getelementptr inbounds %struct.Reg, %struct.Reg* %7724, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %7725 to i64*
  %7726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7727 = getelementptr inbounds %struct.GPR, %struct.GPR* %7726, i32 0, i32 15
  %7728 = getelementptr inbounds %struct.Reg, %struct.Reg* %7727, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %7728 to i64*
  %7729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7730 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7729, i64 0, i64 0
  %YMM0.i93 = bitcast %union.VectorReg* %7730 to %"class.std::bitset"*
  %7731 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %7732 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %7733 = load i64, i64* %RBP.i92
  %7734 = sub i64 %7733, 36
  %7735 = load i64, i64* %PC.i91
  %7736 = add i64 %7735, 5
  store i64 %7736, i64* %PC.i91
  %7737 = bitcast i8* %7732 to <2 x float>*
  %7738 = load <2 x float>, <2 x float>* %7737, align 1
  %7739 = getelementptr inbounds i8, i8* %7732, i64 8
  %7740 = bitcast i8* %7739 to <2 x i32>*
  %7741 = load <2 x i32>, <2 x i32>* %7740, align 1
  %7742 = inttoptr i64 %7734 to float*
  %7743 = load float, float* %7742
  %7744 = extractelement <2 x float> %7738, i32 0
  %7745 = fadd float %7744, %7743
  %7746 = bitcast i8* %7731 to float*
  store float %7745, float* %7746, align 1
  %7747 = bitcast <2 x float> %7738 to <2 x i32>
  %7748 = extractelement <2 x i32> %7747, i32 1
  %7749 = getelementptr inbounds i8, i8* %7731, i64 4
  %7750 = bitcast i8* %7749 to i32*
  store i32 %7748, i32* %7750, align 1
  %7751 = extractelement <2 x i32> %7741, i32 0
  %7752 = getelementptr inbounds i8, i8* %7731, i64 8
  %7753 = bitcast i8* %7752 to i32*
  store i32 %7751, i32* %7753, align 1
  %7754 = extractelement <2 x i32> %7741, i32 1
  %7755 = getelementptr inbounds i8, i8* %7731, i64 12
  %7756 = bitcast i8* %7755 to i32*
  store i32 %7754, i32* %7756, align 1
  store %struct.Memory* %loadMem_415538, %struct.Memory** %MEMORY
  %loadMem_41553d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7758 = getelementptr inbounds %struct.GPR, %struct.GPR* %7757, i32 0, i32 33
  %7759 = getelementptr inbounds %struct.Reg, %struct.Reg* %7758, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %7759 to i64*
  %7760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7761 = getelementptr inbounds %struct.GPR, %struct.GPR* %7760, i32 0, i32 15
  %7762 = getelementptr inbounds %struct.Reg, %struct.Reg* %7761, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %7762 to i64*
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7763, i64 0, i64 0
  %XMM0.i90 = bitcast %union.VectorReg* %7764 to %union.vec128_t*
  %7765 = load i64, i64* %RBP.i89
  %7766 = sub i64 %7765, 36
  %7767 = bitcast %union.vec128_t* %XMM0.i90 to i8*
  %7768 = load i64, i64* %PC.i88
  %7769 = add i64 %7768, 5
  store i64 %7769, i64* %PC.i88
  %7770 = bitcast i8* %7767 to <2 x float>*
  %7771 = load <2 x float>, <2 x float>* %7770, align 1
  %7772 = extractelement <2 x float> %7771, i32 0
  %7773 = inttoptr i64 %7766 to float*
  store float %7772, float* %7773
  store %struct.Memory* %loadMem_41553d, %struct.Memory** %MEMORY
  %loadMem_415542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7775 = getelementptr inbounds %struct.GPR, %struct.GPR* %7774, i32 0, i32 33
  %7776 = getelementptr inbounds %struct.Reg, %struct.Reg* %7775, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7776 to i64*
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7778 = getelementptr inbounds %struct.GPR, %struct.GPR* %7777, i32 0, i32 1
  %7779 = getelementptr inbounds %struct.Reg, %struct.Reg* %7778, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %7779 to i64*
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7781 = getelementptr inbounds %struct.GPR, %struct.GPR* %7780, i32 0, i32 15
  %7782 = getelementptr inbounds %struct.Reg, %struct.Reg* %7781, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %7782 to i64*
  %7783 = load i64, i64* %RBP.i87
  %7784 = sub i64 %7783, 24
  %7785 = load i64, i64* %PC.i85
  %7786 = add i64 %7785, 3
  store i64 %7786, i64* %PC.i85
  %7787 = inttoptr i64 %7784 to i32*
  %7788 = load i32, i32* %7787
  %7789 = zext i32 %7788 to i64
  store i64 %7789, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_415542, %struct.Memory** %MEMORY
  %loadMem_415545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 33
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7792 to i64*
  %7793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7794 = getelementptr inbounds %struct.GPR, %struct.GPR* %7793, i32 0, i32 1
  %7795 = getelementptr inbounds %struct.Reg, %struct.Reg* %7794, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %7795 to i64*
  %7796 = load i64, i64* %RAX.i84
  %7797 = load i64, i64* %PC.i83
  %7798 = add i64 %7797, 3
  store i64 %7798, i64* %PC.i83
  %7799 = trunc i64 %7796 to i32
  %7800 = add i32 1, %7799
  %7801 = zext i32 %7800 to i64
  store i64 %7801, i64* %RAX.i84, align 8
  %7802 = icmp ult i32 %7800, %7799
  %7803 = icmp ult i32 %7800, 1
  %7804 = or i1 %7802, %7803
  %7805 = zext i1 %7804 to i8
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7805, i8* %7806, align 1
  %7807 = and i32 %7800, 255
  %7808 = call i32 @llvm.ctpop.i32(i32 %7807)
  %7809 = trunc i32 %7808 to i8
  %7810 = and i8 %7809, 1
  %7811 = xor i8 %7810, 1
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7811, i8* %7812, align 1
  %7813 = xor i64 1, %7796
  %7814 = trunc i64 %7813 to i32
  %7815 = xor i32 %7814, %7800
  %7816 = lshr i32 %7815, 4
  %7817 = trunc i32 %7816 to i8
  %7818 = and i8 %7817, 1
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7818, i8* %7819, align 1
  %7820 = icmp eq i32 %7800, 0
  %7821 = zext i1 %7820 to i8
  %7822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7821, i8* %7822, align 1
  %7823 = lshr i32 %7800, 31
  %7824 = trunc i32 %7823 to i8
  %7825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7824, i8* %7825, align 1
  %7826 = lshr i32 %7799, 31
  %7827 = xor i32 %7823, %7826
  %7828 = add i32 %7827, %7823
  %7829 = icmp eq i32 %7828, 2
  %7830 = zext i1 %7829 to i8
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7830, i8* %7831, align 1
  store %struct.Memory* %loadMem_415545, %struct.Memory** %MEMORY
  %loadMem_415548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7833 = getelementptr inbounds %struct.GPR, %struct.GPR* %7832, i32 0, i32 33
  %7834 = getelementptr inbounds %struct.Reg, %struct.Reg* %7833, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7834 to i64*
  %7835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7836 = getelementptr inbounds %struct.GPR, %struct.GPR* %7835, i32 0, i32 1
  %7837 = getelementptr inbounds %struct.Reg, %struct.Reg* %7836, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %7837 to i32*
  %7838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7839 = getelementptr inbounds %struct.GPR, %struct.GPR* %7838, i32 0, i32 15
  %7840 = getelementptr inbounds %struct.Reg, %struct.Reg* %7839, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %7840 to i64*
  %7841 = load i64, i64* %RBP.i82
  %7842 = sub i64 %7841, 24
  %7843 = load i32, i32* %EAX.i81
  %7844 = zext i32 %7843 to i64
  %7845 = load i64, i64* %PC.i80
  %7846 = add i64 %7845, 3
  store i64 %7846, i64* %PC.i80
  %7847 = inttoptr i64 %7842 to i32*
  store i32 %7843, i32* %7847
  store %struct.Memory* %loadMem_415548, %struct.Memory** %MEMORY
  %loadMem_41554b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7849 = getelementptr inbounds %struct.GPR, %struct.GPR* %7848, i32 0, i32 33
  %7850 = getelementptr inbounds %struct.Reg, %struct.Reg* %7849, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7850 to i64*
  %7851 = load i64, i64* %PC.i79
  %7852 = add i64 %7851, -66
  %7853 = load i64, i64* %PC.i79
  %7854 = add i64 %7853, 5
  store i64 %7854, i64* %PC.i79
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7852, i64* %7855, align 8
  store %struct.Memory* %loadMem_41554b, %struct.Memory** %MEMORY
  br label %block_.L_415509

block_.L_415550:                                  ; preds = %block_.L_415509
  %loadMem_415550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7857 = getelementptr inbounds %struct.GPR, %struct.GPR* %7856, i32 0, i32 33
  %7858 = getelementptr inbounds %struct.Reg, %struct.Reg* %7857, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7858 to i64*
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7860 = getelementptr inbounds %struct.GPR, %struct.GPR* %7859, i32 0, i32 9
  %7861 = getelementptr inbounds %struct.Reg, %struct.Reg* %7860, i32 0, i32 0
  %RSI.i78 = bitcast %union.anon* %7861 to i64*
  %7862 = load i64, i64* %PC.i77
  %7863 = add i64 %7862, 10
  store i64 %7863, i64* %PC.i77
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI.i78, align 8
  store %struct.Memory* %loadMem_415550, %struct.Memory** %MEMORY
  %loadMem_41555a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7865 = getelementptr inbounds %struct.GPR, %struct.GPR* %7864, i32 0, i32 33
  %7866 = getelementptr inbounds %struct.Reg, %struct.Reg* %7865, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7866 to i64*
  %7867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7868 = getelementptr inbounds %struct.GPR, %struct.GPR* %7867, i32 0, i32 1
  %7869 = getelementptr inbounds %struct.Reg, %struct.Reg* %7868, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %7869 to i64*
  %7870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7871 = getelementptr inbounds %struct.GPR, %struct.GPR* %7870, i32 0, i32 15
  %7872 = getelementptr inbounds %struct.Reg, %struct.Reg* %7871, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %7872 to i64*
  %7873 = load i64, i64* %RBP.i76
  %7874 = sub i64 %7873, 16
  %7875 = load i64, i64* %PC.i74
  %7876 = add i64 %7875, 4
  store i64 %7876, i64* %PC.i74
  %7877 = inttoptr i64 %7874 to i64*
  %7878 = load i64, i64* %7877
  store i64 %7878, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_41555a, %struct.Memory** %MEMORY
  %loadMem_41555e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7880 = getelementptr inbounds %struct.GPR, %struct.GPR* %7879, i32 0, i32 33
  %7881 = getelementptr inbounds %struct.Reg, %struct.Reg* %7880, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %7881 to i64*
  %7882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7883 = getelementptr inbounds %struct.GPR, %struct.GPR* %7882, i32 0, i32 1
  %7884 = getelementptr inbounds %struct.Reg, %struct.Reg* %7883, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %7884 to i64*
  %7885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7885, i64 0, i64 0
  %YMM0.i73 = bitcast %union.VectorReg* %7886 to %"class.std::bitset"*
  %7887 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %7888 = load i64, i64* %RAX.i72
  %7889 = add i64 %7888, 56
  %7890 = load i64, i64* %PC.i71
  %7891 = add i64 %7890, 5
  store i64 %7891, i64* %PC.i71
  %7892 = bitcast i8* %7887 to <2 x i32>*
  %7893 = load <2 x i32>, <2 x i32>* %7892, align 1
  %7894 = getelementptr inbounds i8, i8* %7887, i64 8
  %7895 = bitcast i8* %7894 to <2 x i32>*
  %7896 = load <2 x i32>, <2 x i32>* %7895, align 1
  %7897 = inttoptr i64 %7889 to i32*
  %7898 = load i32, i32* %7897
  %7899 = sitofp i32 %7898 to float
  %7900 = bitcast i8* %7887 to float*
  store float %7899, float* %7900, align 1
  %7901 = extractelement <2 x i32> %7893, i32 1
  %7902 = getelementptr inbounds i8, i8* %7887, i64 4
  %7903 = bitcast i8* %7902 to i32*
  store i32 %7901, i32* %7903, align 1
  %7904 = extractelement <2 x i32> %7896, i32 0
  %7905 = bitcast i8* %7894 to i32*
  store i32 %7904, i32* %7905, align 1
  %7906 = extractelement <2 x i32> %7896, i32 1
  %7907 = getelementptr inbounds i8, i8* %7887, i64 12
  %7908 = bitcast i8* %7907 to i32*
  store i32 %7906, i32* %7908, align 1
  store %struct.Memory* %loadMem_41555e, %struct.Memory** %MEMORY
  %loadMem_415563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7910 = getelementptr inbounds %struct.GPR, %struct.GPR* %7909, i32 0, i32 33
  %7911 = getelementptr inbounds %struct.Reg, %struct.Reg* %7910, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7911 to i64*
  %7912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7913 = getelementptr inbounds %struct.GPR, %struct.GPR* %7912, i32 0, i32 15
  %7914 = getelementptr inbounds %struct.Reg, %struct.Reg* %7913, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %7914 to i64*
  %7915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7916 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7915, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %7916 to %"class.std::bitset"*
  %7917 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7918 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %7919 = load i64, i64* %RBP.i70
  %7920 = sub i64 %7919, 36
  %7921 = load i64, i64* %PC.i69
  %7922 = add i64 %7921, 5
  store i64 %7922, i64* %PC.i69
  %7923 = bitcast i8* %7918 to <2 x float>*
  %7924 = load <2 x float>, <2 x float>* %7923, align 1
  %7925 = getelementptr inbounds i8, i8* %7918, i64 8
  %7926 = bitcast i8* %7925 to <2 x i32>*
  %7927 = load <2 x i32>, <2 x i32>* %7926, align 1
  %7928 = inttoptr i64 %7920 to float*
  %7929 = load float, float* %7928
  %7930 = extractelement <2 x float> %7924, i32 0
  %7931 = fmul float %7930, %7929
  %7932 = bitcast i8* %7917 to float*
  store float %7931, float* %7932, align 1
  %7933 = bitcast <2 x float> %7924 to <2 x i32>
  %7934 = extractelement <2 x i32> %7933, i32 1
  %7935 = getelementptr inbounds i8, i8* %7917, i64 4
  %7936 = bitcast i8* %7935 to i32*
  store i32 %7934, i32* %7936, align 1
  %7937 = extractelement <2 x i32> %7927, i32 0
  %7938 = getelementptr inbounds i8, i8* %7917, i64 8
  %7939 = bitcast i8* %7938 to i32*
  store i32 %7937, i32* %7939, align 1
  %7940 = extractelement <2 x i32> %7927, i32 1
  %7941 = getelementptr inbounds i8, i8* %7917, i64 12
  %7942 = bitcast i8* %7941 to i32*
  store i32 %7940, i32* %7942, align 1
  store %struct.Memory* %loadMem_415563, %struct.Memory** %MEMORY
  %loadMem_415568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 33
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7945 to i64*
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7947 = getelementptr inbounds %struct.GPR, %struct.GPR* %7946, i32 0, i32 15
  %7948 = getelementptr inbounds %struct.Reg, %struct.Reg* %7947, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %7948 to i64*
  %7949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %7949, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %7950 to %union.vec128_t*
  %7951 = load i64, i64* %RBP.i68
  %7952 = sub i64 %7951, 36
  %7953 = bitcast %union.vec128_t* %XMM0.i to i8*
  %7954 = load i64, i64* %PC.i67
  %7955 = add i64 %7954, 5
  store i64 %7955, i64* %PC.i67
  %7956 = bitcast i8* %7953 to <2 x float>*
  %7957 = load <2 x float>, <2 x float>* %7956, align 1
  %7958 = extractelement <2 x float> %7957, i32 0
  %7959 = inttoptr i64 %7952 to float*
  store float %7958, float* %7959
  store %struct.Memory* %loadMem_415568, %struct.Memory** %MEMORY
  %loadMem_41556d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7961 = getelementptr inbounds %struct.GPR, %struct.GPR* %7960, i32 0, i32 33
  %7962 = getelementptr inbounds %struct.Reg, %struct.Reg* %7961, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7962 to i64*
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7964 = getelementptr inbounds %struct.GPR, %struct.GPR* %7963, i32 0, i32 11
  %7965 = getelementptr inbounds %struct.Reg, %struct.Reg* %7964, i32 0, i32 0
  %RDI.i65 = bitcast %union.anon* %7965 to i64*
  %7966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7967 = getelementptr inbounds %struct.GPR, %struct.GPR* %7966, i32 0, i32 15
  %7968 = getelementptr inbounds %struct.Reg, %struct.Reg* %7967, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %7968 to i64*
  %7969 = load i64, i64* %RBP.i66
  %7970 = sub i64 %7969, 8
  %7971 = load i64, i64* %PC.i64
  %7972 = add i64 %7971, 4
  store i64 %7972, i64* %PC.i64
  %7973 = inttoptr i64 %7970 to i64*
  %7974 = load i64, i64* %7973
  store i64 %7974, i64* %RDI.i65, align 8
  store %struct.Memory* %loadMem_41556d, %struct.Memory** %MEMORY
  %loadMem_415571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7976 = getelementptr inbounds %struct.GPR, %struct.GPR* %7975, i32 0, i32 33
  %7977 = getelementptr inbounds %struct.Reg, %struct.Reg* %7976, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7977 to i64*
  %7978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7979 = getelementptr inbounds %struct.GPR, %struct.GPR* %7978, i32 0, i32 7
  %7980 = getelementptr inbounds %struct.Reg, %struct.Reg* %7979, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %7980 to i64*
  %7981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7982 = getelementptr inbounds %struct.GPR, %struct.GPR* %7981, i32 0, i32 15
  %7983 = getelementptr inbounds %struct.Reg, %struct.Reg* %7982, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %7983 to i64*
  %7984 = load i64, i64* %RBP.i63
  %7985 = sub i64 %7984, 36
  %7986 = load i64, i64* %PC.i61
  %7987 = add i64 %7986, 5
  store i64 %7987, i64* %PC.i61
  %7988 = inttoptr i64 %7985 to float*
  %7989 = load float, float* %7988
  %7990 = call float @llvm.trunc.f32(float %7989)
  %7991 = call float @llvm.fabs.f32(float %7990)
  %7992 = fcmp ogt float %7991, 0x41E0000000000000
  %7993 = fptosi float %7990 to i32
  %7994 = zext i32 %7993 to i64
  %7995 = select i1 %7992, i64 2147483648, i64 %7994
  store i64 %7995, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_415571, %struct.Memory** %MEMORY
  %loadMem_415576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 33
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7998 to i64*
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8000 = getelementptr inbounds %struct.GPR, %struct.GPR* %7999, i32 0, i32 1
  %8001 = getelementptr inbounds %struct.Reg, %struct.Reg* %8000, i32 0, i32 0
  %8002 = bitcast %union.anon* %8001 to %struct.anon.2*
  %AL.i60 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8002, i32 0, i32 0
  %8003 = load i64, i64* %PC.i59
  %8004 = add i64 %8003, 2
  store i64 %8004, i64* %PC.i59
  store i8 0, i8* %AL.i60, align 1
  store %struct.Memory* %loadMem_415576, %struct.Memory** %MEMORY
  %loadMem1_415578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8006 = getelementptr inbounds %struct.GPR, %struct.GPR* %8005, i32 0, i32 33
  %8007 = getelementptr inbounds %struct.Reg, %struct.Reg* %8006, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8007 to i64*
  %8008 = load i64, i64* %PC.i58
  %8009 = add i64 %8008, -81928
  %8010 = load i64, i64* %PC.i58
  %8011 = add i64 %8010, 5
  %8012 = load i64, i64* %PC.i58
  %8013 = add i64 %8012, 5
  store i64 %8013, i64* %PC.i58
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8015 = load i64, i64* %8014, align 8
  %8016 = add i64 %8015, -8
  %8017 = inttoptr i64 %8016 to i64*
  store i64 %8011, i64* %8017
  store i64 %8016, i64* %8014, align 8
  %8018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8009, i64* %8018, align 8
  store %struct.Memory* %loadMem1_415578, %struct.Memory** %MEMORY
  %loadMem2_415578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415578 = load i64, i64* %3
  %8019 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_415578)
  store %struct.Memory* %8019, %struct.Memory** %MEMORY
  %loadMem_41557d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8021 = getelementptr inbounds %struct.GPR, %struct.GPR* %8020, i32 0, i32 33
  %8022 = getelementptr inbounds %struct.Reg, %struct.Reg* %8021, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8022 to i64*
  %8023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8024 = getelementptr inbounds %struct.GPR, %struct.GPR* %8023, i32 0, i32 1
  %8025 = getelementptr inbounds %struct.Reg, %struct.Reg* %8024, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %8025 to i32*
  %8026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8027 = getelementptr inbounds %struct.GPR, %struct.GPR* %8026, i32 0, i32 15
  %8028 = getelementptr inbounds %struct.Reg, %struct.Reg* %8027, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %8028 to i64*
  %8029 = load i64, i64* %RBP.i55
  %8030 = sub i64 %8029, 232
  %8031 = load i32, i32* %EAX.i54
  %8032 = zext i32 %8031 to i64
  %8033 = load i64, i64* %PC.i53
  %8034 = add i64 %8033, 6
  store i64 %8034, i64* %PC.i53
  %8035 = inttoptr i64 %8030 to i32*
  store i32 %8031, i32* %8035
  store %struct.Memory* %loadMem_41557d, %struct.Memory** %MEMORY
  %loadMem_415583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8037 = getelementptr inbounds %struct.GPR, %struct.GPR* %8036, i32 0, i32 33
  %8038 = getelementptr inbounds %struct.Reg, %struct.Reg* %8037, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8038 to i64*
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8040 = getelementptr inbounds %struct.GPR, %struct.GPR* %8039, i32 0, i32 1
  %8041 = getelementptr inbounds %struct.Reg, %struct.Reg* %8040, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %8041 to i64*
  %8042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8043 = getelementptr inbounds %struct.GPR, %struct.GPR* %8042, i32 0, i32 15
  %8044 = getelementptr inbounds %struct.Reg, %struct.Reg* %8043, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %8044 to i64*
  %8045 = load i64, i64* %RBP.i52
  %8046 = sub i64 %8045, 28
  %8047 = load i64, i64* %PC.i50
  %8048 = add i64 %8047, 3
  store i64 %8048, i64* %PC.i50
  %8049 = inttoptr i64 %8046 to i32*
  %8050 = load i32, i32* %8049
  %8051 = zext i32 %8050 to i64
  store i64 %8051, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_415583, %struct.Memory** %MEMORY
  %loadMem_415586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8053 = getelementptr inbounds %struct.GPR, %struct.GPR* %8052, i32 0, i32 33
  %8054 = getelementptr inbounds %struct.Reg, %struct.Reg* %8053, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %8054 to i64*
  %8055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8056 = getelementptr inbounds %struct.GPR, %struct.GPR* %8055, i32 0, i32 1
  %8057 = getelementptr inbounds %struct.Reg, %struct.Reg* %8056, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %8057 to i64*
  %8058 = load i64, i64* %RAX.i49
  %8059 = load i64, i64* %PC.i48
  %8060 = add i64 %8059, 3
  store i64 %8060, i64* %PC.i48
  %8061 = trunc i64 %8058 to i32
  %8062 = add i32 1, %8061
  %8063 = zext i32 %8062 to i64
  store i64 %8063, i64* %RAX.i49, align 8
  %8064 = icmp ult i32 %8062, %8061
  %8065 = icmp ult i32 %8062, 1
  %8066 = or i1 %8064, %8065
  %8067 = zext i1 %8066 to i8
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8067, i8* %8068, align 1
  %8069 = and i32 %8062, 255
  %8070 = call i32 @llvm.ctpop.i32(i32 %8069)
  %8071 = trunc i32 %8070 to i8
  %8072 = and i8 %8071, 1
  %8073 = xor i8 %8072, 1
  %8074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8073, i8* %8074, align 1
  %8075 = xor i64 1, %8058
  %8076 = trunc i64 %8075 to i32
  %8077 = xor i32 %8076, %8062
  %8078 = lshr i32 %8077, 4
  %8079 = trunc i32 %8078 to i8
  %8080 = and i8 %8079, 1
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8080, i8* %8081, align 1
  %8082 = icmp eq i32 %8062, 0
  %8083 = zext i1 %8082 to i8
  %8084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8083, i8* %8084, align 1
  %8085 = lshr i32 %8062, 31
  %8086 = trunc i32 %8085 to i8
  %8087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8086, i8* %8087, align 1
  %8088 = lshr i32 %8061, 31
  %8089 = xor i32 %8085, %8088
  %8090 = add i32 %8089, %8085
  %8091 = icmp eq i32 %8090, 2
  %8092 = zext i1 %8091 to i8
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8092, i8* %8093, align 1
  store %struct.Memory* %loadMem_415586, %struct.Memory** %MEMORY
  %loadMem_415589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8095 = getelementptr inbounds %struct.GPR, %struct.GPR* %8094, i32 0, i32 33
  %8096 = getelementptr inbounds %struct.Reg, %struct.Reg* %8095, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8096 to i64*
  %8097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8098 = getelementptr inbounds %struct.GPR, %struct.GPR* %8097, i32 0, i32 1
  %8099 = getelementptr inbounds %struct.Reg, %struct.Reg* %8098, i32 0, i32 0
  %EAX.i46 = bitcast %union.anon* %8099 to i32*
  %8100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8101 = getelementptr inbounds %struct.GPR, %struct.GPR* %8100, i32 0, i32 15
  %8102 = getelementptr inbounds %struct.Reg, %struct.Reg* %8101, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %8102 to i64*
  %8103 = load i64, i64* %RBP.i47
  %8104 = sub i64 %8103, 28
  %8105 = load i32, i32* %EAX.i46
  %8106 = zext i32 %8105 to i64
  %8107 = load i64, i64* %PC.i45
  %8108 = add i64 %8107, 3
  store i64 %8108, i64* %PC.i45
  %8109 = inttoptr i64 %8104 to i32*
  store i32 %8105, i32* %8109
  store %struct.Memory* %loadMem_415589, %struct.Memory** %MEMORY
  %loadMem_41558c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8111 = getelementptr inbounds %struct.GPR, %struct.GPR* %8110, i32 0, i32 33
  %8112 = getelementptr inbounds %struct.Reg, %struct.Reg* %8111, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8112 to i64*
  %8113 = load i64, i64* %PC.i44
  %8114 = add i64 %8113, -162
  %8115 = load i64, i64* %PC.i44
  %8116 = add i64 %8115, 5
  store i64 %8116, i64* %PC.i44
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8114, i64* %8117, align 8
  store %struct.Memory* %loadMem_41558c, %struct.Memory** %MEMORY
  br label %block_.L_4154ea

block_.L_415591:                                  ; preds = %block_.L_4154ea
  %loadMem_415591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8119 = getelementptr inbounds %struct.GPR, %struct.GPR* %8118, i32 0, i32 33
  %8120 = getelementptr inbounds %struct.Reg, %struct.Reg* %8119, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8120 to i64*
  %8121 = load i64, i64* %PC.i43
  %8122 = add i64 %8121, 5
  %8123 = load i64, i64* %PC.i43
  %8124 = add i64 %8123, 5
  store i64 %8124, i64* %PC.i43
  %8125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8122, i64* %8125, align 8
  store %struct.Memory* %loadMem_415591, %struct.Memory** %MEMORY
  br label %block_.L_415596

block_.L_415596:                                  ; preds = %block_4155a6, %block_.L_415591
  %loadMem_415596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8127 = getelementptr inbounds %struct.GPR, %struct.GPR* %8126, i32 0, i32 33
  %8128 = getelementptr inbounds %struct.Reg, %struct.Reg* %8127, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8128 to i64*
  %8129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8130 = getelementptr inbounds %struct.GPR, %struct.GPR* %8129, i32 0, i32 1
  %8131 = getelementptr inbounds %struct.Reg, %struct.Reg* %8130, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %8131 to i64*
  %8132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8133 = getelementptr inbounds %struct.GPR, %struct.GPR* %8132, i32 0, i32 15
  %8134 = getelementptr inbounds %struct.Reg, %struct.Reg* %8133, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8134 to i64*
  %8135 = load i64, i64* %RBP.i42
  %8136 = sub i64 %8135, 28
  %8137 = load i64, i64* %PC.i40
  %8138 = add i64 %8137, 3
  store i64 %8138, i64* %PC.i40
  %8139 = inttoptr i64 %8136 to i32*
  %8140 = load i32, i32* %8139
  %8141 = zext i32 %8140 to i64
  store i64 %8141, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_415596, %struct.Memory** %MEMORY
  %loadMem_415599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8143 = getelementptr inbounds %struct.GPR, %struct.GPR* %8142, i32 0, i32 33
  %8144 = getelementptr inbounds %struct.Reg, %struct.Reg* %8143, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8144 to i64*
  %8145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8146 = getelementptr inbounds %struct.GPR, %struct.GPR* %8145, i32 0, i32 1
  %8147 = getelementptr inbounds %struct.Reg, %struct.Reg* %8146, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %8147 to i32*
  %8148 = load i32, i32* %EAX.i39
  %8149 = zext i32 %8148 to i64
  %8150 = load i64, i64* %PC.i38
  %8151 = add i64 %8150, 7
  store i64 %8151, i64* %PC.i38
  %8152 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*)
  %8153 = sub i32 %8148, %8152
  %8154 = icmp ult i32 %8148, %8152
  %8155 = zext i1 %8154 to i8
  %8156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8155, i8* %8156, align 1
  %8157 = and i32 %8153, 255
  %8158 = call i32 @llvm.ctpop.i32(i32 %8157)
  %8159 = trunc i32 %8158 to i8
  %8160 = and i8 %8159, 1
  %8161 = xor i8 %8160, 1
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8161, i8* %8162, align 1
  %8163 = xor i32 %8152, %8148
  %8164 = xor i32 %8163, %8153
  %8165 = lshr i32 %8164, 4
  %8166 = trunc i32 %8165 to i8
  %8167 = and i8 %8166, 1
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8167, i8* %8168, align 1
  %8169 = icmp eq i32 %8153, 0
  %8170 = zext i1 %8169 to i8
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8170, i8* %8171, align 1
  %8172 = lshr i32 %8153, 31
  %8173 = trunc i32 %8172 to i8
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8173, i8* %8174, align 1
  %8175 = lshr i32 %8148, 31
  %8176 = lshr i32 %8152, 31
  %8177 = xor i32 %8176, %8175
  %8178 = xor i32 %8172, %8175
  %8179 = add i32 %8178, %8177
  %8180 = icmp eq i32 %8179, 2
  %8181 = zext i1 %8180 to i8
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8181, i8* %8182, align 1
  store %struct.Memory* %loadMem_415599, %struct.Memory** %MEMORY
  %loadMem_4155a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8184 = getelementptr inbounds %struct.GPR, %struct.GPR* %8183, i32 0, i32 33
  %8185 = getelementptr inbounds %struct.Reg, %struct.Reg* %8184, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %8185 to i64*
  %8186 = load i64, i64* %PC.i37
  %8187 = add i64 %8186, 49
  %8188 = load i64, i64* %PC.i37
  %8189 = add i64 %8188, 6
  %8190 = load i64, i64* %PC.i37
  %8191 = add i64 %8190, 6
  store i64 %8191, i64* %PC.i37
  %8192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8193 = load i8, i8* %8192, align 1
  %8194 = icmp ne i8 %8193, 0
  %8195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8196 = load i8, i8* %8195, align 1
  %8197 = icmp ne i8 %8196, 0
  %8198 = xor i1 %8194, %8197
  %8199 = xor i1 %8198, true
  %8200 = zext i1 %8199 to i8
  store i8 %8200, i8* %BRANCH_TAKEN, align 1
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8202 = select i1 %8198, i64 %8189, i64 %8187
  store i64 %8202, i64* %8201, align 8
  store %struct.Memory* %loadMem_4155a0, %struct.Memory** %MEMORY
  %loadBr_4155a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4155a0 = icmp eq i8 %loadBr_4155a0, 1
  br i1 %cmpBr_4155a0, label %block_.L_4155d1, label %block_4155a6

block_4155a6:                                     ; preds = %block_.L_415596
  %loadMem_4155a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8204 = getelementptr inbounds %struct.GPR, %struct.GPR* %8203, i32 0, i32 33
  %8205 = getelementptr inbounds %struct.Reg, %struct.Reg* %8204, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8205 to i64*
  %8206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8207 = getelementptr inbounds %struct.GPR, %struct.GPR* %8206, i32 0, i32 9
  %8208 = getelementptr inbounds %struct.Reg, %struct.Reg* %8207, i32 0, i32 0
  %RSI.i36 = bitcast %union.anon* %8208 to i64*
  %8209 = load i64, i64* %PC.i35
  %8210 = add i64 %8209, 10
  store i64 %8210, i64* %PC.i35
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI.i36, align 8
  store %struct.Memory* %loadMem_4155a6, %struct.Memory** %MEMORY
  %loadMem_4155b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8212 = getelementptr inbounds %struct.GPR, %struct.GPR* %8211, i32 0, i32 33
  %8213 = getelementptr inbounds %struct.Reg, %struct.Reg* %8212, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8213 to i64*
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8215 = getelementptr inbounds %struct.GPR, %struct.GPR* %8214, i32 0, i32 7
  %8216 = getelementptr inbounds %struct.Reg, %struct.Reg* %8215, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %8216 to i32*
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8218 = getelementptr inbounds %struct.GPR, %struct.GPR* %8217, i32 0, i32 7
  %8219 = getelementptr inbounds %struct.Reg, %struct.Reg* %8218, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8219 to i64*
  %8220 = load i64, i64* %RDX.i
  %8221 = load i32, i32* %EDX.i
  %8222 = zext i32 %8221 to i64
  %8223 = load i64, i64* %PC.i34
  %8224 = add i64 %8223, 2
  store i64 %8224, i64* %PC.i34
  %8225 = xor i64 %8222, %8220
  %8226 = trunc i64 %8225 to i32
  %8227 = and i64 %8225, 4294967295
  store i64 %8227, i64* %RDX.i, align 8
  %8228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8228, align 1
  %8229 = and i32 %8226, 255
  %8230 = call i32 @llvm.ctpop.i32(i32 %8229)
  %8231 = trunc i32 %8230 to i8
  %8232 = and i8 %8231, 1
  %8233 = xor i8 %8232, 1
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8233, i8* %8234, align 1
  %8235 = icmp eq i32 %8226, 0
  %8236 = zext i1 %8235 to i8
  %8237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8236, i8* %8237, align 1
  %8238 = lshr i32 %8226, 31
  %8239 = trunc i32 %8238 to i8
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8239, i8* %8240, align 1
  %8241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8241, align 1
  %8242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8242, align 1
  store %struct.Memory* %loadMem_4155b0, %struct.Memory** %MEMORY
  %loadMem_4155b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8244 = getelementptr inbounds %struct.GPR, %struct.GPR* %8243, i32 0, i32 33
  %8245 = getelementptr inbounds %struct.Reg, %struct.Reg* %8244, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8245 to i64*
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8247 = getelementptr inbounds %struct.GPR, %struct.GPR* %8246, i32 0, i32 11
  %8248 = getelementptr inbounds %struct.Reg, %struct.Reg* %8247, i32 0, i32 0
  %RDI.i32 = bitcast %union.anon* %8248 to i64*
  %8249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8250 = getelementptr inbounds %struct.GPR, %struct.GPR* %8249, i32 0, i32 15
  %8251 = getelementptr inbounds %struct.Reg, %struct.Reg* %8250, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %8251 to i64*
  %8252 = load i64, i64* %RBP.i33
  %8253 = sub i64 %8252, 8
  %8254 = load i64, i64* %PC.i31
  %8255 = add i64 %8254, 4
  store i64 %8255, i64* %PC.i31
  %8256 = inttoptr i64 %8253 to i64*
  %8257 = load i64, i64* %8256
  store i64 %8257, i64* %RDI.i32, align 8
  store %struct.Memory* %loadMem_4155b2, %struct.Memory** %MEMORY
  %loadMem_4155b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8259 = getelementptr inbounds %struct.GPR, %struct.GPR* %8258, i32 0, i32 33
  %8260 = getelementptr inbounds %struct.Reg, %struct.Reg* %8259, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8260 to i64*
  %8261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8262 = getelementptr inbounds %struct.GPR, %struct.GPR* %8261, i32 0, i32 1
  %8263 = getelementptr inbounds %struct.Reg, %struct.Reg* %8262, i32 0, i32 0
  %8264 = bitcast %union.anon* %8263 to %struct.anon.2*
  %AL.i30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8264, i32 0, i32 0
  %8265 = load i64, i64* %PC.i29
  %8266 = add i64 %8265, 2
  store i64 %8266, i64* %PC.i29
  store i8 0, i8* %AL.i30, align 1
  store %struct.Memory* %loadMem_4155b6, %struct.Memory** %MEMORY
  %loadMem1_4155b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8268 = getelementptr inbounds %struct.GPR, %struct.GPR* %8267, i32 0, i32 33
  %8269 = getelementptr inbounds %struct.Reg, %struct.Reg* %8268, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8269 to i64*
  %8270 = load i64, i64* %PC.i28
  %8271 = add i64 %8270, -81992
  %8272 = load i64, i64* %PC.i28
  %8273 = add i64 %8272, 5
  %8274 = load i64, i64* %PC.i28
  %8275 = add i64 %8274, 5
  store i64 %8275, i64* %PC.i28
  %8276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8277 = load i64, i64* %8276, align 8
  %8278 = add i64 %8277, -8
  %8279 = inttoptr i64 %8278 to i64*
  store i64 %8273, i64* %8279
  store i64 %8278, i64* %8276, align 8
  %8280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8271, i64* %8280, align 8
  store %struct.Memory* %loadMem1_4155b8, %struct.Memory** %MEMORY
  %loadMem2_4155b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4155b8 = load i64, i64* %3
  %8281 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4155b8)
  store %struct.Memory* %8281, %struct.Memory** %MEMORY
  %loadMem_4155bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8283 = getelementptr inbounds %struct.GPR, %struct.GPR* %8282, i32 0, i32 33
  %8284 = getelementptr inbounds %struct.Reg, %struct.Reg* %8283, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8284 to i64*
  %8285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8286 = getelementptr inbounds %struct.GPR, %struct.GPR* %8285, i32 0, i32 1
  %8287 = getelementptr inbounds %struct.Reg, %struct.Reg* %8286, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %8287 to i32*
  %8288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8289 = getelementptr inbounds %struct.GPR, %struct.GPR* %8288, i32 0, i32 15
  %8290 = getelementptr inbounds %struct.Reg, %struct.Reg* %8289, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %8290 to i64*
  %8291 = load i64, i64* %RBP.i25
  %8292 = sub i64 %8291, 236
  %8293 = load i32, i32* %EAX.i24
  %8294 = zext i32 %8293 to i64
  %8295 = load i64, i64* %PC.i23
  %8296 = add i64 %8295, 6
  store i64 %8296, i64* %PC.i23
  %8297 = inttoptr i64 %8292 to i32*
  store i32 %8293, i32* %8297
  store %struct.Memory* %loadMem_4155bd, %struct.Memory** %MEMORY
  %loadMem_4155c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8299 = getelementptr inbounds %struct.GPR, %struct.GPR* %8298, i32 0, i32 33
  %8300 = getelementptr inbounds %struct.Reg, %struct.Reg* %8299, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8300 to i64*
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8302 = getelementptr inbounds %struct.GPR, %struct.GPR* %8301, i32 0, i32 1
  %8303 = getelementptr inbounds %struct.Reg, %struct.Reg* %8302, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %8303 to i64*
  %8304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8305 = getelementptr inbounds %struct.GPR, %struct.GPR* %8304, i32 0, i32 15
  %8306 = getelementptr inbounds %struct.Reg, %struct.Reg* %8305, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %8306 to i64*
  %8307 = load i64, i64* %RBP.i22
  %8308 = sub i64 %8307, 28
  %8309 = load i64, i64* %PC.i20
  %8310 = add i64 %8309, 3
  store i64 %8310, i64* %PC.i20
  %8311 = inttoptr i64 %8308 to i32*
  %8312 = load i32, i32* %8311
  %8313 = zext i32 %8312 to i64
  store i64 %8313, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_4155c3, %struct.Memory** %MEMORY
  %loadMem_4155c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8315 = getelementptr inbounds %struct.GPR, %struct.GPR* %8314, i32 0, i32 33
  %8316 = getelementptr inbounds %struct.Reg, %struct.Reg* %8315, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8316 to i64*
  %8317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8318 = getelementptr inbounds %struct.GPR, %struct.GPR* %8317, i32 0, i32 1
  %8319 = getelementptr inbounds %struct.Reg, %struct.Reg* %8318, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8319 to i64*
  %8320 = load i64, i64* %RAX.i
  %8321 = load i64, i64* %PC.i19
  %8322 = add i64 %8321, 3
  store i64 %8322, i64* %PC.i19
  %8323 = trunc i64 %8320 to i32
  %8324 = add i32 1, %8323
  %8325 = zext i32 %8324 to i64
  store i64 %8325, i64* %RAX.i, align 8
  %8326 = icmp ult i32 %8324, %8323
  %8327 = icmp ult i32 %8324, 1
  %8328 = or i1 %8326, %8327
  %8329 = zext i1 %8328 to i8
  %8330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8329, i8* %8330, align 1
  %8331 = and i32 %8324, 255
  %8332 = call i32 @llvm.ctpop.i32(i32 %8331)
  %8333 = trunc i32 %8332 to i8
  %8334 = and i8 %8333, 1
  %8335 = xor i8 %8334, 1
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8335, i8* %8336, align 1
  %8337 = xor i64 1, %8320
  %8338 = trunc i64 %8337 to i32
  %8339 = xor i32 %8338, %8324
  %8340 = lshr i32 %8339, 4
  %8341 = trunc i32 %8340 to i8
  %8342 = and i8 %8341, 1
  %8343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8342, i8* %8343, align 1
  %8344 = icmp eq i32 %8324, 0
  %8345 = zext i1 %8344 to i8
  %8346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8345, i8* %8346, align 1
  %8347 = lshr i32 %8324, 31
  %8348 = trunc i32 %8347 to i8
  %8349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8348, i8* %8349, align 1
  %8350 = lshr i32 %8323, 31
  %8351 = xor i32 %8347, %8350
  %8352 = add i32 %8351, %8347
  %8353 = icmp eq i32 %8352, 2
  %8354 = zext i1 %8353 to i8
  %8355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8354, i8* %8355, align 1
  store %struct.Memory* %loadMem_4155c6, %struct.Memory** %MEMORY
  %loadMem_4155c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8357 = getelementptr inbounds %struct.GPR, %struct.GPR* %8356, i32 0, i32 33
  %8358 = getelementptr inbounds %struct.Reg, %struct.Reg* %8357, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %8358 to i64*
  %8359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8360 = getelementptr inbounds %struct.GPR, %struct.GPR* %8359, i32 0, i32 1
  %8361 = getelementptr inbounds %struct.Reg, %struct.Reg* %8360, i32 0, i32 0
  %EAX.i17 = bitcast %union.anon* %8361 to i32*
  %8362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8363 = getelementptr inbounds %struct.GPR, %struct.GPR* %8362, i32 0, i32 15
  %8364 = getelementptr inbounds %struct.Reg, %struct.Reg* %8363, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %8364 to i64*
  %8365 = load i64, i64* %RBP.i18
  %8366 = sub i64 %8365, 28
  %8367 = load i32, i32* %EAX.i17
  %8368 = zext i32 %8367 to i64
  %8369 = load i64, i64* %PC.i16
  %8370 = add i64 %8369, 3
  store i64 %8370, i64* %PC.i16
  %8371 = inttoptr i64 %8366 to i32*
  store i32 %8367, i32* %8371
  store %struct.Memory* %loadMem_4155c9, %struct.Memory** %MEMORY
  %loadMem_4155cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8373 = getelementptr inbounds %struct.GPR, %struct.GPR* %8372, i32 0, i32 33
  %8374 = getelementptr inbounds %struct.Reg, %struct.Reg* %8373, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8374 to i64*
  %8375 = load i64, i64* %PC.i15
  %8376 = add i64 %8375, -54
  %8377 = load i64, i64* %PC.i15
  %8378 = add i64 %8377, 5
  store i64 %8378, i64* %PC.i15
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8376, i64* %8379, align 8
  store %struct.Memory* %loadMem_4155cc, %struct.Memory** %MEMORY
  br label %block_.L_415596

block_.L_4155d1:                                  ; preds = %block_.L_415596
  %loadMem_4155d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8381 = getelementptr inbounds %struct.GPR, %struct.GPR* %8380, i32 0, i32 33
  %8382 = getelementptr inbounds %struct.Reg, %struct.Reg* %8381, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8382 to i64*
  %8383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8384 = getelementptr inbounds %struct.GPR, %struct.GPR* %8383, i32 0, i32 9
  %8385 = getelementptr inbounds %struct.Reg, %struct.Reg* %8384, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8385 to i64*
  %8386 = load i64, i64* %PC.i14
  %8387 = add i64 %8386, 10
  store i64 %8387, i64* %PC.i14
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4155d1, %struct.Memory** %MEMORY
  %loadMem_4155db = load %struct.Memory*, %struct.Memory** %MEMORY
  %8388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8389 = getelementptr inbounds %struct.GPR, %struct.GPR* %8388, i32 0, i32 33
  %8390 = getelementptr inbounds %struct.Reg, %struct.Reg* %8389, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8390 to i64*
  %8391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8392 = getelementptr inbounds %struct.GPR, %struct.GPR* %8391, i32 0, i32 11
  %8393 = getelementptr inbounds %struct.Reg, %struct.Reg* %8392, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8393 to i64*
  %8394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8395 = getelementptr inbounds %struct.GPR, %struct.GPR* %8394, i32 0, i32 15
  %8396 = getelementptr inbounds %struct.Reg, %struct.Reg* %8395, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %8396 to i64*
  %8397 = load i64, i64* %RBP.i13
  %8398 = sub i64 %8397, 8
  %8399 = load i64, i64* %PC.i12
  %8400 = add i64 %8399, 4
  store i64 %8400, i64* %PC.i12
  %8401 = inttoptr i64 %8398 to i64*
  %8402 = load i64, i64* %8401
  store i64 %8402, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4155db, %struct.Memory** %MEMORY
  %loadMem_4155df = load %struct.Memory*, %struct.Memory** %MEMORY
  %8403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8404 = getelementptr inbounds %struct.GPR, %struct.GPR* %8403, i32 0, i32 33
  %8405 = getelementptr inbounds %struct.Reg, %struct.Reg* %8404, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8405 to i64*
  %8406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8407 = getelementptr inbounds %struct.GPR, %struct.GPR* %8406, i32 0, i32 1
  %8408 = getelementptr inbounds %struct.Reg, %struct.Reg* %8407, i32 0, i32 0
  %8409 = bitcast %union.anon* %8408 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8409, i32 0, i32 0
  %8410 = load i64, i64* %PC.i11
  %8411 = add i64 %8410, 2
  store i64 %8411, i64* %PC.i11
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4155df, %struct.Memory** %MEMORY
  %loadMem1_4155e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8413 = getelementptr inbounds %struct.GPR, %struct.GPR* %8412, i32 0, i32 33
  %8414 = getelementptr inbounds %struct.Reg, %struct.Reg* %8413, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8414 to i64*
  %8415 = load i64, i64* %PC.i10
  %8416 = add i64 %8415, -82033
  %8417 = load i64, i64* %PC.i10
  %8418 = add i64 %8417, 5
  %8419 = load i64, i64* %PC.i10
  %8420 = add i64 %8419, 5
  store i64 %8420, i64* %PC.i10
  %8421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8422 = load i64, i64* %8421, align 8
  %8423 = add i64 %8422, -8
  %8424 = inttoptr i64 %8423 to i64*
  store i64 %8418, i64* %8424
  store i64 %8423, i64* %8421, align 8
  %8425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8416, i64* %8425, align 8
  store %struct.Memory* %loadMem1_4155e1, %struct.Memory** %MEMORY
  %loadMem2_4155e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4155e1 = load i64, i64* %3
  %8426 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4155e1)
  store %struct.Memory* %8426, %struct.Memory** %MEMORY
  %loadMem_4155e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8428 = getelementptr inbounds %struct.GPR, %struct.GPR* %8427, i32 0, i32 33
  %8429 = getelementptr inbounds %struct.Reg, %struct.Reg* %8428, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8429 to i64*
  %8430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8431 = getelementptr inbounds %struct.GPR, %struct.GPR* %8430, i32 0, i32 1
  %8432 = getelementptr inbounds %struct.Reg, %struct.Reg* %8431, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8432 to i32*
  %8433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8434 = getelementptr inbounds %struct.GPR, %struct.GPR* %8433, i32 0, i32 15
  %8435 = getelementptr inbounds %struct.Reg, %struct.Reg* %8434, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %8435 to i64*
  %8436 = load i64, i64* %RBP.i6
  %8437 = sub i64 %8436, 240
  %8438 = load i32, i32* %EAX.i
  %8439 = zext i32 %8438 to i64
  %8440 = load i64, i64* %PC.i5
  %8441 = add i64 %8440, 6
  store i64 %8441, i64* %PC.i5
  %8442 = inttoptr i64 %8437 to i32*
  store i32 %8438, i32* %8442
  store %struct.Memory* %loadMem_4155e6, %struct.Memory** %MEMORY
  %loadMem_4155ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %8443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8444 = getelementptr inbounds %struct.GPR, %struct.GPR* %8443, i32 0, i32 33
  %8445 = getelementptr inbounds %struct.Reg, %struct.Reg* %8444, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8445 to i64*
  %8446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8447 = getelementptr inbounds %struct.GPR, %struct.GPR* %8446, i32 0, i32 13
  %8448 = getelementptr inbounds %struct.Reg, %struct.Reg* %8447, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8448 to i64*
  %8449 = load i64, i64* %RSP.i
  %8450 = load i64, i64* %PC.i4
  %8451 = add i64 %8450, 7
  store i64 %8451, i64* %PC.i4
  %8452 = add i64 256, %8449
  store i64 %8452, i64* %RSP.i, align 8
  %8453 = icmp ult i64 %8452, %8449
  %8454 = icmp ult i64 %8452, 256
  %8455 = or i1 %8453, %8454
  %8456 = zext i1 %8455 to i8
  %8457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8456, i8* %8457, align 1
  %8458 = trunc i64 %8452 to i32
  %8459 = and i32 %8458, 255
  %8460 = call i32 @llvm.ctpop.i32(i32 %8459)
  %8461 = trunc i32 %8460 to i8
  %8462 = and i8 %8461, 1
  %8463 = xor i8 %8462, 1
  %8464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8463, i8* %8464, align 1
  %8465 = xor i64 256, %8449
  %8466 = xor i64 %8465, %8452
  %8467 = lshr i64 %8466, 4
  %8468 = trunc i64 %8467 to i8
  %8469 = and i8 %8468, 1
  %8470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8469, i8* %8470, align 1
  %8471 = icmp eq i64 %8452, 0
  %8472 = zext i1 %8471 to i8
  %8473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8472, i8* %8473, align 1
  %8474 = lshr i64 %8452, 63
  %8475 = trunc i64 %8474 to i8
  %8476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8475, i8* %8476, align 1
  %8477 = lshr i64 %8449, 63
  %8478 = xor i64 %8474, %8477
  %8479 = add i64 %8478, %8474
  %8480 = icmp eq i64 %8479, 2
  %8481 = zext i1 %8480 to i8
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8481, i8* %8482, align 1
  store %struct.Memory* %loadMem_4155ec, %struct.Memory** %MEMORY
  %loadMem_4155f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8484 = getelementptr inbounds %struct.GPR, %struct.GPR* %8483, i32 0, i32 33
  %8485 = getelementptr inbounds %struct.Reg, %struct.Reg* %8484, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8485 to i64*
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8487 = getelementptr inbounds %struct.GPR, %struct.GPR* %8486, i32 0, i32 15
  %8488 = getelementptr inbounds %struct.Reg, %struct.Reg* %8487, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8488 to i64*
  %8489 = load i64, i64* %PC.i2
  %8490 = add i64 %8489, 1
  store i64 %8490, i64* %PC.i2
  %8491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8492 = load i64, i64* %8491, align 8
  %8493 = add i64 %8492, 8
  %8494 = inttoptr i64 %8492 to i64*
  %8495 = load i64, i64* %8494
  store i64 %8495, i64* %RBP.i3, align 8
  store i64 %8493, i64* %8491, align 8
  store %struct.Memory* %loadMem_4155f3, %struct.Memory** %MEMORY
  %loadMem_4155f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8497 = getelementptr inbounds %struct.GPR, %struct.GPR* %8496, i32 0, i32 33
  %8498 = getelementptr inbounds %struct.Reg, %struct.Reg* %8497, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8498 to i64*
  %8499 = load i64, i64* %PC.i1
  %8500 = add i64 %8499, 1
  store i64 %8500, i64* %PC.i1
  %8501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8503 = load i64, i64* %8502, align 8
  %8504 = inttoptr i64 %8503 to i64*
  %8505 = load i64, i64* %8504
  store i64 %8505, i64* %8501, align 8
  %8506 = add i64 %8503, 8
  store i64 %8506, i64* %8502, align 8
  store %struct.Memory* %loadMem_4155f4, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4155f4
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

define %struct.Memory* @routine_subq__0x100___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 256
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 256
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
  %23 = xor i64 256, %9
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.P7Logoddsify(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3e8__0x88__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1000
  %16 = icmp ult i32 %14, 1000
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %15, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %14, 1000
  %26 = xor i32 %25, %15
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %15, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_414d1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = or i1 %14, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %BRANCH_TAKEN, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = select i1 %22, i64 %7, i64 %9
  store i64 %25, i64* %24, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %14, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = xor i32 %26, %29
  %31 = add i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_414d1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456453___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456453_type* @G__0x456453 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.Warn(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*)
  %9 = sub i32 %8, 3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 3
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
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_414d47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4564a4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4564a4_type* @G__0x4564a4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_414d88(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__0x676d90(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*)
  %9 = sub i32 %8, 2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 2
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
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_414d72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4564b6___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4564b6_type* @G__0x4564b6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_414d83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4564c8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4564c8_type* @G__0x4564c8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Die(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_414db3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4564fe___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4564fe_type* @G__0x4564fe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_414dde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_414dd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456509___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456509_type* @G__0x456509 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x200___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 512, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
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

define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_414e28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_414e3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x458d45___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c8__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = and i64 2, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_414e6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_414e7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456517___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456517_type* @G__0x456517 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45653b___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x45653b_type* @G__0x45653b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_414fa0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45653f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45653f_type* @G__0x45653f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456583___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456583_type* @G__0x456583 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4565ad___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4565ad_type* @G__0x4565ad to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4565fe___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4565fe_type* @G__0x4565fe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456657___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456657_type* @G__0x456657 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456697___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456697_type* @G__0x456697 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4566e3___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4566e3_type* @G__0x4566e3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45672d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45672d_type* @G__0x45672d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_415067(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45677c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45677c_type* @G__0x45677c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4567c0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4567c0_type* @G__0x4567c0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4567fd___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4567fd_type* @G__0x4567fd to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x676ffc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4150ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456802___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456802_type* @G__0x456802 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x676fe0___rax_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 6778848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_415089(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4150f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45680a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45680a_type* @G__0x45680a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_415113(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x456826___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456826_type* @G__0x456826 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %12, %19
  %21 = icmp ult i32 %12, %19
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %20, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i32 %19, %12
  %31 = xor i32 %30, %20
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %20, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %20, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %12, 31
  %43 = lshr i32 %19, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4154c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RCX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 1, %9
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, %13
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %13, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %13, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = lshr i64 %12, 32
  store i64 %13, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xcc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ECX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = shl i64 %10, 32
  %22 = ashr exact i64 %21, 32
  %23 = shl i64 %20, 32
  %24 = or i64 %23, %16
  %25 = sdiv i64 %24, %22
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %block_400488
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = srem i64 %24, %22
  %35 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %36 = and i64 %25, 4294967295
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %38 = and i64 %34, 4294967295
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %29, %33
  %45 = phi %struct.Memory* [ %32, %29 ], [ %2, %33 ]
  ret %struct.Memory* %45
}

define %struct.Memory* @routine_jne_.L_41517a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %15, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %14, 10
  %26 = xor i32 %25, %15
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %15, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_41517a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = or i1 %14, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %BRANCH_TAKEN, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = select i1 %22, i64 %7, i64 %9
  store i64 %25, i64* %24, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456836___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456836_type* @G__0x456836 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x677060___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FArgMax(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45683c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45683c_type* @G__0x45683c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x676fe0___rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 6778848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41526c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x88__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %12, %19
  %21 = icmp ult i32 %12, %19
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = and i32 %20, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i32 %19, %12
  %31 = xor i32 %30, %20
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %20, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %20, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %12, 31
  %43 = lshr i32 %19, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_415225(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
  %22 = icmp ult i32 %20, %17
  %23 = icmp ult i32 %20, %19
  %24 = or i1 %22, %23
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
  %33 = xor i32 %19, %17
  %34 = xor i32 %33, %20
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %20, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %20, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %17, 31
  %46 = lshr i32 %19, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x457b32___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x457b32_type* @G__0x457b32 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x3f5e9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3f5e9__rip__type* @G_0x3f5e9__rip_ to i64)
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

define %struct.Memory* @routine_imull__0x64__MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 100
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4151ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1
  %16 = icmp ult i32 %14, 1
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %15, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %14, 1
  %26 = xor i32 %25, %15
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %15, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_41530a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = or i1 %14, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %BRANCH_TAKEN, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = select i1 %22, i64 %7, i64 %9
  store i64 %25, i64* %24, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x3f5c2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3f5c2__rip__type* @G_0x3f5c2__rip_ to i64)
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %12, 1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 1, %9
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, %13
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %13, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %13, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %12, 31
  %38 = xor i32 %34, %37
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = add i32 %24, %22
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %25, %22
  %28 = icmp ult i32 %25, %24
  %29 = or i1 %27, %28
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i32 %24, %22
  %39 = xor i32 %38, %25
  %40 = lshr i32 %39, 4
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %42, i8* %43, align 1
  %44 = icmp eq i32 %25, 0
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %45, i8* %46, align 1
  %47 = lshr i32 %25, 31
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %48, i8* %49, align 1
  %50 = lshr i32 %22, 31
  %51 = lshr i32 %24, 31
  %52 = xor i32 %47, %50
  %53 = xor i32 %47, %51
  %54 = add i32 %52, %53
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %56, i8* %57, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %22, %24
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RCX, align 8
  %27 = icmp ult i32 %22, %24
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %25, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %24, %22
  %37 = xor i32 %36, %25
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %25, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %25, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %22, 31
  %49 = lshr i32 %24, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0xffffffff___ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul i64 -1, %17
  %19 = trunc i64 %18 to i32
  %20 = and i64 %18, 4294967295
  store i64 %20, i64* %RCX, align 8
  %21 = shl i64 %18, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp ne i64 %22, %18
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %24, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x64__MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_415311(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x64__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 100, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_41535d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = or i1 %14, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %BRANCH_TAKEN, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = select i1 %22, i64 %7, i64 %9
  store i64 %25, i64* %24, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x3f4fd__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3f4fd__rip__type* @G_0x3f4fd__rip_ to i64)
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

define %struct.Memory* @routine_imull__0xffffffff____rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, -1
  %25 = trunc i64 %24 to i32
  %26 = and i64 %24, 4294967295
  store i64 %26, i64* %RCX, align 8
  %27 = shl i64 %24, 32
  %28 = ashr exact i64 %27, 32
  %29 = icmp ne i64 %28, %24
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %30, i8* %31, align 1
  %32 = and i32 %25, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %39, align 1
  %40 = lshr i32 %25, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %30, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x64__MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jmpq_.L_415364(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x64__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 100, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_415402(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = or i1 %14, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %BRANCH_TAKEN, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = select i1 %22, i64 %7, i64 %9
  store i64 %25, i64* %24, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x3f4ca__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3f4ca__rip__type* @G_0x3f4ca__rip_ to i64)
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

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x64__MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jmpq_.L_415409(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x64__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 100, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_415455(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = or i1 %14, %21
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %BRANCH_TAKEN, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = select i1 %22, i64 %7, i64 %9
  store i64 %25, i64* %24, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x3f405__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3f405__rip__type* @G_0x3f405__rip_ to i64)
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

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x64__MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jmpq_.L_41545c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x64__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 100, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_415494(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456842___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456842_type* @G__0x456842 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4154b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45684a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45684a_type* @G__0x45684a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4154ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41511a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x456853___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456853_type* @G__0x456853 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %9
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_415591(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_415550(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_415509(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtsi2ssl_0x38__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fmul float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = call float @llvm.trunc.f32(float %17)
  %19 = call float @llvm.fabs.f32(float %18)
  %20 = fcmp ogt float %19, 0x41E0000000000000
  %21 = fptosi float %18 to i32
  %22 = zext i32 %21 to i64
  %23 = select i1 %20, i64 2147483648, i64 %22
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 232
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4154ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_415596(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4155d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %14, %17
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %BRANCH_TAKEN, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %22 = select i1 %18, i64 %9, i64 %7
  store i64 %22, i64* %21, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x100___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 256, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 256
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
  %25 = xor i64 256, %9
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
